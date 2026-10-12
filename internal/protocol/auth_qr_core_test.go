package protocol

import (
	"bytes"
	"encoding/json"
	"os"
	"testing"
)

// Catches hashing/copying proof into pwd2 or omitting its explicit empty field.
// The native caller boundary and native serializer supply the expected bytes.
func TestQRCodeAuthCoreMatchesNativeCaller(t *testing.T) {
	b, e := os.ReadFile("../../testdata/auth/native-qr-core.json")
	if e != nil {
		t.Fatal(e)
	}
	var v struct {
		ELF                           string `json:"elf_sha256"`
		Username, Password, Password2 string
		Random                        string `json:"random_key"`
		Point                         string `json:"public_point"`
		Core                          string `json:"core_hex"`
	}
	if e = json.Unmarshal(b, &v); e != nil || v.ELF != PinnedELFSHA256 || v.Password2 != "" {
		t.Fatal("invalid QR auth caller vector", e)
	}
	got, e := EncodeQRCodeAuthCore(vectorHex(t, v.Random), vectorHex(t, v.Point), v.Username, v.Password)
	if e != nil || !bytes.Equal(got, vectorHex(t, v.Core)) {
		t.Fatal("QR auth core differs from native caller/serializer", e)
	}
}
