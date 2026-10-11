package nativeqr

import (
	"bytes"
	"context"
	"crypto/aes"
	"crypto/cipher"
	"crypto/ecdh"
	"crypto/ecdsa"
	"crypto/elliptic"
	"crypto/rand"
	"crypto/x509"
	"encoding/binary"
	"encoding/hex"
	"encoding/json"
	"encoding/pem"
	"io"
	"net"
	"net/http"
	"net/http/httptest"
	"os"
	"strings"
	"testing"
	"time"

	"github.com/nirvana9/wx/internal/cryptox"
)

// The service uses test-generated private keys and a synthetic non-login PNG.
// No recorded traffic, real credentials, or real pairing tokens are fixtures.
type syntheticService struct {
	initialDevice          []byte
	poll, notifyKey        []byte
	signing, hybridSigning *ecdsa.PrivateKey
	peer                   *ecdh.PrivateKey
	psk                    []byte
	mode                   string
	response               []byte
	calls                  int
}

func publicPEM(k *ecdsa.PrivateKey) string {
	b, e := x509.MarshalPKIXPublicKey(&k.PublicKey)
	must(e)
	return string(pem.EncodeToMemory(&pem.Block{Type: "PUBLIC KEY", Bytes: b}))
}
func makeService(t *testing.T, mode string) (*Client, *syntheticService) {
	t.Helper()
	s := &syntheticService{mode: mode}
	var e error
	s.signing, e = ecdsa.GenerateKey(elliptic.P256(), rand.Reader)
	if e != nil {
		t.Fatal(e)
	}
	s.hybridSigning, e = ecdsa.GenerateKey(elliptic.P256(), rand.Reader)
	if e != nil {
		t.Fatal(e)
	}
	s.peer, e = ecdh.P256().GenerateKey(rand.Reader)
	if e != nil {
		t.Fatal(e)
	}
	b, e := os.ReadFile("../../testdata/qrcode/display_vector.json")
	if e != nil {
		t.Fatal(e)
	}
	var v struct {
		ResponseHex string `json:"response_hex"`
	}
	must(json.Unmarshal(b, &v))
	s.response = decodeHex(v.ResponseHex)
	c, e := New()
	if e != nil {
		t.Fatal(e)
	}
	c.cfg.MMTLS = c.cfg.MMTLS[:1]
	c.cfg.MMTLS[0].Index = 5
	c.cfg.MMTLS[0].PEM = publicPEM(s.signing)
	c.cfg.Peer = hex.EncodeToString(s.peer.PublicKey().Bytes())
	c.cfg.Verify = publicPEM(s.hybridSigning)
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		defer func() {
			if x := recover(); x != nil {
				t.Errorf("synthetic server failed: %v", x)
				w.WriteHeader(500)
			}
		}()
		if r.Method != "POST" || r.Host != "short.weixin.qq.com" || !strings.HasPrefix(r.URL.Path, "/mmtls/") || r.Header.Get("Upgrade") != "mmtls" {
			t.Error("native HTTP routing changed")
		}
		b, e := io.ReadAll(io.LimitReader(r.Body, 1<<20))
		must(e)
		s.calls++
		if s.mode == "oversized" {
			_, _ = w.Write(make([]byte, (1<<20)+1))
			return
		}
		if s.mode == "malformed" {
			_, _ = w.Write([]byte("not MMTLS"))
			return
		}
		if s.calls == 1 {
			_, _ = w.Write(s.bootstrap(b))
		} else {
			_, _ = w.Write(s.short(b))
		}
	}))
	t.Cleanup(server.Close)
	addr := strings.TrimPrefix(server.URL, "http://")
	c.dial = func(ctx context.Context, network, address string) (net.Conn, error) {
		return (&net.Dialer{}).DialContext(ctx, network, addr)
	}
	return c, s
}
func (s *syntheticService) bootstrap(b []byte) []byte {
	ch := decodeRecords(b)[0].payload
	p := handshakePayload(ch, 1)
	ext := p[50:]
	pub, e := ecdh.P256().NewPublicKey(ext[13:78])
	must(e)
	k, e := ecdh.P256().GenerateKey(rand.Reader)
	must(e)
	raw, e := k.ECDH(pub)
	must(e)
	secret := digest(raw)
	point := join([]byte{0, 17}, uint32BE(7), withLength16(k.PublicKey().Bytes()))
	selection := join([]byte{0, 19}, uint32BE(1), uint32BE(5))
	extensions := join([]byte{2}, withLength32(point), withLength32(selection))
	if s.mode == "duplicate-extension" {
		extensions = join([]byte{3}, withLength32(point), withLength32(point), withLength32(selection))
	}
	sv := withLength32(join([]byte{2, 4, 0xf1, 0xc0, 0x2b}, randomBytes(32), withLength32(extensions)))
	transcript := join(ch, sv)
	traffic := expand(secret, join([]byte("handshake key expansion"), digest(transcript)), 56)
	signature, e := ecdsa.SignASN1(rand.Reader, s.signing, digest(digest(transcript)))
	must(e)
	if s.mode == "bad-bootstrap-signature" {
		signature[len(signature)-1] ^= 1
	}
	sig := withLength32(join([]byte{15}, withLength16(signature)))
	s.psk = expand(secret, join([]byte("PSK_ACCESS"), digest(join(transcript, sig))), 32)
	ticket := join([]byte{1}, randomBytes(98))
	tm := join([]byte{1}, withLength32(ticket))
	if s.mode == "ticket-trailing" {
		tm = append(tm, 0)
	}
	tk := withLength32(join([]byte{4}, tm))
	transcript = join(transcript, sig, tk)
	finish := hmacSHA256(expand(secret, []byte("server finished"), 32), digest(transcript))
	if s.mode == "bad-bootstrap-finished" {
		finish[0] ^= 1
	}
	sf := withLength32(join([]byte{20}, withLength16(finish)))
	out := encodeRecord(0x16, sv)
	for i, p := range [][]byte{sig, tk, sf} {
		typ := byte(0x16)
		if s.mode == "wrong-record-type" {
			typ = 0x17
		}
		enc, e := recordAEAD(traffic[16:32], traffic[44:56], record{typ, p}, uint64(i+1), true)
		must(e)
		out = join(out, encodeRecord(typ, enc))
	}
	return out
}
func (s *syntheticService) short(b []byte) []byte {
	rs := decodeRecords(b)
	ch := rs[0].payload
	early := expand(s.psk, join([]byte("early data key expansion"), digest(ch)), 28)
	ext, e := recordAEAD(early[:16], early[16:], rs[1], 1, false)
	must(e)
	inner, e := recordAEAD(early[:16], early[16:], rs[2], 2, false)
	must(e)
	n := int(binary.BigEndian.Uint16(inner[4:6]))
	path := inner[6 : 6+n]
	inner = inner[6+n:]
	n = int(binary.BigEndian.Uint16(inner))
	host := inner[2 : 2+n]
	inner = inner[2+n:]
	expected := "/cgi-bin/micromsg-bin/getloginqrcode"
	if s.calls == 3 {
		expected = "/cgi-bin/micromsg-bin/checkloginqrcode"
	}
	if string(path) != expected || string(host) != "short.weixin.qq.com" {
		panic("business routing changed")
	}
	packet := inner[4:]
	frame := s.hybridState(packet)
	sv := withLength32(join([]byte{2, 4, 0xf1, 0, 0xa8}, randomBytes(32), withLength32([]byte{0})))
	transcript := join(ch, ext, sv)
	traffic := expand(s.psk, join([]byte("handshake key expansion"), digest(transcript)), 28)
	finish := hmacSHA256(expand(s.psk, []byte("server finished"), 32), digest(transcript))
	if s.mode == "bad-short-finished" {
		finish[0] ^= 1
	}
	out := encodeRecord(0x16, sv)
	for i, r := range []record{{0x16, withLength32(join([]byte{20}, withLength16(finish)))}, {0x17, frame}, {0x15, []byte{0, 0, 0, 3, 0, 1, 1}}} {
		enc, e := recordAEAD(traffic[:16], traffic[16:], r, uint64(i+1), true)
		must(e)
		out = join(out, encodeRecord(r.kind, enc))
	}
	return out
}
func (s *syntheticService) hybridState(packet []byte) []byte {
	cgi, _ := binary.Uvarint(packet[11:])
	want := uint64(502)
	if s.calls == 3 {
		want = 503
	}
	if cgi != want {
		panic("wrong CGI")
	}
	fields := protobufBytes(packet[packet[1]>>2:])
	point := protobufBytes(fields[2])[2]
	pub, e := ecdh.P256().NewPublicKey(point)
	must(e)
	raw, e := s.peer.ECDH(pub)
	must(e)
	secret := digest(raw)
	aad := digest(join([]byte("1415"), point))
	wrapped, e := cryptox.OpenAESGCM(secret[:24], aad, fields[3])
	must(e)
	expanded, e := cryptox.DeriveHKDFSHA256([]byte("security hdkf expand"), decompress(wrapped), aad, 56)
	must(e)
	body, e := cryptox.OpenAESGCM(expanded[:24], digest(join([]byte("1415"), point, fields[3])), fields[5])
	must(e)
	plain := decompress(body)
	if s.calls == 3 && s.mode == "native-clock" {
		value := protobufUint(plain, 4)
		expected := uint64(uint32(time.Now().UnixMilli()) / 1000)
		if value+1 < expected || value > expected+1 {
			panic("poll clock diverged from native uint32-ms path")
		}
	}
	device := protobufBytes(protobufBytes(plain)[1])[3]
	if s.calls == 2 {
		s.initialDevice = bytes.Clone(device)
	} else if !bytes.Equal(device, s.initialDevice) {
		panic("device changed during login")
	}
	k, e := ecdh.P256().GenerateKey(rand.Reader)
	must(e)
	raw, e = k.ECDH(pub)
	must(e)
	secret = digest(raw)
	reply := s.response
	if s.calls == 3 {
		block, e := aes.NewCipher(s.notifyKey)
		must(e)
		padding := 16 - len(s.poll)%16
		padded := append(append([]byte(nil), s.poll...), bytes.Repeat([]byte{byte(padding)}, padding)...)
		encrypted := make([]byte, len(padded))
		cipher.NewCBCEncrypter(block, s.notifyKey).CryptBlocks(encrypted, padded)
		reply = join(protobufField(1, protobufVarint(1, 0)), protobufField(3, join(protobufVarint(1, uint64(len(encrypted))), protobufField(2, encrypted))))
	}
	if s.calls == 3 && s.mode == "check-error" {
		reply = protobufField(1, protobufVarint(1, ^uint64(7)))
	}
	cipher, e := cryptox.SealAESGCM(secret[:24], randomBytes(12), digest(join(expanded[24:], plain, []byte("415"), k.PublicKey().Bytes(), []byte("1"))), compress(reply))
	must(e)
	if s.mode == "bad-hybrid-gcm" {
		cipher[0] ^= 1
	}
	signature, e := ecdsa.SignASN1(rand.Reader, s.hybridSigning, digest(digest(join(fields[5], cipher))))
	must(e)
	if s.mode == "bad-hybrid-signature" {
		signature[len(signature)-1] ^= 1
	}
	curve := uint64(415)
	if s.mode == "wrong-curve" {
		curve = 1
	}
	credential := uint64(1)
	if s.mode == "wrong-credential" {
		credential = 2
	}
	envelope := join(protobufField(1, join(protobufVarint(1, curve), protobufField(2, k.PublicKey().Bytes()))), protobufVarint(2, credential), protobufField(3, cipher), protobufField(4, signature))
	if s.mode == "duplicate-hybrid" {
		envelope = join(envelope, protobufField(3, cipher))
	}
	return join([]byte{0xbf, 11<<2 | 2, 0xc0}, make([]byte, 8), envelope)
}
func TestFetchSyntheticAuthenticatedQR(t *testing.T) {
	c, s := makeService(t, "")
	qr, e := c.Fetch(context.Background())
	if e != nil || len(qr.PNG) == 0 || qr.Width != 2 || s.calls != 2 {
		t.Fatalf("authenticated exchange: image=%dx%d calls=%d err=%v", qr.Width, qr.Height, s.calls, e)
	}
}

// Removing validation or accepting unauthenticated protocol data must fail here.
func TestFetchRejectsInvalidExchange(t *testing.T) {
	for _, mode := range []string{"malformed", "oversized", "bad-bootstrap-signature", "bad-bootstrap-finished", "bad-short-finished", "bad-hybrid-signature", "bad-hybrid-gcm", "duplicate-hybrid", "wrong-curve", "wrong-credential", "duplicate-extension", "ticket-trailing", "wrong-record-type"} {
		t.Run(mode, func(t *testing.T) {
			c, _ := makeService(t, mode)
			qr, e := c.Fetch(context.Background())
			if e == nil || len(qr.PNG) != 0 {
				t.Fatal("invalid exchange returned an image")
			}
		})
	}
}
