package protocol

import (
	"bytes"
	"encoding/binary"
	"errors"
	"hash/crc32"
)

var ErrNativeIdentityRecord = errors.New("invalid native extspam identity record")

// EncodeNativeExtSpamIdentityRecord encodes only the pinned native local record:
// 36 opaque identity bytes followed by a little-endian IEEE CRC32. It generates
// no identity and does not encode ManualAuthAesReqData.extSpamInfo or device ID.
func EncodeNativeExtSpamIdentityRecord(identity []byte) ([]byte, error) {
	if len(identity) != 36 {
		return nil, ErrNativeIdentityRecord
	}
	record := make([]byte, 40)
	copy(record, identity)
	binary.LittleEndian.PutUint32(record[36:], crc32.ChecksumIEEE(identity))
	return record, nil
}

// DecodeNativeExtSpamIdentityRecord accepts the canonical 40-byte local record
// emitted by the pinned writer. The CRC detects corruption; it authenticates no
// peer, device or session. Returned bytes are detached, with no UUID syntax guess.
func DecodeNativeExtSpamIdentityRecord(record []byte) ([]byte, error) {
	if len(record) != 40 || binary.LittleEndian.Uint32(record[36:]) != crc32.ChecksumIEEE(record[:36]) {
		return nil, ErrNativeIdentityRecord
	}
	return bytes.Clone(record[:36]), nil
}
