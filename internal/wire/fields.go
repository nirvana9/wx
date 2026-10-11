package wire

import "bytes"

type Field struct {
	Number   uint32
	WireType uint8
	Raw      []byte
}

func varint(b []byte, offset int) (uint64, int, error) {
	var v uint64
	for i := 0; i < 10; i++ {
		if offset+i >= len(b) {
			return 0, offset, ErrMalformed
		}
		x := b[offset+i]
		if i == 9 && x > 1 {
			return 0, offset, ErrMalformed
		}
		v |= uint64(x&127) << (7 * i)
		if x < 128 {
			return v, offset + i + 1, nil
		}
	}
	return 0, offset, ErrMalformed
}

func tag(b []byte, offset int) (uint32, uint8, int, error) {
	v, end, err := varint(b, offset)
	if err != nil || v>>3 == 0 || v>>3 >= 1<<29 || v&7 > 5 {
		return 0, 0, offset, ErrMalformed
	}
	return uint32(v >> 3), uint8(v & 7), end, nil
}

func consume(b []byte, start, depth int, budget *int) (Field, int, error) {
	n, w, pos, err := tag(b, start)
	if err != nil || w == 4 {
		return Field{}, start, ErrMalformed
	}
	if *budget <= 0 {
		return Field{}, start, ErrLimit
	}
	*budget--
	switch w {
	case 0:
		_, pos, err = varint(b, pos)
	case 1:
		if len(b)-pos < 8 {
			err = ErrMalformed
		} else {
			pos += 8
		}
	case 2:
		var size uint64
		size, pos, err = varint(b, pos)
		if err == nil {
			if size > uint64(len(b)-pos) {
				err = ErrMalformed
			} else {
				pos += int(size)
			}
		}
	case 3:
		if depth <= 0 {
			return Field{}, start, ErrLimit
		}
		for {
			endNumber, endType, end, tagErr := tag(b, pos)
			if tagErr != nil {
				return Field{}, start, tagErr
			}
			if endType == 4 {
				if endNumber != n {
					return Field{}, start, ErrMalformed
				}
				pos = end
				break
			}
			_, pos, err = consume(b, pos, depth-1, budget)
			if err != nil {
				return Field{}, start, err
			}
		}
	case 5:
		if len(b)-pos < 4 {
			err = ErrMalformed
		} else {
			pos += 4
		}
	}
	if err != nil {
		return Field{}, start, err
	}
	return Field{Number: n, WireType: w, Raw: b[start:pos:pos]}, pos, nil
}

// Parse bounds input, groups and field count. It never recursively interprets LEN.
// Raw slices share a private copied backing buffer, never the caller's input.
func Parse(input []byte, limits Limits) ([]Field, error) {
	if limits.MaxBytes <= 0 || limits.MaxDepth < 0 || len(input) > limits.MaxBytes {
		return nil, ErrLimit
	}
	b := bytes.Clone(input)
	var fields []Field
	budget := maxFields
	for pos := 0; pos < len(b); {
		f, end, err := consume(b, pos, limits.MaxDepth, &budget)
		if err != nil {
			return nil, err
		}
		fields = append(fields, f)
		pos = end
	}
	return fields, nil
}

// Join rejects mismatched metadata and multiple fields hidden in one Raw value.
func Join(fields []Field) ([]byte, error) {
	limit := DefaultLimits()
	budget := maxFields
	if len(fields) > maxFields {
		return nil, ErrLimit
	}
	total := 0
	for _, f := range fields {
		if len(f.Raw) > limit.MaxBytes-total {
			return nil, ErrLimit
		}
		parsed, end, err := consume(f.Raw, 0, limit.MaxDepth, &budget)
		if err != nil {
			return nil, err
		}
		if end != len(f.Raw) || parsed.Number != f.Number || parsed.WireType != f.WireType {
			return nil, ErrMalformed
		}
		total += len(f.Raw)
	}
	out := make([]byte, 0, total)
	for _, f := range fields {
		out = append(out, f.Raw...)
	}
	return out, nil
}
