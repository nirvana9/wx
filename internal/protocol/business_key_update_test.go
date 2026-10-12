package protocol

import (
	"bytes"
	"encoding/hex"
	"fmt"
	"testing"

	"github.com/nirvana9/wx/internal/testutil"
)

func TestNativeBusinessKeyUpdate(t *testing.T) {
	type nativeCase struct {
		Name      string   `json:"name"`
		BeforeHex []string `json:"before_hex"`
		UpdateHex []string `json:"update_hex"`
		AfterHex  []string `json:"after_hex"`
	}
	f := testutil.LoadJSON[struct {
		ELFSHA256 string       `json:"elf_sha256"`
		Cases     []nativeCase `json:"cases"`
	}](t, "../../testdata/auth/native-business-key-update.json")
	if f.ELFSHA256 != "2ca28ea56b1a400543d0128ebaf0b93f88172dd66dc0426d3d74fdb971eab959" || len(f.Cases) != 6 {
		t.Fatal("unexpected native provenance")
	}
	for _, c := range f.Cases {
		t.Run(c.Name, func(t *testing.T) {
			if len(c.BeforeHex) != 3 || len(c.UpdateHex) != 3 || len(c.AfterHex) != 3 {
				t.Fatal("invalid native slot fixture")
			}
			before := make([][]byte, 3)
			update := make([][]byte, 3)
			for i := range before {
				before[i] = testutil.MustHex(t, c.BeforeHex[i])
				update[i] = testutil.MustHex(t, c.UpdateHex[i])
			}
			previous, err := StageNativeBusinessKeyUpdate(nil, before[0], before[1], before[2])
			if err != nil {
				t.Fatal(err)
			}
			state, err := StageNativeBusinessKeyUpdate(previous, update[0], update[1], update[2])
			if err != nil {
				t.Fatal(err)
			}
			got := [][]byte{state.OriginalKey(), state.ClientKey(), state.ServerKey()}
			for i := range got {
				if hex.EncodeToString(got[i]) != c.AfterHex[i] {
					t.Fatal("native key update mismatch", i)
				}
			}
			for _, key := range update {
				clear(key)
			}
			for _, key := range got {
				clear(key)
			}
			current := [][]byte{state.OriginalKey(), state.ClientKey(), state.ServerKey()}
			old := [][]byte{previous.OriginalKey(), previous.ClientKey(), previous.ServerKey()}
			for i := range current {
				if hex.EncodeToString(current[i]) != c.AfterHex[i] || !bytes.Equal(old[i], before[i]) {
					t.Fatal("candidate state aliases caller or previous state", i)
				}
			}
			candidate, err := state.Candidates()
			if err != nil || !bytes.Equal(candidate.RequestKey(), state.ClientKey()) || !bytes.Equal(candidate.ResponseKey(), state.ServerKey()) {
				t.Fatal("updated pair not available to default route")
			}
		})
	}
}

func TestNativeBusinessKeyUpdateLimitsAndRedaction(t *testing.T) {
	original, client, server := []byte("old-origin-key16"), []byte("old-client-key16"), []byte("old-server-key16")
	previous, err := StageNativeBusinessKeyUpdate(nil, original, client, server)
	if err != nil {
		t.Fatal(err)
	}
	for _, args := range [][3][]byte{{{1}, nil, nil}, {nil, {1}, server}, {nil, client, {1}}} {
		if state, err := StageNativeBusinessKeyUpdate(previous, args[0], args[1], args[2]); err != ErrBusinessKeys || state != nil {
			t.Fatal("accepted unsupported updated key length")
		}
	}
	if state, err := StageNativeBusinessKeyUpdate(previous, nil, []byte{1}, nil); err != nil || !bytes.Equal(state.ClientKey(), client) {
		t.Fatal("partial unused pair changed native update policy")
	}
	empty, err := StageNativeBusinessKeyUpdate(nil, nil, nil, nil)
	if err != nil {
		t.Fatal(err)
	}
	if _, err := empty.Candidates(); err != ErrBusinessKeys {
		t.Fatal("empty state has usable candidate")
	}
	for _, value := range []any{previous, *previous} {
		for _, format := range []string{"%v", "%+v", "%#v"} {
			if got := fmt.Sprintf(format, value); got != "native candidate key slots (not a logged-in session)" {
				t.Fatal("key state format leaked material")
			}
		}
	}
}
