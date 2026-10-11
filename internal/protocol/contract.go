// Package protocol gates business operations on reviewed native contracts.
package protocol

import (
	"encoding/hex"
	"encoding/json"
	"errors"
	"io"
	"os"
	"strconv"
	"strings"
)

const PinnedELFSHA256 = "2ca28ea56b1a400543d0128ebaf0b93f88172dd66dc0426d3d74fdb971eab959"

var ErrProtocolUnverified = errors.New("native protocol operation is not verified")

type Contract struct {
	Operation        string            `json:"operation"`
	Fields           []FieldRule       `json:"fields"`
	Roles            map[string]uint32 `json:"roles"`
	Parameters       map[string]string `json:"parameters"`
	Evidence         []Evidence        `json:"evidence"`
	SemanticVerified bool              `json:"semantic_verified"`
	PacketVerified   bool              `json:"packet_verified"`
	LiveVerified     bool              `json:"live_verified"`
	BlockedReasons   []string          `json:"blocked_reasons"`
}

type FieldRule struct {
	Message        string `json:"message"`
	Number         uint32 `json:"number"`
	WireType       uint8  `json:"wire_type"`
	Meaning        string `json:"meaning"`
	Representation string `json:"representation"`
	Presence       string `json:"presence"`
	ValueSource    string `json:"value_source"`
}

type Evidence struct {
	ELFSHA256      string `json:"elf_sha256"`
	FunctionVA     string `json:"function_va"`
	InstructionVA  string `json:"instruction_va"`
	MachineCodeHex string `json:"machine_code_hex"`
	Explanation    string `json:"explanation"`
}

func LoadContract(path string) (Contract, error) {
	f, err := os.Open(path)
	if err != nil {
		return Contract{}, err
	}
	defer f.Close()
	decoder := json.NewDecoder(io.LimitReader(f, (1<<20)+1))
	decoder.DisallowUnknownFields()
	var c Contract
	if err := decoder.Decode(&c); err != nil {
		return Contract{}, ErrProtocolUnverified
	}
	if decoder.Decode(new(any)) != io.EOF || c.validate() != nil {
		return Contract{}, ErrProtocolUnverified
	}
	return c, nil
}

func (c Contract) validate() error {
	if strings.TrimSpace(c.Operation) == "" {
		return ErrProtocolUnverified
	}
	seen := make(map[string]bool)
	for _, f := range c.Fields {
		key := f.Message + ":" + strconv.FormatUint(uint64(f.Number), 10)
		if f.Message == "" || f.Number == 0 || f.Number >= 1<<29 || f.WireType > 5 || f.WireType == 4 || seen[key] {
			return ErrProtocolUnverified
		}
		seen[key] = true
		if f.Representation != "" {
			switch f.Representation {
			case "uint32", "int32", "uint64":
				if f.WireType != 0 {
					return ErrProtocolUnverified
				}
			case "string", "bytes", "message":
				if f.WireType != 2 {
					return ErrProtocolUnverified
				}
			default:
				return ErrProtocolUnverified
			}
		}
		if f.Presence != "unknown" && f.Presence != "set" && f.Presence != "conditional" && f.Presence != "omitted" {
			return ErrProtocolUnverified
		}
	}
	for role, n := range c.Roles {
		pos := strings.LastIndexByte(role, '.')
		if pos <= 0 || pos == len(role)-1 || !seen[role[:pos]+":"+strconv.FormatUint(uint64(n), 10)] {
			return ErrProtocolUnverified
		}
	}
	for _, e := range c.Evidence {
		start, err1 := strconv.ParseUint(e.FunctionVA, 0, 64)
		address, err2 := strconv.ParseUint(e.InstructionVA, 0, 64)
		code, err3 := hex.DecodeString(e.MachineCodeHex)
		if e.ELFSHA256 != PinnedELFSHA256 || err1 != nil || err2 != nil || err3 != nil || address < start || len(code) == 0 || e.Explanation == "" {
			return ErrProtocolUnverified
		}
	}
	return nil
}

// Require checks reviewed flags and completeness, not ELF bytes. The offline
// checker must validate evidence against the pinned sample before review.
// A flag is a human review record, never an automatic inference from wire type.
func (c Contract) Require(stage string) error {
	if c.validate() != nil || len(c.Fields) == 0 || len(c.Evidence) == 0 || len(c.BlockedReasons) != 0 || !c.SemanticVerified {
		return ErrProtocolUnverified
	}
	for _, f := range c.Fields {
		if f.Meaning == "" || f.Representation == "" || f.Presence == "unknown" || f.ValueSource == "" {
			return ErrProtocolUnverified
		}
	}
	switch stage {
	case "semantic":
		return nil
	case "packet":
		if c.PacketVerified {
			return nil
		}
	case "live":
		if c.PacketVerified && c.LiveVerified {
			return nil
		}
	}
	return ErrProtocolUnverified
}
