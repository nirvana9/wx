package protocol

import (
	"bytes"
	"encoding/json"
	"errors"
	"fmt"
	"os"
	"strconv"
	"strings"
	"testing"
)

type authAESVector struct {
	Name, Hex    string
	BaseRequest  *string `json:"base_request"`
	BaseAuthInfo *string `json:"base_auth_info"`
	Bytes        map[string]string
	Uint32       map[string]uint32
	Int32        map[string]int32
	ClientCheck  *string `json:"client_check"`
	ExtSpam      *string `json:"ext_spam"`
	PubKey       *struct {
		Field1 *int32
		Field2 *string
	} `json:"pubkey"`
	ExtInfo *map[string]string `json:"ext_info"`
}

func aesVectorInput(t *testing.T, v authAESVector) ManualAuthAESFields {
	t.Helper()
	decode := func(s *string) []byte {
		if s == nil {
			return nil
		}
		b := vectorHex(t, *s)
		if b == nil {
			return []byte{}
		}
		return b
	}
	x := ManualAuthAESFields{BaseRequest: decode(v.BaseRequest), BaseAuthReqInfo: decode(v.BaseAuthInfo),
		Bytes: make(map[uint32][]byte), Uint32: make(map[uint32]uint32),
		ClientCheckData: decode(v.ClientCheck), ExtSpamInfo: decode(v.ExtSpam)}
	for k, b := range v.Bytes {
		n, e := strconv.ParseUint(k, 10, 32)
		if e != nil {
			t.Fatal(e)
		}
		x.Bytes[uint32(n)] = vectorHex(t, b)
	}
	for k, b := range v.Uint32 {
		n, e := strconv.ParseUint(k, 10, 32)
		if e != nil {
			t.Fatal(e)
		}
		x.Uint32[uint32(n)] = b
	}
	if b, ok := v.Int32["13"]; ok {
		x.Field13 = &b
	}
	if v.PubKey != nil {
		x.PubKeyInfo = &ManualAuthPubKeyInfo{Field1: v.PubKey.Field1, Key: decode(v.PubKey.Field2)}
	}
	if v.ExtInfo != nil {
		x.ExtAuthReqInfo = &ManualAuthExtInfo{}
		if s, ok := (*v.ExtInfo)["2"]; ok {
			x.ExtAuthReqInfo.Field2 = decode(&s)
		}
		if s, ok := (*v.ExtInfo)["3"]; ok {
			x.ExtAuthReqInfo.Field3 = decode(&s)
		}
	}
	return x
}

// Catches wrong member/field mappings, signedness, nested types and loss of
// explicit empty/zero presence. Expected bytes come from native serializers.
func TestManualAuthAESFieldsNativeVectors(t *testing.T) {
	b, e := os.ReadFile("../../testdata/auth/native-aes-fields.json")
	if e != nil {
		t.Fatal(e)
	}
	var v struct {
		ELF   string `json:"elf_sha256"`
		Cases []authAESVector
	}
	if e = json.Unmarshal(b, &v); e != nil || v.ELF != PinnedELFSHA256 || len(v.Cases) != 4 {
		t.Fatal("untrusted AES vectors", e)
	}
	for _, c := range v.Cases {
		t.Run(c.Name, func(t *testing.T) {
			got, e := EncodeManualAuthAESFields(aesVectorInput(t, c))
			if e != nil || !bytes.Equal(got, vectorHex(t, c.Hex)) {
				t.Fatal("native AES-section bytes differ", e)
			}
		})
	}
}

func TestManualAuthAESFieldsRejectWrongSlotsAndMalformedMessages(t *testing.T) {
	for _, in := range []ManualAuthAESFields{
		{Bytes: map[uint32][]byte{12: {}}},
		{Bytes: map[uint32][]byte{23: {1}}},
		{Bytes: map[uint32][]byte{26: {1}}},
		{Bytes: map[uint32][]byte{1: {1}}},
		{Uint32: map[uint32]uint32{13: 1}},
		{Uint32: map[uint32]uint32{28: 1}},
		{BaseRequest: []byte{0x0f}},
		{BaseAuthReqInfo: []byte{0x12, 0x80}},
		{Bytes: map[uint32][]byte{3: bytes.Repeat([]byte{1}, maxMessageBody)}},
		{ClientCheckData: bytes.Repeat([]byte{1}, maxMessageBody)},
		{PubKeyInfo: &ManualAuthPubKeyInfo{Key: bytes.Repeat([]byte{1}, maxMessageBody)}},
		{Bytes: map[uint32][]byte{3: bytes.Repeat([]byte{1}, maxMessageBody/2), 4: bytes.Repeat([]byte{1}, maxMessageBody/2)}},
	} {
		if out, e := EncodeManualAuthAESFields(in); out != nil || !errors.Is(e, ErrAuthRequest) {
			t.Fatal("invalid auth fields accepted", e)
		}
	}
}

func TestManualAuthAESFieldsDetachAndHideMaterial(t *testing.T) {
	in := ManualAuthAESFields{Bytes: map[uint32][]byte{3: []byte("synthetic-secret")}, ClientCheckData: []byte("synthetic-secret"),
		PubKeyInfo: &ManualAuthPubKeyInfo{Key: []byte("synthetic-secret")}, ExtAuthReqInfo: &ManualAuthExtInfo{Field2: []byte("synthetic-secret")}}
	out, e := EncodeManualAuthAESFields(in)
	if e != nil {
		t.Fatal(e)
	}
	copyOfOutput := bytes.Clone(out)
	in.Bytes[3][0] ^= 0xff
	in.ClientCheckData[0] ^= 0xff
	in.PubKeyInfo.Key[0] ^= 0xff
	in.ExtAuthReqInfo.Field2[0] ^= 0xff
	if !bytes.Equal(out, copyOfOutput) {
		t.Fatal("output aliases auth input")
	}
	for _, value := range []any{in, &in, *in.PubKeyInfo, in.PubKeyInfo, *in.ExtAuthReqInfo, in.ExtAuthReqInfo} {
		for _, format := range []string{"%v", "%+v", "%#v"} {
			s := fmt.Sprintf(format, value)
			if strings.Contains(s, "secret") || strings.Contains(s, "[115 121") {
				t.Fatal("default formatting reveals auth input")
			}
		}
	}
}
