// Experimental independent QR research. No client/Frida/runtime native code.
package main

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
	"encoding/binary"
	"encoding/hex"
	"encoding/json"
	"encoding/pem"
	"errors"
	"fmt"
	"github.com/nirvana9/wx/internal/cryptox"
	"github.com/nirvana9/wx/internal/protocol"
	"github.com/nirvana9/wx/internal/wire"
	"io"
	"net"
	"net/http"
	"os"
	"path/filepath"
	"time"
)

func ck(e error) {
	if e != nil {
		panic(e)
	}
}
func rnd(n int) []byte       { b := make([]byte, n); _, e := rand.Read(b); ck(e); return b }
func u16(n int) []byte       { var b [2]byte; binary.BigEndian.PutUint16(b[:], uint16(n)); return b[:] }
func u32(n uint32) []byte    { var b [4]byte; binary.BigEndian.PutUint32(b[:], n); return b[:] }
func cat(b ...[]byte) []byte { return bytes.Join(b, nil) }
func l16(b []byte) []byte    { return cat(u16(len(b)), b) }
func l32(b []byte) []byte    { return cat(u32(uint32(len(b))), b) }
func un(s string) []byte     { b, e := hex.DecodeString(s); ck(e); return b }
func sh(b []byte) []byte     { h := sha256.Sum256(b); return h[:] }
func exp(s, info []byte, n int) []byte {
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
func hm(k, b []byte) []byte { h := hmac.New(sha256.New, k); h.Write(b); return h.Sum(nil) }

type record struct {
	t byte
	b []byte
}

func rec(t byte, b []byte) []byte { return cat([]byte{t, 0xf1, 4}, u16(len(b)), b) }
func records(b []byte) (o []record) {
	for len(b) > 0 {
		if len(b) < 5 || b[1] != 0xf1 || b[2] != 4 {
			panic("record header")
		}
		n := int(binary.BigEndian.Uint16(b[3:5]))
		if n+5 > len(b) {
			panic("record length")
		}
		o = append(o, record{b[0], bytes.Clone(b[5 : 5+n])})
		b = b[5+n:]
	}
	return
}
func aead(key, iv []byte, r record, seq uint64, seal bool) (o []byte, e error) {
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
	size := len(r.b)
	if seal {
		size += 16
	}
	aad := cat(s[:], rec(r.t, make([]byte, size))[:5])
	if seal {
		return g.Seal(nil, nonce, r.b, aad), nil
	}
	return g.Open(nil, nonce, r.b, aad)
}
func msg(b []byte, kind byte) []byte {
	if len(b) < 5 || int(binary.BigEndian.Uint32(b)) != len(b)-4 || b[4] != kind {
		panic("handshake message")
	}
	return b[5:]
}
func hello(cipher int, ext []byte, stamp uint32) []byte {
	return l32(cat([]byte{1, 4, 0xf1, 1}, u16(cipher), rnd(32), u32(stamp), l32(cat([]byte{1}, l32(ext)))))
}
func post(ip string, b []byte) []byte {
	transport := &http.Transport{Proxy: nil, DialContext: func(ctx context.Context, network, address string) (net.Conn, error) {
		return (&net.Dialer{Timeout: 15 * time.Second}).DialContext(ctx, "tcp", net.JoinHostPort(ip, "80"))
	}, DisableKeepAlives: true}
	defer transport.CloseIdleConnections()
	client := &http.Client{Transport: transport, Timeout: 30 * time.Second, CheckRedirect: func(_ *http.Request, _ []*http.Request) error { return errors.New("redirect") }}
	r, e := http.NewRequest("POST", "http://short.weixin.qq.com/mmtls/"+hex.EncodeToString(rnd(4)), bytes.NewReader(b))
	ck(e)
	r.Header.Set("User-Agent", "MicroMessenger Client")
	r.Header.Set("Accept", "*/*")
	r.Header.Set("Cache-Control", "no-cache")
	r.Header.Set("Content-Type", "application/octet-stream")
	r.Header.Set("Upgrade", "mmtls")
	resp, e := client.Do(r)
	ck(e)
	defer resp.Body.Close()
	if resp.StatusCode != 200 {
		panic(fmt.Sprintf("HTTP status %d", resp.StatusCode))
	}
	o, e := io.ReadAll(io.LimitReader(resp.Body, (1<<20)+1))
	ck(e)
	if len(o) > 1<<20 {
		panic("HTTP budget")
	}
	return o
}

type config struct {
	MMTLS []struct {
		Index uint32 `json:"index"`
		PEM   string `json:"pem"`
	} `json:"mmtls_verify_keys"`
	Peer   string `json:"hybrid_peer_hex"`
	Verify string `json:"hybrid_verify_pem"`
}

func trusted(s string) *ecdsa.PublicKey {
	p, _ := pem.Decode([]byte(s))
	if p == nil {
		panic("PEM")
	}
	k, e := x509.ParsePKIXPublicKey(p.Bytes)
	ck(e)
	return k.(*ecdsa.PublicKey)
}
func bootstrap(cfg config) (psk, ticket []byte) {
	private := map[uint32]*ecdh.PrivateKey{}
	ext := []byte{0, 16, 2}
	for _, id := range []uint32{7, 1000} {
		k, e := ecdh.P256().GenerateKey(rand.Reader)
		ck(e)
		private[id] = k
		ext = cat(ext, l32(cat(u32(id), l16(k.PublicKey().Bytes()))))
	}
	ext = cat(ext, []byte{0, 0, 0, 0, 2}, u32(5), u32(1000))
	ch := hello(0xc02b, ext, uint32(time.Now().Unix()))
	rs := records(post("43.163.178.44", rec(0x16, ch)))
	if len(rs) != 4 {
		panic(fmt.Sprintf("bootstrap records %d", len(rs)))
	}
	sv := rs[0].b
	rest := msg(sv, 2)
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
		switch binary.BigEndian.Uint16(v) {
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
	k := private[id]
	if k == nil {
		panic("unknown ECDH index")
	}
	peer, e := ecdh.P256().NewPublicKey(pub)
	ck(e)
	raw, e := k.ECDH(peer)
	ck(e)
	secret := sh(raw)
	transcript := cat(ch, sv)
	traffic := exp(secret, cat([]byte("handshake key expansion"), sh(transcript)), 56)
	key, iv := traffic[16:32], traffic[44:56]
	sig, e := aead(key, iv, rs[1], 1, false)
	ck(e)
	signature := msg(sig, 15)
	if len(signature) < 2 || int(binary.BigEndian.Uint16(signature)) != len(signature)-2 {
		panic("signature format")
	}
	verified := false
	for _, p := range cfg.MMTLS {
		if p.Index == trustID {
			verified = ecdsa.VerifyASN1(trusted(p.PEM), sh(sh(transcript)), signature[2:])
		}
	}
	if !verified {
		panic("untrusted MMTLS server signature")
	}
	transcript = cat(transcript, sig)
	psk = exp(secret, cat([]byte("PSK_ACCESS"), sh(transcript)), 32)
	tk, e := aead(key, iv, rs[2], 2, false)
	ck(e)
	tm := msg(tk, 4)
	if len(tm) < 5 || tm[0] < 1 {
		panic("tickets")
	}
	size := int(binary.BigEndian.Uint32(tm[1:5]))
	if size < 1 || size > len(tm)-5 {
		panic("ticket size")
	}
	ticket = bytes.Clone(tm[5 : 5+size])
	transcript = cat(transcript, tk)
	sf, e := aead(key, iv, rs[3], 3, false)
	ck(e)
	finish := msg(sf, 20)
	if len(finish) != 34 || binary.BigEndian.Uint16(finish) != 32 || !hmac.Equal(finish[2:], hm(exp(secret, []byte("server finished"), 32), sh(transcript))) {
		panic("server finished authentication")
	}
	fmt.Println("Independent MMTLS bootstrap: server signature and Finished authenticated")
	return
}
func pv(n uint32, v uint64) []byte {
	b := binary.AppendUvarint(nil, uint64(n)<<3)
	return binary.AppendUvarint(b, v)
}
func pb(n uint32, v []byte) []byte {
	b := binary.AppendUvarint(nil, uint64(n)<<3|2)
	b = binary.AppendUvarint(b, uint64(len(v)))
	return append(b, v...)
}
func protoFields(b []byte) map[uint32][]byte {
	fs, e := wire.Parse(b, wire.DefaultLimits())
	ck(e)
	m := map[uint32][]byte{}
	for _, f := range fs {
		_, p := binary.Uvarint(f.Raw)
		if f.WireType == 2 {
			n, q := binary.Uvarint(f.Raw[p:])
			m[f.Number] = f.Raw[p+q : p+q+int(n)]
		}
	}
	return m
}
func zip(b []byte) []byte {
	var o bytes.Buffer
	w := zlib.NewWriter(&o)
	_, e := w.Write(b)
	ck(e)
	ck(w.Close())
	return o.Bytes()
}
func inflate(b []byte) []byte {
	r, e := zlib.NewReader(bytes.NewReader(b))
	ck(e)
	defer r.Close()
	o, e := io.ReadAll(io.LimitReader(r, (1<<20)+1))
	ck(e)
	if len(o) > 1<<20 {
		panic("inflate budget")
	}
	return o
}

type hybrid struct {
	k                  *ecdh.PrivateKey
	mac, plain, cipher []byte
	verify             *ecdsa.PublicKey
}

func wrap(cfg config, plain []byte) ([]byte, hybrid) {
	key, e := ecdh.P256().GenerateKey(rand.Reader)
	ck(e)
	peer, e := ecdh.P256().NewPublicKey(un(cfg.Peer))
	ck(e)
	raw, e := key.ECDH(peer)
	ck(e)
	shared := sh(raw)
	pub := key.PublicKey().Bytes()
	aad := sh(cat([]byte("1415"), pub))
	random := rnd(32)
	wrapped, e := cryptox.SealAESGCM(shared[:24], aad, zip(random), rnd(12))
	ck(e)
	expanded, e := cryptox.DeriveHKDFSHA256([]byte("security hdkf expand"), random, aad, 56)
	ck(e)
	body, e := cryptox.SealAESGCM(expanded[:24], sh(cat([]byte("1415"), pub, wrapped)), zip(plain), rnd(12))
	ck(e)
	envelope := cat(pv(1, 1), pb(2, cat(pv(1, 415), pb(2, pub))), pb(3, wrapped), pb(4, nil), pb(5, body))
	header := cat([]byte{0xbf, 0, 0xc0}, make([]byte, 8))
	for _, v := range []uint64{502, uint64(len(plain)), uint64(len(plain)), 10014, 0, 0} {
		header = binary.AppendUvarint(header, v)
	}
	header = cat(header, []byte{0xff, 0, 0, 0, 0}, rnd(2))
	header[1] = byte(len(header)<<2 | 2)
	return cat(header, envelope), hybrid{key, expanded[24:], plain, body, trusted(cfg.Verify)}
}
func (h hybrid) open(frame []byte) []byte {
	if len(frame) < 3 || frame[0] != 0xbf {
		panic("MM header")
	}
	head := int(frame[1] >> 2)
	if head < 11 || head >= len(frame) || frame[2]>>4 != 12 {
		panic("Hybrid MM header")
	}
	r := protoFields(frame[head:])
	if len(r[1]) == 0 || len(r[3]) < 28 || len(r[4]) == 0 {
		panic("Hybrid fields")
	}
	if !ecdsa.VerifyASN1(h.verify, sh(sh(cat(h.cipher, r[3]))), r[4]) {
		panic("Hybrid signature")
	}
	serverPub := protoFields(r[1])[2]
	peer, e := ecdh.P256().NewPublicKey(serverPub)
	ck(e)
	raw, e := h.k.ECDH(peer)
	ck(e)
	shared := sh(raw)
	z, e := cryptox.OpenAESGCM(shared[:24], sh(cat(h.mac, h.plain, []byte("415"), serverPub, []byte("1"))), r[3])
	ck(e)
	return inflate(z)
}
func shortRequest(psk, ticket, packet []byte) []byte {
	stamp := uint32(time.Now().Unix())
	ch := hello(0xa8, cat([]byte{0, 15, 1}, l32(ticket)), stamp)
	extensions := cat([]byte{0, 0, 0, 16, 8, 0, 0, 0, 11, 1, 0, 0, 0, 6, 0, 18}, u32(stamp))
	early := exp(psk, cat([]byte("early data key expansion"), sh(ch)), 28)
	inner := l32(cat(l16([]byte("/cgi-bin/micromsg-bin/getloginqrcode")), l16([]byte("short.weixin.qq.com")), l32(packet)))
	body := rec(0x19, ch)
	for i, r := range []record{{0x19, extensions}, {0x17, inner}, {0x15, []byte{0, 0, 0, 3, 0, 1, 1}}} {
		c, e := aead(early[:16], early[16:], r, uint64(i+1), true)
		ck(e)
		body = cat(body, rec(r.t, c))
	}
	rs := records(post("43.129.255.26", body))
	if len(rs) != 4 {
		panic(fmt.Sprintf("short records %d", len(rs)))
	}
	msg(rs[0].b, 2)
	transcript := cat(ch, extensions, rs[0].b)
	traffic := exp(psk, cat([]byte("handshake key expansion"), sh(transcript)), 28)
	sf, e := aead(traffic[:16], traffic[16:], rs[1], 1, false)
	ck(e)
	finish := msg(sf, 20)
	if len(finish) != 34 || !hmac.Equal(finish[2:], hm(exp(psk, []byte("server finished"), 32), sh(transcript))) {
		panic("short Finished authentication")
	}
	result, e := aead(traffic[:16], traffic[16:], rs[2], 2, false)
	ck(e)
	abort, e := aead(traffic[:16], traffic[16:], rs[3], 3, false)
	ck(e)
	if !bytes.Equal(abort, []byte{0, 0, 0, 3, 0, 1, 1}) {
		panic("short abort")
	}
	return result
}
func main() {
	defer func() {
		if failure := recover(); failure != nil {
			if len(os.Args) == 3 {
				_ = os.WriteFile(filepath.Join(os.Args[2], "failure.txt"), []byte(fmt.Sprint(failure)), 0600)
			}
			fmt.Fprintln(os.Stderr, "Independent QR probe failed; private diagnostics required")
			os.Exit(1)
		}
	}()
	if len(os.Args) != 3 {
		panic("usage config outputdir")
	}
	b, e := os.ReadFile(os.Args[1])
	ck(e)
	var cfg config
	ck(json.Unmarshal(b, &cfg))
	out := os.Args[2]
	ck(os.Mkdir(out, 0700))
	psk, ticket := bootstrap(cfg)
	device := rnd(16)
	device[0] = 'l'
	host, e := os.Hostname()
	ck(e)
	base := cat(pb(1, []byte{0}), pv(2, 0), pb(3, device), pv(4, uint64(18446744073482280215)), pb(5, []byte("UnifiedPCLinux Ubuntu 24.04.5 LTS x86_64")), pv(6, 0))
	local := rnd(16)
	request := cat(pb(1, base), pb(2, cat(pv(1, 16), pb(2, local))), pv(3, 0), pb(4, []byte(host)))
	packet, state := wrap(cfg, request)
	response := state.open(shortRequest(psk, ticket, packet))
	ck(os.WriteFile(filepath.Join(out, "response.bin"), response, 0600))
	qr, e := protocol.DecodeQRImage(response)
	ck(e)
	ck(os.WriteFile(filepath.Join(out, "qr.png"), qr.PNG, 0600))
	fmt.Printf("Independent server QR response validated: %dx%d; scanning/login/messages untested\n", qr.Width, qr.Height)
}
