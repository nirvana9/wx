package protocol

import (
	"encoding/json"
	"os"
	"testing"
)

func TestNativeTaskECDHInfoSelector(t *testing.T) {
	input, err := os.ReadFile("../../testdata/auth/native-transport-selector.json")
	if err != nil {
		t.Fatal(err)
	}
	var fixture struct {
		ELF   string `json:"elf_sha256"`
		Cases []struct {
			CGI      uint32 `json:"cgi"`
			ECDHInfo bool   `json:"ecdh_info"`
		} `json:"cases"`
	}
	if err := json.Unmarshal(input, &fixture); err != nil {
		t.Fatal(err)
	}
	if fixture.ELF != PinnedELFSHA256 || len(fixture.Cases) != 21 {
		t.Fatal("invalid native selector fixture")
	}
	for _, tc := range fixture.Cases {
		if got := NativeTaskSelectsECDHInfo(tc.CGI); got != tc.ECDHInfo {
			t.Errorf("CGI %d: Go selector %t, native %t", tc.CGI, got, tc.ECDHInfo)
		}
	}
}
