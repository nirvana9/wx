package protocol

import "errors"

var ErrAuthRequest = errors.New("invalid native authentication request fields")

// ManualAuthAESFields describes the pinned ManualAuthAesReqData WIRE layout.
// It supplies no device defaults, presence policy or login semantics. This is
// not a complete secmanualauth request and must not enable a network operation.
//
// Bytes accepts fields 3,4,6-11,15-21,25; Uint32 accepts 5,14,22,27.
// A map entry explicitly emits a value, including nil bytes or numeric zero.
// For named byte slices, nil omits the field; non-nil empty emits it. The two
// base messages are caller-supplied wire bodies, checked for wire validity only.
// Numeric names intentionally keep unresolved field meanings explicit.
type ManualAuthAESFields struct {
	BaseRequest, BaseAuthReqInfo []byte
	Bytes                        map[uint32][]byte
	Uint32                       map[uint32]uint32
	Field13                      *int32
	ClientCheckData, ExtSpamInfo []byte
	PubKeyInfo                   *ManualAuthPubKeyInfo
	ExtAuthReqInfo               *ManualAuthExtInfo
}

// ManualAuthPubKeyInfo is field26's native PubKeyInfo: signed int32 field1 and
// a SKBuiltinBuffer_t in field2. Key nil omits field2; empty emits an empty Buffer.
// Public-key selection and the meaning of field1 are not inferred here.
type ManualAuthPubKeyInfo struct {
	Field1 *int32
	Key    []byte
}

// ManualAuthExtInfo is field28's ExtAuthReqInfo. Both values remain opaque;
// nil omits, non-nil empty emits. No extension values are manufactured.
type ManualAuthExtInfo struct {
	Field2, Field3 []byte
}

func (ManualAuthAESFields) String() string      { return "native auth AES fields (wire only)" }
func (m ManualAuthAESFields) GoString() string  { return m.String() }
func (ManualAuthPubKeyInfo) String() string     { return "native auth public key info (wire only)" }
func (m ManualAuthPubKeyInfo) GoString() string { return m.String() }
func (ManualAuthExtInfo) String() string        { return "native auth extension info (wire only)" }
func (m ManualAuthExtInfo) GoString() string    { return m.String() }

func authBufferBody(b []byte) []byte {
	return bodyBytes(bodyVarint(nil, 1, uint64(len(b))), 2, b)
}

// EncodeManualAuthAESFields serializes explicit fields in native field order.
// Requiredness, device material generation, proof continuity, encryption and
// response authentication must be verified before composing a login request.
func EncodeManualAuthAESFields(in ManualAuthAESFields) ([]byte, error) {
	// Bound aggregate input before copying/parsing or constructing child bodies.
	// Reserve enough space for all tags, lengths and scalar/Buffer overhead.
	total := 512
	add := func(b []byte) bool {
		if len(b) > maxMessageBody-total {
			return false
		}
		total += len(b)
		return true
	}
	for _, b := range [][]byte{in.BaseRequest, in.BaseAuthReqInfo, in.ClientCheckData, in.ExtSpamInfo} {
		if !add(b) {
			return nil, ErrAuthRequest
		}
	}
	for n, b := range in.Bytes {
		if !authAESBytesField(n) || !add(b) {
			return nil, ErrAuthRequest
		}
	}
	for n := range in.Uint32 {
		if n != 5 && n != 14 && n != 22 && n != 27 {
			return nil, ErrAuthRequest
		}
	}
	if in.PubKeyInfo != nil && !add(in.PubKeyInfo.Key) {
		return nil, ErrAuthRequest
	}
	if in.ExtAuthReqInfo != nil && (!add(in.ExtAuthReqInfo.Field2) || !add(in.ExtAuthReqInfo.Field3)) {
		return nil, ErrAuthRequest
	}
	for _, base := range [][]byte{in.BaseRequest, in.BaseAuthReqInfo} {
		if _, e := parseMessageBody(base); e != nil {
			return nil, ErrAuthRequest
		}
	}
	b := make([]byte, 0, total)
	for n := uint32(1); n <= 28; n++ {
		if value, ok := in.Bytes[n]; ok {
			b = bodyBytes(b, n, value)
			continue
		}
		if value, ok := in.Uint32[n]; ok {
			b = bodyVarint(b, n, uint64(value))
			continue
		}
		switch n {
		case 1:
			if in.BaseRequest != nil {
				b = bodyBytes(b, n, in.BaseRequest)
			}
		case 2:
			if in.BaseAuthReqInfo != nil {
				b = bodyBytes(b, n, in.BaseAuthReqInfo)
			}
		case 13:
			if in.Field13 != nil {
				b = bodyVarint(b, n, uint64(int64(*in.Field13)))
			}
		case 23:
			if in.ClientCheckData != nil {
				b = bodyBytes(b, n, authBufferBody(in.ClientCheckData))
			}
		case 24:
			if in.ExtSpamInfo != nil {
				b = bodyBytes(b, n, authBufferBody(in.ExtSpamInfo))
			}
		case 26:
			if in.PubKeyInfo != nil {
				var child []byte
				if in.PubKeyInfo.Field1 != nil {
					child = bodyVarint(child, 1, uint64(int64(*in.PubKeyInfo.Field1)))
				}
				if in.PubKeyInfo.Key != nil {
					child = bodyBytes(child, 2, authBufferBody(in.PubKeyInfo.Key))
				}
				b = bodyBytes(b, n, child)
			}
		case 28:
			if in.ExtAuthReqInfo != nil {
				var child []byte
				if in.ExtAuthReqInfo.Field2 != nil {
					child = bodyBytes(child, 2, in.ExtAuthReqInfo.Field2)
				}
				if in.ExtAuthReqInfo.Field3 != nil {
					child = bodyBytes(child, 3, in.ExtAuthReqInfo.Field3)
				}
				b = bodyBytes(b, n, child)
			}
		}
	}
	return b, nil
}

func authAESBytesField(n uint32) bool {
	return n == 3 || n == 4 || n >= 6 && n <= 11 || n >= 15 && n <= 21 || n == 25
}
