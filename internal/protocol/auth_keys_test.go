package protocol

import (
	"bytes"
	"encoding/json"
	"errors"
	"fmt"
	"os"
	"strings"
	"testing"
)

type authReplyVector struct {
	ELF      string `json:"elf_sha256"`
	Private  string `json:"private_der"`
	Response string `json:"auth_response"`
	Rejected string `json:"rejected_response"`
	Session  string `json:"session_key"`
	Derived  string `json:"derived_key"`
	Client   string `json:"client_session_key"`
	Server   string `json:"server_session_key"`
	Core     string `json:"auth_core"`
	Random   string `json:"random_key"`
	Point    string `json:"client_point"`
}

func authReply(t *testing.T) authReplyVector {
	t.Helper()
	b, e := os.ReadFile("../../testdata/auth/native-keys.json")
	if e != nil {
		t.Fatal(e)
	}
	var v authReplyVector
	if e = json.Unmarshal(b, &v); e != nil || v.ELF != PinnedELFSHA256 {
		t.Fatal("untrusted auth reply", e)
	}
	return v
}

func TestDecodeAuthKeysMatchesNativeWholeRoutine(t *testing.T) {
	v := authReply(t)
	m, e := DecodeManualAuthKeys(vectorHex(t, v.Response), vectorHex(t, v.Private), "wxid_synthetic")
	if e != nil || m == nil {
		t.Fatal("native key response unavailable", e)
	}
	if m.UIN() != 12345678 || m.AccountID() != "wxid_synthetic" {
		t.Fatal("wrong account identity")
	}
	for _, p := range []struct {
		got []byte
		hex string
	}{
		{m.SessionKey(), v.Session}, {m.DerivedKey(), v.Derived}, {m.ClientSessionKey(), v.Client}, {m.ServerSessionKey(), v.Server},
	} {
		if !bytes.Equal(p.got, vectorHex(t, p.hex)) {
			t.Fatal("native key role differs")
		}
	}
}

func TestAuthKeysRejectFailureAndMismatchedIdentity(t *testing.T) {
	v := authReply(t)
	d, b := vectorHex(t, v.Private), vectorHex(t, v.Response)
	if m, e := DecodeManualAuthKeys(vectorHex(t, v.Rejected), d, "wxid_synthetic"); m != nil || !errors.Is(e, ErrAuthRejected) {
		t.Fatal("server failure accepted", e)
	}
	if m, e := DecodeManualAuthKeys(b, d, "another_account"); m != nil || e == nil {
		t.Fatal("account mismatch accepted")
	}
	// Changing AuthResultFlag4 to1 must select unsupported plaintext-key mode,
	// rather than decrypt ciphertext or install it as a key.
	bad := bytes.Replace(b, []byte{0x98, 0x01, 0x04}, []byte{0x98, 0x01, 0x01}, 1)
	if bytes.Equal(b, bad) {
		t.Fatal("flag mutation missing")
	}
	if m, e := DecodeManualAuthKeys(bad, d, "wxid_synthetic"); m != nil || !errors.Is(e, ErrProtocolUnverified) {
		t.Fatal("unverified key mode accepted", e)
	}
}

func TestAuthKeysRejectMalformedBodyWithoutPartialMaterial(t *testing.T) {
	v := authReply(t)
	d, b := vectorHex(t, v.Private), vectorHex(t, v.Response)
	for _, bad := range [][]byte{
		b[:len(b)-1], append(bytes.Clone(b), 0x08, 0x00),
		bytes.Replace(b, []byte{0x08, 0xc9, 0x05}, []byte{0x08, 0x9f, 0x03}, 1), // curve415
		bytes.Replace(b, []byte{0x0a, 0x02, 0x08, 0x00}, []byte{0x0a, 0x06, 0x08, 0x80, 0x80, 0x80, 0x80, 0x10}, 1),
	} {
		if m, e := DecodeManualAuthKeys(bad, d, "wxid_synthetic"); m != nil || e == nil {
			t.Fatal("ambiguous auth response accepted")
		}
	}
}

func TestAuthKeysRedactionOwnershipAndRawPreservation(t *testing.T) {
	v := authReply(t)
	b := append(vectorHex(t, v.Response), 0xa0, 0x06, 0x63)
	m, e := DecodeManualAuthKeys(b, vectorHex(t, v.Private), "wxid_synthetic")
	if e != nil {
		t.Fatal(e)
	}
	for _, value := range []any{m, *m} {
		for _, format := range []string{"%v", "%+v", "%#v"} {
			s := fmt.Sprintf(format, value)
			if strings.Contains(s, "synthetic") || strings.Contains(s, v.Derived) || !strings.Contains(s, "not a logged-in session") {
				t.Fatal("sensitive material in formatting")
			}
		}
	}
	if !bytes.Equal(m.RawResponse(), b) {
		t.Fatal("auth extensions lost")
	}
	original := bytes.Clone(b)
	key := m.SessionKey()
	key[0] ^= 1
	for i := range b {
		b[i] = 0
	}
	if !bytes.Equal(m.SessionKey(), vectorHex(t, v.Session)) {
		t.Fatal("material aliases caller")
	}
	if !bytes.Equal(m.RawResponse(), original) {
		t.Fatal("raw response aliases caller")
	}
}

func TestAuthKeysRejectOptionalFlagOverflow(t *testing.T) {
	v := authReply(t)
	b := vectorHex(t, v.Response)
	bad := bytes.Replace(b, []byte{0x10, 0x01, 0x1a}, []byte{0x10, 0x80, 0x80, 0x80, 0x80, 0x10, 0x1a}, 1)
	if bytes.Equal(b, bad) {
		t.Fatal("unify flag mutation missing")
	}
	if m, e := DecodeManualAuthKeys(bad, vectorHex(t, v.Private), "wxid_synthetic"); m != nil || e == nil {
		t.Fatal("out-of-range flag accepted")
	}
}

func TestManualAuthCoreMatchesNativeSerializer(t *testing.T) {
	v := authReply(t)
	b, e := EncodeManualAuthCore(vectorHex(t, v.Random), vectorHex(t, v.Point), "wxid_synthetic", "qr-proof-synthetic", "qr-proof-synthetic")
	if e != nil || !bytes.Equal(b, vectorHex(t, v.Core)) {
		t.Fatal("native core request differs", e)
	}
}

func TestManualAuthCoreRejectsInvalidKeyOrProof(t *testing.T) {
	v := authReply(t)
	key, point := vectorHex(t, v.Random), vectorHex(t, v.Point)
	for _, in := range []struct {
		k, p      []byte
		name, pwd string
	}{
		{key[:15], point, "wxid_synthetic", "proof"},
		{key, point[:56], "wxid_synthetic", "proof"},
		{key, point, "name with spaces", "proof"},
		{key, point, "wxid_synthetic", ""},
		{key, point, "wxid_synthetic", strings.Repeat("a", 513)},
	} {
		if b, e := EncodeManualAuthCore(in.k, in.p, in.name, in.pwd, in.pwd); e == nil || b != nil {
			t.Fatal("invalid core material accepted")
		}
	}
}
