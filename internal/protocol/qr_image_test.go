package protocol

import (
	"bytes"
	"encoding/hex"
	"encoding/json"
	"errors"
	"os"
	"testing"
)

func displayVector(t *testing.T) ([]byte, []byte) {
	t.Helper()
	var v struct {
		ResponseHex string `json:"response_hex"`
		PNGHex      string `json:"png_hex"`
	}
	b, err := os.ReadFile("../../testdata/qrcode/display_vector.json")
	if err != nil {
		t.Fatal(err)
	}
	if err = json.Unmarshal(b, &v); err != nil {
		t.Fatal(err)
	}
	response, err := hex.DecodeString(v.ResponseHex)
	if err != nil {
		t.Fatal(err)
	}
	png, err := hex.DecodeString(v.PNGHex)
	if err != nil {
		t.Fatal(err)
	}
	return response, png
}

func TestCapturedQRImage(t *testing.T) {
	response, png := displayVector(t)
	qr, err := DecodeQRImage(response)
	if err != nil || qr.Width != 2 || qr.Height != 2 || !bytes.Equal(qr.PNG, png) {
		t.Fatal(qr, err)
	}
	// Duplicate critical fields and every truncation must fail closed.
	for i := 0; i < len(response); i++ {
		// Truncation of optional trailing fields can still be a complete preview.
		if i < bytes.Index(response, png)+len(png) {
			if _, err := DecodeQRImage(response[:i]); err == nil {
				t.Fatalf("accepted incomplete image at %d", i)
			}
		}
	}
	if _, err := DecodeQRImage(append(append([]byte{}, response...), response[:6]...)); err == nil {
		t.Fatal("duplicate BaseResponse accepted")
	}
}

func TestQRImageRejectsServerErrorAndCorruption(t *testing.T) {
	response, _ := displayVector(t)
	bad := append([]byte{}, response...)
	bad[3] = 1
	if _, err := DecodeQRImage(bad); !errors.Is(err, ErrQRServer) {
		t.Fatal(err)
	}
	// Native Buffer size must agree with its bytes field.
	bad = append([]byte{}, response...)
	bad[9]++
	if _, err := DecodeQRImage(bad); err == nil {
		t.Fatal("invalid native Buffer accepted")
	}
	bad = append([]byte{}, response...)
	bad[14] ^= 1
	if _, err := DecodeQRImage(bad); err == nil {
		t.Fatal("bad PNG accepted")
	}
	if _, err := DecodeQRImage(make([]byte, (16<<20)+1)); err == nil {
		t.Fatal("oversized response accepted")
	}
}

func TestPrivateNativeQRImage(t *testing.T) {
	path := os.Getenv("WX_NATIVE_QR_RESPONSE")
	if path == "" {
		t.Skip("private real QR response not provided")
	}
	b, err := os.ReadFile(path)
	if err != nil {
		t.Fatal(err)
	}
	qr, err := DecodeQRImage(b)
	if err != nil || qr.Width != 185 || qr.Height != 185 {
		t.Fatal(qr, err)
	}
}
