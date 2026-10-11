// Package cryptox implements cipher primitives verified against isolated native
// functions. It does not yet select a packet scheme or derive session material.
package cryptox

import (
	"crypto/aes"
	"crypto/cipher"
	"crypto/hkdf"
	"crypto/sha256"
	"errors"
)

var (
	ErrInvalidMaterial = errors.New("invalid native cipher material")
	ErrIntegrity       = errors.New("native cipher authentication failed")
	ErrLimit           = errors.New("native cipher resource limit exceeded")
)

const (
	maxInput  = 16 << 20
	nonceSize = 12
	tagSize   = 16
)

func aesGCM(key []byte) (cipher.AEAD, error) {
	switch len(key) {
	case 16, 24, 32:
	default:
		return nil, ErrInvalidMaterial
	}
	block, err := aes.NewCipher(key)
	if err != nil {
		return nil, err
	}
	return cipher.NewGCM(block)
}

// SealAESGCM reproduces native AesGcmEncrypt: ciphertext || nonce || tag.
// The caller supplies a fresh, unique 12-byte nonce for each encryption key.
func SealAESGCM(key, nonce, aad, plaintext []byte) ([]byte, error) {
	if len(aad) > maxInput || len(plaintext) > maxInput {
		return nil, ErrLimit
	}
	if len(nonce) != nonceSize {
		return nil, ErrInvalidMaterial
	}
	gcm, err := aesGCM(key)
	if err != nil {
		return nil, err
	}
	sealed := gcm.Seal(nil, nonce, plaintext, aad)
	out := make([]byte, 0, len(plaintext)+nonceSize+tagSize)
	out = append(out, sealed[:len(plaintext)]...)
	out = append(out, nonce...)
	out = append(out, sealed[len(plaintext):]...)
	return out, nil
}

// OpenAESGCM verifies the native envelope before returning any plaintext.
func OpenAESGCM(key, aad, envelope []byte) ([]byte, error) {
	if len(aad) > maxInput || len(envelope) > maxInput+nonceSize+tagSize {
		return nil, ErrLimit
	}
	gcm, err := aesGCM(key)
	if err != nil {
		return nil, err
	}
	if len(envelope) < nonceSize+tagSize {
		return nil, ErrIntegrity
	}
	n := len(envelope) - nonceSize - tagSize
	nonce := envelope[n : n+nonceSize]
	sealed := make([]byte, 0, n+tagSize)
	sealed = append(sealed, envelope[:n]...)
	sealed = append(sealed, envelope[n+nonceSize:]...)
	plaintext, err := gcm.Open(nil, nonce, sealed, aad)
	if err != nil {
		return nil, ErrIntegrity
	}
	return plaintext, nil
}

// DeriveHKDFSHA256 matches the native string adapter's salt/IKM/info order.
// Native HKDF_Expand rejects empty info and zero output length; preserve that
// behavior even though RFC 5869 permits empty info.
func DeriveHKDFSHA256(salt, ikm, info []byte, length int) ([]byte, error) {
	if len(salt) > maxInput || len(ikm) > maxInput || len(info) > maxInput || length > 255*sha256.Size {
		return nil, ErrLimit
	}
	if len(info) == 0 || length <= 0 {
		return nil, ErrInvalidMaterial
	}
	return hkdf.Key(sha256.New, ikm, salt, string(info), length)
}
