// Package nativeqr implements one authenticated QR exchange using the pinned
// Linux protocol. It does not execute or load the official client.
package nativeqr

import (
	"bytes"
	"compress/zlib"
	"context"
	"crypto/aes"
	"crypto/cipher"
	"crypto/ecdh"
	"crypto/ecdsa"
	"crypto/hmac"
	"crypto/rand"
	"crypto/sha256"
	"crypto/x509"
	_ "embed"
	"encoding/binary"
	"encoding/hex"
	"encoding/json"
	"encoding/pem"
	"errors"
	"fmt"
	"io"
	"net"
	"net/http"
	"os"
	"time"

	"github.com/nirvana9/wx/internal/cryptox"
	"github.com/nirvana9/wx/internal/protocol"
	"github.com/nirvana9/wx/internal/wire"
)

func must(e error) {
	if e != nil {
		panic(e)
	}
}
func randomBytes(n int) []byte     { b := make([]byte, n); _, e := rand.Read(b); must(e); return b }
func uint16BE(n int) []byte        { var b [2]byte; binary.BigEndian.PutUint16(b[:], uint16(n)); return b[:] }
func uint32BE(n uint32) []byte     { var b [4]byte; binary.BigEndian.PutUint32(b[:], n); return b[:] }
func join(b ...[]byte) []byte      { return bytes.Join(b, nil) }
func withLength16(b []byte) []byte { return join(uint16BE(len(b)), b) }
func withLength32(b []byte) []byte { return join(uint32BE(uint32(len(b))), b) }
func decodeHex(s string) []byte    { b, e := hex.DecodeString(s); must(e); return b }
func digest(b []byte) []byte       { h := sha256.Sum256(b); return h[:] }
func expand(s, info []byte, n int) []byte {
	var o, t []byte
	for c := byte(1); len(o) < n; c++ {
		h := hmac.New(sha256.New, s)
		h.Write(t)
		h.Write(info)
		h.Write([]byte{c})
		t = h.Sum(nil)
		o = append(o, t...)
	}
	return o[:n]
}
func hmacSHA256(k, b []byte) []byte { h := hmac.New(sha256.New, k); h.Write(b); return h.Sum(nil) }

type record struct {
	kind    byte
	payload []byte
}

func encodeRecord(t byte, b []byte) []byte {
	if len(b) > 65535 {
		panic("record budget")
	}
	return join([]byte{t, 0xf1, 4}, uint16BE(len(b)), b)
}
func decodeRecords(b []byte) (o []record) {
	for len(b) > 0 {
		if len(o) >= 8 {
			panic("record count")
		}
		if len(b) < 5 || b[1] != 0xf1 || b[2] != 4 {
			panic("record header")
		}
		n := int(binary.BigEndian.Uint16(b[3:5]))
		if n == 0 || n+5 > len(b) {
			panic("record length")
		}
		o = append(o, record{b[0], bytes.Clone(b[5 : 5+n])})
		b = b[5+n:]
	}
	return
}
func recordAEAD(key, iv []byte, r record, seq uint64, seal bool) (o []byte, e error) {
	if len(key) != 16 || len(iv) != 12 {
		return nil, errors.New("MMTLS key size")
	}
	b, e := aes.NewCipher(key)
	if e != nil {
		return
	}
	g, e := cipher.NewGCM(b)
	if e != nil {
		return
	}
	var s [8]byte
	binary.BigEndian.PutUint64(s[:], seq)
	nonce := bytes.Clone(iv)
	for i := 0; i < 8; i++ {
		nonce[4+i] ^= s[i]
	}
	size := len(r.payload)
	if seal {
		size += 16
	}
	aad := join(s[:], encodeRecord(r.kind, make([]byte, size))[:5])
	if seal {
		return g.Seal(nil, nonce, r.payload, aad), nil
	}
	return g.Open(nil, nonce, r.payload, aad)
}
func handshakePayload(b []byte, kind byte) []byte {
	if len(b) < 5 || int(binary.BigEndian.Uint32(b)) != len(b)-4 || b[4] != kind {
		panic("handshake message")
	}
	return b[5:]
}
func clientHello(cipher int, ext []byte, stamp uint32) []byte {
	return withLength32(join([]byte{1, 4, 0xf1, 1}, uint16BE(cipher), randomBytes(32), uint32BE(stamp), withLength32(join([]byte{1}, withLength32(ext)))))
}
func (c *Client) post(ctx context.Context, ip string, b []byte) []byte {
	transport := &http.Transport{Proxy: nil, DialContext: func(ctx context.Context, network, address string) (net.Conn, error) {
		return c.dial(ctx, "tcp", net.JoinHostPort(ip, "80"))
	}, DisableKeepAlives: true}
	defer transport.CloseIdleConnections()
	client := &http.Client{Transport: transport, Timeout: 30 * time.Second, CheckRedirect: func(_ *http.Request, _ []*http.Request) error { return errors.New("redirect") }}
	r, e := http.NewRequestWithContext(ctx, "POST", "http://short.weixin.qq.com/mmtls/"+hex.EncodeToString(randomBytes(4)), bytes.NewReader(b))
	must(e)
	r.Header.Set("User-Agent", "MicroMessenger Client")
	r.Header.Set("Accept", "*/*")
	r.Header.Set("Cache-Control", "no-cache")
	r.Header.Set("Content-Type", "application/octet-stream")
	r.Header.Set("Upgrade", "mmtls")
	resp, e := client.Do(r)
	must(e)
	defer resp.Body.Close()
	if resp.StatusCode != 200 {
		panic(fmt.Sprintf("HTTP status %d", resp.StatusCode))
	}
	o, e := io.ReadAll(io.LimitReader(resp.Body, (1<<20)+1))
	must(e)
	if len(o) > 1<<20 {
		panic("HTTP budget")
	}
	return o
}

type peerConfig struct {
	MMTLS []struct {
		Index uint32 `json:"index"`
		PEM   string `json:"pem"`
	} `json:"mmtls_verify_keys"`
	Peer   string `json:"hybrid_peer_hex"`
	Verify string `json:"hybrid_verify_pem"`
}

func parseVerifyKey(s string) *ecdsa.PublicKey {
	p, _ := pem.Decode([]byte(s))
	if p == nil {
		panic("PEM")
	}
	k, e := x509.ParsePKIXPublicKey(p.Bytes)
	must(e)
	return k.(*ecdsa.PublicKey)
}
func (c *Client) bootstrap(ctx context.Context) (psk, ticket []byte) {
	cfg := c.cfg
	private := map[uint32]*ecdh.PrivateKey{}
	ext := []byte{0, 16, 2}
	for _, id := range []uint32{7, 1000} {
		k, e := ecdh.P256().GenerateKey(rand.Reader)
		must(e)
		private[id] = k
		ext = join(ext, withLength32(join(uint32BE(id), withLength16(k.PublicKey().Bytes()))))
	}
	ext = join(ext, []byte{0, 0, 0, 0, 2}, uint32BE(5), uint32BE(1000))
	ch := clientHello(0xc02b, ext, uint32(time.Now().Unix()))
	rs := decodeRecords(c.post(ctx, "43.163.178.44", encodeRecord(0x16, ch)))
	if len(rs) != 4 || rs[0].kind != 0x16 || rs[1].kind != 0x16 || rs[2].kind != 0x16 || rs[3].kind != 0x16 {
		panic(fmt.Sprintf("bootstrap decodeRecords %d", len(rs)))
	}
	sv := rs[0].payload
	rest := handshakePayload(sv, 2)
	if len(rest) < 41 || !bytes.Equal(rest[:4], []byte{4, 0xf1, 0xc0, 0x2b}) {
		panic("server protocol")
	}
	exts := rest[36:]
	if int(binary.BigEndian.Uint32(exts)) != len(exts)-4 {
		panic("server extensions")
	}
	n := exts[4]
	exts = exts[5:]
	var pub []byte
	var id, trustID uint32
	seen := map[uint16]bool{}
	for j := byte(0); j < n; j++ {
		if len(exts) < 4 {
			panic("extension")
		}
		size := int(binary.BigEndian.Uint32(exts))
		exts = exts[4:]
		if size > len(exts) {
			panic("extension size")
		}
		v := exts[:size]
		exts = exts[size:]
		if len(v) < 2 {
			panic("extension type")
		}
		kind := binary.BigEndian.Uint16(v)
		if seen[kind] {
			panic("duplicate extension")
		}
		seen[kind] = true
		switch kind {
		case 17:
			if len(v) != 73 || binary.BigEndian.Uint16(v[6:8]) != 65 {
				panic("server point")
			}
			id = binary.BigEndian.Uint32(v[2:6])
			pub = v[8:]
		case 19:
			if len(v) != 10 || binary.BigEndian.Uint32(v[2:6]) != 1 {
				panic("server trust selection")
			}
			trustID = binary.BigEndian.Uint32(v[6:10])
		}
	}
	if len(exts) != 0 || !seen[17] || !seen[19] {
		panic("server extensions incomplete")
	}
	k := private[id]
	if k == nil {
		panic("unknown ECDH index")
	}
	peer, e := ecdh.P256().NewPublicKey(pub)
	must(e)
	raw, e := k.ECDH(peer)
	must(e)
	secret := digest(raw)
	transcript := join(ch, sv)
	traffic := expand(secret, join([]byte("handshake key expansion"), digest(transcript)), 56)
	key, iv := traffic[16:32], traffic[44:56]
	sig, e := recordAEAD(key, iv, rs[1], 1, false)
	must(e)
	signature := handshakePayload(sig, 15)
	if len(signature) < 2 || int(binary.BigEndian.Uint16(signature)) != len(signature)-2 {
		panic("signature format")
	}
	verified := false
	for _, p := range cfg.MMTLS {
		if p.Index == trustID {
			verified = ecdsa.VerifyASN1(parseVerifyKey(p.PEM), digest(digest(transcript)), signature[2:])
		}
	}
	if !verified {
		panic("untrusted MMTLS server signature")
	}
	transcript = join(transcript, sig)
	psk = expand(secret, join([]byte("PSK_ACCESS"), digest(transcript)), 32)
	tk, e := recordAEAD(key, iv, rs[2], 2, false)
	must(e)
	tm := handshakePayload(tk, 4)
	if len(tm) < 5 || tm[0] < 1 || tm[0] > 8 {
		panic("tickets")
	}
	count := int(tm[0])
	remaining := tm[1:]
	for i := 0; i < count; i++ {
		if len(remaining) < 4 {
			panic("ticket length")
		}
		size := int(binary.BigEndian.Uint32(remaining))
		remaining = remaining[4:]
		if size < 1 || size > 4096 || size > len(remaining) {
			panic("ticket budget")
		}
		if i == 0 {
			ticket = bytes.Clone(remaining[:size])
		}
		remaining = remaining[size:]
	}
	if len(remaining) != 0 {
		panic("ticket trailing data")
	}
	transcript = join(transcript, tk)
	sf, e := recordAEAD(key, iv, rs[3], 3, false)
	must(e)
	finish := handshakePayload(sf, 20)
	if len(finish) != 34 || binary.BigEndian.Uint16(finish) != 32 || !hmac.Equal(finish[2:], hmacSHA256(expand(secret, []byte("server finished"), 32), digest(transcript))) {
		panic("server finished authentication")
	}
	return
}
func protobufVarint(n uint32, v uint64) []byte {
	b := binary.AppendUvarint(nil, uint64(n)<<3)
	return binary.AppendUvarint(b, v)
}
func protobufField(n uint32, v []byte) []byte {
	b := binary.AppendUvarint(nil, uint64(n)<<3|2)
	b = binary.AppendUvarint(b, uint64(len(v)))
	return append(b, v...)
}
func protobufBytes(b []byte) map[uint32][]byte {
	fs, e := wire.Parse(b, wire.DefaultLimits())
	must(e)
	m := map[uint32][]byte{}
	seen := map[uint32]bool{}
	for _, f := range fs {
		if seen[f.Number] {
			panic("duplicate protobuf field")
		}
		seen[f.Number] = true
		_, p := binary.Uvarint(f.Raw)
		if f.WireType == 2 {
			n, q := binary.Uvarint(f.Raw[p:])
			m[f.Number] = f.Raw[p+q : p+q+int(n)]
		}
	}
	return m
}
func protobufUint(b []byte, n uint32) uint64 {
	fs, e := wire.Parse(b, wire.DefaultLimits())
	must(e)
	found := false
	var value uint64
	for _, f := range fs {
		if f.Number == n {
			if found || f.WireType != 0 {
				panic("protobuf integer")
			}
			found = true
			_, tag := binary.Uvarint(f.Raw)
			value, _ = binary.Uvarint(f.Raw[tag:])
		}
	}
	if !found {
		panic("missing protobuf integer")
	}
	return value
}
func compress(b []byte) []byte {
	var o bytes.Buffer
	w := zlib.NewWriter(&o)
	_, e := w.Write(b)
	must(e)
	must(w.Close())
	return o.Bytes()
}
func decompress(b []byte) []byte {
	r, e := zlib.NewReader(bytes.NewReader(b))
	must(e)
	defer r.Close()
	o, e := io.ReadAll(io.LimitReader(r, (1<<20)+1))
	must(e)
	if len(o) > 1<<20 {
		panic("decompress budget")
	}
	return o
}

type hybridState struct {
	k                  *ecdh.PrivateKey
	mac, plain, cipher []byte
	verify             *ecdsa.PublicKey
}

func sealHybrid(cfg peerConfig, plain []byte) ([]byte, hybridState) {
	return sealHybridCommand(cfg, plain, 502)
}
func sealHybridCommand(cfg peerConfig, plain []byte, cgi uint64) ([]byte, hybridState) {
	key, e := ecdh.P256().GenerateKey(rand.Reader)
	must(e)
	peer, e := ecdh.P256().NewPublicKey(decodeHex(cfg.Peer))
	must(e)
	raw, e := key.ECDH(peer)
	must(e)
	shared := digest(raw)
	pub := key.PublicKey().Bytes()
	aad := digest(join([]byte("1415"), pub))
	random := randomBytes(32)
	wrapped, e := cryptox.SealAESGCM(shared[:24], randomBytes(12), aad, compress(random))
	must(e)
	expanded, e := cryptox.DeriveHKDFSHA256([]byte("security hdkf expand"), random, aad, 56)
	must(e)
	body, e := cryptox.SealAESGCM(expanded[:24], randomBytes(12), digest(join([]byte("1415"), pub, wrapped)), compress(plain))
	must(e)
	envelope := join(protobufVarint(1, 1), protobufField(2, join(protobufVarint(1, 415), protobufField(2, pub))), protobufField(3, wrapped), protobufField(4, nil), protobufField(5, body))
	header := join([]byte{0xbf, 0, 0xc0}, make([]byte, 8))
	for _, v := range []uint64{cgi, uint64(len(plain)), uint64(len(plain)), 10014, 0, 0} {
		header = binary.AppendUvarint(header, v)
	}
	header = join(header, []byte{0xff, 0, 0, 0, 0}, randomBytes(2))
	header[1] = byte(len(header)<<2 | 2)
	return join(header, envelope), hybridState{key, expanded[24:], plain, body, parseVerifyKey(cfg.Verify)}
}
func (h hybridState) open(frame []byte) []byte {
	if len(frame) < 3 || frame[0] != 0xbf {
		panic("MM header")
	}
	head := int(frame[1] >> 2)
	if head < 11 || head >= len(frame) || frame[2]>>4 != 12 {
		panic("Hybrid MM header")
	}
	r := protobufBytes(frame[head:])
	if len(r[1]) == 0 || len(r[3]) < 28 || len(r[4]) == 0 {
		panic("Hybrid fields")
	}
	if !ecdsa.VerifyASN1(h.verify, digest(digest(join(h.cipher, r[3]))), r[4]) {
		panic("Hybrid signature")
	}
	if protobufUint(frame[head:], 2) != 1 || protobufUint(r[1], 1) != 415 {
		panic("Hybrid scheme")
	}
	serverPub := protobufBytes(r[1])[2]
	peer, e := ecdh.P256().NewPublicKey(serverPub)
	must(e)
	raw, e := h.k.ECDH(peer)
	must(e)
	shared := digest(raw)
	z, e := cryptox.OpenAESGCM(shared[:24], digest(join(h.mac, h.plain, []byte("415"), serverPub, []byte("1"))), r[3])
	must(e)
	return decompress(z)
}
func (c *Client) shortRequest(ctx context.Context, psk, ticket, packet []byte) []byte {
	return c.shortRequestPath(ctx, psk, ticket, packet, "/cgi-bin/micromsg-bin/getloginqrcode")
}
func (c *Client) shortRequestPath(ctx context.Context, psk, ticket, packet []byte, path string) []byte {
	stamp := uint32(time.Now().Unix())
	ch := clientHello(0xa8, join([]byte{0, 15, 1}, withLength32(ticket)), stamp)
	extensions := join([]byte{0, 0, 0, 16, 8, 0, 0, 0, 11, 1, 0, 0, 0, 6, 0, 18}, uint32BE(stamp))
	early := expand(psk, join([]byte("early data key expansion"), digest(ch)), 28)
	inner := withLength32(join(withLength16([]byte(path)), withLength16([]byte("short.weixin.qq.com")), withLength32(packet)))
	body := encodeRecord(0x19, ch)
	for i, r := range []record{{0x19, extensions}, {0x17, inner}, {0x15, []byte{0, 0, 0, 3, 0, 1, 1}}} {
		c, e := recordAEAD(early[:16], early[16:], r, uint64(i+1), true)
		must(e)
		body = join(body, encodeRecord(r.kind, c))
	}
	rs := decodeRecords(c.post(ctx, "43.129.255.26", body))
	if len(rs) != 4 || rs[0].kind != 0x16 || rs[1].kind != 0x16 || rs[2].kind != 0x17 || rs[3].kind != 0x15 {
		panic(fmt.Sprintf("short decodeRecords %d", len(rs)))
	}
	handshakePayload(rs[0].payload, 2)
	transcript := join(ch, extensions, rs[0].payload)
	traffic := expand(psk, join([]byte("handshake key expansion"), digest(transcript)), 28)
	sf, e := recordAEAD(traffic[:16], traffic[16:], rs[1], 1, false)
	must(e)
	finish := handshakePayload(sf, 20)
	if len(finish) != 34 || binary.BigEndian.Uint16(finish) != 32 || !hmac.Equal(finish[2:], hmacSHA256(expand(psk, []byte("server finished"), 32), digest(transcript))) {
		panic("short Finished authentication")
	}
	result, e := recordAEAD(traffic[:16], traffic[16:], rs[2], 2, false)
	must(e)
	abort, e := recordAEAD(traffic[:16], traffic[16:], rs[3], 3, false)
	must(e)
	if !bytes.Equal(abort, []byte{0, 0, 0, 3, 0, 1, 1}) {
		panic("short abort")
	}
	return result
}

//go:embed peer-keys.json
var peerKeys []byte

// ErrProtocol indicates a rejected exchange with no validated QR image.
var ErrProtocol = errors.New("native QR exchange failed")

// Client performs a fresh anonymous bootstrap and QR request. Keys and tickets
// exist only for the duration of Fetch; no account state is persisted.
type Client struct {
	cfg  peerConfig
	dial func(context.Context, string, string) (net.Conn, error)
}

// New loads the public trust anchors recovered from the pinned Linux sample.
func New() (*Client, error) {
	var cfg peerConfig
	if err := json.Unmarshal(peerKeys, &cfg); err != nil {
		return nil, err
	}
	return &Client{cfg: cfg, dial: (&net.Dialer{Timeout: 15 * time.Second}).DialContext}, nil
}

// Fetch obtains a fresh server PNG after authenticating both MMTLS exchanges
// and the Hybrid signature/GCM response. Scanning and login are not implemented.
func (c *Client) Fetch(ctx context.Context) (qr protocol.QRImage, err error) {
	if err = ctx.Err(); err != nil {
		return
	}
	ctx, cancel := context.WithTimeout(ctx, 45*time.Second)
	defer cancel()
	stage := "bootstrap"
	defer func() {
		if failure := recover(); failure != nil {
			qr = protocol.QRImage{}
			if ctx.Err() != nil {
				err = ctx.Err()
				return
			}
			err = fmt.Errorf("%w: %s", ErrProtocol, stage)
		}
	}()
	psk, ticket := c.bootstrap(ctx)
	stage = "QR request"
	device := randomBytes(16)
	device[0] = 'l'
	host, e := os.Hostname()
	must(e)
	base := join(protobufField(1, []byte{0}), protobufVarint(2, 0), protobufField(3, device), protobufVarint(4, 18446744073482280215), protobufField(5, []byte("UnifiedPCLinux Ubuntu 24.04.5 LTS x86_64")), protobufVarint(6, 0))
	request := join(protobufField(1, base), protobufField(2, join(protobufVarint(1, 16), protobufField(2, randomBytes(16)))), protobufVarint(3, 0), protobufField(4, []byte(host)))
	packet, state := sealHybrid(c.cfg, request)
	stage = "MMTLS QR response"
	frame := c.shortRequest(ctx, psk, ticket, packet)
	stage = "Hybrid QR response"
	response := state.open(frame)
	stage = "QR image"
	return protocol.DecodeQRImage(response)
}
