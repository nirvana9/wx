package terminal

import (
	"bytes"
	"encoding/hex"
	"encoding/json"
	"errors"
	"github.com/nirvana9/wx/internal/protocol"
	"os"
	"strings"
	"testing"
)

type brokenQRWriter struct{}

func (brokenQRWriter) Write(p []byte) (int, error) { return 0, errors.New("closed terminal") }

func TestRenderQRPreservesImagePixels(t *testing.T) {
	b, err := os.ReadFile("../../testdata/qrcode/display_vector.json")
	if err != nil {
		t.Fatal(err)
	}
	var v struct {
		ResponseHex string `json:"response_hex"`
	}
	if err := json.Unmarshal(b, &v); err != nil {
		t.Fatal(err)
	}
	response, _ := hex.DecodeString(v.ResponseHex)
	qr, err := protocol.DecodeQRImage(response)
	if err != nil {
		t.Fatal(err)
	}
	var out bytes.Buffer
	if err := RenderQR(&out, qr); err != nil {
		t.Fatal(err)
	}
	// The synthetic diagonal pixels need distinct upper/lower half blocks.
	if !strings.Contains(out.String(), "▀▄") || !strings.HasSuffix(out.String(), "\x1b[0m\n") {
		t.Fatal("pixel orientation or terminal reset lost")
	}
	if err := RenderQR(brokenQRWriter{}, qr); err == nil {
		t.Fatal("terminal write failure hidden")
	}
	if err := RenderQR(&out, protocol.QRImage{PNG: []byte("invalid")}); err == nil {
		t.Fatal("invalid PNG accepted")
	}
}
