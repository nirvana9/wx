// Package wire preserves native protobuf fields without guessing LEN semantics.
package wire

import "errors"

var (
	ErrMalformed = errors.New("malformed protobuf field")
	ErrLimit     = errors.New("protobuf resource limit exceeded")
)

const maxFields = 65536

type Limits struct{ MaxBytes, MaxDepth int }

func DefaultLimits() Limits { return Limits{16 << 20, 64} }

// Child shares the byte bound and consumes a semantic submessage level.
func (l Limits) Child() (Limits, error) {
	if l.MaxBytes <= 0 || l.MaxDepth <= 0 {
		return Limits{}, ErrLimit
	}
	l.MaxDepth--
	return l, nil
}
