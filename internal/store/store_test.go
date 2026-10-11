package store

import (
	"bytes"
	"errors"
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"testing"

	"github.com/nirvana9/wx/internal/model"
)

func openTest(t *testing.T) (*Store, string) {
	t.Helper()
	dir := filepath.Join(t.TempDir(), "state")
	s, err := Open(dir)
	if err != nil {
		t.Fatal(err)
	}
	t.Cleanup(func() { s.Close() })
	return s, dir
}

func TestExclusiveAccountLock(t *testing.T) {
	if dir := os.Getenv("WX_LOCK_TEST_DIR"); dir != "" {
		s, err := Open(dir)
		if s != nil {
			s.Close()
		}
		if !errors.Is(err, ErrInUse) {
			t.Fatalf("wanted ErrInUse: %v", err)
		}
		return
	}
	s, dir := openTest(t)
	cmd := exec.Command(os.Args[0], "-test.run=^TestExclusiveAccountLock$")
	cmd.Env = append(os.Environ(), "WX_LOCK_TEST_DIR="+dir)
	if out, err := cmd.CombinedOutput(); err != nil {
		t.Fatalf("%s %v", out, err)
	}
	if err := s.Close(); err != nil {
		t.Fatal(err)
	}
	if err := s.Close(); err != nil {
		t.Fatal(err)
	}
	next, err := Open(dir)
	if err != nil {
		t.Fatal(err)
	}
	next.Close()
}

func TestAtomicBatchAfterInterruptedWrite(t *testing.T) {
	s, dir := openTest(t)
	if err := s.ApplyBatch(model.SyncBatch{NextCursor: []byte("old")}); err != nil {
		t.Fatal(err)
	}
	// A process killed after writing a tempfile never renames it onto committed state.
	cmd := exec.Command(os.Args[0], "-test.run=^TestWriteInterruptedState$")
	cmd.Env = append(os.Environ(), "WX_INTERRUPTED_DIR="+dir)
	if err := cmd.Run(); err == nil {
		t.Fatal("child did not interrupt")
	}
	state, err := s.Load()
	if err != nil || string(state.SyncCursor) != "old" || len(state.Pending) != 0 {
		t.Fatalf("%v %v", state, err)
	}
	batch := model.SyncBatch{Messages: []model.Message{{ID: "m1", Text: "synthetic"}}, NextCursor: []byte("new")}
	if err := s.ApplyBatch(batch); err != nil {
		t.Fatal(err)
	}
	s.Close()
	reopened, err := Open(dir)
	if err != nil {
		t.Fatal(err)
	}
	defer reopened.Close()
	state, err = reopened.Load()
	if err != nil || string(state.SyncCursor) != "new" || len(state.Pending) != 1 {
		t.Fatalf("%v %v", state, err)
	}
}

func TestWriteInterruptedState(t *testing.T) {
	dir := os.Getenv("WX_INTERRUPTED_DIR")
	if dir == "" {
		return
	}
	f, err := os.OpenFile(filepath.Join(dir, ".state-abandoned.tmp"), os.O_WRONLY|os.O_CREATE|os.O_EXCL, 0600)
	if err != nil {
		os.Exit(3)
	}
	f.WriteString(`{"format":1,"state":`)
	f.Sync()
	os.Exit(23)
}

func TestPermissionsAndStateHome(t *testing.T) {
	xdg := t.TempDir()
	t.Setenv("XDG_STATE_HOME", xdg)
	want := filepath.Join(xdg, "wx-native")
	dir, err := DefaultDir()
	if err != nil || dir != want {
		t.Fatalf("%s %v", dir, err)
	}
	if err := os.Mkdir(dir, 0755); err != nil {
		t.Fatal(err)
	}
	s, err := Open(dir)
	if err != nil {
		t.Fatal(err)
	}
	defer s.Close()
	if err := s.SaveCredentials(model.Credentials{Version: 1, AccountID: "synthetic", Secrets: map[string][]byte{"key": {1, 2}}}); err != nil {
		t.Fatal(err)
	}
	for name, mode := range map[string]os.FileMode{dir: 0700, filepath.Join(dir, "state.json"): 0600, filepath.Join(dir, "account.lock"): 0600} {
		st, err := os.Stat(name)
		if err != nil || st.Mode().Perm() != mode {
			t.Fatalf("%s %v %v", name, st, err)
		}
	}
	if err := os.Chmod(filepath.Join(dir, "state.json"), 0644); err != nil {
		t.Fatal(err)
	}
	s.Close()
	s, err = Open(dir)
	if err != nil {
		t.Fatal(err)
	}
	defer s.Close()
	st, _ := os.Stat(filepath.Join(dir, "state.json"))
	if st.Mode().Perm() != 0600 {
		t.Fatal("old permissions")
	}
	t.Setenv("XDG_STATE_HOME", "relative")
	if _, err := DefaultDir(); err == nil {
		t.Fatal("relative state home")
	}
}

func TestPendingAckAndDedup(t *testing.T) {
	s, _ := openTest(t)
	c := model.Credentials{Version: 1, AccountID: "synthetic", Secrets: map[string][]byte{"k": {1}}}
	if err := s.SaveCredentials(c); err != nil {
		t.Fatal(err)
	}
	b := model.SyncBatch{Messages: []model.Message{{ID: "m1", Text: "temporary"}, {ID: "m1", Text: "duplicate"}}, Contacts: []model.ContactChange{{Contact: model.Contact{ID: "c1", Nickname: "name"}}}, NextCursor: []byte{1}}
	for i := 0; i < 2; i++ {
		if err := s.ApplyBatch(b); err != nil {
			t.Fatal(err)
		}
	}
	state, err := s.Load()
	if err != nil || len(state.Pending) != 1 || len(state.Contacts) != 1 {
		t.Fatalf("%v %v", state, err)
	}
	state.Pending[0].Text = "mutated"
	state.Credentials.Secrets["k"][0] = 99
	state, _ = s.Load()
	if state.Pending[0].Text != "temporary" || state.Credentials.Secrets["k"][0] != 1 {
		t.Fatal("Load aliases store")
	}
	if err := s.AckDisplayed([]string{"m1"}); err != nil {
		t.Fatal(err)
	}
	if err := s.ApplyBatch(b); err != nil {
		t.Fatal(err)
	}
	if err := s.ApplyBatch(model.SyncBatch{Contacts: []model.ContactChange{{Contact: model.Contact{ID: "c1"}, Deleted: true}}, NextCursor: []byte{2}}); err != nil {
		t.Fatal(err)
	}
	state, _ = s.Load()
	if len(state.Pending) != 0 || len(state.Contacts) != 0 {
		t.Fatal("ack/delete failed")
	}
	if err := s.ClearCredentials(); err != nil {
		t.Fatal(err)
	}
	state, _ = s.Load()
	if state.Credentials.AccountID != "" || len(state.SeenMessageIDs) != 0 || len(state.SyncCursor) != 0 {
		t.Fatal("logout did not clear account state")
	}
}

func TestPendingLimitKeepsCursor(t *testing.T) {
	s, _ := openTest(t)
	if err := s.ApplyBatch(model.SyncBatch{NextCursor: []byte("old")}); err != nil {
		t.Fatal(err)
	}
	b := model.SyncBatch{NextCursor: []byte("new")}
	for i := 0; i < 1025; i++ {
		b.Messages = append(b.Messages, model.Message{ID: fmt.Sprint(i)})
	}
	if err := s.ApplyBatch(b); !errors.Is(err, ErrPendingFull) {
		t.Fatal(err)
	}
	state, _ := s.Load()
	if len(state.Pending) != 0 || !bytes.Equal(state.SyncCursor, []byte("old")) {
		t.Fatal("partial transaction")
	}
}

func TestRejectCorruptAndUnsafeState(t *testing.T) {
	s, dir := openTest(t)
	s.Close()
	if err := os.WriteFile(filepath.Join(dir, "state.json"), []byte(`{"credential":"DO_NOT_LOG"`), 0600); err != nil {
		t.Fatal(err)
	}
	if _, err := Open(dir); !errors.Is(err, ErrCorruptState) || bytes.Contains([]byte(err.Error()), []byte("DO_NOT_LOG")) {
		t.Fatalf("%v", err)
	}
	os.Remove(filepath.Join(dir, "state.json"))
	out := filepath.Join(t.TempDir(), "outside")
	os.WriteFile(out, []byte("do not touch"), 0644)
	if err := os.Symlink(out, filepath.Join(dir, "state.json")); err != nil {
		t.Fatal(err)
	}
	if _, err := Open(dir); err == nil {
		t.Fatal("symlink accepted")
	}
	st, _ := os.Stat(out)
	if st.Mode().Perm() != 0644 {
		t.Fatal("outside file modified")
	}
}
