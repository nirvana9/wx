package protocol

import (
	"crypto/elliptic"
	"unicode/utf8"
)

// EncodeManualAuthCore serializes only ManualAuthRsaReqData, with explicit proof
// values. It is NOT a complete auth request: the Aes/device section, task packet
// and authenticated exchange must be recovered before it can be sent.
func EncodeManualAuthCore(randomKey, publicPoint []byte, username, password, password2 string) ([]byte, error) {
	if len(randomKey) != 16 || !validNativeRecipient(username) || len(password) == 0 || len(password) > 512 || len(password2) > 512 || !utf8.ValidString(password) || !utf8.ValidString(password2) {
		return nil, ErrAuthResponse
	}
	if len(publicPoint) != 57 || publicPoint[0] != 4 {
		return nil, ErrAuthResponse
	}
	if x, _ := elliptic.Unmarshal(elliptic.P224(), publicPoint); x == nil {
		return nil, ErrAuthResponse
	}
	buffer := func(b []byte) []byte { return bodyBytes(bodyVarint(nil, 1, uint64(len(b))), 2, b) }
	ecdh := bodyBytes(bodyVarint(nil, 1, 713), 2, buffer(publicPoint))
	b := bodyBytes(nil, 1, buffer(randomKey))
	b = bodyBytes(b, 2, ecdh)
	b = bodyBytes(b, 3, []byte(username))
	b = bodyBytes(b, 4, []byte(password))
	return bodyBytes(b, 5, []byte(password2)), nil
}
