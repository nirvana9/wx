package nativeqr

import (
	"context"
	"errors"
	"github.com/nirvana9/wx/internal/protocol"
	"strings"
	"testing"
)

// Losing the server's polling token/key or using a different device in checks
// would prevent this authenticated synthetic exchange from completing.
func TestBeginRetainsPrivatePollingMaterial(t *testing.T) {
	c, s := makeService(t, "")
	s.response = join(s.response, protobufField(5, join(protobufVarint(1, 16), protobufField(2, []byte("synthetic-key16!")))), protobufVarint(6, 290))
	challenge, e := c.Begin(context.Background())
	if e != nil || challenge == nil || len(challenge.Image.PNG) == 0 {
		t.Fatal("login challenge unavailable", e)
	}
	if len(challenge.notifyKey) != 16 || challenge.interval != 5 {
		t.Fatal("polling material lost")
	}
}

func TestBeginRejectsMissingNotifyKey(t *testing.T) {
	c, _ := makeService(t, "")
	challenge, e := c.Begin(context.Background())
	if e == nil || challenge != nil {
		t.Fatal("incomplete challenge accepted")
	}
}

func TestCheckDecryptsMatchingNotify(t *testing.T) {
	c, s := makeService(t, "")
	key := []byte("synthetic-key16!")
	s.response = join(s.response, protobufField(5, join(protobufVarint(1, 16), protobufField(2, key))), protobufVarint(6, 290))
	ch, e := c.Begin(context.Background())
	if e != nil {
		t.Fatal(e)
	}
	s.poll = join(protobufField(1, ch.token), protobufVarint(2, 0))
	s.notifyKey = key
	notice, e := ch.Check(context.Background())
	if e != nil || notice == nil || notice.State() != 0 || s.calls != 3 {
		t.Fatal("matching notification unavailable", e)
	}
}

func TestCheckUsesNativeClockValue(t *testing.T) {
	c, s := makeService(t, "native-clock")
	key := []byte("synthetic-key16!")
	s.response = join(s.response, protobufField(5, join(protobufVarint(1, 16), protobufField(2, key))), protobufVarint(6, 290))
	ch, e := c.Begin(context.Background())
	if e != nil {
		t.Fatal(e)
	}
	s.poll = join(protobufField(1, ch.token), protobufVarint(2, 0))
	s.notifyKey = key
	if _, e := ch.Check(context.Background()); e != nil {
		t.Fatal(e)
	}
}

func TestCheckPreservesAuthenticatedServerError(t *testing.T) {
	c, s := makeService(t, "check-error")
	key := []byte("synthetic-key16!")
	s.response = join(s.response, protobufField(5, join(protobufVarint(1, 16), protobufField(2, key))), protobufVarint(6, 290))
	ch, e := c.Begin(context.Background())
	if e != nil {
		t.Fatal(e)
	}
	s.poll = join(protobufField(1, ch.token), protobufVarint(2, 0))
	s.notifyKey = key
	notice, e := ch.Check(context.Background())
	if notice != nil || !errors.Is(e, protocol.ErrQRServer) || !strings.Contains(e.Error(), "-8") {
		t.Fatal("authenticated server failure hidden", e)
	}
}
