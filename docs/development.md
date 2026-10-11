# Go 开发与验证

工具链固定 Go 1.27.2，模块为 `github.com/nirvana9/wx`。无产品外部依赖。
官方 Linux amd64 下载归档 SHA-256 为
`ecbadb99091a3f46e31f5f934b068b1864eafa7995211b39eaddf76996045fe5`。

```sh
go test -race ./...
go vet ./...
go test ./internal/wire -fuzz=FuzzParse -fuzztime=30s
```

wire 层只处理 Protobuf 字节形状。未知字段、重复项、非规范但有效的
varint 编码按原字节保留；LEN 不自动解释为字符串或子消息。
每次 Parse 限制输入 16 MiB、group 深度 64、总字段 65536（含 group 内字段）。
已知业务子消息必须使用 Limits.Child 共享深度预算。
返回的 Raw 与输入分离，同一调用的字段共享私有缓冲区。
Join 校验字段编号、wire type 和完整性，限制最终消息同样为 16 MiB。

`store.Open` 持有 Linux 账号文件锁直到 Close；状态目录 0700、文件 0600。
重开会清除原子写入被杀死后留下的普通临时快照，不读取未提交的内容。
ApplyBatch 把消息、去重 ID 和游标一次原子提交；显示成功后调用 AckDisplayed。
ClearCredentials 清除本地账号状态；打开失败后可显式调用 ClearAccount(path)。
有效状态保留设备标识，损坏状态则连同该标识重置。普通 Open 不自动重置损坏状态。

核验固定样本的机器码证据：

```sh
python3 -m unittest discover -s tools/tests -v
node tools/tests/test_qr_capture_agent.js
.venv/bin/python tools/check_protocol_contracts.py --deb WeChatLinux_x86_64.deb --contract docs/reverse/contracts/qr.json
```

契约的机器码匹配、业务语义、封包、真实联通是不同验证层级。
历史通用 QR JSON 契约仍保留未验证标记，Go Require 继续返回 ErrProtocolUnverified。
新 `internal/nativeqr` 只实现已恢复并联网验证的二维码子集，不借该契约启用完整登录流程。

这些是本地解析限制，不代表微信服务端约束。离线测试通过不证明可在线登录。
不要把账号状态、二维码凭据、真实私钥或抓包提交到 Git。

研究用 [QR 采集程序](reverse/qr-runtime-evidence.md) 的依赖单独保存在
`requirements-capture.txt`。离线测试不需要 Frida；真实采集需要固定微信进程和本机挂接能力。

独立密码原语及原生 CPU 模拟复核见 [密码恢复进展](reverse/crypto-native-progress.md)。
研究工具依赖单独固定在 `requirements-emulation.txt`；Go 产品代码仍只使用标准库。
原生 replay 与 Go 通过 5 组 AES-GCM、7 组 HKDF 向量，不代表完整封包或在线登录验收。

`go run ./cmd/wx qr-preview --response <decoded-response.bin> --output <new.png>`
解析已解密的真实二维码响应，校验成功状态、嵌套 Buffer 长度及 PNG，再显示或保存图片。
公开 `testdata/qrcode/display_vector.json` 只保留已验证的字段结构，图片和 token 均为合成数据。
设置 `WX_NATIVE_QR_RESPONSE` 为私有响应的绝对路径，可以额外运行真实 185×185 图片验证。
该预览不发送请求，尚不提供 `login`、`send` 或 `receive` 命令。

`go run ./cmd/wx qr --output login-qr.png` 独立联网获取并显示二维码。
公钥通过 `go:embed` 内嵌，运行时不读取官方样本或外部密钥文件。
本地测试服务使用新生成的测试私钥与合成 PNG，完成两个握手、Hybrid 请求解密和回复；
另覆盖错误签名/Finished/GCM、重复字段与扩展、错误曲线/凭据类型、记录类型、超预算响应和取消。
真实服务端验证由 `native-qr-go-check.yml` 运行相同 CLI，私有输出经 CMS AES-256-GCM 加密。
协议公式、范围与联网证据见 [独立二维码恢复](reverse/native-qr-go.md)。
