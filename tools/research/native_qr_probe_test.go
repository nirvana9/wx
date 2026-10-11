package main

import (
	"bytes"
	"crypto/ecdh"
	"encoding/json"
	"os"
	"testing"

	"github.com/nirvana9/wx/internal/cryptox"
)

// Regression: argument order must satisfy the proven native GCM envelope API
// before any QR request is transmitted. The plaintext is synthetic, not login.
func TestHybridProbeRequestAuthenticates(t *testing.T) {
	b, err := os.ReadFile("native-peer-keys.json")
	if err != nil {
		t.Fatal(err)
	}
	var cfg config
	if err := json.Unmarshal(b, &cfg); err != nil {
		t.Fatal(err)
	}
	plain := []byte("synthetic offline envelope integration; no login")
	frame, state := wrap(cfg, plain)
	request := protoFields(frame[frame[1]>>2:])
	pub := protoFields(request[2])[2]
	if !bytes.Equal(pub, state.k.PublicKey().Bytes()) {
		t.Fatal("ephemeral public key mismatch")
	}
	peer, err := ecdh.P256().NewPublicKey(un(cfg.Peer))
	if err != nil {
		t.Fatal(err)
	}
	raw, err := state.k.ECDH(peer)
	if err != nil {
		t.Fatal(err)
	}
	shared := sh(raw)
	aad := sh(cat([]byte("1415"), pub))
	random, err := cryptox.OpenAESGCM(shared[:24], aad, request[3])
	if err != nil {
		t.Fatal(err)
	}
	random = inflate(random)
	if len(random) != 32 {
		t.Fatal("native random material length")
	}
	expanded, err := cryptox.DeriveHKDFSHA256([]byte("security hdkf expand"), random, aad, 56)
	if err != nil {
		t.Fatal(err)
	}
	body, err := cryptox.OpenAESGCM(expanded[:24], sh(cat([]byte("1415"), pub, request[3])), request[5])
	if err != nil {
		t.Fatal(err)
	}
	if !bytes.Equal(inflate(body), plain) {
		t.Fatal("authenticated request plaintext mismatch")
	}
}
