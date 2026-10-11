//go:build linux

package store

import (
	"errors"
	"os"
	"syscall"
)

func privateFile(dir *os.File, name string, flags int) (*os.File, error) {
	fd, err := syscall.Openat(int(dir.Fd()), name, flags|syscall.O_NOFOLLOW|syscall.O_CLOEXEC, 0600)
	if err != nil {
		return nil, err
	}
	f := os.NewFile(uintptr(fd), name)
	st, err := f.Stat()
	if err == nil {
		s := st.Sys().(*syscall.Stat_t)
		if !st.Mode().IsRegular() || s.Uid != uint32(os.Geteuid()) || s.Nlink != 1 {
			err = errors.New("unsafe account file")
		}
	}
	if err == nil {
		err = f.Chmod(0600)
	}
	if err != nil {
		f.Close()
		return nil, err
	}
	return f, nil
}

func accountLock(dir *os.File) (*os.File, error) {
	f, err := privateFile(dir, "account.lock", syscall.O_RDWR|syscall.O_CREAT)
	if err != nil {
		return nil, err
	}
	err = syscall.Flock(int(f.Fd()), syscall.LOCK_EX|syscall.LOCK_NB)
	if err != nil {
		f.Close()
		if errors.Is(err, syscall.EWOULDBLOCK) {
			return nil, ErrInUse
		}
		return nil, err
	}
	return f, nil
}
