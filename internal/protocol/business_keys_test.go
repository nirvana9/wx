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

func TestBusinessKeyCandidatesMatchNativeSelection(t *testing.T) {
	input, err := os.ReadFile("../../testdata/auth/native-business-keys.json")
	if err != nil {
		t.Fatal(err)
	}
	var fixture struct {
		ELF   string `json:"elf_sha256"`
		Cases []struct {
			Name, Identify string
			Original       string `json:"original_hex"`
			Client         string `json:"client_hex"`
			Server         string `json:"server_hex"`
			Selector       uint16 `json:"selector"`
			Request        string `json:"request_key_hex"`
			Response       string `json:"response_key_hex"`
		} `json:"cases"`
	}
	if err := json.Unmarshal(input, &fixture); err != nil {
		t.Fatal(err)
	}
	if fixture.ELF != PinnedELFSHA256 || len(fixture.Cases) != 5 {
		t.Fatal("invalid native business-key fixture")
	}
	for _, tc := range fixture.Cases {
		t.Run(tc.Name, func(t *testing.T) {
			got, err := SelectNativeBusinessKeyCandidates(vectorHex(t, tc.Original), vectorHex(t, tc.Client), vectorHex(t, tc.Server))
			if err != nil {
				t.Fatal(err)
			}
			if got.Identify() != tc.Identify || got.Selector() != tc.Selector ||
				!bytes.Equal(got.RequestKey(), vectorHex(t, tc.Request)) ||
				!bytes.Equal(got.ResponseKey(), vectorHex(t, tc.Response)) {
				t.Fatal("business key selection differs from native setter/getter")
			}
		})
	}
}

func TestBusinessKeyCandidatesAreDetachedAndRedacted(t *testing.T) {
	client, server := []byte("client-key16byte"), []byte("server-key16byte")
	got, err := SelectNativeBusinessKeyCandidates(nil, client, server)
	if err != nil {
		t.Fatal(err)
	}
	client[0] ^= 0xff
	server[0] ^= 0xff
	request, response := got.RequestKey(), got.ResponseKey()
	request[0] ^= 0xff
	response[0] ^= 0xff
	if string(got.RequestKey()) != "client-key16byte" || string(got.ResponseKey()) != "server-key16byte" {
		t.Fatal("candidate key aliases caller memory")
	}
	for _, text := range []string{fmt.Sprintf("%v %+v %#v", got, got, got), fmt.Sprintf("%v %+v %#v", *got, *got, *got)} {
		if strings.Contains(text, "client-key16byte") || strings.Contains(text, "server-key16byte") {
			t.Fatal("default formatting disclosed a key")
		}
	}
}

func TestBusinessKeyCandidatesRejectUnsupportedUsedKeys(t *testing.T) {
	for _, tc := range []struct{ original, client, server []byte }{
		{}, {original: []byte("short")},
		{client: []byte("short"), server: make([]byte, 16)},
		{client: make([]byte, 16), server: []byte("short")},
		{original: make([]byte, 16), client: make([]byte, 16), server: []byte("short")},
	} {
		got, err := SelectNativeBusinessKeyCandidates(tc.original, tc.client, tc.server)
		if got != nil || !errors.Is(err, ErrBusinessKeys) {
			t.Fatal("unsupported selected key accepted", err)
		}
	}
}
