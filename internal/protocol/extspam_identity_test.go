package protocol

import (
	"bytes"
	"testing"

	"github.com/nirvana9/wx/internal/testutil"
)

func TestNativeExtSpamIdentityRecord(t *testing.T) {
	type nativeCase struct {
		Name        string `json:"name"`
		IdentityHex string `json:"identity_hex"`
		RecordHex   string `json:"record_hex"`
		Outcome     string `json:"outcome"`
	}
	f := testutil.LoadJSON[struct {
		ELFSHA256   string       `json:"elf_sha256"`
		Cases       []nativeCase `json:"cases"`
		ReaderCases []nativeCase `json:"reader_cases"`
	}](t, "../../testdata/auth/native-extspam-identity.json")
	if f.ELFSHA256 != "2ca28ea56b1a400543d0128ebaf0b93f88172dd66dc0426d3d74fdb971eab959" || len(f.Cases) != 5 || len(f.ReaderCases) != 6 {
		t.Fatal("unexpected native provenance")
	}
	for _, c := range f.Cases {
		t.Run(c.Name, func(t *testing.T) {
			identity, record := testutil.MustHex(t, c.IdentityHex), testutil.MustHex(t, c.RecordHex)
			if c.Outcome != "complete" {
				if got, err := DecodeNativeExtSpamIdentityRecord(record); err != ErrNativeIdentityRecord || got != nil {
					t.Fatal("accepted incomplete native record")
				}
				if c.Name == "short_identity" {
					if got, err := EncodeNativeExtSpamIdentityRecord(identity); err != ErrNativeIdentityRecord || got != nil {
						t.Fatal("accepted unsupported identity width")
					}
				}
				return
			}
			encoded, err := EncodeNativeExtSpamIdentityRecord(identity)
			if err != nil || !bytes.Equal(encoded, record) {
				t.Fatal("native record encoding mismatch")
			}
			decoded, err := DecodeNativeExtSpamIdentityRecord(record)
			if err != nil || !bytes.Equal(decoded, identity) {
				t.Fatal("native record decoding mismatch")
			}
			clear(identity)
			if !bytes.Equal(encoded, record) {
				t.Fatal("encoded record aliases identity")
			}
			clear(decoded)
			if !bytes.Equal(encoded, record) {
				t.Fatal("decoded identity aliases record")
			}
			for _, at := range []int{0, 35, 36, 39} {
				corrupt := bytes.Clone(record)
				corrupt[at] ^= 1
				if got, err := DecodeNativeExtSpamIdentityRecord(corrupt); err != ErrNativeIdentityRecord || got != nil {
					t.Fatal("accepted damaged native checksum record")
				}
			}
		})
	}
	for _, c := range f.ReaderCases {
		t.Run("native_reader_"+c.Name, func(t *testing.T) {
			identity, err := DecodeNativeExtSpamIdentityRecord(testutil.MustHex(t, c.RecordHex))
			if c.Outcome == "complete" {
				if err != nil || !bytes.Equal(identity, testutil.MustHex(t, c.IdentityHex)) {
					t.Fatal("native reader mismatch")
				}
			} else if err != ErrNativeIdentityRecord || identity != nil {
				t.Fatal("native reader rejected this record")
			}
		})
	}
}

func TestNativeExtSpamIdentityRecordCanonicalSize(t *testing.T) {
	for _, size := range []int{0, 35, 37, 1 << 20} {
		if got, err := EncodeNativeExtSpamIdentityRecord(make([]byte, size)); err != ErrNativeIdentityRecord || got != nil {
			t.Fatal("accepted unsupported identity size", size)
		}
	}
	for _, size := range []int{0, 39, 41, 1 << 20} {
		if got, err := DecodeNativeExtSpamIdentityRecord(make([]byte, size)); err != ErrNativeIdentityRecord || got != nil {
			t.Fatal("accepted noncanonical record size", size)
		}
	}
}
