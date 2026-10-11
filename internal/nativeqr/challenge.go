package nativeqr

import (
	"bytes"
	"context"
	"crypto/aes"
	"crypto/cipher"
	"errors"
	"fmt"
	"os"
	"time"
	"unicode/utf8"

	"github.com/nirvana9/wx/internal/protocol"
)

// Challenge holds anonymous polling secrets in memory. It is not a logged-in
// session and must never be serialized into logs or exposed as account status.
type Challenge struct {
	Image                                 protocol.QRImage
	notifyKey, token, device, psk, ticket []byte
	interval                              uint64
	expires                               time.Time
	client                                *Client
}

// Begin obtains a QR and retains the matching device and private polling key.
func (c *Client) Begin(ctx context.Context) (challenge *Challenge, err error) {
	if err = ctx.Err(); err != nil {
		return
	}
	ctx, cancel := context.WithTimeout(ctx, 45*time.Second)
	defer cancel()
	defer func() {
		if recover() != nil {
			challenge = nil
			if ctx.Err() != nil {
				err = ctx.Err()
			} else {
				err = fmt.Errorf("%w: login challenge", ErrProtocol)
			}
		}
	}()
	psk, ticket := c.bootstrap(ctx)
	device := randomBytes(16)
	device[0] = 'l'
	host, e := os.Hostname()
	must(e)
	base := join(protobufField(1, []byte{0}), protobufVarint(2, 0), protobufField(3, device), protobufVarint(4, 18446744073482280215), protobufField(5, []byte("UnifiedPCLinux Ubuntu 24.04.5 LTS x86_64")), protobufVarint(6, 0))
	request := join(protobufField(1, base), protobufField(2, join(protobufVarint(1, 16), protobufField(2, randomBytes(16)))), protobufVarint(3, 0), protobufField(4, []byte(host)))
	packet, state := sealHybrid(c.cfg, request)
	response := state.open(c.shortRequest(ctx, psk, ticket, packet))
	image, e := protocol.DecodeQRImage(response)
	must(e)
	fields := protobufBytes(response)
	token := fields[3]
	keyBuffer := fields[5]
	key := protobufBytes(keyBuffer)[2]
	if len(token) < 1 || len(token) > 256 || protobufUint(keyBuffer, 1) != 16 || len(key) != 16 {
		panic("polling material")
	}
	interval, lifetime := protobufUint(response, 4), protobufUint(response, 6)
	if interval < 1 || interval > 60 || lifetime < 1 || lifetime > 3600 {
		panic("polling timing")
	}
	return &Challenge{Image: image, notifyKey: bytes.Clone(key), token: bytes.Clone(token), device: device, psk: psk, ticket: ticket, interval: interval, expires: time.Now().Add(time.Duration(lifetime) * time.Second), client: c}, nil
}

// Notice reports the native status value; proof is retained privately for the
// subsequent auth exchange. A status notification is not login success.
type Notice struct {
	state              uint32
	username, password []byte
}

func (n *Notice) State() uint32 { return n.state }
func (n *Notice) String() string {
	return fmt.Sprintf("WeChat QR notice (status=%d, not authenticated)", n.state)
}
func (n *Notice) GoString() string     { return n.String() }
func (ch *Challenge) String() string   { return "WeChat QR challenge (not authenticated)" }
func (ch *Challenge) GoString() string { return ch.String() }

var ErrQRExpired = errors.New("QR challenge expired")

// Check performs one authenticated native checkloginqrcode request. The caller
// owns polling timing; this method starts no background work and never logs proof.
func (ch *Challenge) Check(ctx context.Context) (notice *Notice, err error) {
	if err = ctx.Err(); err != nil {
		return
	}
	if !time.Now().Before(ch.expires) {
		return nil, ErrQRExpired
	}
	ctx, cancel := context.WithTimeout(ctx, 45*time.Second)
	defer cancel()
	stage := "request"
	defer func() {
		if failure := recover(); failure != nil {
			notice = nil
			if ctx.Err() != nil {
				err = ctx.Err()
			} else {
				reason := "rejected response"
				if text, ok := failure.(string); ok {
					switch text {
					case "MM header", "Hybrid MM header", "Hybrid fields", "Hybrid signature", "Hybrid scheme", "notify buffer", "notify padding", "notify identity", "notify proof", "missing protobuf integer", "duplicate protobuf field":
						reason = text
					}
				}
				err = fmt.Errorf("%w: QR status %s (%s)", ErrProtocol, stage, reason)
			}
		}
	}()
	base := join(protobufField(1, []byte{0}), protobufVarint(2, 0), protobufField(3, ch.device), protobufVarint(4, 18446744073482280215), protobufField(5, []byte("UnifiedPCLinux Ubuntu 24.04.5 LTS x86_64")), protobufVarint(6, 0))
	request := join(protobufField(1, base), protobufField(2, join(protobufVarint(1, 16), protobufField(2, randomBytes(16)))), protobufField(3, ch.token), protobufVarint(4, uint64(uint32(time.Now().UnixMilli())/1000)), protobufVarint(5, 0))
	packet, state := sealHybridCommand(ch.client.cfg, request, 503)
	stage = "transport"
	frame := ch.client.shortRequestPath(ctx, ch.psk, ch.ticket, packet, "/cgi-bin/micromsg-bin/checkloginqrcode")
	stage = "hybrid"
	response := state.open(frame)
	stage = "server response"
	fields := protobufBytes(response)
	if ret := int32(protobufUint(fields[1], 1)); ret != 0 {
		return nil, fmt.Errorf("%w: check code %d", protocol.ErrQRServer, ret)
	}
	stage = "notify decrypt"
	pkg := protobufBytes(fields[3])
	buf := pkg[1]
	encrypted := protobufBytes(buf)[2]
	if protobufUint(buf, 1) != uint64(len(encrypted)) || len(encrypted) < 16 || len(encrypted)%16 != 0 || len(ch.notifyKey) != 16 {
		panic("notify buffer")
	}
	block, e := aes.NewCipher(ch.notifyKey)
	must(e)
	plain := make([]byte, len(encrypted))
	cipher.NewCBCDecrypter(block, ch.notifyKey).CryptBlocks(plain, encrypted)
	pad := int(plain[len(plain)-1])
	if pad < 1 || pad > 16 || !bytes.Equal(plain[len(plain)-pad:], bytes.Repeat([]byte{byte(pad)}, pad)) {
		panic("notify padding")
	}
	stage = "notify parse"
	plain = plain[:len(plain)-pad]
	nf := protobufBytes(plain)
	if len(nf[1]) > 0 && !bytes.Equal(nf[1], ch.token) {
		panic("notify identity")
	}
	status := protobufUint(plain, 2)
	if status > 0xffffffff {
		panic("notify status")
	}
	if len(nf[3]) > 256 || len(nf[4]) > 512 || !utf8.Valid(nf[3]) || !utf8.Valid(nf[4]) {
		panic("notify proof")
	}
	return &Notice{state: uint32(status), username: bytes.Clone(nf[3]), password: bytes.Clone(nf[4])}, nil
}
