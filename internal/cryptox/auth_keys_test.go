package cryptox

import (
	"bytes"
	"crypto/ecdsa"
	"crypto/elliptic"
	"crypto/rand"
	"crypto/x509"
	"encoding/hex"
	"encoding/json"
	"errors"
	"fmt"
	"os"
	"testing"
)

type authVector struct {
	ELF     string `json:"elf_sha256"`
	Private string `json:"private_der"`
	Peer    string `json:"peer_point"`
	Derived string `json:"derived_key"`
	Cipher  string `json:"session_cipher"`
	Plain   string `json:"session_key"`
}

func authTestVector(t *testing.T) authVector {
	t.Helper()
	b, e := os.ReadFile("../../testdata/auth/native-keys.json")
	if e != nil {
		t.Fatal(e)
	}
	var v authVector
	if e = json.Unmarshal(b, &v); e != nil || v.ELF != "2ca28ea56b1a400543d0128ebaf0b93f88172dd66dc0426d3d74fdb971eab959" {
		t.Fatal("untrusted auth vector", e)
	}
	return v
}
func authHex(t *testing.T, s string) []byte {
	t.Helper()
	b, e := hex.DecodeString(s)
	if e != nil {
		t.Fatal(e)
	}
	return b
}

// Switching to P256, hashing an unpadded coordinate, or selecting another native
// KDF must break the result obtained from the real pinned ComputeDh routine.
func TestAuthP224DerivedKeyMatchesNative(t *testing.T) {
	v := authTestVector(t)
	got, e := DeriveAuthP224(authHex(t, v.Private), authHex(t, v.Peer))
	if e != nil || !bytes.Equal(got, authHex(t, v.Derived)) {
		t.Fatal("native ECDH/KDF differs", e)
	}
}

func TestAuthP224RejectsWrongCurveAndMalformedMaterial(t *testing.T) {
	v := authTestVector(t)
	private, peer := authHex(t, v.Private), authHex(t, v.Peer)
	p256, e := ecdsa.GenerateKey(elliptic.P256(), rand.Reader)
	if e != nil {
		t.Fatal(e)
	}
	wrong, e := x509.MarshalECPrivateKey(p256)
	if e != nil {
		t.Fatal(e)
	}
	for _, in := range []struct{ d, p []byte }{
		{wrong, peer}, {append(bytes.Clone(private), 0), peer}, {private, peer[:len(peer)-1]},
		{private, bytes.Repeat([]byte{4}, 57)}, {nil, peer}, {private, nil},
	} {
		if b, e := DeriveAuthP224(in.d, in.p); !errors.Is(e, ErrInvalidMaterial) || b != nil {
			t.Fatal("invalid ECDH material accepted", e)
		}
	}
}

func TestAuthCBCMatchesNativeAndRejectsBadPadding(t *testing.T) {
	v := authTestVector(t)
	key, ct := authHex(t, v.Derived), authHex(t, v.Cipher)
	got, e := OpenAuthCBC(key, ct)
	if e != nil || !bytes.Equal(got, authHex(t, v.Plain)) {
		t.Fatal("native CBC differs", e)
	}
	bad := bytes.Clone(ct)
	bad[15] ^= 1
	for _, in := range [][]byte{bad, ct[:len(ct)-1], nil} {
		if p, e := OpenAuthCBC(key, in); !errors.Is(e, ErrIntegrity) || p != nil {
			t.Fatal("invalid ciphertext exposed", e)
		}
	}
	if p, e := OpenAuthCBC(key[:15], ct); !errors.Is(e, ErrInvalidMaterial) || p != nil {
		t.Fatal("short key accepted", e)
	}
}

func TestNewAuthP224KeyPairIsUsableAndRedacted(t *testing.T) {
	a, e := NewAuthP224KeyPair()
	if e != nil {
		t.Fatal(e)
	}
	b, e := NewAuthP224KeyPair()
	if e != nil {
		t.Fatal(e)
	}
	aPub, bPub := a.PublicPoint(), b.PublicPoint()
	if len(aPub) != 57 || len(bPub) != 57 || bytes.Equal(aPub, bPub) {
		t.Fatal("invalid or reused public point")
	}
	ab, e := a.Derive(bPub)
	if e != nil {
		t.Fatal(e)
	}
	ba, e := b.Derive(aPub)
	if e != nil || !bytes.Equal(ab, ba) {
		t.Fatal("fresh auth key pairs disagree", e)
	}
	for _, value := range []any{a, *a} {
		if s := fmt.Sprintf("%#v", value); s != "native P224 key pair (private material redacted)" {
			t.Fatal("private scalar exposed")
		}
	}
	private := a.PrivateDER()
	private[0] ^= 1
	aPub[0] = 0
	if a.PublicPoint()[0] != 4 || a.PrivateDER()[0] != 0x30 {
		t.Fatal("key pair aliases caller")
	}
}
