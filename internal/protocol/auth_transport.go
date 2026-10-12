package protocol

// NativeTaskSelectsECDHInfo matches only the pinned 0x79e4250 selector used by
// 0x79e3760 when constructing RequestInfo. It selects ECDHClientInfo metadata
// for current native task CGI IDs, including manualauth 252 and autoauth 763.
// It does not select a complete wire packet, supply peer/key material, or prove
// that authentication/message encryption follows the QR packet contract.
func NativeTaskSelectsECDHInfo(cgi uint32) bool {
	switch cgi {
	case 502, 503, 252, 654, 763, 989, 7415, 997, 987, 22312:
		return true
	default:
		return false
	}
}
