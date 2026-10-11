# wx：微信 Linux 原生协议研究

目标是在不运行官方客户端的情况下，用命令行扫码登录并收发文本消息。当前处于离线逆向阶段，**尚无可用的微信登录或消息客户端**。

本仓库保留原始 `WeChatLinux_x86_64.deb`，提供固定样本的分析脚本、原生任务和 Protobuf 指令证据；现已开始实现 Go 离线基础模块。

- [原生协议逆向进展与接口证据](docs/reverse/native-protocol-progress.md)
- [命令行客户端设计，已确认](docs/superpowers/specs/2026-10-11-wechat-native-cli-design.md)
- [原生客户端实施计划，已确认](docs/superpowers/plans/2026-10-11-wechat-native-cli.md)
- [代码实施进展与验证范围](docs/implementation-progress.md)
- [二维码字段语义与首包恢复进展](docs/reverse/qr-semantics-progress.md)
- [Go 模块开发与离线测试](docs/development.md)
- [离线分析程序](tools/recover_native_protocol.py)
- [样本与恢复结果清单](docs/reverse/evidence/manifest.json)

## 运行离线分析

需要 Python 3.11+、Git LFS、`dpkg-deb` 和约 2 GB 空闲内存。从仓库根目录运行：

```sh
git lfs pull --include=WeChatLinux_x86_64.deb
python3 -m venv .venv
.venv/bin/pip install -r requirements-analysis.txt
.venv/bin/python tools/recover_native_protocol.py --deb WeChatLinux_x86_64.deb --output analysis-output
```

工具先校验 deb 和主 ELF 的 SHA-256，恢复 63 个相关消息类、4 个封包类、字段写入与 6 个原生任务，输出 JSON 和反汇编。它不安装或执行微信，也不发网络请求；仅支持仓库固定的 4.1.13.23 样本。

字段编号和 wire type 已有代码证据。字段语义、密钥派生和完整封包仍需恢复，不能用这些 JSON 直接登录微信。协议设计选择原生路线，运行时不依赖 Web 微信 SDK。
