package protocol

import (
	"bytes"
	"errors"
	"fmt"

	"github.com/nirvana9/wx/internal/wire"
)

var ErrSyncRejected = errors.New("native sync response rejected")

// NativeSyncBody is a decoded command envelope. Commands are opaque until their
// schemas are recovered; Control retains cursor/continuation fields verbatim.
// Decoding this does not produce text messages or advance a durable cursor.
type NativeSyncBody struct {
	Commands []NativeSyncCommand
	Control  []wire.Field
	// Raw retains unknown CmdList/CmdItem/Buffer extensions as well as Control.
	Raw []byte
}

type NativeSyncCommand struct {
	ID   int32
	Body []byte
}

// DecodeSyncBody only decodes the pinned NewSyncResponse/CmdList/CmdItem/Buffer
// hierarchy. The caller is responsible for authenticating/decrypting the input.
func DecodeSyncBody(body []byte) (NativeSyncBody, error) {
	fields, e := parseMessageBody(body)
	if e != nil {
		return NativeSyncBody{}, e
	}
	code, e := messageField(fields, 1, 0, true)
	if e != nil {
		return NativeSyncBody{}, e
	}
	ret, e := messageInt32(code)
	if e != nil {
		return NativeSyncBody{}, e
	}
	if ret != 0 {
		return NativeSyncBody{}, fmt.Errorf("%w: code %d", ErrSyncRejected, ret)
	}
	list, e := messageField(fields, 2, 2, true)
	if e != nil {
		return NativeSyncBody{}, e
	}
	for i := uint32(3); i <= 7; i++ {
		kind := uint8(0)
		if i == 4 {
			kind = 2
		}
		f, e := messageField(fields, i, kind, false)
		if e != nil {
			return NativeSyncBody{}, e
		}
		if f.Number != 0 && kind == 0 {
			if _, e := messageUint32(f); e != nil {
				return NativeSyncBody{}, e
			}
		}
	}
	lf, e := parseMessageBody(qrBytes(list))
	if e != nil {
		return NativeSyncBody{}, e
	}
	count, e := messageField(lf, 1, 0, true)
	if e != nil {
		return NativeSyncBody{}, e
	}
	n, e := messageUint32(count)
	if e != nil || n > maxBodyItems {
		return NativeSyncBody{}, ErrMessageBody
	}
	var out NativeSyncBody
	for _, f := range lf {
		if f.Number != 2 {
			continue
		}
		if f.WireType != 2 || len(out.Commands) >= int(n) {
			return NativeSyncBody{}, ErrMessageBody
		}
		cmd, e := decodeSyncCommand(qrBytes(f))
		if e != nil {
			return NativeSyncBody{}, e
		}
		out.Commands = append(out.Commands, cmd)
	}
	if len(out.Commands) != int(n) {
		return NativeSyncBody{}, ErrMessageBody
	}
	for _, f := range fields {
		if f.Number != 1 && f.Number != 2 {
			out.Control = append(out.Control, f)
		}
	}
	out.Raw = bytes.Clone(body)
	return out, nil
}

func decodeSyncCommand(body []byte) (NativeSyncCommand, error) {
	f, e := parseMessageBody(body)
	if e != nil {
		return NativeSyncCommand{}, e
	}
	id, e := messageField(f, 1, 0, true)
	if e != nil {
		return NativeSyncCommand{}, e
	}
	cmd, e := messageInt32(id)
	if e != nil {
		return NativeSyncCommand{}, e
	}
	buf, e := messageField(f, 2, 2, true)
	if e != nil {
		return NativeSyncCommand{}, e
	}
	bf, e := parseMessageBody(qrBytes(buf))
	if e != nil {
		return NativeSyncCommand{}, e
	}
	length, e := messageField(bf, 1, 0, true)
	if e != nil {
		return NativeSyncCommand{}, e
	}
	n, e := messageUint32(length)
	if e != nil {
		return NativeSyncCommand{}, e
	}
	data, e := messageField(bf, 2, 2, true)
	if e != nil {
		return NativeSyncCommand{}, e
	}
	b := qrBytes(data)
	if uint64(n) != uint64(len(b)) {
		return NativeSyncCommand{}, ErrMessageBody
	}
	return NativeSyncCommand{ID: cmd, Body: bytes.Clone(b)}, nil
}
