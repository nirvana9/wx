package cryptox

import (
	"bytes"
	"errors"
	"testing"

	"github.com/nirvana9/wx/internal/testutil"
)

type nativeVectors struct {
	AES []struct {
		Name     string `json:"name"`
		Key      string `json:"key_hex"`
		Nonce    string `json:"nonce_hex"`
		AAD      string `json:"aad_hex"`
		Plain    string `json:"plain_hex"`
		Envelope string `json:"envelope_hex"`
	} `json:"aes_gcm"`
	HKDF []struct {
		Name   string `json:"name"`
		Salt   string `json:"salt_hex"`
		IKM    string `json:"ikm_hex"`
		Info   string `json:"info_hex"`
		Length int    `json:"length"`
		Result uint32 `json:"result"`
		Output string `json:"output_hex"`
	} `json:"hkdf_sha256"`
}

func TestAESGCMNativeVectors(t *testing.T) {
	vectors := testutil.LoadJSON[nativeVectors](t, "../../testdata/crypto/native_vectors.json")
	if len(vectors.AES) < 5 {
		t.Fatal("missing independently executed native vectors")
	}
	for _, v := range vectors.AES {
		t.Run(v.Name, func(t *testing.T) {
			key, nonce, aad, plain := testutil.MustHex(t, v.Key), testutil.MustHex(t, v.Nonce), testutil.MustHex(t, v.AAD), testutil.MustHex(t, v.Plain)
			originals := [][]byte{bytes.Clone(key), bytes.Clone(nonce), bytes.Clone(aad), bytes.Clone(plain)}
			got, err := SealAESGCM(key, nonce, aad, plain)
			if err != nil {
				t.Fatal(err)
			}
			want := testutil.MustHex(t, v.Envelope)
			if !bytes.Equal(got, want) {
				t.Fatalf("native envelope mismatch: got %x want %x", got, want)
			}
			opened, err := OpenAESGCM(key, aad, want)
			if err != nil || !bytes.Equal(opened, plain) {
				t.Fatalf("native decrypt mismatch: %x, %v", opened, err)
			}
			for i, input := range [][]byte{key, nonce, aad, plain} {
				if !bytes.Equal(input, originals[i]) {
					t.Fatalf("input %d modified", i)
				}
			}
			if !bytes.Equal(want, testutil.MustHex(t, v.Envelope)) {
				t.Fatal("decrypt modified envelope")
			}
		})
	}
}

func TestAESGCMRejectsTampering(t *testing.T) {
	vectors := testutil.LoadJSON[nativeVectors](t, "../../testdata/crypto/native_vectors.json")
	for _, v := range vectors.AES {
		key, aad, frame := testutil.MustHex(t, v.Key), testutil.MustHex(t, v.AAD), testutil.MustHex(t, v.Envelope)
		for i := range frame {
			bad := bytes.Clone(frame)
			bad[i] ^= 1
			plain, err := OpenAESGCM(key, aad, bad)
			if !errors.Is(err, ErrIntegrity) || plain != nil {
				t.Fatalf("%s byte %d delivered untrusted plaintext: %x, %v", v.Name, i, plain, err)
			}
		}
		badAAD := append(bytes.Clone(aad), 1)
		if plain, err := OpenAESGCM(key, badAAD, frame); !errors.Is(err, ErrIntegrity) || plain != nil {
			t.Fatalf("%s accepted wrong AAD", v.Name)
		}
	}
	for n := 0; n < 28; n++ {
		if plain, err := OpenAESGCM(make([]byte, 16), nil, make([]byte, n)); !errors.Is(err, ErrIntegrity) || plain != nil {
			t.Fatalf("short frame %d accepted", n)
		}
	}
}

func TestCryptoInputLimits(t *testing.T) {
	if out, err := SealAESGCM(make([]byte, 15), make([]byte, 12), nil, nil); !errors.Is(err, ErrInvalidMaterial) || out != nil {
		t.Fatal("invalid key accepted")
	}
	if out, err := SealAESGCM(make([]byte, 16), make([]byte, 11), nil, nil); !errors.Is(err, ErrInvalidMaterial) || out != nil {
		t.Fatal("invalid nonce accepted")
	}
	if out, err := OpenAESGCM(make([]byte, 15), nil, make([]byte, 28)); !errors.Is(err, ErrInvalidMaterial) || out != nil {
		t.Fatal("invalid decrypt key accepted")
	}
	large := make([]byte, (16<<20)+1)
	for _, in := range []struct{ aad, plain []byte }{{nil, large}, {large, nil}} {
		if out, err := SealAESGCM(make([]byte, 16), make([]byte, 12), in.aad, in.plain); !errors.Is(err, ErrLimit) || out != nil {
			t.Fatal("AES seal limit ignored")
		}
	}
	if out, err := OpenAESGCM(make([]byte, 16), nil, make([]byte, (16<<20)+29)); !errors.Is(err, ErrLimit) || out != nil {
		t.Fatal("AES open limit ignored")
	}
	if out, err := OpenAESGCM(make([]byte, 16), large, make([]byte, 28)); !errors.Is(err, ErrLimit) || out != nil {
		t.Fatal("AAD open limit ignored")
	}
	for _, in := range []struct{ salt, ikm, info []byte }{{large, nil, []byte{1}}, {nil, large, []byte{1}}, {nil, nil, large}} {
		if out, err := DeriveHKDFSHA256(in.salt, in.ikm, in.info, 32); !errors.Is(err, ErrLimit) || out != nil {
			t.Fatal("HKDF input limit ignored")
		}
	}
	if out, err := DeriveHKDFSHA256(nil, nil, []byte{1}, -1); !errors.Is(err, ErrInvalidMaterial) || out != nil {
		t.Fatal("negative HKDF size accepted")
	}
}

func TestHKDFNativeVectors(t *testing.T) {
	vectors := testutil.LoadJSON[nativeVectors](t, "../../testdata/crypto/native_vectors.json")
	if len(vectors.HKDF) < 7 {
		t.Fatal("missing native HKDF vectors")
	}
	for _, v := range vectors.HKDF {
		t.Run(v.Name, func(t *testing.T) {
			out, err := DeriveHKDFSHA256(testutil.MustHex(t, v.Salt), testutil.MustHex(t, v.IKM), testutil.MustHex(t, v.Info), v.Length)
			if v.Result != 0 {
				want := ErrInvalidMaterial
				if v.Length > 255*32 {
					want = ErrLimit
				}
				if !errors.Is(err, want) || out != nil {
					t.Fatalf("native rejected material accepted: %x, %v", out, err)
				}
				return
			}
			if err != nil || !bytes.Equal(out, testutil.MustHex(t, v.Output)) {
				t.Fatalf("native HKDF mismatch: %x, %v", out, err)
			}
		})
	}
}
