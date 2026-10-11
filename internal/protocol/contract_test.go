package protocol_test

import (
	"errors"
	"os"
	"path/filepath"
	"testing"

	"github.com/nirvana9/wx/internal/protocol"
)

func TestRejectWireOnlyContract(t *testing.T) {
	c, err := protocol.LoadContract("../../docs/reverse/contracts/qr.json")
	if err != nil {
		t.Fatal(err)
	}
	for _, stage := range []string{"semantic", "packet", "live"} {
		if !errors.Is(c.Require(stage), protocol.ErrProtocolUnverified) {
			t.Fatalf("unverified QR allowed at %s", stage)
		}
	}
	if len(c.Fields) != 28 || len(c.Evidence) < 6 {
		t.Fatalf("lost evidence: %d fields %d sites", len(c.Fields), len(c.Evidence))
	}
}

func TestContractVerificationStages(t *testing.T) {
	// This synthetic contract tests the local gate; it is not a native fixture.
	c := protocol.Contract{Operation: "test.syntax", Fields: []protocol.FieldRule{{Message: "Test", Number: 1, WireType: 0, Meaning: "test value", Representation: "uint32", Presence: "set", ValueSource: "fixture"}}, Evidence: []protocol.Evidence{{ELFSHA256: protocol.PinnedELFSHA256, FunctionVA: "0x100", InstructionVA: "0x100", MachineCodeHex: "90", Explanation: "synthetic gate test"}}, SemanticVerified: true}
	if err := c.Require("semantic"); err != nil {
		t.Fatal(err)
	}
	if !errors.Is(c.Require("packet"), protocol.ErrProtocolUnverified) {
		t.Fatal("packet inherits semantic incorrectly")
	}
	c.PacketVerified = true
	if err := c.Require("packet"); err != nil {
		t.Fatal(err)
	}
	if !errors.Is(c.Require("live"), protocol.ErrProtocolUnverified) {
		t.Fatal("live inherits packet incorrectly")
	}
	c.LiveVerified = true
	if err := c.Require("live"); err != nil {
		t.Fatal(err)
	}
	c.Fields[0].Meaning = ""
	if !errors.Is(c.Require("semantic"), protocol.ErrProtocolUnverified) {
		t.Fatal("flag bypasses incomplete fields")
	}
	if !errors.Is(c.Require("unknown"), protocol.ErrProtocolUnverified) {
		t.Fatal("unknown stage accepted")
	}
}

func TestContractRejectsMalformedFiles(t *testing.T) {
	for _, body := range []string{`{`, `{}`, `{"operation":"x","unknown":true}`, `{} {}`, `{"operation":"x","fields":[{"message":"T","number":0,"wire_type":0}]}`} {
		p := filepath.Join(t.TempDir(), "contract.json")
		if err := os.WriteFile(p, []byte(body), 0600); err != nil {
			t.Fatal(err)
		}
		if _, err := protocol.LoadContract(p); err == nil {
			t.Fatalf("accepted %s", body)
		}
	}
}
