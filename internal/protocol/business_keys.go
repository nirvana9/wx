package protocol

import (
	"bytes"
	"errors"
)

var ErrBusinessKeys = errors.New("unsupported native business key candidates")

// NativeBusinessKeyCandidates is the default-route result of the pinned
// GetAuthInfoForCgi selector. It is candidate material, not authenticated or
// installed account state. It does not include configured route overrides, frame
// parameters, nonces, request correlation, or response authentication.
type NativeBusinessKeyCandidates struct {
	identify                string
	selector                uint16
	requestKey, responseKey []byte
}

func (NativeBusinessKeyCandidates) String() string {
	return "native business key candidates (not an authenticated session)"
}
func (m NativeBusinessKeyCandidates) GoString() string     { return m.String() }
func (m *NativeBusinessKeyCandidates) Identify() string    { return m.identify }
func (m *NativeBusinessKeyCandidates) Selector() uint16    { return m.selector }
func (m *NativeBusinessKeyCandidates) RequestKey() []byte  { return bytes.Clone(m.requestKey) }
func (m *NativeBusinessKeyCandidates) ResponseKey() []byte { return bytes.Clone(m.responseKey) }

// SelectNativeBusinessKeyCandidates matches only the pinned default account
// route: both direction keys present selects main/13; otherwise origin/5 uses
// the original session key in both slots. Used key lengths are checked before
// copying. The auth-derived ECDH/MD5 key is not an input to this selector.
// No login state, persistence, or network operation is enabled by this result.
func SelectNativeBusinessKeyCandidates(originalKey, clientKey, serverKey []byte) (*NativeBusinessKeyCandidates, error) {
	if len(clientKey) != 0 && len(serverKey) != 0 {
		if !authAESKey(clientKey) || !authAESKey(serverKey) {
			return nil, ErrBusinessKeys
		}
		return &NativeBusinessKeyCandidates{
			identify: "main", selector: 13,
			requestKey: bytes.Clone(clientKey), responseKey: bytes.Clone(serverKey),
		}, nil
	}
	if len(originalKey) != 16 {
		return nil, ErrBusinessKeys
	}
	return &NativeBusinessKeyCandidates{
		identify: "origin", selector: 5,
		requestKey: bytes.Clone(originalKey), responseKey: bytes.Clone(originalKey),
	}, nil
}
