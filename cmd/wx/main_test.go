package main

import (
	"bytes"
	"context"
	"encoding/hex"
	"encoding/json"
	"errors"
	"github.com/nirvana9/wx/internal/protocol"
	"os"
	"path/filepath"
	"testing"
)

func TestNetworkQRCLISavesFetchedImage(t *testing.T) {
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
	output := filepath.Join(t.TempDir(), "qr.png")
	var out bytes.Buffer
	calls := 0
	fetch := func(context.Context) (protocol.QRImage, error) { calls++; return qr, nil }
	if err := runWithFetcher(context.Background(), []string{"qr", "--output", output, "--terminal=false"}, &out, fetch); err != nil {
		t.Fatal(err)
	}
	actual, err := os.ReadFile(output)
	if err != nil || !bytes.Equal(actual, qr.PNG) || calls != 1 {
		t.Fatal("fetched image not saved", err)
	}
	stat, err := os.Stat(output)
	if err != nil || stat.Mode().Perm() != 0600 {
		t.Fatal("QR file permissions", err)
	}
	if bytes.Contains(out.Bytes(), []byte("登录成功")) || !bytes.Contains(out.Bytes(), []byte("尚未实现")) {
		t.Fatal("QR command overstated login status")
	}
	if err := runWithFetcher(context.Background(), []string{"qr", "--output", output}, &out, fetch); err == nil {
		t.Fatal("existing QR overwritten")
	}
}

func TestNetworkQRCLIFailureDoesNotCreateImage(t *testing.T) {
	output := filepath.Join(t.TempDir(), "qr.png")
	var out bytes.Buffer
	fetch := func(context.Context) (protocol.QRImage, error) {
		return protocol.QRImage{}, errors.New("authentication rejected")
	}
	if err := runWithFetcher(context.Background(), []string{"qr", "--output", output}, &out, fetch); err == nil {
		t.Fatal("failed exchange reported success")
	}
	if _, err := os.Stat(output); !os.IsNotExist(err) {
		t.Fatal("image created after failed exchange")
	}
}

func TestQRPreviewCLIUsesDecodedServerImage(t *testing.T) {
	b, err := os.ReadFile("../../testdata/qrcode/display_vector.json")
	if err != nil {
		t.Fatal(err)
	}
	var v struct {
		ResponseHex string `json:"response_hex"`
		PNGHex      string `json:"png_hex"`
	}
	if err := json.Unmarshal(b, &v); err != nil {
		t.Fatal(err)
	}
	root := t.TempDir()
	input := filepath.Join(root, "response.bin")
	output := filepath.Join(root, "qr.png")
	response, _ := hex.DecodeString(v.ResponseHex)
	expected, _ := hex.DecodeString(v.PNGHex)
	if err := os.WriteFile(input, response, 0600); err != nil {
		t.Fatal(err)
	}
	var out bytes.Buffer
	if err := run([]string{"qr-preview", "--response", input, "--output", output, "--terminal=false"}, &out); err != nil {
		t.Fatal(err)
	}
	actual, err := os.ReadFile(output)
	if err != nil || !bytes.Equal(actual, expected) {
		t.Fatal("server PNG changed", err)
	}
	stat, err := os.Stat(output)
	if err != nil || stat.Mode().Perm() != 0600 {
		t.Fatal("public QR file", err)
	}
	if err := run([]string{"qr-preview", "--response", input, "--output", output}, &out); err == nil {
		t.Fatal("existing file overwritten")
	}
	if err := run([]string{"login"}, &out); err == nil {
		t.Fatal("unimplemented login reported success")
	}
}

func TestQRPreviewCLIRejectsInvalidResponseBeforeWriting(t *testing.T) {
	root := t.TempDir()
	input := filepath.Join(root, "bad.bin")
	output := filepath.Join(root, "qr.png")
	if err := os.WriteFile(input, []byte("not a native response"), 0600); err != nil {
		t.Fatal(err)
	}
	var out bytes.Buffer
	if err := run([]string{"qr-preview", "--response", input, "--output", output}, &out); err == nil {
		t.Fatal("invalid response accepted")
	}
	if _, err := os.Stat(output); !os.IsNotExist(err) {
		t.Fatal("QR created from invalid response")
	}
}
