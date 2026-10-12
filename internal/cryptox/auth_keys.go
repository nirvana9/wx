package cryptox

import (
	"bytes"
	"crypto/aes"
	"crypto/cipher"
	"crypto/ecdsa"
	"crypto/elliptic"
	"crypto/md5"
	"crypto/rand"
	"crypto/x509"
	"encoding/asn1"
)

// AuthP224KeyPair owns a fresh ephemeral auth key, not an account/session key.
type AuthP224KeyPair struct{ private, public []byte }

func (k AuthP224KeyPair) String() string                      { return "native P224 key pair (private material redacted)" }
func (k AuthP224KeyPair) GoString() string                    { return k.String() }
func (k *AuthP224KeyPair) PublicPoint() []byte                { return bytes.Clone(k.public) }
func (k *AuthP224KeyPair) PrivateDER() []byte                 { return bytes.Clone(k.private) }
func (k *AuthP224KeyPair) Derive(peer []byte) ([]byte, error) { return DeriveAuthP224(k.private, peer) }
func NewAuthP224KeyPair() (*AuthP224KeyPair, error) {
	k, e := ecdsa.GenerateKey(elliptic.P224(), rand.Reader)
	if e != nil {
		return nil, e
	}
	d, e := x509.MarshalECPrivateKey(k)
	if e != nil {
		return nil, e
	}
	return &AuthP224KeyPair{private: d, public: elliptic.Marshal(k.Curve, k.X, k.Y)}, nil
}

// DeriveAuthP224 reproduces native ComputeDh(NID713, KDF0): MD5 of the
// 28-byte, big-endian shared X coordinate. privateDER is a SEC1 EC private key.
// This is the pinned auth scheme, not a general-purpose key derivation API.
func DeriveAuthP224(privateDER, peerPoint []byte) ([]byte, error) {
	if len(privateDER) == 0 || len(privateDER) > 512 || len(peerPoint) != 57 || peerPoint[0] != 4 {
		return nil, ErrInvalidMaterial
	}
	var raw asn1.RawValue
	if rest, e := asn1.Unmarshal(privateDER, &raw); e != nil || len(rest) != 0 {
		return nil, ErrInvalidMaterial
	}
	k, e := x509.ParseECPrivateKey(privateDER)
	curve := elliptic.P224()
	if e != nil || k.Curve != curve || k.D.Sign() <= 0 || k.D.Cmp(curve.Params().N) >= 0 {
		return nil, ErrInvalidMaterial
	}
	x, y := elliptic.Unmarshal(curve, peerPoint)
	if x == nil || y == nil {
		return nil, ErrInvalidMaterial
	}
	sx, sy := curve.ScalarMult(x, y, k.D.FillBytes(make([]byte, 28)))
	if sx == nil || sy == nil || (sx.Sign() == 0 && sy.Sign() == 0) {
		return nil, ErrInvalidMaterial
	}
	shared := sx.FillBytes(make([]byte, 28))
	digest := md5.Sum(shared)
	return bytes.Clone(digest[:]), nil
}

// OpenAuthCBC matches the native AES-128-CBC key=IV branch with strict PKCS7.
// CBC does not authenticate a response: the transport/business envelope must
// already have been authenticated before this primitive is used.
func OpenAuthCBC(key, ciphertext []byte) ([]byte, error) {
	if len(key) != 16 {
		return nil, ErrInvalidMaterial
	}
	if len(ciphertext) > maxInput {
		return nil, ErrLimit
	}
	if len(ciphertext) == 0 || len(ciphertext)%aes.BlockSize != 0 {
		return nil, ErrIntegrity
	}
	block, e := aes.NewCipher(key)
	if e != nil {
		return nil, ErrInvalidMaterial
	}
	plain := make([]byte, len(ciphertext))
	cipher.NewCBCDecrypter(block, key).CryptBlocks(plain, ciphertext)
	pad := int(plain[len(plain)-1])
	if pad < 1 || pad > aes.BlockSize || !bytes.Equal(plain[len(plain)-pad:], bytes.Repeat([]byte{byte(pad)}, pad)) {
		return nil, ErrIntegrity
	}
	return plain[:len(plain)-pad], nil
}
