package nativeqr

import (
	"bytes"
	"crypto/ecdh"
	"testing"

	"github.com/nirvana9/wx/internal/cryptox"
)

// Regression: argument order must satisfy the proven native GCM envelope API
// before any QR request is transmitted. The plaintext is synthetic, not login.
func TestHybridProbeRequestAuthenticates(t *testing.T) {
	client, err := New()
	if err != nil {
		t.Fatal(err)
	}
	cfg := client.cfg
	plain := []byte("synthetic offline envelope integration; no login")
	frame, state := sealHybrid(cfg, plain)
	request := protobufBytes(frame[frame[1]>>2:])
	pub := protobufBytes(request[2])[2]
	if !bytes.Equal(pub, state.k.PublicKey().Bytes()) {
		t.Fatal("ephemeral public key mismatch")
	}
	peer, err := ecdh.P256().NewPublicKey(decodeHex(cfg.Peer))
	if err != nil {
		t.Fatal(err)
	}
	raw, err := state.k.ECDH(peer)
	if err != nil {
		t.Fatal(err)
	}
	shared := digest(raw)
	aad := digest(join([]byte("1415"), pub))
	random, err := cryptox.OpenAESGCM(shared[:24], aad, request[3])
	if err != nil {
		t.Fatal(err)
	}
	random = decompress(random)
	if len(random) != 32 {
		t.Fatal("native random material length")
	}
	expanded, err := cryptox.DeriveHKDFSHA256([]byte("security hdkf expand"), random, aad, 56)
	if err != nil {
		t.Fatal(err)
	}
	body, err := cryptox.OpenAESGCM(expanded[:24], digest(join([]byte("1415"), pub, request[3])), request[5])
	if err != nil {
		t.Fatal(err)
	}
	if !bytes.Equal(decompress(body), plain) {
		t.Fatal("authenticated request plaintext mismatch")
	}
}
