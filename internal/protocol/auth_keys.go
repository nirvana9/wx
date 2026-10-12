package protocol

import (
	"bytes"
	"errors"
	"fmt"

	"github.com/nirvana9/wx/internal/cryptox"
	"github.com/nirvana9/wx/internal/wire"
)

var ErrAuthRejected = errors.New("native authentication response rejected")
var ErrAuthResponse = errors.New("invalid native authentication key response")

// ManualAuthKeys is a decoded candidate, not a logged-in session. Network auth,
// device/request contracts and session installation must be verified separately.
// All byte accessors return copies. Default formatting never prints credentials.
type ManualAuthKeys struct {
	uin                                             uint32
	account                                         string
	session, derived, client, server, auto, a2, raw []byte
}

func (m ManualAuthKeys) String() string            { return "native auth key material (not a logged-in session)" }
func (m ManualAuthKeys) GoString() string          { return m.String() }
func (m *ManualAuthKeys) UIN() uint32              { return m.uin }
func (m *ManualAuthKeys) AccountID() string        { return m.account }
func (m *ManualAuthKeys) SessionKey() []byte       { return bytes.Clone(m.session) }
func (m *ManualAuthKeys) DerivedKey() []byte       { return bytes.Clone(m.derived) }
func (m *ManualAuthKeys) ClientSessionKey() []byte { return bytes.Clone(m.client) }
func (m *ManualAuthKeys) ServerSessionKey() []byte { return bytes.Clone(m.server) }
func (m *ManualAuthKeys) AutoAuthKey() []byte      { return bytes.Clone(m.auto) }
func (m *ManualAuthKeys) A2Key() []byte            { return bytes.Clone(m.a2) }
func (m *ManualAuthKeys) RawResponse() []byte      { return bytes.Clone(m.raw) }

// DecodeManualAuthKeys decodes an already authenticated/decrypted UnifyAuthResponse
// for the NID713/AuthResultFlag&4 branch proven by the pinned native key routine.
// It sends no request, installs no session, and performs no persistence.
func DecodeManualAuthKeys(body, privateDER []byte, expectedAccount string) (material *ManualAuthKeys, err error) {
	defer func() {
		if err != nil {
			material = nil
			if errors.Is(err, ErrMessageBody) {
				err = ErrAuthResponse
			}
		}
	}()
	if !validNativeRecipient(expectedAccount) {
		return nil, ErrAuthResponse
	}
	f, e := parseMessageBody(body)
	if e != nil {
		return nil, e
	}
	base, e := messageField(f, 1, 2, true)
	if e != nil {
		return nil, e
	}
	bf, e := parseMessageBody(qrBytes(base))
	if e != nil {
		return nil, e
	}
	retField, e := messageField(bf, 1, 0, true)
	if e != nil {
		return nil, e
	}
	ret, e := messageInt32(retField)
	if e != nil {
		return nil, e
	}
	if ret != 0 {
		return nil, fmt.Errorf("%w: code %d", ErrAuthRejected, ret)
	}
	unifyFlag, e := messageField(f, 2, 0, false)
	if e != nil {
		return nil, e
	}
	if unifyFlag.Number != 0 {
		if _, e = messageUint32(unifyFlag); e != nil {
			return nil, e
		}
	}
	section, e := messageField(f, 3, 2, true)
	if e != nil {
		return nil, e
	}
	s, e := parseMessageBody(qrBytes(section))
	if e != nil {
		return nil, e
	}
	u, e := messageField(s, 1, 0, true)
	if e != nil {
		return nil, e
	}
	uin, e := messageUint32(u)
	if e != nil || uin == 0 {
		return nil, ErrAuthResponse
	}
	flagField, e := messageField(s, 19, 0, true)
	if e != nil {
		return nil, e
	}
	flag, e := messageUint32(flagField)
	if e != nil {
		return nil, e
	}
	if flag&4 == 0 {
		return nil, fmt.Errorf("%w: auth key mode", ErrProtocolUnverified)
	}
	curveField, e := messageField(s, 2, 2, true)
	if e != nil {
		return nil, e
	}
	cf, e := parseMessageBody(qrBytes(curveField))
	if e != nil {
		return nil, e
	}
	nidField, e := messageField(cf, 1, 0, true)
	if e != nil {
		return nil, e
	}
	nid, e := messageUint32(nidField)
	if e != nil {
		return nil, e
	}
	if nid != 713 {
		return nil, fmt.Errorf("%w: auth curve", ErrProtocolUnverified)
	}
	point, e := authBuffer(cf, 2, true)
	if e != nil {
		return nil, e
	}
	derived, e := cryptox.DeriveAuthP224(privateDER, point)
	if e != nil {
		return nil, ErrAuthResponse
	}
	encrypted, e := authBuffer(s, 3, true)
	if e != nil {
		return nil, e
	}
	key, e := cryptox.OpenAuthCBC(derived, encrypted)
	if e != nil || len(key) != 16 {
		return nil, ErrAuthResponse
	}
	client, e := authBuffer(s, 23, true)
	if e != nil {
		return nil, e
	}
	server, e := authBuffer(s, 24, true)
	if e != nil {
		return nil, e
	}
	if !authAESKey(client) || !authAESKey(server) {
		return nil, ErrAuthResponse
	}
	auto, e := authBuffer(s, 4, false)
	if e != nil {
		return nil, e
	}
	a2, e := authBuffer(s, 12, false)
	if e != nil {
		return nil, e
	}
	acct, e := messageField(f, 4, 2, true)
	if e != nil {
		return nil, e
	}
	af, e := parseMessageBody(qrBytes(acct))
	if e != nil {
		return nil, e
	}
	name, e := messageField(af, 1, 2, true)
	if e != nil {
		return nil, e
	}
	account := string(qrBytes(name))
	if account != expectedAccount {
		return nil, ErrAuthResponse
	}
	return &ManualAuthKeys{uin: uin, account: account, session: key, derived: derived, client: client, server: server, auto: auto, a2: a2, raw: bytes.Clone(body)}, nil
}

func authAESKey(k []byte) bool { return len(k) == 16 || len(k) == 24 || len(k) == 32 }
func authBuffer(fields []wire.Field, n uint32, required bool) ([]byte, error) {
	f, e := messageField(fields, n, 2, required)
	if e != nil {
		return nil, e
	}
	if f.Number == 0 {
		return nil, nil
	}
	bf, e := parseMessageBody(qrBytes(f))
	if e != nil {
		return nil, e
	}
	l, e := messageField(bf, 1, 0, true)
	if e != nil {
		return nil, e
	}
	length, e := messageUint32(l)
	if e != nil || length > 4096 {
		return nil, ErrAuthResponse
	}
	d, e := messageField(bf, 2, 2, true)
	if e != nil {
		return nil, e
	}
	data := qrBytes(d)
	if uint32(len(data)) != length {
		return nil, ErrAuthResponse
	}
	return bytes.Clone(data), nil
}
