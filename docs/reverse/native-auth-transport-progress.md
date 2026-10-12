# Task 6：鉴权任务分支与默认业务密钥选择

2026-10-12。固定样本 ELF SHA-256：
`2ca28ea56b1a400543d0128ebaf0b93f88172dd66dc0426d3d74fdb971eab959`。
本增量增加两个独立 Go 组件：当前任务编号的 ECDHInfo 选择器、默认账号路由的候选业务密钥选择器。
没有发出 secmanualauth，没有安装、保存或恢复真实会话。

## 从业务体到任务管理器

首次鉴权 `0x77c7f00 → 0x77ce110 → 0x77f5210` 的前段见
[请求容器证据](native-auth-request-container.md)。继续追踪得到：

- `0x77f6100 → 0x77f61f0` 调用应用 accessor `0x603c4e0`，再通过
  应用虚表 `+0x18` 取得 CGI 管理器，见
  [原始汇编](evidence/asm/manualauth_cgi_get_manager.asm)。应用对象该虚表方法
  `0x603cd10` 返回 `+0x250` 指针；
  [安装函数](evidence/asm/app_install_cgi_manager.asm)的 `0x603bc0a` 写入该指针。
- 安装函数 `0x603bbf7` 调用管理器构造器 `0x79df2b0`；
  [构造器汇编](evidence/asm/cgi_manager_constructor.asm)的 `0x79df2da`–`0x79df2e0`
  在接口对象 `+0x10` 写入虚表 `0xa981948`。
  原始 ELF relative relocation `0xa981970 → 0x79e46b0`；这个 `+0x28` 方法
  将 this 调整后跳至 `0x79e3760`，不是应用对象自身的 `+0x28` 方法。
- 已有 [任务构造器](evidence/asm/secmanualauth_task_constructor.asm)中
  `+0x88` 是 ManualAuthRequest，`+0xa8` 是 UnifyAuthResponse。
  任务虚表 `0xa96cbc0` 的 `+0x10 → 0x77f7000`、`+0x18 → 0x77f7090`、
  `+0x20 → 0x77f70d0` 均由原始 relative relocation 核对。

[编码方法](evidence/asm/manualauth_task_encode.asm) `0x77f7000` 在 `0x77f702f`
调用真实 protobuf serializer，随后 `0x77f7052 → 0x79c5c10`
将原始字节写入业务缓冲区。
[缓冲区 append](evidence/asm/business_buffer_append.asm)分配容量后直接复制并增加长度，
在这段方法中没有密码操作。方法还在 `0x77f7008` 清除一个传入字节标志，
本页不把它直接命名为网络压缩开关。
[解码方法](evidence/asm/manualauth_task_decode.asm)调用 parser 后明确返回 1；
不能据这个返回值宣称账号鉴权成立。

管理器 [0x79e3760](evidence/asm/network_submit_task.asm)取得原始业务体后构造
`micromsg.RequestInfo`。它与下层 `mars.account.RequestInfo` 是两个原生类型；
不能仅凭名称相同就混用对象偏移。上层
[字段映射](evidence/task6-request-info-upper.json)及 serializer `0x7fc8440`
分别确认 field8 为 varint、field10 为子消息。

`0x79e3e2e` 序列化上层 RequestInfo，`0x79e3e58` 将结果放入 Mars Task 的扩展数据；
`0x79e3e9c` 通过原始 relocation slot `0xac1f2e8 → 0x8f45610` 提交 Task。
旁路 `0x73f3b90` 构造 `cgi-` 统计标签；它不是业务加密入口。

## ECDHInfo 的精确选择条件

原生 [选择器](evidence/asm/network_ecdh_info_selector.asm) `0x79e4250`
初始化一个 10 项整数集合：

`502, 503, 252, 654, 763, 989, 7415, 997, 987, 22312`。

前八项来自 `0x79e43a9/0x79e43b5` 引用的原始常量页，最后两项在
`0x79e43c0` 的 64-bit immediate 中。实际集合初始化和查询已在隔离 CPU 中执行，
不是用 Go/Python 集合查询替换原生函数。
其中 `secmanualauth=252`、`secautoauth=763` 匹配；旧配置编号 433/434 不匹配。

管理器 `0x79e3a1a` 查询该集合；匹配后 `0x79e3a27/0x79e3a2f` 设置
上层 RequestInfo.field8，`0x79e3a70` 取得 ECDH 配置，
`0x79e3a9a → 0x7fc66a0` 创建 `micromsg.ECDHClientInfo` 并写入 field10。
这是**任务元数据分支**，尚不能单凭它指定完整线上包头、响应认证、压缩参数或请求关联。
`protocol.NativeTaskSelectsECDHInfo` 仅实现这个固定样本选择规则。

[`native-transport-selector.json`](../../testdata/auth/native-transport-selector.json)
包含 21 个实际原生查询结果：全部十项、相邻编号、旧编号、文本发送/同步编号及高位值。
研究模型仅支持单线程初始化锁、libc gettid=1、退出回调注册以及用于 hash-table 容量的 libm ceilf；
直接 guest syscall 指令及其他 libc syscall 编号拒绝。未替换集合或成员查询。

## 默认业务密钥的来源与方向槽

[SetOriginalSessionKey](evidence/asm/account_set_original_session_key.asm) `0x8df3940`
在锁内将输入复制到账号 `+0xb8`；
[UpdateMainSessionKey](evidence/asm/account_update_main_session_keys.asm) `0x8df3d70`
将两个输入复制到 `+0xf0`、`+0x108`。

默认路由 [GetAuthInfoForCgi](evidence/asm/account_get_auth_info_for_cgi.asm) `0x8df4f20`
首先查询已配置的覆盖条目，其中 `0x8df5006` 使用传入 host 查询内部树。
其他覆盖条件尚未恢复。没有覆盖项时：

| 条件 | identify | 原生 selector | 结果 `+0x20` | 结果 `+0x38` |
| --- | --- | --- | --- | --- |
| client/server 两者均非空 | `main` | 13 | 账号 `+0xf0` | 账号 `+0x108` |
| 至少一者为空 | `origin` | 5 | 账号 `+0xb8` | 账号 `+0xb8` |

main 分支复制位于 `0x8df50a3/0x8df50af`，selector 写入位于 `0x8df50b4`；
origin 位于 `0x8df520c/0x8df5218/0x8df521d`。

发送侧 [MMReq2Buf 摘录](evidence/asm/business_request_key_flow_excerpt.asm)在
`0x8df7dbf` 调用此 getter，正常业务分支将结果 `+0x20` 的字符串复制到封包参数 `+0x88`，
并将 selector 写到参数 `+0x08`。既有
[__EncodePackBuffer](evidence/asm/__EncodePackBuffer.asm)的 selector13 分支
在 `0x8dfe9e7` 读取参数 `+0x88`，`0x8dff47d → 0x8b1cb00`
调用 AES-GCM-with-compress；selector5 同样取该字符串，随后调用 `0x8b19be0`。
这些正常业务分支不能覆盖 ECDHInfo 独立分支的完整封包契约。

接收侧 [MMBuf2Resp 摘录](evidence/asm/business_response_key_flow_excerpt.asm)
在 `0x8dfa0d9` 将 getter 结果放在栈 `+0x400`；没有请求专属 decryptkey 时，
`0x8dfa29f`–`0x8dfa2c0` 取其 `+0x38`（栈 `+0x438`）作为 decrypt_key，
随后传入 `UnPackMMPkg`。请求专属 decryptkey、rawdata 和 host 覆盖仍有独立分支，
不能省略这些条件后启用网络。

[`native-business-keys.json`](../../testdata/auth/native-business-keys.json)
用合成 key、空覆盖树真正执行两个 setter 及整个 getter，
核对 main、main 无 original、original-only、缺 client、缺 server 五组结果。
日志关闭，单线程锁 wrapper 明确建模；复制与选择没有替换。

`protocol.SelectNativeBusinessKeyCandidates` 实现上述**默认路由的候选选择**，
主分支验证所用 AES key 长度，origin 验证当前解码器支持的 16 字节 session key；
所有 key 输出是副本，默认格式化隐藏内容。
auth-derived ECDH/MD5 key 不参与这个选择接口；其现有已验证用途是解开 AuthSectResp.3。
UnifyAuthResponse 材料到真实账号对象的完整安装调用链尚未接通。

## REA 与后续边界

本增量仍通过实际 REA 6.4.0 stdio MCP 调用 Ghidra 12.1.4。
三个新增投影的原始函数摘要、派生 ELF 摘要、工具 Evidence ID 和完整原始反编译文本见
[REA 记录](evidence/task6-rea-transport.json)；投影保留原 VA 基准 0。

投影的 `0x79e4250` 反编译把未初始化全局折成空表，输出恒定零；
该结果**不能作为行为证据**，本页采用原始汇编和完整原生 replay。
管理器反编译也把未应用 relocation 的 Task 提交函数显示为地址零；
本页用原始 relocation 查到 `0x8f45610`。完整样本 Ghidra 分析仍为超时状态，
没有把投影伪装成原始 ELF 完整反编译。

尚待完成：设备字段及扩展报告、扫码材料连续性、鉴权 ECDH 封包和外层认证/关联、
实际 key 安装与网络参数、凭据保存、自动鉴权与 Resume；之后才接同步和文本收发。
本增量没有手机确认、真实登录、原始账号回包或聊天正文。

验证：`go test -race -count=1 ./...`、`go vet ./...`、`git diff --check` 均通过。
两份原生夹具重新生成后逐字节一致；独立审查另行重放两份夹具并运行 protocol 测试，
核对 17 份函数摘要、3 份投影摘要、3,578 条汇编记录及 5 个 relative relocation，未发现审查项。
