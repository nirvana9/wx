package nativeqr

import (
	"context"
	"testing"
)

// Returning a QR or nil error after cancellation would make this test fail.
func TestCanceledFetchReturnsNoImage(t *testing.T) {
	c, err := New()
	if err != nil {
		t.Fatal(err)
	}
	ctx, cancel := context.WithCancel(context.Background())
	cancel()
	qr, err := c.Fetch(ctx)
	if err == nil || len(qr.PNG) != 0 {
		t.Fatal("canceled request reported success")
	}
}
