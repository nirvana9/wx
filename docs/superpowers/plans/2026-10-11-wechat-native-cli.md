# 微信原生命令行客户端 Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** 在 Linux x86-64 上独立扫码登录微信，在同一命令行进程中接收文本并向用户指定联系人发送文本。

**Architecture:** 先实现可离线验证的 wire 和存储模块，再按代码证据恢复业务、封包及传输契约。一个会话对象拥有账号状态和任务序号，终端调用会话 API；无法证明的网络操作返回明确错误。

**Tech Stack:** Go 1.27.2、标准库；终端阶段固定 `golang.org/x/term v0.47.0`。离线逆向沿用 Python 3.11+ 及仓库现有依赖。当前环境尚未安装 Go，本轮不安装或编写产品代码。

**Spec:** [CLI 设计](../specs/2026-10-11-wechat-native-cli-design.md)。用户于 2026-10-11 确认；以下任务尚未执行。

## Global Constraints

- “第一版针对 Linux x86-64、一个个人账号、单个在线进程。”
- “最终运行时不启动、加载或注入官方客户端，也不依赖 Web 微信登录协议或第三方协议代理。”
- “图片、语音、视频、群管理、多账号、自动回复和批量发送不进入第一版。”
- “每一个可运行网络请求必须有对应的字段和封包证据。”
- “目录权限 `0700`，凭据文件 `0600`，写入采用临时文件加原子替换。”
- “超时后不自动重发，避免重复消息。”
- “默认不记录聊天历史。”只暂存未显示事件，显示成功后删除。
- 显示与磁盘确认无法原子提交；崩溃窗口可能重显 pending，不承诺终端显示恰好一次。
- 固定样本：deb SHA-256 `b7d0f8d53e9f648bc2c77a6096a04100d008f2d9f0d3988a2a4859b5992aca0a`；ELF SHA-256 `2ca28ea56b1a400543d0128ebaf0b93f88172dd66dc0426d3d74fdb971eab959`。
- 502/503/252/763/522/138 仅是任务 CGI 编号；证明包头写入前不能当网络命令字。
- 本地限制：帧和解压后业务体各 `16 MiB`；嵌套深度 `64`；文本 `4096` UTF-8 字节；pending 最多 `1024` 条。它们不是服务端限制。
- 夹具标明标准示例、native-derived 或 sanitized-native；不提交真实凭据、私钥、聊天正文。fake 会话测试不等于真实登录。

## Review Focus

1. 未知/重复字段、LEN 二进制：保留原始数据，不猜类型。Tasks 1–2。
2. 短读、粘包、恶意长度和解压膨胀：有界组帧或明确失败。Tasks 3–4。
3. 进程争用、原子写中断：拒绝第二进程，只读取完整状态。Task 5。
4. 请求写出但确认丢失：结果未知，不重发、不报成功。Task 8。
5. 过期、短暂断网、取消轮询/重连：正确区分失效并终止后台任务。Tasks 6–7、9。

---

## 阶段、依赖与文件边界

| 阶段 | 任务 | 交付物 | 验收 |
|---|---|---|---|
| M1 | 1、2、5 | wire、二维码语义契约、事务存储 | 离线测试 |
| M2 | 3、4、6 | 封包、传输、扫码与鉴权 | 真实手机确认登录 |
| M3 | 7、8、9 | 同步、联系人、发送、终端 | 真实双向文本 |
| M4 | 10 | 恢复/退出、构建和验收记录 | 分层验证全部记录 |

依赖：`1 → 2 → 3 → 4 → 6 → 7 → 8 → 9 → 10`；Task 5 只依赖 Task 1，在 Task 6 前完成。先交付离线模块不能替代在线验收。

`internal/wire` 处理原始字段；`protocol` 处理已证明的业务语义；`cryptox` 只实现已确定算法；`packet` 负责包头、认证和压缩；`transport` 负责载体与匹配；`model` 是共享内存类型；`store` 原子持久化；`session` 唯一持有账号状态；`terminal/cmd` 负责用户操作。

调查无法确认时，契约记录 blocked、具体调用链和下一处待查地址；依赖的网络步骤暂停并返回 `ErrProtocolUnverified`，独立离线工作可继续。不能为过测试填入猜测值。

## 共享契约与测试约定

在 Task 2 的 `docs/reverse/contracts/format.md` 和 `internal/protocol/contract.go` 定义：

- `Contract{Operation string, Fields []FieldRule, Roles map[string]uint32, Parameters map[string]string, Evidence []Evidence, SemanticVerified, PacketVerified, LiveVerified bool, BlockedReasons []string}`。
- `FieldRule{Message string, Number uint32, WireType uint8, Meaning, Representation, Presence, ValueSource string}`；Representation 仅为已证明的 uint32/int32/uint64/string/bytes/message；使用字段不能缺语义，省略也须有证据。
- `Evidence{ELFSHA256, FunctionVA, InstructionVA, MachineCodeHex, Explanation string}`。验证器核对机器码与固定样本；语义和调用链另需人工核对。
- `LoadContract(path string) (Contract,error)`、`Contract.Require(stage string) error`；stage 为 semantic/packet/live，条件分别累计，不混用验证层级。
- `ErrProtocolUnverified`；二维码、鉴权、同步、发送各用自己的契约；packet/transport 参数也进入其验证范围。

测试片段省略 imports。Task 1 提供 `testutil.MustHex(t testing.TB,s string) []byte` 和 `LoadJSON[T any](t testing.TB,path string) T`。各任务的 JSON 向量定义具名测试结构，期望从独立核对结果读取，不用待测编码器生成期望。

### Task 1：有界、无损的 wire 编解码

**Files:** Create `go.mod`、`internal/wire/{fields.go,encode.go,limits.go,fields_test.go}`、`internal/testutil/fixture.go`、`docs/development.md`。

**Interfaces:** `Limits{MaxBytes,MaxDepth int}`；`DefaultLimits()` 为 16 MiB/64。`Field{Number uint32,WireType uint8,Raw []byte}` 包含 tag+value 的独立拷贝。`Parse([]byte,Limits)([]Field,error)`、`Join([]Field)([]byte,error)`；`EncodeVarint(uint32,uint64)`、`EncodeInt32(uint32,int32)`、`EncodeBytes(uint32,[]byte)` 均返回 `(Field,error)`。`Limits.Child()(Limits,error)` 扣减语义层子消息深度；错误 `ErrMalformed/ErrLimit`。

- [ ] **Step 1:** 写 `TestKnownVarint`、`TestNegativeInt32`、`TestPreserveUnknownAndRepeated`、`TestRejectMalformedAndDepth`；增加 `FuzzParse`，对有效输入断言 Parse/Join 无损，对任意输入检查无 panic、有界返回。具名测试断言：

```go
f, err := wire.EncodeVarint(1, 150)
if err != nil || hex.EncodeToString(f.Raw) != "089601" { t.Fatal(f, err) }
n, err := wire.EncodeInt32(1, -1)
if err != nil || hex.EncodeToString(n.Raw) != "08ffffffffffffffffff01" { t.Fatal(n, err) }
raw := testutil.MustHex(t, "08010802a20601ff") // 重复 field 1；未知 field 100
fields, err := wire.Parse(raw, wire.DefaultLimits())
joined, joinErr := wire.Join(fields)
if err != nil || joinErr != nil || len(fields) != 3 || !bytes.Equal(joined, raw) { t.Fatal("lossy") }
```

拒绝向量 `00/0e/1280/0b14`；65 层 group 返回 ErrLimit；修改输入不改变已返回 Raw。

- [ ] **Step 2:** 配置 Go 1.27.2；`go.mod` 固定 module `github.com/nirvana9/wx`、`go 1.27.0`、`toolchain go1.27.2`。运行 `go test ./internal/wire -v`，预期缺上述 API 而失败。
- [ ] **Step 3:** 实现 API，支持 wire 0/1/2/3/4/5，group 配对、varint 溢出和长度检查；LEN 不自动递归。补全测试辅助和离线开发说明。
- [ ] **Step 4:** 运行 `go test ./internal/wire -v`、`go test ./internal/wire -fuzz=FuzzParse -fuzztime=30s`，预期 PASS、无 panic。
- [ ] **Step 5:** 提交 `feat(wire): add bounded lossless protobuf codec`。

### Task 2：二维码语义和契约验证

**Files:** Create `docs/reverse/contracts/{format.md,qr.json}`、`tools/check_protocol_contracts.py`、`tools/tests/test_protocol_contracts.py`、`internal/protocol/{contract.go,qrcode.go,qrcode_test.go}`、`testdata/qrcode/{cases.json,manifest.json}`。

**Interfaces:** 消费 Task 1 wire；生产共享 Contract。`QRRequestInput{DeviceID,LoginMaterial []byte}`；`QRChallenge{DisplayKind string,DisplayData,PollToken []byte,ExpiresAt time.Time}`。`BuildGetQRCode(Contract,QRRequestInput)([]byte,error)`、`ParseGetQRCode(Contract,[]byte)(QRChallenge,error)`。显示 kind 只为证实的 png/jpeg/uri。

- [ ] **Step 1:** 沿 `0x77be9a0/0x7cc5740/0x7cc5f50/0x77ece40`，核对请求 11 字段、响应 9 字段及 BaseRequest/Buffer：赋值、默认或有证据的省略；确定设备、随机材料、显示数据、token、过期时间。写契约及独立核对夹具；不确定项保持 blocked。
- [ ] **Step 2:** 写失败测试 `TestRejectWireOnlyContract`：`Require("semantic") == ErrProtocolUnverified`；`TestQRCodeNativeCase`：解析显示内容/kind/token/时间等于具名夹具的独立期望；`TestQRCodeOpaqueBytes`：LEN 内容不被猜成子消息；`TestQRCodeMissingDisplay`：`err != nil`。
- [ ] **Step 3:** 运行 `python3 -m unittest discover -s tools/tests -p 'test_protocol_contracts.py' -v`、`go test ./internal/protocol -run 'Test.*QRCode|TestRejectWireOnlyContract' -v`，预期新增 API 未实现而失败。
- [ ] **Step 4:** 实现契约检查和 QR API，区分省略/空/零，已知子消息用 Limits.Child；保留未知项，不把 UUID 拼成猜测 URL。验证器入口为 `python3 tools/check_protocol_contracts.py --deb WeChatLinux_x86_64.deb --contract docs/reverse/contracts/qr.json`。重跑 Step 3，预期 PASS；blocked 时只完成拒绝测试，不标语义实现完成。
- [ ] **Step 5:** 提交 `feat(protocol): validate recovered native QR semantics`。

### Task 3：封包及密码分支

**Files:** Create `docs/reverse/contracts/packet.json`、`internal/cryptox/{engine.go,engine_test.go}`、`internal/packet/{codec.go,compression.go,codec_test.go}`、`testdata/packet/{vectors.json,manifest.json}`。

**Interfaces:** `cryptox.Material{PrivateKey,PeerPublicKey,SessionKey,Nonce,AAD []byte}`；`Engine.Seal/Open(scheme uint16,material Material,data []byte)([]byte,error)`；`ErrUnsupportedScheme/ErrIntegrity`。`packet.Request{Operation string,RequestID uint64,Body []byte}`；`Response{Operation string,RequestID uint64,Body []byte,IsNotice bool}`。RequestID 是本地关联号，其网络映射须证明。`NewCodec(protocol.Contract,*cryptox.Engine,cryptox.Material)(*Codec,error)`、`Codec.Encode(Request)([]byte,error)`、`Decode([]byte)(Response,error)`、`SetMaterial(cryptox.Material) error`；材料切换和通知解码须并发安全。

- [ ] **Step 1:** 从 `0x8dfc840/0x8e035a0/0x8e04cc0/0x8dfe2c0` 实参恢复选用的 pack、包头/字节序/编号、压缩位置、有效 selector、证书/公钥格式、曲线/KDF、nonce/IV/AAD 和校验顺序。审查 alts.* 使用字段；诊断文字不足以选算法。记录独立固定输入向量，缺参数则 blocked。
- [ ] **Step 2:** 写 `TestPacketNativeVector`：编码等于向量 FrameHex、解码体等于 PlainHex；`TestPacketRejectCorruption`：独立坏包返回向量指定错误且不交付体；`TestPacketPlainSizeLimit`：展开超过 16 MiB 返回 ErrLimit；`TestRejectUnverifiedPacket`：semantic-only 契约不可建 Codec。
- [ ] **Step 3:** 运行 `go test ./internal/cryptox ./internal/packet -v`，预期新 API 未实现而失败。
- [ ] **Step 4:** 实现证实的分支、校验和有界解压；未知 selector 报错。标准库确实不覆盖时才增加审核后的固定密码依赖。重跑 Step 3，预期 PASS；自构造往返不能替代 native 向量。
- [ ] **Step 5:** 提交 `feat(packet): add verified native envelope and cipher paths`。

### Task 4：载体、任务匹配及取消

**Files:** Create `docs/reverse/contracts/transport.json`、`internal/transport/{runner.go,carrier.go,runner_test.go}`、`testdata/transport/{handshake.json,manifest.json}`。

**Interfaces:** `Config{Contract protocol.Contract,DialContext func(context.Context,string,string)(net.Conn,error),MaxFrameBytes int}`；`NewRunner(Config,*packet.Codec)(*Runner,error)`、`Runner.Do(context.Context,packet.Request)(packet.Response,error)`、`Notifications() <-chan packet.Response`、`SetMaterial(cryptox.Material) error`、`Close() error`。`ErrResultUnknown` 指已可能写出却无法确认；Runner 不重发业务请求。

- [ ] **Step 1:** 沿任务虚方法和 pack 调用者核对短/长连接、endpoint 来源、方法/URI、TLS 或自定义握手、帧边界和关联/通知规则。写载体契约；不能用旧 XML endpoint 或普通 TLS 替代未恢复握手。
- [ ] **Step 2:** 写 `TestSplitAndCoalescedFrames`：net.Pipe 的逐字节/连续两帧输入结果相同；`TestRejectOversizeBeforeAllocation`：超 16 MiB 不分配体；`TestCancelBlockedIO`：取消结束读写；`TestNotificationDoesNotCompleteOtherRequest`：不串任务；`TestLostReplyReturnsUnknown`：未知结果且只写一次。
- [ ] **Step 3:** 运行 `go test -race ./internal/transport -v`，预期新 Runner 未实现而失败。
- [ ] **Step 4:** 实现证实的载体/握手/关联与通知；所有后台任务绑定 context，Close 释放等待者。基础层不猜鉴权失效；重跑 Step 3，预期 PASS。
- [ ] **Step 5:** 提交 `feat(transport): add cancellable native transport`。

### Task 5：账号锁、原子状态与暂存事件

**Files:** Create `internal/model/types.go`、`internal/store/{store.go,lock_linux.go,atomic.go,store_test.go}`；Modify `.gitignore`。

**Interfaces:** `model.Credentials{Version uint32,AccountID string,DeviceID []byte,Secrets map[string][]byte}`；`Contact{ID,Nickname,Remark string}`；`ContactChange{Contact Contact,Deleted bool}`；`Message{ID,From,To,Text string,SentAt time.Time}`；`SyncBatch{Messages []Message,Contacts []ContactChange,NextCursor []byte}`；`State{Credentials Credentials,Contacts []Contact,SyncCursor []byte,SeenMessageIDs []string,Pending []Message}`。`store.DefaultDir()(string,error)`、`Open(string)(*Store,error)`；`Load()(model.State,error)`、`SaveCredentials(model.Credentials) error`、`ApplyBatch(model.SyncBatch) error`、`AckDisplayed([]string) error`、`ClearCredentials() error`、`Close() error`。错误 ErrInUse/ErrPendingFull/ErrCorruptState。

- [ ] **Step 1:** 写 `TestExclusiveAccountLock`：第二进程 ErrInUse；`TestAtomicBatchAfterInterruptedWrite`：rename 前中断仍读旧状态，成功后消息/游标同存；`TestPermissionsAndStateHome`：0700/0600 与指定 XDG；`TestPendingAckAndDedup`：同 ID 一次、确认后删正文；`TestPendingLimitKeepsCursor`：1025 pending 不推进游标。
- [ ] **Step 2:** 运行 `go test ./internal/store -v`，预期新 Store 未实现而失败。
- [ ] **Step 3:** 实现文件锁、同目录临时文件、文件 fsync/rename/目录 fsync；默认 `${XDG_STATE_HOME:-$HOME/.local/state}/wx-native/`。坏状态报错不打印内容；Close/进程退出释放锁。保存最近 10000 个服务端消息 ID，游标是主恢复依据。
- [ ] **Step 4:** 运行 `go test -race ./internal/store -v`，预期 PASS；覆盖旧权限、异常终止和重复 Close。
- [ ] **Step 5:** 提交 `feat(store): add private atomic session state`，忽略会话、二维码文件和抓包。

### Task 6：扫码、首次/自动鉴权与会话

**Files:** Create `docs/reverse/contracts/auth.json`、`internal/protocol/{auth.go,auth_test.go}`、`internal/packet/{material.go,material_test.go}`、`internal/session/{session.go,login.go,login_test.go}`、`testdata/auth/{vectors.json,manifest.json}`；Modify Task 3 密码分支（仅有新证据时）。

**Interfaces:** `protocol.QRStatus{Kind string,Proof []byte}`，kind waiting/scanned/confirmed/expired/rejected。`BuildCheckQRCode(Contract,QRChallenge)([]byte,error)`、`ParseCheckQRCode(Contract,[]byte)(QRStatus,error)`、`BuildManualAuth(Contract,QRStatus,QRRequestInput)([]byte,error)`、`BuildAutoAuth(Contract,model.Credentials)([]byte,error)`、`ParseAuth(Contract,[]byte)(model.Credentials,error)`；`packet.MaterialFromCredentials(protocol.Contract,model.Credentials)(cryptox.Material,error)` 按证实的密钥用途映射。session.Requester 与 Runner Do/Notifications/SetMaterial/Close 一致；`Contracts{QRCode,CheckQRCode,ManualAuth,AutoAuth,Sync,Heartbeat,Logout,Send protocol.Contract}`。`Clock` 有 `Now() time.Time`、`Wait(context.Context,time.Duration) error`；`Options{Contracts Contracts,Clock Clock,Rand io.Reader}`，nil Clock/Rand 使用系统时钟与 crypto/rand。`New(Requester,*store.Store,Options)(*Session,error)`；`Login/Resume(context.Context) error`、`Events() <-chan Event`、`Status() Status`、`Close() error`。`Status{Phase,AccountID string}`；`Event{Kind string,QR *protocol.QRChallenge,Message *model.Message,Text string}`，kind qrcode/state/message/error；Phase idle/waiting/scanned/authenticating/authenticated/needs-login/closed。

- [ ] **Step 1:** 跟踪 `0x77c2f40/0x77c7f00/0x77d8d20` 和解析器，证明状态值、通知解密、凭据传递、鉴权响应、原始/客户端/服务端密钥用途及明确失效错误。写独立鉴权向量；新算法先通过 Task 3 检查。
- [ ] **Step 2:** 写 `TestLoginPersistsOnlyAfterAuth`：失败不保存；`TestAuthInstallsVerifiedSessionKeys`：成功鉴权后通知使用新密钥；`TestExpiredQRCodeRenews`：最多重申 3 次；`TestResumeNetworkFailureKeepsCredentials`：断网保留；`TestResumeConfirmedInvalidRequiresLogin`：明确失效才 needs-login；`TestCancelPollingStopsSession`：取消无后台/假成功事件。
- [ ] **Step 3:** 运行 `go test -race ./internal/protocol ./internal/session -v`，预期新鉴权 API 未实现而失败。
- [ ] **Step 4:** 实现唯一状态所有者，轮询按已确认参数；Login/Resume 仅真实鉴权成功且凭据持久化后返回 nil。按实际调用的操作校验契约，不要求尚未调用的 Send 已完成恢复；LiveVerified 是验收记录，不是首次联网前置条件。密钥校验失败、过期、拒绝和网络错误分开；重跑 Step 3，预期 PASS。
- [ ] **Step 5:** 提交 `feat(session): add native QR login and resume`；未真实手机确认仍标未实测。

### Task 7：初始化/增量同步、联系人与退出

**Files:** Create `docs/reverse/contracts/sync.json`、`internal/protocol/{sync.go,sync_test.go}`、`internal/session/{sync.go,logout.go,sync_test.go}`、`testdata/sync/{batches.json,manifest.json}`；Modify Session、`internal/transport/carrier.go`。

**Interfaces:** `BuildSync(c Contract,cursor []byte,initial bool)([]byte,error)`、`ParseSync(c Contract,previousCursor,body []byte)(model.SyncBatch,error)`；`BuildHeartbeat/BuildLogout(Contract)([]byte,error)`。`Session.StartSync(context.Context) error` 启动后返回；`Contacts() []model.Contact`、`Logout(context.Context) error`、`AckDisplayed([]string) error`。

- [ ] **Step 1:** 核对 NewInit 解析器 `0x7dea870/0x7deb450`、NewSync、CmdItem `0x7bf2050`、CmdList `0x7bf25f0`、SyncKey `0x7dee4b0`、SyncKeyPair `0x7bd4aa0`，恢复命令/文本 ID/联系人更新和删除/游标合并及未知命令策略；追踪 heartbeat/logout 真实任务和结果，不能猜编号。
- [ ] **Step 2:** 写 `TestInitialThenIncrementalSync`：初始化先行；`TestReplayBatchDeduplicates`：重放只入队一次；`TestPartialCursorMerge`：按向量合并、不覆盖；`TestUnknownSyncCommandPolicy`：不虚构消息；`TestLogoutClearsLocalOnRemoteFailure`：清本地且保留失败结果；`TestReconnectCancelled`：取消停止心跳/重连。
- [ ] **Step 3:** 运行 `go test -race ./internal/protocol ./internal/session ./internal/store -v`，预期新同步 API 未实现而失败。
- [ ] **Step 4:** 实现同步、通知触发、心跳和退出；ApplyBatch 后发事件、显示后 Ack，重启重放 pending，满队列不推进游标。重连退避 1/2/4/8/16/30 秒、≤20% 抖动，明确鉴权失效停止。重跑 Step 3，预期 PASS。
- [ ] **Step 5:** 提交 `feat(sync): add durable native text and contact sync`。

### Task 8：文本发送和结果分类

**Files:** Create `docs/reverse/contracts/send.json`、`internal/protocol/{send.go,send_test.go}`、`internal/session/{send.go,send_test.go}`、`testdata/send/{vectors.json,manifest.json}`。

**Interfaces:** `BuildSendText(c Contract,to,text,clientMessageID string,sentAt time.Time)([]byte,error)`、`ParseSendText(Contract,[]byte)(SendReceipt,error)`；`SendReceipt{ClientMessageID,ServerMessageID string,Accepted bool}`。`Session.SendText(ctx context.Context,to,text string)(SendReceipt,error)`；ErrRecipientUnknown/ErrInvalidText/ErrSendRejected。未知结果返回带 client ID 的 receipt 和 transport.ErrResultUnknown。

- [ ] **Step 1:** 沿 `0x6957340`、SendMsgRequestNew/MicroMsgRequestNew 证明收件人、正文、类型、时间、客户端 ID、重复子项和确认匹配。ID 生成按代码证据，不猜时间戳方案；建立独立确认/拒绝向量。
- [ ] **Step 2:** 写 `TestSendNativeVector`：等于向量；`TestRecipientMustMatchContactID`：精确 ID、重复昵称不决定目标；`TestTextUTF8ByteLimit`：4096 接受、4097/无效 UTF-8 拒绝；`TestReplyMustMatchClientMessageID`：不匹配不成功；`TestSendTimeoutDoesNotRetry`：未知且 Do 只调用一次。
- [ ] **Step 3:** 运行 `go test -race ./internal/protocol ./internal/session -v`，预期新发送 API 未实现而失败。
- [ ] **Step 4:** 实现验证和编码，经同一任务所有者发送。目标必须精确匹配本地 Contact.ID，不为空、无空白/控制字符、≤256 字节；正文不按昵称改收件人。确认丢失保留 ID，不重发。重跑 Step 3，预期 PASS。
- [ ] **Step 5:** 提交 `feat(send): add native text send with uncertain result`。

### Task 9：用户命令和交互终端

**Files:** Create `cmd/wx/main.go`、`internal/terminal/{commands.go,console.go,qrcode.go,commands_test.go,console_test.go}`；Modify `go.mod/go.sum/README.md`。

**Interfaces:** `Command{Kind,To,Text string}`；`ParseCommand(string)(Command,error)`，kind contacts/send/logout/quit；`Run(context.Context,io.ReadWriter,*session.Session) error`、`WriteQRCode(out io.Writer,challenge protocol.QRChallenge,imagePath string) error`。入口 `wx login [--qr-output PATH]`、`wx shell`、`wx status`；在线 `/contacts`、`/send ID 正文`、`/logout`、`/quit`。

- [ ] **Step 1:** 写 `TestSendCommandPreservesBody`：`/send wxid_a 你好 😊` 保留正文；`TestUnknownCommandDoesNotSend`；`TestIncomingMessagePreservesInputLine`：输出后输入不丢；`TestQRCodeUsesVerifiedDisplayData`：拒绝未确认内容；`TestStatusContainsNoSecrets`；`TestCancelRestoresTerminal`；`TestTerminalEscapesControls`：外来 ESC 不执行控制序列。
- [ ] **Step 2:** 加固定 x/term 依赖；运行 `go test -race ./internal/terminal ./cmd/wx -v`，预期新终端 API 未实现而失败。
- [ ] **Step 3:** 实现输入重绘、信号取消和非 TTY 行模式。验证 PNG/JPEG 后写 0600 的指定路径，默认状态目录 login-qr.png，鉴权后删除；证实 URI 才可编码终端 QR，否则显示已验证图像文件路径。quit 保留凭据，logout 清除；显示成功后 AckDisplayed。
- [ ] **Step 4:** 运行 Step 2 测试及 `go build -o build/wx ./cmd/wx`，预期 PASS；会话替身只证明界面，不证明 live。
- [ ] **Step 5:** 提交 `feat(cli): add interactive native WeChat terminal`，README 按真实验证范围描述命令。

### Task 10：集成与真实账号验收

**Files:** Create `docs/acceptance.md`、`internal/integration/session_test.go`；Modify README 与契约 live 记录。

**Interfaces:** 组合 Tasks 1–9，无新增业务 API；集成测试注入 Requester 与测试时钟，不访问真实账号。

- [ ] **Step 1:** 写 `TestFullSessionLifecycle`：扫码→鉴权→初始化→收发→quit/恢复→logout；`TestCrashResumePending`：未显示事件恢复；`TestReceiveWhileSendPending`：发送等待不挡接收。运行 `go test -race ./internal/integration -v`，预期先暴露实际集成失败。
- [ ] **Step 2:** 修复揭示的问题；运行 `go test -race ./...`、`go vet ./...`、`go build ./cmd/wx`、`git diff --check`，预期全 PASS，禁止 stub 伪造 blocked 协议通过。
- [ ] **Step 3:** 独立 CLI 获取真实二维码，用户手机确认后核验鉴权；没有手机确认不能标 live 登录通过。
- [ ] **Step 4:** 使用用户明确指定的测试联系人和正文验证真实双向文本、关闭/恢复、退出和取消。缺收件人/正文授权时该项保持未验证，不擅自发消息。
- [ ] **Step 5:** 提交 `docs: record native CLI acceptance and limitations`；分别列编译、离线向量、替身会话、真实登录和收发结果，不泛化成所有版本可用。

## 自查与交接

设计的全部用户操作对应 Tasks 6–9；原子游标/pending/无历史对应 Tasks 5、7；五类 Review Focus 均有具名测试。跨组件类型和方法在 Interfaces 定义；夹具注明独立来源。网络任务依赖可审核契约，真实手机及消息验收单列。

建议主代理在本会话逐任务实现，结束后独立审查；协议恢复对下游影响大，顺序推进便于保持一致。可选多代理逐项实现和逐项审查。计划审阅通过且用户选定执行方式后，进入产品代码。

官方参考（只证明工具链/通用格式，不证明微信协议）：[Go 下载元数据](https://go.dev/dl/?mode=json) 于 2026-10-11 返回 go1.27.2、stable:true；[Protobuf 编码](https://protobuf.dev/programming-guides/encoding/)；[x/term v0.47.0](https://pkg.go.dev/golang.org/x/term@v0.47.0)。实施时核对具体 Go 下载哈希，固定版本写入 go.mod/go.sum。
