package main

import (
	"errors"
	"flag"
	"fmt"
	"io"
	"os"

	"github.com/nirvana9/wx/internal/protocol"
	"github.com/nirvana9/wx/internal/terminal"
)

func run(args []string, out io.Writer) error {
	if len(args) == 0 || args[0] != "qr-preview" {
		return errors.New("usage: wx qr-preview --response <decoded-native-response.bin> [--output <new.png>] [--terminal=false]; network login is not implemented")
	}
	flags := flag.NewFlagSet("qr-preview", flag.ContinueOnError)
	flags.SetOutput(out)
	responsePath := flags.String("response", "", "decoded native GetLoginQRCode response file")
	outputPath := flags.String("output", "", "save the unchanged PNG to a new private file")
	terminalOutput := flags.Bool("terminal", true, "render the server image in an ANSI/UTF-8 terminal")
	if err := flags.Parse(args[1:]); err != nil {
		return err
	}
	if *responsePath == "" || flags.NArg() != 0 || (!*terminalOutput && *outputPath == "") {
		return errors.New("provide --response and at least one image output")
	}
	file, err := os.Open(*responsePath)
	if err != nil {
		return err
	}
	response, readErr := io.ReadAll(io.LimitReader(file, (16<<20)+1))
	closeErr := file.Close()
	if readErr != nil {
		return readErr
	}
	if closeErr != nil {
		return closeErr
	}
	qr, err := protocol.DecodeQRImage(response)
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
	_, err = fmt.Fprintf(out, "已解析服务端二维码图片：%d × %d。此命令只预览已解密响应，不执行网络登录。\n", qr.Width, qr.Height)
	return err
}

func main() {
	if err := run(os.Args[1:], os.Stdout); err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}
}
