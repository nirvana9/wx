// Package store commits session state and pending messages as one private file.
package store

import (
	"bytes"
	"encoding/json"
	"errors"
	"io"
	"os"
	"path/filepath"
	"sync"
	"syscall"

	"github.com/nirvana9/wx/internal/model"
)

var (
	ErrInUse        = errors.New("account is already in use")
	ErrPendingFull  = errors.New("pending message queue is full")
	ErrCorruptState = errors.New("invalid account state")
	ErrClosed       = errors.New("account store is closed")
)

const (
	maxStateBytes = 16 << 20
	maxPending    = 1024
	maxSeen       = 10000
)

type Store struct {
	mu        sync.Mutex
	dir, lock *os.File
	closed    bool
}

type diskState struct {
	Format int         `json:"format"`
	State  model.State `json:"state"`
}

func DefaultDir() (string, error) {
	base := os.Getenv("XDG_STATE_HOME")
	if base == "" {
		home, err := os.UserHomeDir()
		if err != nil {
			return "", err
		}
		base = filepath.Join(home, ".local", "state")
	}
	if !filepath.IsAbs(base) {
		return "", errors.New("state home must be absolute")
	}
	return filepath.Join(base, "wx-native"), nil
}

func Open(path string) (*Store, error) {
	s, err := openLocked(path)
	if err != nil {
		return nil, err
	}
	if _, err := s.load(); err != nil {
		s.Close()
		return nil, err
	}
	return s, nil
}

func openLocked(path string) (*Store, error) {
	if err := os.MkdirAll(path, 0700); err != nil {
		return nil, err
	}
	fd, err := syscall.Open(path, syscall.O_RDONLY|syscall.O_DIRECTORY|syscall.O_NOFOLLOW|syscall.O_CLOEXEC, 0)
	if err != nil {
		return nil, err
	}
	dir := os.NewFile(uintptr(fd), path)
	st, err := dir.Stat()
	if err == nil && st.Sys().(*syscall.Stat_t).Uid != uint32(os.Geteuid()) {
		err = errors.New("account directory has another owner")
	}
	if err == nil {
		err = dir.Chmod(0700)
	}
	if err != nil {
		dir.Close()
		return nil, err
	}
	lock, err := accountLock(dir)
	if err != nil {
		dir.Close()
		return nil, err
	}
	s := &Store{dir: dir, lock: lock}
	if err := cleanupTemps(dir); err != nil {
		s.Close()
		return nil, err
	}
	return s, nil
}

func (s *Store) load() (model.State, error) {
	if s.closed {
		return model.State{}, ErrClosed
	}
	f, err := privateFile(s.dir, "state.json", syscall.O_RDONLY)
	if errors.Is(err, os.ErrNotExist) {
		return model.State{}, nil
	}
	if err != nil {
		return model.State{}, err
	}
	defer f.Close()
	b, err := io.ReadAll(io.LimitReader(f, maxStateBytes+1))
	if err != nil {
		return model.State{}, err
	}
	if len(b) > maxStateBytes {
		return model.State{}, ErrCorruptState
	}
	var disk diskState
	decoder := json.NewDecoder(bytes.NewReader(b))
	decoder.DisallowUnknownFields()
	if err := decoder.Decode(&disk); err != nil {
		return model.State{}, ErrCorruptState
	}
	if disk.Format != 1 || decoder.Decode(new(any)) != io.EOF || len(disk.State.Pending) > maxPending || len(disk.State.SeenMessageIDs) > maxSeen {
		return model.State{}, ErrCorruptState
	}
	ids := make(map[string]bool)
	for _, m := range disk.State.Pending {
		if m.ID == "" || ids[m.ID] {
			return model.State{}, ErrCorruptState
		}
		ids[m.ID] = true
	}
	return disk.State, nil
}

func (s *Store) Load() (model.State, error) {
	s.mu.Lock()
	defer s.mu.Unlock()
	return s.load()
}

func (s *Store) save(state model.State) error {
	if s.closed {
		return ErrClosed
	}
	b, err := json.Marshal(diskState{Format: 1, State: state})
	if err != nil {
		return err
	}
	if len(b) > maxStateBytes {
		return ErrCorruptState
	}
	return writeAtomic(s.dir, bytes.NewReader(b))
}

func (s *Store) SaveCredentials(credentials model.Credentials) error {
	s.mu.Lock()
	defer s.mu.Unlock()
	state, err := s.load()
	if err != nil {
		return err
	}
	if state.Credentials.AccountID != "" && state.Credentials.AccountID != credentials.AccountID {
		state = model.State{}
	}
	state.Credentials = credentials
	return s.save(state)
}

func (s *Store) ApplyBatch(batch model.SyncBatch) error {
	s.mu.Lock()
	defer s.mu.Unlock()
	state, err := s.load()
	if err != nil {
		return err
	}
	seen := make(map[string]bool, len(state.SeenMessageIDs)+len(state.Pending))
	for _, id := range state.SeenMessageIDs {
		seen[id] = true
	}
	for _, m := range state.Pending {
		seen[m.ID] = true
	}
	for _, m := range batch.Messages {
		if m.ID == "" {
			return ErrCorruptState
		}
		if seen[m.ID] {
			continue
		}
		seen[m.ID] = true
		state.Pending = append(state.Pending, m)
		state.SeenMessageIDs = append(state.SeenMessageIDs, m.ID)
		if len(state.Pending) > maxPending {
			return ErrPendingFull
		}
	}
	if len(state.SeenMessageIDs) > maxSeen {
		state.SeenMessageIDs = state.SeenMessageIDs[len(state.SeenMessageIDs)-maxSeen:]
	}
	for _, change := range batch.Contacts {
		if change.Contact.ID == "" {
			return ErrCorruptState
		}
		found := -1
		for i, c := range state.Contacts {
			if c.ID == change.Contact.ID {
				found = i
				break
			}
		}
		if change.Deleted {
			if found >= 0 {
				state.Contacts = append(state.Contacts[:found], state.Contacts[found+1:]...)
			}
		} else if found >= 0 {
			state.Contacts[found] = change.Contact
		} else {
			state.Contacts = append(state.Contacts, change.Contact)
		}
	}
	state.SyncCursor = batch.NextCursor
	return s.save(state)
}

func (s *Store) AckDisplayed(ids []string) error {
	s.mu.Lock()
	defer s.mu.Unlock()
	state, err := s.load()
	if err != nil {
		return err
	}
	ack := make(map[string]bool, len(ids))
	for _, id := range ids {
		ack[id] = true
	}
	pending := state.Pending[:0]
	for _, m := range state.Pending {
		if !ack[m.ID] {
			pending = append(pending, m)
		}
	}
	state.Pending = pending
	return s.save(state)
}

func (s *Store) ClearCredentials() error {
	s.mu.Lock()
	defer s.mu.Unlock()
	state, err := s.load()
	if err != nil && !errors.Is(err, ErrCorruptState) {
		return err
	}
	if err := cleanupTemps(s.dir); err != nil {
		return err
	}
	// Keep the nonsecret device identity stable; discard all account-owned state.
	// A corrupt snapshot cannot safely supply even that identity; clear it too.
	return s.save(model.State{Credentials: model.Credentials{DeviceID: state.Credentials.DeviceID}})
}

// ClearAccount explicitly discards local account data, including corrupt state
// that prevents Open. Valid state retains its nonsecret device identity. Normal
// Open never silently replaces corrupt state.
func ClearAccount(path string) error {
	s, err := openLocked(path)
	if err != nil {
		return err
	}
	defer s.Close()
	return s.ClearCredentials()
}

func (s *Store) Close() error {
	s.mu.Lock()
	defer s.mu.Unlock()
	if s.closed {
		return nil
	}
	s.closed = true
	return errors.Join(s.lock.Close(), s.dir.Close())
}
