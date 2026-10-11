package wire_test

import (
	"bytes"
	"encoding/hex"
	"errors"
	"testing"

	"github.com/nirvana9/wx/internal/wire"
)

func unhex(t testing.TB, s string) []byte {
	t.Helper()
	b, err := hex.DecodeString(s)
	if err != nil {
		t.Fatal(err)
	}
	return b
}

func TestKnownVarint(t *testing.T) {
	f, err := wire.EncodeVarint(1, 150)
	if err != nil || hex.EncodeToString(f.Raw) != "089601" || f.Number != 1 || f.WireType != 0 {
		t.Fatalf("got %v, %v", f, err)
	}
}

func TestNegativeInt32(t *testing.T) {
	f, err := wire.EncodeInt32(1, -1)
	if err != nil || hex.EncodeToString(f.Raw) != "08ffffffffffffffffff01" {
		t.Fatalf("%x: %v", f.Raw, err)
	}
}

func TestPreserveUnknownAndRepeated(t *testing.T) {
	raw := unhex(t, "08010802a20601ff")
	fields, err := wire.Parse(raw, wire.DefaultLimits())
	if err != nil || len(fields) != 3 {
		t.Fatalf("fields=%v err=%v", fields, err)
	}
	joined, err := wire.Join(fields)
	if err != nil || !bytes.Equal(joined, raw) {
		t.Fatalf("roundtrip=%x err=%v", joined, err)
	}
	raw[1] = 99
	if !bytes.Equal(fields[0].Raw, unhex(t, "0801")) {
		t.Fatal("input alias")
	}
}

func TestAllWireTypesAndOpaqueLEN(t *testing.T) {
	// Varint, fixed64, binary LEN (invalid as a submessage), matching group, fixed32.
	raw := unhex(t, "08011101020304050607081a02ff00230802242d01020304")
	fields, err := wire.Parse(raw, wire.DefaultLimits())
	if err != nil || len(fields) != 5 {
		t.Fatalf("%v, %v", fields, err)
	}
	for i, want := range []uint8{0, 1, 2, 3, 5} {
		if fields[i].WireType != want {
			t.Errorf("type[%d]=%d", i, fields[i].WireType)
		}
	}
	got, err := wire.Join(fields)
	if err != nil || !bytes.Equal(got, raw) {
		t.Fatalf("%x, %v", got, err)
	}
}

func TestRejectMalformedAndDepth(t *testing.T) {
	for _, s := range []string{"00", "0e", "1280", "0b14", "08", "09ff", "12ffffffffffffffffff01", "08ffffffffffffffffff02", "80808080808080808080", "ffffffff1f00", "0c"} {
		t.Run(s, func(t *testing.T) {
			_, err := wire.Parse(unhex(t, s), wire.DefaultLimits())
			if !errors.Is(err, wire.ErrMalformed) {
				t.Fatalf("wanted malformed, got %v", err)
			}
		})
	}
	for _, depth := range []int{64, 65} {
		b := append(bytes.Repeat([]byte{0x0b}, depth), bytes.Repeat([]byte{0x0c}, depth)...)
		_, err := wire.Parse(b, wire.DefaultLimits())
		if depth == 64 && err != nil {
			t.Fatal(err)
		}
		if depth == 65 && !errors.Is(err, wire.ErrLimit) {
			t.Fatalf("depth err=%v", err)
		}
	}
}

func TestLimitsAndFieldNumbers(t *testing.T) {
	if _, err := wire.Parse(bytes.Repeat([]byte{8, 1}, 65537), wire.DefaultLimits()); !errors.Is(err, wire.ErrLimit) {
		t.Fatal("field budget", err)
	}
	_, err := wire.Parse([]byte{8, 1}, wire.Limits{MaxBytes: 1, MaxDepth: 64})
	if !errors.Is(err, wire.ErrLimit) {
		t.Fatal(err)
	}
	for _, n := range []uint32{0, 1 << 29} {
		if _, err := wire.EncodeVarint(n, 1); !errors.Is(err, wire.ErrMalformed) {
			t.Fatalf("%d: %v", n, err)
		}
	}
	f, err := wire.EncodeBytes((1<<29)-1, []byte{0, 255})
	if err != nil {
		t.Fatal(err)
	}
	if _, err := wire.Parse(f.Raw, wire.DefaultLimits()); err != nil {
		t.Fatal(err)
	}
	child, err := (wire.Limits{MaxBytes: 30, MaxDepth: 1}).Child()
	if err != nil || child.MaxDepth != 0 || child.MaxBytes != 30 {
		t.Fatalf("%v %v", child, err)
	}
	if _, err := child.Child(); !errors.Is(err, wire.ErrLimit) {
		t.Fatal(err)
	}
}

func TestJoinValidatesMetadataAndLimits(t *testing.T) {
	for _, f := range []wire.Field{
		{Number: 2, WireType: 0, Raw: []byte{8, 1}},
		{Number: 1, WireType: 2, Raw: []byte{8, 1}},
		{Number: 1, WireType: 0, Raw: []byte{8, 1, 8, 2}},
	} {
		if _, err := wire.Join([]wire.Field{f}); !errors.Is(err, wire.ErrMalformed) {
			t.Fatal(err)
		}
	}
	if _, err := wire.EncodeBytes(1, make([]byte, 16<<20)); !errors.Is(err, wire.ErrLimit) {
		t.Fatal(err)
	}
}

func FuzzParse(f *testing.F) {
	for _, s := range []string{"", "089601", "08010802a20601ff", "0b08010c", "1280", "08ffffffffffffffffff01"} {
		f.Add(unhex(f, s))
	}
	f.Fuzz(func(t *testing.T, b []byte) {
		fields, err := wire.Parse(b, wire.DefaultLimits())
		if err != nil {
			return
		}
		joined, err := wire.Join(fields)
		if err != nil || !bytes.Equal(joined, b) {
			t.Fatalf("%x != %x (%v)", joined, b, err)
		}
	})
}
