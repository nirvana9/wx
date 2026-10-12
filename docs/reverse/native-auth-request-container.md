# Task 6：ManualAuthRequest 容器与 REA 分析边界

2026-10-12。固定样本 ELF SHA-256 为
`2ca28ea56b1a400543d0128ebaf0b93f88172dd66dc0426d3d74fdb971eab959`。
本增量将已经独立恢复的 RSA data 与 AES data 序列化结果装入原生
`ManualAuthRequest` 的两个子消息字段。它只是 protobuf 容器编码，
不建立会话，不生成设备报告，也不发送 secmanualauth。

## 容器的原生证据

固定样本 `micromsg.ManualAuthRequest::SerializeWithCachedSizes` 位于
`0x7cdbac0`，见 [完整反汇编](evidence/asm/micromsg.ManualAuthRequest_serialize.asm)：

- `0x7cdbaca` 读取 `+0x1c` presence mask；`0x7cdbacd` 检查位 1，
  `0x7cdbae8`–`0x7cdbaf0` 用 message writer `0x8f526f0` 写字段 1，
  对象指针来自 `+0x8`。
- `0x7cdbaf5`–`0x7cdbafb` 检查位 2；`0x7cdbb1c`–`0x7cdbb2b`
  同样写字段 2，对象指针来自 `+0x10`。
- [消息类型映射](evidence/message-function-map.json)记录 vtable address point：
  parent `0xa9a1bf0`、RSA child `0xa9a1920`、AES child `0xa9a1b78`。

独立原生向量工具
[`native_manualauth_request_vectors.py`](../../tools/research/native_manualauth_request_vectors.py)
在隔离 CPU 中真正执行这三个对象的 size/serialize，产生
[`native-manualauth-request.json`](../../testdata/auth/native-manualauth-request.json)。
合成例中 RSA 子体为 131 字节、AES 子体为 53 字节；parent 用
`0a 83 01`、`12 35` 包裹二者。另一个例子确认显式空子消息为
`0a 00 12 00`。预期字节来自原生函数，不来自 Go 编码器。
其中 QR proof、公钥和随机 key 均复用此前的**合成** fixture；
AES 的 clientCheckData、extSpamInfo 和字段 27 数值仅用于测试布局，
不代表真实设备字段或服务器接受的登录请求。

Go 的 `EncodeManualAuthRequest` 要求调用者显式提供两个 wire body，
检查 wire 格式及大小后写字段 1、2。集成测试把现有 Go RSA/AES 编码器的
合成结果组装，再与原生 parent 字节比较。该 API 仍不接入网络登录。

## REA 会话与可证明范围

本轮通过本机 REA 6.4.0 **stdio MCP** 的实际 `initialize`、`tools/list`
和 `tools/call` 使用 Ghidra 12.1.4。Codex 工具列表本身没有直接暴露 REA；
调用的是已注册 REA 的公开 launcher，所用工具名及参数均取自当次
`tools/list`。Ghidra analysis profile digest 为
`a04af771c3a78edf03c11c3b8652d4812dfce76da00d380345526a333361b5c9`。

`open_binary` 两次绑定并校验了上述**原始 ELF**。其后两次完整样本
`procedure_pseudo_code` 请求均在 1,800,000 ms 自动分析限时处返回
`provider_timeout`，所以**没有取得原始完整 ELF 的反编译或 Ghidra 导入基址**。
原始 ELF 的最低 `PT_LOAD` 虚拟地址是 0，本页地址按文件内 VA 记。

为取得有限的 REA 辅助证据，研究工具
[`auth_analysis_projection.py`](../../tools/research/auth_analysis_projection.py)
从原始 ELF 抽取 9 个 FDE 函数及其直接引用的 RIP 数据页，制作了
**只供分析、不可当作客户端执行**的 ELF 投影，SHA-256 为
`045ad7cfb9f30fe00d0ba2285e190c893c17e0b6c59c99193e20c13a295a8c6a`。
投影的符号和虚拟地址基准为 0；生成器逐个核对所选函数的全部指令字节 SHA-256，
摘要见 [REA 投影记录](evidence/task6-rea-projection.json)。它省略原始节、
异常表、动态重定位和绝大多数被调用函数，故不能独立证明跨函数的
数据流、必填条件或运行时装载地址。下述结论还用原始 ELF 反汇编核对。

REA 对该投影的 `procedure_pseudo_code(0x77ce110)` 返回 Evidence
`ev_9f5a1ad3eb4bfb4752c05ff71bebcfd9f310678ceab8e4bafbb1815c08a1b976`；
`procedure_callees` 返回
`ev_efd6e4d8ef9b0f781fb6ba60c6f8f86bf65507a63bfc0e990502866e64063e59`，
其中包含 `0x77f5210`。原始 ELF 的
[secmanualauth 请求包装反汇编](evidence/asm/secmanualauth_native_request.asm)
在 `0x77ce2af` 显示直接调用 `0x77f5210`，在 `0x77ce370` 显示
`/cgi-bin/micromsg-bin/secmanualauth`；任务 CGI 编号 252 另由
`0x77f6bf0` 的 `0x77f6c27` 写入确认，见
[协议进展](native-protocol-progress.md)。这些确定了调用关系与任务元数据，
尚未确定它们进入网络帧后的字段、压缩/加密条件和响应认证。

REA 对 `0x8df3d70` 的投影反编译 Evidence
`ev_0edaf918b2d02e133189a11bec338147842e1cd60de95f6d08aee5f9b2da45e2`
显示在锁 `+0x1a0` 内复制两个输入到账号对象 `+0xf0`、`+0x108`；
[原始反汇编](evidence/asm/account_update_main_session_keys.asm)核对写入地址。
这只证明 client/server key 的账号存储槽，尚未证明收发方向、帧密钥选择、
session/derived 两类密钥的安装和用途。

接下来仍需恢复 clientCheckData 和扩展字段来源、设备材料连续性、
完整 secmanualauth 封包及响应认证，再做会话安装和自动鉴权。
没有真实手机确认，也没有真实登录或消息发送。
