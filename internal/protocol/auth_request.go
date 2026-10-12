package protocol

// EncodeManualAuthRequest serializes the pinned ManualAuthRequest container:
// field 1 is ManualAuthRsaReqData and field 2 is ManualAuthAesReqData. Inputs
// must be explicit wire bodies. This only composes protobuf bytes; it does not
// supply device data, encrypt a task, or authenticate a response.
func EncodeManualAuthRequest(rsaData, aesData []byte) ([]byte, error) {
	if rsaData == nil || aesData == nil ||
		len(rsaData) > maxMessageBody-12 || len(aesData) > maxMessageBody-12-len(rsaData) {
		return nil, ErrAuthRequest
	}
	if _, err := parseMessageBody(rsaData); err != nil {
		return nil, ErrAuthRequest
	}
	if _, err := parseMessageBody(aesData); err != nil {
		return nil, ErrAuthRequest
	}
	b := make([]byte, 0, len(rsaData)+len(aesData)+12)
	b = bodyBytes(b, 1, rsaData)
	return bodyBytes(b, 2, aesData), nil
}
