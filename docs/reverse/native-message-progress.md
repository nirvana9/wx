# 原生消息业务体的实现进展

本阶段交付独立 Go 的业务体编解码。它不发网络请求，也不代表账号已经能收发消息。
正式鉴权后的封包密钥用途、客户端消息 ID 生成、回执关联和接收消息内容还需恢复。

当前接口：

| 接口 | 已实现 | 边界 |
| --- | --- | --- |
| `protocol.EncodeTextSendBody` | 一个 SendMsgRequestNew，含精确收件人、UTF-8 正文、type=1、显式 uint32 时间和客户端 ID | 不生成 ID，不解析昵称，不发送；调用者需先校验联系人 |
| `protocol.DecodeTextSendResponse` | BaseResponse、重复结果、每项返回码、收件人和 64 位新消息 ID | 没有 Accepted 标志；3–7 号字段原样保留，未完成关联就不能报告发送成功 |
| `protocol.DecodeSyncBody` | NewSyncResponse → CmdList → CmdItem → Buffer | 保留命令 ID、载荷和控制字段；不猜文本内容，不更新同步游标 |

固定 ELF SHA-256 为 `2ca28ea56b1a400543d0128ebaf0b93f88172dd66dc0426d3d74fdb971eab959`。
请求字段来源：`0x695747f`–`0x6957535` 把正文、收件人、类型、时间及整数 ID 写入 MicroMsgRequestNew；
`0x79ed170` 按 1–5 号字段序列化；`0x79ed9d0` 写入 count 和重复子项。
API 的 type=1 对应文本请求形状；实际账号发送仍需完成整个会话契约的验证。

响应来源：`0x79eec60`、`0x79ee340`；`0x6957686` 检查子项返回码，
`0x69577b8` 将子项 +0x28（field8）写到消息对象的新消息 ID 位置。
更早版本的公开 MicroMsgResponseNew 实现将 field3/4 分别命名为 MsgId/ClientMsgId，
与最初推测的 field3=ClientMsgId 不同。当前代码因此保留这些字段，不采用未经当前样本确认的关联规则。
该旧版本只是研究线索，未复制其代码，也未作为当前协议已恢复的依据。

同步形状来源：`0x7dedb00` 的 field1 是 **int32 返回码，非 BaseResponse**；
`0x7bf2840` 为 count+重复 CmdItem；`0x7bf2260` 为 int32 命令 ID 和 Buffer；
`0x7ba08a0` 为声明长度和数据。count、Buffer 长度、单值字段重复、类型和整数范围均校验。
业务体上限 1 MiB、单次列表上限 10000，失败不返回部分结果。
成功解码的结果另含独立复制的 `Raw`，完整保留顶层及 CmdList/CmdItem/Buffer、BaseResponse 等嵌套结构中的扩展字段。

`testdata/send/native-body-vectors.json` 和 `testdata/sync/native-body-vectors.json`
由固定 ELF 的真实 size/serialize 函数在隔离 x86-64 CPU 模拟器中生成。
全部输入是合成数据，不启动客户端，不执行 guest syscall，不做网络或账号操作；
外部调用仅有 guest 内存 malloc/memset/memcpy。Go 测试逐字节对照请求，并验证嵌套列表、
负返回码、64 位 ID、长度/数量不一致和无效 UTF-8。Go 编码器没有生成自己的期望值。

复现（研究依赖见 `requirements-emulation.txt`）：

```bash
python tools/research/native_message_vectors.py --elf /path/to/pinned-wechat.elf --output /tmp/wx-body-vectors
go test -race ./...
go vet ./...
```

这些是后续 SendText 与同步循环的组件，尚未增加 `wx send`、`wx receive` 或假登录成功命令。
