# Task 6：extSpamInfo 的本地身份记录

2026-10-13。固定 ELF SHA-256
`2ca28ea56b1a400543d0128ebaf0b93f88172dd66dc0426d3d74fdb971eab959`。
已恢复 extspam 生成路径使用的一个本地记录格式，并实现独立 Go 编解码。
这是生成报告的一项依赖，完整 ManualAuthAesReqData.field24 内容仍未恢复。

## 身份与文件来源

既有调用链 `0x77c7f00 → 0x84e38c0 → 0x9b09b80 → 0x9b0c650` 见
[AES 段调查](native-manualauth-aes.md)。该巨大 FDE 中：

- `0x9b0fc0b/0x9b0fc2c` 调用 getuid/getpwuid_r，
  `0x9b0fc48` 读取 passwd 的 `pw_dir`（`+0x20`）。后续字符串操作构造
  home 下 `.sys1og.conf` 路径，见 [原始片段](evidence/asm/extspam_identity_profile_open_excerpt.asm)。
- `0x9b0fee9` 调用只读 open；返回 -1 时进入
  [创建片段](evidence/asm/extspam_identity_profile_create_excerpt.asm)：
  `0x9b10256` remove，`0x9b1026a` open flags=`0x41`（O_WRONLY|O_CREAT），mode=`0x180`（0600）。
- 部分完整路径的隔离探针观察到读取 `/proc/sys/kernel/random/uuid`，
  将合成 UUID 写入并重读这个本地文件；随后在 `/sys/class/dmi/id/bios_date` 的 fopen 处主动中止。
  [探针记录](evidence/extspam-profile-probe.json)列出合成 UID/home/time/UUID、虚拟文件操作、
  单线程初始化及 C locale 的模型。它没有完成报告，未读取真实 home、DMI 或账号目录。

这个调用链提供稳定身份的本地来源线索；它与 QR Begin 的 device ID、其他设备字段和报告 wire 字段的关系仍未知。
Go 本轮不生成 UUID、不读取官方客户端配置，也不安装任何设备默认值。

## 记录格式和原始指令

生产者记录为 **36 字节 opaque 身份值 + 4 字节小端 IEEE CRC32**，总长 40。

[写入片段](evidence/asm/extspam_identity_writer.asm) `0x9b10698`–`0x9b107ba`：

- `0x9b106ab/0x9b106b4` 检查 string 长度 36；
- `0x9b106d1` 先 write 36 字节，`0x9b106e9/0x9b10776` 检查写入长度；
- `0x9b10702/0x9b10717` 初始化 `0xffffffff`，按表逐字节更新；
  `0x9b10772` 取反，`0x9b10791` 保存 32-bit 值，`0x9b107a6` write 4 字节；
- table 位于 `0x2b65ef0`。原始全部 256 项与 reflected polynomial `0xedb88320`
  的表逐项一致，见 [原始表摘要](evidence/extspam-identity-crc-table.json)。

[读取片段](evidence/asm/extspam_identity_reader.asm) `0x9b0fefe`–`0x9b10241`：

- `0x9b0ff27/0x9b0ff4b` 分别 read 36 和 4 字节，并检查返回长度；
- 使用同一 CRC 表，`0x9b101ff` 比较计算值与读出的 uint32；
- 匹配后复制原 36 字节到输出，不把 CRC 当成密码认证。

CRC 错误会进入拒绝路径 `0x9b10809`；不是自动修复文件的证据。
本页没有据内核 UUID 的通常形式给所有 36 字节值增加 UUID 语义。

## 独立向量和 Go 范围

[`native-extspam-identity.json`](../../testdata/auth/native-extspam-identity.json)
包含 5 个原生 writer 和 6 个 reader 结果。实际执行固定 ELF 的原始指令片段，
保留长度检查、CRC、写入长度判断及接收校验；研究模型只准备 string/寄存器/栈、
将 write 收集为内存字节，将 read 复制合成输入，close 返回成功。
这些片段属于原始 `0x9b0c650`，不是新发现的函数入口；没有执行完整报告函数。

向量覆盖两个合成 UUID、含零字节的 opaque 值、身份长度错误、短写、
CRC 损坏、身份字节损坏和短读。首个 writer 结果与部分完整路径探针写出的文件逐字节相同。
没有用 Go 编码器生成期望，也没有替换 CRC 或接收比较。直接 guest syscall 仍拒绝。

`protocol.EncodeNativeExtSpamIdentityRecord` 接受显式 36 字节值并返回 40 字节记录；
`DecodeNativeExtSpamIdentityRecord` 接受生产者的规范 40 字节记录并校验 CRC，返回独立副本。
Go 对额外字节明确拒绝；原生 reader 的两次定长 read 没有证明同样的尾随字节策略。
这两个 API 没有文件操作、报告组装、设备认证、会话状态或持久化接入。

## REA 分析与边界

实际 REA 6.4.0 stdio MCP / Ghidra 12.1.4 分析了上述两个**指令片段投影**。
[记录](evidence/task6-rea-extspam-identity.json)包含原始 owner FDE、两段机器码摘要、
投影摘要、Evidence ID 和完整反编译文本。投影 VA 基准 0，完整 CRC 表已核对拷入。
声明给 Ghidra 的函数边界是合成分析边界，缺少原始调用者和栈上下文；
Ghidra 也可能沿复制页面中的邻接字节延伸分析，不能把这个结果当成完整原生函数或其 ABI。
本页采用原始汇编和独立 native replay 确认局部行为。

尚待恢复报告的 DMI/其他环境字段、序列化及密码层、它与 QR/鉴权设备身份的连续性，
以及 clientCheckData 和新增字段来源。正式鉴权封包、首次会话安装与 Resume 仍未接通。

验证：全仓库 `go test -race -count=1 ./...`、`go vet ./...` 通过，原生夹具重新生成后逐字节一致。
独立审查另行重放 5 个 writer/6 个 reader、运行 protocol race，核对两段原始机器码、
两份 REA 文本、458 条汇编记录和完整 CRC 表；默认投影也与旧 v2 逐字节一致，未发现审查项。
