package store

import (
	"bufio"
	"bytes"
	"context"
	"encoding/json"
	"errors"
	"io"
	"os"
	"os/exec"
	"path/filepath"
	"strings"
	"testing"
	"time"

	"github.com/nirvana9/wx/internal/model"
)

// The reader blocks after the actual writer has populated its temporary file.
// It lives only in tests; production does not expose a crash hook.
type waitBeforeEOF struct{ reader *bytes.Reader }

func (r waitBeforeEOF) Read(p []byte) (int, error) {
	n, err := r.reader.Read(p)
	if err == io.EOF {
		os.Stdout.WriteString("temporary snapshot written\n")
		var unblock [1]byte
		os.Stdin.Read(unblock[:])
	}
	return n, err
}

func TestAtomicWriteKilledChild(t *testing.T) {
	dir := os.Getenv("WX_ATOMIC_CRASH_DIR")
	if dir == "" {
		return
	}
	s, err := Open(dir)
	if err != nil {
		t.Fatal(err)
	}
	defer s.Close()
	state := model.State{Credentials: model.Credentials{AccountID: "synthetic", Secrets: map[string][]byte{"key": []byte("ORPHAN_SECRET")}}, Pending: []model.Message{{ID: "m1", Text: "ORPHAN_BODY"}}}
	data, err := json.Marshal(diskState{Format: 1, State: state})
	if err != nil {
		t.Fatal(err)
	}
	if err := writeAtomic(s.dir, waitBeforeEOF{bytes.NewReader(data)}); err != nil {
		t.Fatal(err)
	}
}

func TestKilledWriteCleansOrphanSecrets(t *testing.T) {
	s, dir := openTest(t)
	if err := s.ApplyBatch(model.SyncBatch{NextCursor: []byte("committed")}); err != nil {
		t.Fatal(err)
	}
	s.Close()
	ctx, cancel := context.WithTimeout(context.Background(), 10*time.Second)
	defer cancel()
	cmd := exec.CommandContext(ctx, os.Args[0], "-test.run=^TestAtomicWriteKilledChild$")
	cmd.Env = append(os.Environ(), "WX_ATOMIC_CRASH_DIR="+dir)
	stdin, err := cmd.StdinPipe()
	if err != nil {
		t.Fatal(err)
	}
	defer stdin.Close()
	stdout, err := cmd.StdoutPipe()
	if err != nil {
		t.Fatal(err)
	}
	if err := cmd.Start(); err != nil {
		t.Fatal(err)
	}
	t.Cleanup(func() { cmd.Process.Kill() })
	line, err := bufio.NewReader(stdout).ReadString('\n')
	if err != nil || line != "temporary snapshot written\n" {
		t.Fatalf("child checkpoint: %q %v", line, err)
	}
	paths, err := filepath.Glob(filepath.Join(dir, ".state-*.tmp"))
	if err != nil || len(paths) != 1 {
		t.Fatalf("actual temp: %v %v", paths, err)
	}
	data, err := os.ReadFile(paths[0])
	if err != nil || !bytes.Contains(data, []byte("ORPHAN_BODY")) {
		t.Fatal("writer not populated", err)
	}
	if err := cmd.Process.Kill(); err != nil {
		t.Fatal(err)
	}
	if cmd.Wait() == nil {
		t.Fatal("expected killed child")
	}
	reopened, err := Open(dir)
	if err != nil {
		t.Fatal(err)
	}
	defer reopened.Close()
	state, err := reopened.Load()
	if err != nil || string(state.SyncCursor) != "committed" {
		t.Fatalf("%v %v", state, err)
	}
	if err := reopened.AckDisplayed([]string{"m1"}); err != nil {
		t.Fatal(err)
	}
	if err := reopened.ClearCredentials(); err != nil {
		t.Fatal(err)
	}
	paths, _ = filepath.Glob(filepath.Join(dir, ".state-*.tmp"))
	if len(paths) != 0 {
		t.Fatalf("orphan snapshots remain: %v", paths)
	}
}

func TestClearCredentialsAfterCorruption(t *testing.T) {
	s, dir := openTest(t)
	if err := s.SaveCredentials(model.Credentials{AccountID: "synthetic", DeviceID: []byte("stable"), Secrets: map[string][]byte{"key": []byte("CORRUPT_SECRET")}}); err != nil {
		t.Fatal(err)
	}
	p := filepath.Join(dir, "state.json")
	data, err := os.ReadFile(p)
	if err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(p, data[:len(data)-1], 0600); err != nil {
		t.Fatal(err)
	}
	if _, err := s.Load(); !errors.Is(err, ErrCorruptState) {
		t.Fatal(err)
	}
	if err := s.ClearCredentials(); err != nil {
		t.Fatal("logout failed to clear corrupt state", err)
	}
	state, err := s.Load()
	if err != nil || state.Credentials.AccountID != "" || len(state.Credentials.Secrets) != 0 {
		t.Fatalf("%v %v", state, err)
	}
	data, err = os.ReadFile(p)
	if err != nil || bytes.Contains(data, []byte("CORRUPT_SECRET")) {
		t.Fatal("credentials remain", err)
	}
}

func TestClearAccountRecoversFailedOpen(t *testing.T) {
	dir := filepath.Join(t.TempDir(), "state")
	if err := os.Mkdir(dir, 0700); err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(filepath.Join(dir, "state.json"), []byte(`{"secrets":"CORRUPT_SECRET"`), 0600); err != nil {
		t.Fatal(err)
	}
	if _, err := Open(dir); !errors.Is(err, ErrCorruptState) {
		t.Fatal(err)
	}
	if err := ClearAccount(dir); err != nil {
		t.Fatal(err)
	}
	s, err := Open(dir)
	if err != nil {
		t.Fatal(err)
	}
	defer s.Close()
	state, err := s.Load()
	if err != nil || len(state.Credentials.Secrets) != 0 {
		t.Fatalf("%v %v", state, err)
	}
}

func TestTempCleanupDoesNotFollowSymlinks(t *testing.T) {
	s, dir := openTest(t)
	s.Close()
	out := filepath.Join(t.TempDir(), "outside")
	if err := os.WriteFile(out, []byte("UNRELATED"), 0644); err != nil {
		t.Fatal(err)
	}
	name := ".state-" + strings.Repeat("a", 32) + ".tmp"
	if err := os.Symlink(out, filepath.Join(dir, name)); err != nil {
		t.Fatal(err)
	}
	s, err := Open(dir)
	if err != nil {
		t.Fatal(err)
	}
	defer s.Close()
	data, err := os.ReadFile(out)
	if err != nil || string(data) != "UNRELATED" {
		t.Fatal("outside changed", err)
	}
	st, _ := os.Stat(out)
	if st.Mode().Perm() != 0644 {
		t.Fatal("outside chmod")
	}
}
