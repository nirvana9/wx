package protocol

import (
	"bytes"
	"encoding/hex"
	"encoding/json"
	"errors"
	"os"
	"testing"
)

func TestEncodeManualAuthRequestNativeVectors(t *testing.T) {
	var fixture struct {
		ELF   string `json:"elf_sha256"`
		Cases []struct {
			Name       string `json:"name"`
			RSAHex     string `json:"rsa_hex"`
			AESHex     string `json:"aes_hex"`
			RequestHex string `json:"request_hex"`
		} `json:"cases"`
	}
	raw, err := os.ReadFile("../../testdata/auth/native-manualauth-request.json")
	if err != nil {
		t.Fatal(err)
	}
	if err := json.Unmarshal(raw, &fixture); err != nil {
		t.Fatal(err)
	}
	if fixture.ELF != PinnedELFSHA256 || len(fixture.Cases) != 2 {
		t.Fatalf("native fixture identity/cases: %s, %d", fixture.ELF, len(fixture.Cases))
	}
	for _, tc := range fixture.Cases {
		t.Run(tc.Name, func(t *testing.T) {
			rsa, err := hex.DecodeString(tc.RSAHex)
			if err != nil {
				t.Fatal(err)
			}
			aes, err := hex.DecodeString(tc.AESHex)
			if err != nil {
				t.Fatal(err)
			}
			want, err := hex.DecodeString(tc.RequestHex)
			if err != nil {
				t.Fatal(err)
			}
			got, err := EncodeManualAuthRequest(rsa, aes)
			if err != nil {
				t.Fatal(err)
			}
			if !bytes.Equal(got, want) {
				t.Fatalf("native parent differs: got %x, want %x", got, want)
			}
		})
	}
}

func TestEncodeManualAuthRequestRejectsInvalidWire(t *testing.T) {
	for _, tc := range []struct{ rsa, aes []byte }{
		{nil, []byte{}}, {[]byte{}, nil}, {[]byte{0x0a, 0x02, 0x01}, []byte{}},
		{[]byte{}, []byte{0x0a, 0x02, 0x01}},
	} {
		got, err := EncodeManualAuthRequest(tc.rsa, tc.aes)
		if got != nil || !errors.Is(err, ErrAuthRequest) {
			t.Fatalf("invalid wire accepted: %v, %v", got, err)
		}
	}
}

func TestComposedQRAuthWireMatchesNativeParent(t *testing.T) {
	var qr struct {
		Username, Password string
		Random             string `json:"random_key"`
		Point              string `json:"public_point"`
	}
	input, err := os.ReadFile("../../testdata/auth/native-qr-core.json")
	if err != nil {
		t.Fatal(err)
	}
	if err := json.Unmarshal(input, &qr); err != nil {
		t.Fatal(err)
	}
	var native struct {
		Cases []struct {
			Request string `json:"request_hex"`
		} `json:"cases"`
	}
	input, err = os.ReadFile("../../testdata/auth/native-manualauth-request.json")
	if err != nil {
		t.Fatal(err)
	}
	if err := json.Unmarshal(input, &native); err != nil || len(native.Cases) != 2 {
		t.Fatal("invalid native parent fixture", err)
	}
	rsa, err := EncodeQRCodeAuthCore(vectorHex(t, qr.Random), vectorHex(t, qr.Point), qr.Username, qr.Password)
	if err != nil {
		t.Fatal(err)
	}
	aes, err := EncodeManualAuthAESFields(ManualAuthAESFields{
		ClientCheckData: []byte("synthetic-client-check"),
		ExtSpamInfo:     []byte("synthetic-spam"),
		Uint32:          map[uint32]uint32{27: 4},
	})
	if err != nil {
		t.Fatal(err)
	}
	got, err := EncodeManualAuthRequest(rsa, aes)
	if err != nil || !bytes.Equal(got, vectorHex(t, native.Cases[0].Request)) {
		t.Fatal("composed Go auth wire differs from native parent", err)
	}
}
