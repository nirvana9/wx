package protocol

import (
	"encoding/binary"
	"errors"
	"math"
	"unicode"
	"unicode/utf8"

	"github.com/nirvana9/wx/internal/wire"
)

var ErrMessageBody = errors.New("invalid native message body")

const maxMessageBody = 1 << 20
const maxBodyItems = 10000

func parseMessageBody(b []byte) ([]wire.Field, error) {
	f, e := wire.Parse(b, wire.Limits{MaxBytes: maxMessageBody, MaxDepth: 16})
	if e != nil {
		return nil, ErrMessageBody
	}
	return f, nil
}

func messageField(fields []wire.Field, n uint32, kind uint8, required bool) (wire.Field, error) {
	var found wire.Field
	for _, f := range fields {
		if f.Number != n {
			continue
		}
		if found.Number != 0 || f.WireType != kind {
			return wire.Field{}, ErrMessageBody
		}
		found = f
	}
	if required && found.Number == 0 {
		return wire.Field{}, ErrMessageBody
	}
	return found, nil
}

func messageInt32(f wire.Field) (int32, error) {
	v := qrUint(f)
	// The pinned serializer sign-extends negative int32 values to ten bytes.
	if uint64(int64(int32(v))) != v {
		return 0, ErrMessageBody
	}
	return int32(v), nil
}

func messageUint32(f wire.Field) (uint32, error) {
	v := qrUint(f)
	if v > math.MaxUint32 {
		return 0, ErrMessageBody
	}
	return uint32(v), nil
}

func bodyVarint(b []byte, n uint32, v uint64) []byte {
	b = binary.AppendUvarint(b, uint64(n)<<3)
	return binary.AppendUvarint(b, v)
}

func bodyBytes(b []byte, n uint32, v []byte) []byte {
	b = binary.AppendUvarint(b, uint64(n)<<3|2)
	b = binary.AppendUvarint(b, uint64(len(v)))
	return append(b, v...)
}

func validNativeRecipient(to string) bool {
	if len(to) == 0 || len(to) > 256 || !utf8.ValidString(to) {
		return false
	}
	for _, r := range to {
		if unicode.IsSpace(r) || unicode.IsControl(r) {
			return false
		}
	}
	return true
}
