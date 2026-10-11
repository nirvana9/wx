# wx：微信 Linux 原生协议研究

目标是在不运行官方客户端的情况下，用命令行扫码登录并收发文本消息。**`wx qr` 已支持真实二维码获取、终端显示和保存 PNG；原生匿名扫码检查已联网验证。发送请求编码和同步命令解包已有离线实现。正式鉴权、账号消息收发和在线终端尚未接通。**

本仓库保留原始 `WeChatLinux_x86_64.deb`，提供固定样本的分析脚本、原生任务和 Protobuf 指令证据；已实现 Go 基础模块和独立二维码交换。

- [原生协议逆向进展与接口证据](docs/reverse/native-protocol-progress.md)
- [命令行客户端设计，已确认](docs/superpowers/specs/2026-10-11-wechat-native-cli-design.md)
- [原生客户端实施计划，已确认](docs/superpowers/plans/2026-10-11-wechat-native-cli.md)
- [代码实施进展与验证范围](docs/implementation-progress.md)
- [二维码字段语义与首包恢复进展](docs/reverse/qr-semantics-progress.md)
- [二维码交换采集工具与新增原生 ABI 证据](docs/reverse/qr-runtime-evidence.md)
- [Go 模块开发与离线测试](docs/development.md)
- [离线分析程序](tools/recover_native_protocol.py)
- [样本与恢复结果清单](docs/reverse/evidence/manifest.json)

## 获取真实二维码

需要 Go 1.27.2，从仓库根目录运行：

```sh
go run ./cmd/wx qr --output login-qr.png
```

命令自行完成 MMTLS 握手、Hybrid 加密封包和 `GetLoginQRCode` 请求，
验证服务器签名、Finished、GCM 和 PNG 后显示二维码；不需要安装或运行 deb，
也不需要 Frida、Python 或 Web 微信 SDK。`--terminal=false` 可只保存 PNG。
图片以 0600 权限创建，不覆盖已有文件；再次请求时使用新文件名。
终端需要 ANSI 颜色与 UTF-8 支持。Ctrl+C 取消请求，整次交换最多 45 秒。

本阶段只获取并显示二维码；不会轮询扫码状态或完成登录，也不会保存登录凭据。
当前协议、公钥和两个服务端 IPv4 固定于 4.1.13.23 样本，已在 GitHub Ubuntu runner 验证；
网络可达性和后续服务端变更仍会影响获取结果。
详见 [独立二维码协议与验证](docs/reverse/native-qr-go.md)。

## 运行离线分析

需要 Python 3.11+、Git LFS、`dpkg-deb` 和约 2 GB 空闲内存。从仓库根目录运行：

```sh
git lfs pull --include=WeChatLinux_x86_64.deb
python3 -m venv .venv
.venv/bin/pip install -r requirements-analysis.txt
.venv/bin/python tools/recover_native_protocol.py --deb WeChatLinux_x86_64.deb --output analysis-output
```

工具先校验 deb 和主 ELF 的 SHA-256，恢复 63 个相关消息类、4 个封包类、字段写入与 6 个原生任务，输出 JSON 和反汇编。它不安装或执行微信，也不发网络请求；仅支持仓库固定的 4.1.13.23 样本。

字段编号和 wire type 已有代码证据。二维码所需密钥派生、封包和短连接传输已经恢复；扫码登录及消息接口还需继续恢复，不能用这些 JSON 直接登录微信。协议设计选择原生路线，运行时不依赖 Web 微信 SDK。

## 预览已解密的二维码响应

```sh
go run ./cmd/wx qr-preview --response /absolute/path/qr_response.bin --output /absolute/path/new-qr.png
```

该命令校验服务端返回码、图片长度和 PNG，显示 ANSI/UTF-8 终端二维码，
并以 0600 权限保存原始 PNG（不覆盖已有文件）。`--terminal=false` 可只保存图片。
输入必须是已经解密的原生 `GetLoginQRCode` Protobuf 响应，不能传入网络密文。
此命令不执行网络登录，也不生成可登录的模拟二维码。
公开测试使用合成小图片；真实研究响应和二维码凭据不在仓库中。
