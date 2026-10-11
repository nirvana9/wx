package main

import (
	"context"
	"errors"
	"flag"
	"fmt"
	"io"
	"os"
	"os/signal"
	"syscall"

	"github.com/nirvana9/wx/internal/nativeqr"
	"github.com/nirvana9/wx/internal/protocol"
	"github.com/nirvana9/wx/internal/terminal"
)

// The fetch boundary permits offline CLI tests without contacting the service.
func runWithFetcher(ctx context.Context, args []string, out io.Writer, fetch func(context.Context) (protocol.QRImage, error)) error {
	if len(args) == 0 || (args[0] != "qr" && args[0] != "qr-preview") {
		return errors.New("usage: wx qr [--output <new.png>] [--terminal=false] | wx qr-preview --response <decoded-response.bin>; scanning/login/messages are not implemented")
	}
	live := args[0] == "qr"
	flags := flag.NewFlagSet(args[0], flag.ContinueOnError)
	flags.SetOutput(out)
	outputPath := flags.String("output", "", "save the unchanged PNG to a new private file")
	terminalOutput := flags.Bool("terminal", true, "render the server image in an ANSI/UTF-8 terminal")
	var responsePath *string
	if !live {
		responsePath = flags.String("response", "", "decoded native GetLoginQRCode response file")
	}
	if err := flags.Parse(args[1:]); err != nil {
		return err
	}
	if flags.NArg() != 0 || (!*terminalOutput && *outputPath == "") {
		return errors.New("provide at least one image output")
	}
	var qr protocol.QRImage
	var err error
	if live {
		qr, err = fetch(ctx)
	} else {
		if *responsePath == "" {
			return errors.New("provide --response")
		}
		file, e := os.Open(*responsePath)
		if e != nil {
			return e
		}
		response, readErr := io.ReadAll(io.LimitReader(file, (16<<20)+1))
		closeErr := file.Close()
		if readErr != nil {
			return readErr
		}
		if closeErr != nil {
			return closeErr
		}
		qr, err = protocol.DecodeQRImage(response)
	}
	if err != nil {
		return err
	}
	if *outputPath != "" {
		imageFile, err := os.OpenFile(*outputPath, os.O_WRONLY|os.O_CREATE|os.O_EXCL, 0600)
		if err != nil {
			return err
		}
		_, writeErr := imageFile.Write(qr.PNG)
		closeErr := imageFile.Close()
		if writeErr != nil {
			os.Remove(*outputPath)
			return writeErr
		}
		if closeErr != nil {
			os.Remove(*outputPath)
			return closeErr
		}
	}
	if *terminalOutput {
		if err := terminal.RenderQR(out, qr); err != nil {
			return err
		}
	}
	if live {
		_, err = fmt.Fprintf(out, "已获取微信服务端二维码：%d × %d。尚未实现扫码状态轮询、登录和消息收发。\n", qr.Width, qr.Height)
	} else {
		_, err = fmt.Fprintf(out, "已解析服务端二维码图片：%d × %d。此命令只预览已解密响应，不执行网络登录。\n", qr.Width, qr.Height)
	}
	return err
}

func run(args []string, out io.Writer) error {
	return runContext(context.Background(), args, out)
}
func runContext(ctx context.Context, args []string, out io.Writer) error {
	return runWithFetcher(ctx, args, out, func(ctx context.Context) (protocol.QRImage, error) {
		client, err := nativeqr.New()
		if err != nil {
			return protocol.QRImage{}, err
		}
		return client.Fetch(ctx)
	})
}
func main() {
	ctx, cancel := signal.NotifyContext(context.Background(), os.Interrupt, syscall.SIGTERM)
	defer cancel()
	if err := runContext(ctx, os.Args[1:], os.Stdout); err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}
}
