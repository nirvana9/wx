package store

import (
	"crypto/rand"
	"encoding/hex"
	"io"
	"os"
	"strings"
	"syscall"
)

// writeAtomic exposes committed data only after full write, fsync and rename.
// A failed directory fsync can leave the new complete state visible; it never
// creates a partial JSON file. Callers treat the error as failure, then reload.
func writeAtomic(dir *os.File, data io.Reader) error {
	var nonce [16]byte
	if _, err := rand.Read(nonce[:]); err != nil {
		return err
	}
	name := ".state-" + hex.EncodeToString(nonce[:]) + ".tmp"
	f, err := privateFile(dir, name, syscall.O_WRONLY|syscall.O_CREAT|syscall.O_EXCL)
	if err != nil {
		return err
	}
	defer syscall.Unlinkat(int(dir.Fd()), name)
	if _, err = io.Copy(f, data); err == nil {
		err = f.Sync()
	}
	if closeErr := f.Close(); err == nil {
		err = closeErr
	}
	if err != nil {
		return err
	}
	if err = syscall.Renameat(int(dir.Fd()), name, int(dir.Fd()), "state.json"); err != nil {
		return err
	}
	return dir.Sync()
}

// cleanupTemps runs only while holding the account lock. Killed writers cannot
// run their deferred unlink; their uncommitted snapshots must be removed before
// loading or clearing account data. Ignore links and files owned by others.
func cleanupTemps(dir *os.File) error {
	fd, err := syscall.Openat(int(dir.Fd()), ".", syscall.O_RDONLY|syscall.O_DIRECTORY|syscall.O_NOFOLLOW|syscall.O_CLOEXEC, 0)
	if err != nil {
		return err
	}
	listing := os.NewFile(uintptr(fd), dir.Name())
	defer listing.Close()
	removed := false
	for {
		entries, err := listing.ReadDir(128)
		if err != nil && err != io.EOF {
			return err
		}
		for _, entry := range entries {
			name := entry.Name()
			if !tempName(name) || !entry.Type().IsRegular() {
				continue
			}
			fd, openErr := syscall.Openat(int(dir.Fd()), name, syscall.O_RDONLY|syscall.O_NOFOLLOW|syscall.O_NONBLOCK|syscall.O_CLOEXEC, 0)
			if openErr == syscall.ENOENT || openErr == syscall.ELOOP {
				continue
			}
			if openErr != nil {
				return openErr
			}
			f := os.NewFile(uintptr(fd), name)
			st, statErr := f.Stat()
			closeErr := f.Close()
			if statErr != nil {
				return statErr
			}
			if closeErr != nil {
				return closeErr
			}
			meta := st.Sys().(*syscall.Stat_t)
			if !st.Mode().IsRegular() || meta.Uid != uint32(os.Geteuid()) || meta.Nlink != 1 {
				continue
			}
			if err := syscall.Unlinkat(int(dir.Fd()), name); err != nil && err != syscall.ENOENT {
				return err
			}
			removed = true
		}
		if err == io.EOF {
			break
		}
	}
	if removed {
		return dir.Sync()
	}
	return nil
}

func tempName(name string) bool {
	if len(name) != len(".state-")+32+len(".tmp") || !strings.HasPrefix(name, ".state-") || !strings.HasSuffix(name, ".tmp") {
		return false
	}
	for _, c := range name[len(".state-") : len(name)-len(".tmp")] {
		if !(c >= '0' && c <= '9' || c >= 'a' && c <= 'f') {
			return false
		}
	}
	return true
}
