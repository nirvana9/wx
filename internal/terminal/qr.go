package terminal

import (
	"bytes"
	"errors"
	"fmt"
	"image"
	"image/png"
	"io"

	"github.com/nirvana9/wx/internal/protocol"
)

func qrDark(img image.Image, x, y int) bool {
	r, g, b, a := img.At(x, y).RGBA()
	return a >= 32768 && r+g+b < 3*32768
}

func qrGCD(a, b int) int {
	for b != 0 {
		a, b = b, a%b
	}
	return a
}

// RenderQR preserves the server image's black/white module geometry. It adds a
// four-module white border and uses two module rows per terminal line.
func RenderQR(out io.Writer, qr protocol.QRImage) error {
	cfg, err := png.DecodeConfig(bytes.NewReader(qr.PNG))
	if err != nil || cfg.Width < 1 || cfg.Height < 1 || cfg.Width > 1024 || cfg.Height > 1024 {
		return protocol.ErrQRImage
	}
	img, err := png.Decode(bytes.NewReader(qr.PNG))
	if err != nil {
		return protocol.ErrQRImage
	}
	bounds := img.Bounds()
	scale := cfg.Width
	for y := bounds.Min.Y; y < bounds.Max.Y; y++ {
		start := bounds.Min.X
		dark := qrDark(img, start, y)
		for x := start + 1; x < bounds.Max.X; x++ {
			next := qrDark(img, x, y)
			if next != dark {
				scale = qrGCD(scale, x-start)
				start = x
				dark = next
			}
		}
		scale = qrGCD(scale, bounds.Max.X-start)
	}
	if scale < 1 || cfg.Height%scale != 0 {
		scale = 1
	}
	width, height := cfg.Width/scale, cfg.Height/scale
	if width > 256 {
		return errors.New("QR image is too wide for terminal output; save its PNG")
	}
	dark := func(x, y int) bool {
		if x < 0 || y < 0 || x >= width || y >= height {
			return false
		}
		return qrDark(img, bounds.Min.X+x*scale, bounds.Min.Y+y*scale)
	}
	var buf bytes.Buffer
	buf.WriteString("\x1b[30;47m")
	for y := -4; y < height+4; y += 2 {
		for x := -4; x < width+4; x++ {
			top, bottom := dark(x, y), dark(x, y+1)
			switch {
			case top && bottom:
				buf.WriteRune('█')
			case top:
				buf.WriteRune('▀')
			case bottom:
				buf.WriteRune('▄')
			default:
				buf.WriteByte(' ')
			}
		}
		buf.WriteString("\x1b[0m\n")
		if y+2 < height+4 {
			buf.WriteString("\x1b[30;47m")
		}
	}
	_, err = fmt.Fprint(out, buf.String())
	return err
}
