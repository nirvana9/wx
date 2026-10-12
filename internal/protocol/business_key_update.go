package protocol

import "bytes"

// NativeBusinessKeyState holds candidate slots for the pinned native account
// refresh rule. It carries no identity, authentication status, or credentials.
// Updates return detached snapshots and never install or persist a session.
type NativeBusinessKeyState struct {
	original, client, server []byte
}

func (s NativeBusinessKeyState) String() string {
	return "native candidate key slots (not a logged-in session)"
}
func (s NativeBusinessKeyState) GoString() string     { return s.String() }
func (s *NativeBusinessKeyState) OriginalKey() []byte { return bytes.Clone(s.original) }
func (s *NativeBusinessKeyState) ClientKey() []byte   { return bytes.Clone(s.client) }
func (s *NativeBusinessKeyState) ServerKey() []byte   { return bytes.Clone(s.server) }

func (s *NativeBusinessKeyState) Candidates() (*NativeBusinessKeyCandidates, error) {
	if s == nil {
		return nil, ErrBusinessKeys
	}
	return SelectNativeBusinessKeyCandidates(s.original, s.client, s.server)
}

// StageNativeBusinessKeyUpdate mirrors only 0x79e2b30's key update guards:
// nonempty original replaces that slot; client and server replace together only
// when both are nonempty. Empty/partial updates preserve the previous slots.
// nil previous starts with empty slots. Used updates must have supported lengths.
// An authenticated packet and complete session installation remain prerequisites
// for online use; staging these bytes does not establish either prerequisite.
func StageNativeBusinessKeyUpdate(previous *NativeBusinessKeyState, originalKey, clientKey, serverKey []byte) (*NativeBusinessKeyState, error) {
	pair := len(clientKey) > 0 && len(serverKey) > 0
	if len(originalKey) > 0 && len(originalKey) != 16 {
		return nil, ErrBusinessKeys
	}
	if pair && (!authAESKey(clientKey) || !authAESKey(serverKey)) {
		return nil, ErrBusinessKeys
	}
	state := new(NativeBusinessKeyState)
	if previous != nil {
		state.original = bytes.Clone(previous.original)
		state.client = bytes.Clone(previous.client)
		state.server = bytes.Clone(previous.server)
	}
	if len(originalKey) > 0 {
		state.original = bytes.Clone(originalKey)
	}
	if pair {
		state.client = bytes.Clone(clientKey)
		state.server = bytes.Clone(serverKey)
	}
	return state, nil
}
