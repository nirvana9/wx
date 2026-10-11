// Research-only anonymous challenge/check. No confirmation, auth or messaging.
package main

import (
	"context"
	"fmt"
	"github.com/nirvana9/wx/internal/nativeqr"
	"os"
	"path/filepath"
)

func main() {
	if len(os.Args) != 2 {
		fmt.Fprintln(os.Stderr, "usage: outputdir")
		os.Exit(1)
	}
	if e := os.Mkdir(os.Args[1], 0700); e != nil {
		panic(e)
	}
	c, e := nativeqr.New()
	if e != nil {
		panic(e)
	}
	ch, e := c.Begin(context.Background())
	if e != nil {
		fmt.Fprintln(os.Stderr, e)
		os.Exit(1)
	}
	if e := os.WriteFile(filepath.Join(os.Args[1], "qr.png"), ch.Image.PNG, 0600); e != nil {
		panic(e)
	}
	fmt.Printf("Fresh independent login challenge: %dx%d; not authenticated\n", ch.Image.Width, ch.Image.Height)
	notice, e := ch.Check(context.Background())
	if e != nil {
		fmt.Fprintln(os.Stderr, e)
		os.Exit(1)
	}
	fmt.Printf("Independent check reply authenticated and decoded: native state=%d; no account login attempted\n", notice.State())
}
