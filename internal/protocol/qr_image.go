package protocol

import (
	"bytes"
	"encoding/binary"
	"errors"
	"fmt"
	"image/png"

	"github.com/nirvana9/wx/internal/wire"
)

var (
	ErrQRImage  = errors.New("invalid native QR image response")
	ErrQRServer = errors.New("native QR server returned an error")
)

// QRImage is a validated PNG extracted from a decoded native GetLoginQRCode
// response. Extracting an image does not verify transport, scanning or login.
type QRImage struct {
	PNG           []byte
	Width, Height int
}

func oneQRField(fields []wire.Field, number uint32, kind uint8) (wire.Field, error) {
	var result wire.Field
	for _, f := range fields {
		if f.Number != number {
			continue
		}
		if result.Number != 0 || f.WireType != kind {
			return wire.Field{}, ErrQRImage
		}
		result = f
	}
	if result.Number == 0 {
		return wire.Field{}, ErrQRImage
	}
	return result, nil
}

func qrBytes(f wire.Field) []byte {
	_, tagSize := binary.Uvarint(f.Raw)
	length, lengthSize := binary.Uvarint(f.Raw[tagSize:])
	return f.Raw[tagSize+lengthSize : tagSize+lengthSize+int(length)]
}

func qrUint(f wire.Field) uint64 {
	_, tagSize := binary.Uvarint(f.Raw)
	value, _ := binary.Uvarint(f.Raw[tagSize:])
	return value
}

// DecodeQRImage decodes only the image preview contract proven by the pinned
// Linux sample and a correlated live native QR capture. It sends no request.
func DecodeQRImage(response []byte) (QRImage, error) {
	fields, err := wire.Parse(response, wire.DefaultLimits())
	if err != nil {
		return QRImage{}, fmt.Errorf("%w: response wire", ErrQRImage)
	}
	base, err := oneQRField(fields, 1, 2)
	if err != nil {
		return QRImage{}, err
	}
	baseFields, err := wire.Parse(qrBytes(base), wire.DefaultLimits())
	if err != nil {
		return QRImage{}, ErrQRImage
	}
	code, err := oneQRField(baseFields, 1, 0)
	if err != nil {
		return QRImage{}, err
	}
	if ret := int32(qrUint(code)); ret != 0 {
		return QRImage{}, fmt.Errorf("%w: code %d", ErrQRServer, ret)
	}
	imageField, err := oneQRField(fields, 2, 2)
	if err != nil {
		return QRImage{}, err
	}
	buffer, err := wire.Parse(qrBytes(imageField), wire.DefaultLimits())
	if err != nil {
		return QRImage{}, ErrQRImage
	}
	lengthField, err := oneQRField(buffer, 1, 0)
	if err != nil {
		return QRImage{}, err
	}
	dataField, err := oneQRField(buffer, 2, 2)
	if err != nil {
		return QRImage{}, err
	}
	data := qrBytes(dataField)
	if qrUint(lengthField) != uint64(len(data)) || len(data) == 0 {
		return QRImage{}, ErrQRImage
	}
	config, err := png.DecodeConfig(bytes.NewReader(data))
	if err != nil || config.Width < 1 || config.Height < 1 || config.Width > 1024 || config.Height > 1024 {
		return QRImage{}, ErrQRImage
	}
	// Verify the full stream/CRCs, after bounding pixel allocation.
	if _, err := png.Decode(bytes.NewReader(data)); err != nil {
		return QRImage{}, ErrQRImage
	}
	return QRImage{PNG: bytes.Clone(data), Width: config.Width, Height: config.Height}, nil
}
