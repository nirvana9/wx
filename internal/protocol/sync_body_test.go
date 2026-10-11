package protocol

import (
	"bytes"
	"encoding/json"
	"errors"
	"os"
	"testing"
)

func nativeSyncVectors(t *testing.T) (valid, rejected []byte) {
	t.Helper()
	b, e := os.ReadFile("../../testdata/sync/native-body-vectors.json")
	if e != nil {
		t.Fatal(e)
	}
	var v struct {
		ELF      string `json:"elf_sha256"`
		Response string `json:"response_hex"`
		Rejected string `json:"rejected_hex"`
	}
	if e = json.Unmarshal(b, &v); e != nil || v.ELF != PinnedELFSHA256 {
		t.Fatal("untrusted vector", e)
	}
	return vectorHex(t, v.Response), vectorHex(t, v.Rejected)
}

// A NewSyncResponse starts with a signed scalar Ret, unlike Send's BaseResponse.
// Opaque commands and control fields survive without guessing a text schema.
func TestDecodeSyncNativeCommandsWithoutInventingMessages(t *testing.T) {
	b, _ := nativeSyncVectors(t)
	batch, e := DecodeSyncBody(b)
	if e != nil || len(batch.Commands) != 2 || len(batch.Control) != 1 {
		t.Fatal("native sync lost", e)
	}
	if batch.Commands[0].ID != 7 || !bytes.Equal(batch.Commands[0].Body, []byte("synthetic opaque A")) || batch.Commands[1].ID != 2147483647 {
		t.Fatal("commands changed")
	}
	if batch.Control[0].Number != 3 {
		t.Fatal("uninterpreted control lost")
	}
	for i := range b {
		b[i] = 0
	}
	if string(batch.Commands[0].Body) != "synthetic opaque A" {
		t.Fatal("input mutation changed result")
	}
}

func TestSyncBodyRejectsServerErrorAndCountMismatch(t *testing.T) {
	b, rejected := nativeSyncVectors(t)
	if r, e := DecodeSyncBody(rejected); !errors.Is(e, ErrSyncRejected) || len(r.Commands) != 0 {
		t.Fatal("server rejection ignored", e)
	}
	bad := bytes.Replace(b, []byte{0x08, 0x02, 0x12}, []byte{0x08, 0x03, 0x12}, 1)
	if r, e := DecodeSyncBody(bad); e == nil || len(r.Commands) != 0 {
		t.Fatal("count mismatch accepted")
	}
}

func TestSyncBufferRejectsLengthMismatch(t *testing.T) {
	b, _ := nativeSyncVectors(t)
	bad := bytes.Replace(b, []byte{0x08, 0x12, 0x12, 0x12}, []byte{0x08, 0x13, 0x12, 0x12}, 1)
	if bytes.Equal(b, bad) {
		t.Fatal("test mutation did not find buffer")
	}
	if r, e := DecodeSyncBody(bad); e == nil || len(r.Commands) != 0 {
		t.Fatal("incorrect buffer length accepted")
	}
}

func TestSyncResponseRetainsRawExtensions(t *testing.T) {
	b, _ := nativeSyncVectors(t)
	// Unknown outer extension; Raw also retains every nested envelope byte.
	b = append(b, 0xa0, 0x06, 0x63)
	r, e := DecodeSyncBody(b)
	if e != nil || !bytes.Equal(r.Raw, b) {
		t.Fatal("future sync fields discarded", e)
	}
	keep := bytes.Clone(b)
	for i := range b {
		b[i] = 0
	}
	if !bytes.Equal(r.Raw, keep) {
		t.Fatal("raw sync aliases input")
	}
}
