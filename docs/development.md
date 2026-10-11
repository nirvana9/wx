# 离线开发

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
.venv/bin/python tools/check_protocol_contracts.py --deb WeChatLinux_x86_64.deb --contract docs/reverse/contracts/qr.json
```

契约的机器码匹配、业务语义、封包、真实联通是不同验证层级。
当前 QR 契约后三层均未通过；Go Require 对其返回 ErrProtocolUnverified。

这些是本地解析限制，不代表微信服务端约束。离线测试通过不证明可在线登录。
不要把账号状态、二维码凭据、真实私钥或抓包提交到 Git。
