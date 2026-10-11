package protocol

import (
	"bytes"
	"encoding/hex"
	"encoding/json"
	"errors"
	"os"
	"strings"
	"testing"
)

type sendBodyVectors struct {
	ELF     string `json:"elf_sha256"`
	Request struct {
		To, Text, Hex string
		ClientID      uint32 `json:"client_id"`
		CreatedAt     uint32 `json:"created_at"`
	}
	Replies []struct{ Name, Hex string }
}

func nativeSendVectors(t *testing.T) sendBodyVectors {
	t.Helper()
	b, e := os.ReadFile("../../testdata/send/native-body-vectors.json")
	if e != nil {
		t.Fatal(e)
	}
	var v sendBodyVectors
	if e = json.Unmarshal(b, &v); e != nil || v.ELF != PinnedELFSHA256 {
		t.Fatal("untrusted vector", e)
	}
	return v
}

func vectorHex(t *testing.T, s string) []byte {
	t.Helper()
	b, e := hex.DecodeString(s)
	if e != nil {
		t.Fatal(e)
	}
	return b
}

// Dropping the repeated wrapper, changing field presence/order, or treating a
// uint32 client ID as a string must fail this independent native CPU vector.
func TestEncodeTextSendMatchesNativeSerializer(t *testing.T) {
	v := nativeSendVectors(t)
	got, e := EncodeTextSendBody(TextSendBody{To: v.Request.To, Text: v.Request.Text, ClientID: v.Request.ClientID, CreatedAt: v.Request.CreatedAt})
	if e != nil || !bytes.Equal(got, vectorHex(t, v.Request.Hex)) {
		t.Fatal("native request differs", e)
	}
}

func TestTextSendInputBounds(t *testing.T) {
	in := TextSendBody{To: "wxid_synthetic", Text: strings.Repeat("界", 1365) + "a", ClientID: 1, CreatedAt: 1700000000}
	if _, e := EncodeTextSendBody(in); e != nil {
		t.Fatal("4096 UTF8 bytes rejected", e)
	}
	for _, mutate := range []func(*TextSendBody){
		func(p *TextSendBody) { p.Text += "a" },
		func(p *TextSendBody) { p.Text = string([]byte{255}) },
		func(p *TextSendBody) { p.Text = "" },
		func(p *TextSendBody) { p.To = "wxid a" },
		func(p *TextSendBody) { p.To = "wxid\x1b" },
		func(p *TextSendBody) { p.To = strings.Repeat("a", 257) },
		func(p *TextSendBody) { p.ClientID = 0 },
	} {
		bad := in
		mutate(&bad)
		if b, e := EncodeTextSendBody(bad); e == nil || b != nil {
			t.Fatal("invalid message accepted")
		}
	}
}

func TestDecodeNativeSendResultPreservesUnmappedFields(t *testing.T) {
	v := nativeSendVectors(t)
	for _, sample := range v.Replies {
		r, e := DecodeTextSendResponse(vectorHex(t, sample.Hex))
		if sample.Name == "parent_rejected" {
			if !errors.Is(e, ErrSendRejected) || len(r.Results) != 0 {
				t.Fatal("parent rejection ignored", e)
			}
			continue
		}
		if e != nil || len(r.Results) != 1 {
			t.Fatal("result lost", e)
		}
		item := r.Results[0]
		if item.To != v.Request.To || len(item.Fields) != 8 {
			t.Fatal("native item fields lost")
		}
		if sample.Name == "child_rejected" {
			if item.Code != -5 {
				t.Fatal("child rejection ignored")
			}
		} else {
			if item.Code != 0 || item.NewMessageID != 9876543210987654321 {
				t.Fatal("64-bit result lost")
			}
		}
	}
}

func TestSendResponseRejectsAmbiguousSuccess(t *testing.T) {
	v := nativeSendVectors(t)
	valid := vectorHex(t, v.Replies[0].Hex)
	for _, bad := range [][]byte{
		append(bytes.Clone(valid), 0x10, 0x01),                                      // duplicate count
		bytes.Replace(valid, []byte{0x10, 0x01, 0x1a}, []byte{0x10, 0x02, 0x1a}, 1), // count mismatch
		{0x0a, 0x06, 0x08, 0x80, 0x80, 0x80, 0x80, 0x10},                            // Ret wraps to zero if truncated
		valid[:len(valid)-1],
	} {
		if r, e := DecodeTextSendResponse(bad); e == nil || len(r.Results) != 0 {
			t.Fatal("ambiguous result accepted")
		}
	}
}

func TestSendResponseRetainsRawExtensions(t *testing.T) {
	v := nativeSendVectors(t)
	b := vectorHex(t, v.Replies[0].Hex)
	// Add an unknown varint to BaseResponse and to the outer response.
	b = bytes.Replace(b, []byte{0x0a, 0x02, 0x08, 0x00}, []byte{0x0a, 0x05, 0x08, 0x00, 0xa0, 0x06, 0x2a}, 1)
	b = append(b, 0xa0, 0x06, 0x63)
	r, e := DecodeTextSendResponse(b)
	if e != nil || !bytes.Equal(r.Raw, b) {
		t.Fatal("future envelope fields discarded", e)
	}
	keep := bytes.Clone(b)
	for i := range b {
		b[i] = 0
	}
	if !bytes.Equal(r.Raw, keep) {
		t.Fatal("raw response aliases input")
	}
}
