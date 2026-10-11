package protocol

import (
	"bytes"
	"errors"
	"fmt"
	"unicode/utf8"

	"github.com/nirvana9/wx/internal/wire"
)

var ErrSendRejected = errors.New("native send response rejected")

// TextSendBody supplies already-assigned native uint32 values. Client-ID
// generation, contact resolution, session encryption and networking are separate
// unfinished contracts. This type does not assign IDs or claim to send messages.
type TextSendBody struct {
	To, Text            string
	ClientID, CreatedAt uint32
}

// EncodeTextSendBody serializes one SendMsgRequestNew/MicroMsgRequestNew.
// The caller must first resolve To to an exact contact ID. Text is preserved.
func EncodeTextSendBody(in TextSendBody) ([]byte, error) {
	if !validNativeRecipient(in.To) || len(in.Text) == 0 || len(in.Text) > 4096 || !utf8.ValidString(in.Text) || in.ClientID == 0 {
		return nil, ErrMessageBody
	}
	to := bodyBytes(nil, 1, []byte(in.To))
	item := bodyBytes(nil, 1, to)
	item = bodyBytes(item, 2, []byte(in.Text))
	item = bodyVarint(item, 3, 1)
	item = bodyVarint(item, 4, uint64(in.CreatedAt))
	item = bodyVarint(item, 5, uint64(in.ClientID))
	return bodyBytes(bodyVarint(nil, 1, 1), 2, item), nil
}

type TextSendResponse struct {
	Results []TextSendResult
	// Raw is an owned copy, retaining extensions at every envelope level.
	Raw []byte
}

// TextSendResult is decoded data, not an accepted-send receipt. Fields 3–7 are
// retained without assigning unproven semantics. Correlation is not implemented.
type TextSendResult struct {
	Code         int32
	To           string
	NewMessageID uint64
	Fields       []wire.Field
}

// DecodeTextSendResponse requires an already authenticated, decrypted business
// body. It never authenticates input or reports successful message delivery.
func DecodeTextSendResponse(body []byte) (TextSendResponse, error) {
	fields, e := parseMessageBody(body)
	if e != nil {
		return TextSendResponse{}, e
	}
	base, e := messageField(fields, 1, 2, true)
	if e != nil {
		return TextSendResponse{}, e
	}
	bf, e := parseMessageBody(qrBytes(base))
	if e != nil {
		return TextSendResponse{}, e
	}
	code, e := messageField(bf, 1, 0, true)
	if e != nil {
		return TextSendResponse{}, e
	}
	ret, e := messageInt32(code)
	if e != nil {
		return TextSendResponse{}, e
	}
	if ret != 0 {
		return TextSendResponse{}, fmt.Errorf("%w: code %d", ErrSendRejected, ret)
	}
	count, e := messageField(fields, 2, 0, true)
	if e != nil {
		return TextSendResponse{}, e
	}
	n, e := messageUint32(count)
	if e != nil || n > maxBodyItems {
		return TextSendResponse{}, ErrMessageBody
	}
	var out TextSendResponse
	for _, f := range fields {
		if f.Number != 3 {
			continue
		}
		if f.WireType != 2 || len(out.Results) >= int(n) {
			return TextSendResponse{}, ErrMessageBody
		}
		r, e := decodeTextSendItem(qrBytes(f))
		if e != nil {
			return TextSendResponse{}, e
		}
		out.Results = append(out.Results, r)
	}
	if len(out.Results) != int(n) {
		return TextSendResponse{}, ErrMessageBody
	}
	out.Raw = bytes.Clone(body)
	return out, nil
}

func decodeTextSendItem(body []byte) (TextSendResult, error) {
	f, e := parseMessageBody(body)
	if e != nil {
		return TextSendResult{}, e
	}
	code, e := messageField(f, 1, 0, true)
	if e != nil {
		return TextSendResult{}, e
	}
	ret, e := messageInt32(code)
	if e != nil {
		return TextSendResult{}, e
	}
	to, e := messageField(f, 2, 2, true)
	if e != nil {
		return TextSendResult{}, e
	}
	tf, e := parseMessageBody(qrBytes(to))
	if e != nil {
		return TextSendResult{}, e
	}
	value, e := messageField(tf, 1, 2, true)
	if e != nil {
		return TextSendResult{}, e
	}
	recipient := string(qrBytes(value))
	if !validNativeRecipient(recipient) {
		return TextSendResult{}, ErrMessageBody
	}
	for i := uint32(3); i <= 7; i++ {
		x, e := messageField(f, i, 0, false)
		if e != nil {
			return TextSendResult{}, e
		}
		if x.Number != 0 {
			if _, e := messageUint32(x); e != nil {
				return TextSendResult{}, e
			}
		}
	}
	id, e := messageField(f, 8, 0, false)
	if e != nil {
		return TextSendResult{}, e
	}
	var messageID uint64
	if id.Number != 0 {
		messageID = qrUint(id)
	}
	return TextSendResult{Code: ret, To: recipient, NewMessageID: messageID, Fields: f}, nil
}
