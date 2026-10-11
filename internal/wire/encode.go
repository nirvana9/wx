package wire

import "encoding/binary"

func validNumber(number uint32) bool { return number > 0 && number < 1<<29 }

func EncodeVarint(number uint32, value uint64) (Field, error) {
	if !validNumber(number) {
		return Field{}, ErrMalformed
	}
	b := binary.AppendUvarint(nil, uint64(number)<<3)
	b = binary.AppendUvarint(b, value)
	return Field{Number: number, WireType: 0, Raw: b}, nil
}

func EncodeInt32(number uint32, value int32) (Field, error) {
	return EncodeVarint(number, uint64(int64(value)))
}

func EncodeBytes(number uint32, value []byte) (Field, error) {
	if !validNumber(number) {
		return Field{}, ErrMalformed
	}
	b := binary.AppendUvarint(nil, uint64(number)<<3|2)
	b = binary.AppendUvarint(b, uint64(len(value)))
	if len(value) > DefaultLimits().MaxBytes-len(b) {
		return Field{}, ErrLimit
	}
	b = append(b, value...)
	return Field{Number: number, WireType: 2, Raw: b}, nil
}
