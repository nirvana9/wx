# Task 6：自动鉴权响应路径的账号密钥刷新

2026-10-12，固定 ELF SHA-256
`2ca28ea56b1a400543d0128ebaf0b93f88172dd66dc0426d3d74fdb971eab959`。
本页恢复用户信息到 Mars 账号对象的**密钥刷新组件**，并实现同样的 Go 候选槽更新规则。
没有发出鉴权请求，没有真实会话安装、凭据保存或 Resume。

## 调用链及四类材料

原始 `0x77d4b80` 在 `0x77d4d00` 调用 `0x77d8d20` 自动鉴权。
其后 `0x77d5f0f → 0x77ccdd0` 恢复四个输出。
[原始调用摘录](evidence/asm/autoauth_candidate_install_excerpt.asm)确认输出地址和后续 setter：

| 材料 | `0x77ccdd0` 输出地址（栈） | UserInfo setter | UserInfo 槽 |
| --- | --- | --- | --- |
| 解开 AuthSectResp.3 的 session | `+0x140` | `0x619a8e0` | `+0x180` |
| ECDH/MD5 derived | `+0x80` | `0x619acd0` | `+0x1c8` |
| AuthSectResp.23 client | `+0x1c0` | `0x619acf0` | `+0x1e0` |
| AuthSectResp.24 server | `+0x20` | `0x619ad10` | `+0x1f8` |

四个 setter 的完整短函数分别见
[session](evidence/asm/userinfo_session_key_setter.asm)、
[derived](evidence/asm/userinfo_derived_key_setter.asm)、
[client](evidence/asm/userinfo_client_key_setter.asm)、
[server](evidence/asm/userinfo_server_key_setter.asm)。它们调整目的地址后调用原生 string copy。
输出含义来自既有已执行验证的 [密钥恢复函数](native-auth-progress.md)，不是从槽位名称猜测。

`0x77d6b23` 通过应用虚表 `+0x18` 取得 CGI 管理器；
`0x77d6b31` 调用管理器接口 `+0xe0`。
原始 relative relocation `0xa981a28 → 0x79e3330`，
[thunk](evidence/asm/cgi_manager_refresh_keys_thunk.asm)调整 this 后进入
[完整刷新函数](evidence/asm/cgi_manager_refresh_keys.asm) `0x79e2b30`。
应用/管理器虚表安装的依据见 [前一增量](native-auth-transport-progress.md)。

这是一条静态确认的**自动鉴权响应路径**；本页没有运行 `0x77d4b80` 的完整请求、返回码及状态机。
首次 ManualAuth 的响应处理 `0x77cfcb0` 已确认保存四个候选输出到另一对象的
`+0x88/+0xa0/+0xb8/+0xd0`；它到上述 UserInfo 的完整首次登录转移仍待恢复，不能混用偏移。

## 刷新规则

`0x79e2b30` 从管理器 `+0x60` 取得账号 wrapper，空 wrapper 直接退出。
三个应用 getter `0x6041790/0x6041890/0x6041990` 均调用应用服务虚表 `+0x68`
取得当前 UserInfo，再分别读取 `+0x180/+0x1e0/+0x1f8`：
[original](evidence/asm/app_get_original_key.asm)、
[client](evidence/asm/app_get_client_key.asm)、[server](evidence/asm/app_get_server_key.asm)。

- original 非空时，`0x79e2d10 → 0x8df1ef0 → 0x8df3940` 更新账号 `+0xb8`。
  空 original 保留旧值。
- client 和 server 均非空时，`0x79e2d92 → 0x8df1f10 → 0x8df3d70`
  一起更新账号 `+0xf0/+0x108`。缺任一项时，整个旧密钥对保留。
- 两个 [wrapper](evidence/asm/original_key_wrapper.asm) / [wrapper](evidence/asm/main_keys_wrapper.asm)
  读取 wrapper `+0x20` 的真实账号对象，不是直接把 wrapper 当成账号对象。
- 此完整刷新函数没有读取 derived 的 UserInfo `+0x1c8`；不能把 derived 当成 original key。
  derived 的已验证密码用途仍是解开 AuthSectResp.3。

默认路由最终使用更新后的 client/server；没有完整 pair 才使用 original。
因此，不能把一次缺少 client/server 的更新直接当成清除现有业务密钥；后续 Resume 需保留这个条件。
实际方向槽和 host 覆盖边界见 [候选选择证据](native-auth-transport-progress.md)。

刷新函数还更新以下账号网络参数。本页只确认来源和目的槽，没有为独立客户端选择真实设备值：

| 来源 | 操作 | 账号目的槽 |
| --- | --- | --- |
| UserInfo `+0x198`，经 `0x603f150` | `0x8df1f00 → 0x8df3b60` SetMainHostServerId | `+0xa0` string |
| 应用配置 `+0x80` uint16 | `0x8df1ed0 → 0x8df3620` UpdateDeviceInfo | `+0x30` uint16 |
| `0x6042f70 → 0x73876a0` 返回的 device ID | 同上 | `+0x18` string |
| 应用配置 `+0x60` uint32 | `0x8df1ee0 → 0x8df37d0` UpdateClientVersion | `+0x34` uint32 |

server ID 不是 AccountID；这里也没有据这些字段推导 UIN。
参数目的槽分别由原始
[SetMainHostServerId](evidence/asm/account_set_main_host_server_id.asm)、
[UpdateDeviceInfo](evidence/asm/account_update_device_info.asm)、
[UpdateClientVersion](evidence/asm/account_update_client_version.asm)核对。
device ID 的实际生成、与 QR Begin 的连续性及真实配置值仍未恢复。

## 完整局部原生执行与 Go 实现

[`native-business-key-update.json`](../../testdata/auth/native-business-key-update.json)
真正执行完整 `0x79e2b30`、原始应用 getter、UserInfo setter、wrapper 和账号 setter。
六组输入覆盖首次安装候选、完整替换、全空、缺 client、缺 server、保留 original 而替换 pair；
before/update/after 的顺序固定为 original/client/server。

研究模型提供合成应用虚表服务结果、合成 device ID、关闭日志和单线程锁。
没有替换 key 非空判断、更新分支、字符串复制或账号 setter，也没有用 Go 编码器生成预期。
实际附带网络参数更新也执行并与合成服务输入核对；这些合成值没有成为 Go 设备默认值。
直接 guest syscall 拒绝，没有客户端启动、账号鉴权、网络或持久化。

`protocol.StageNativeBusinessKeyUpdate` 返回独立的候选槽快照；原始 key 非空才替换，
client/server 两者非空才同时替换。所用 key 长度不受支持时明确失败，忽略未使用的 partial pair。
`NativeBusinessKeyState.Candidates` 按已验证默认路由选择方向 key。
输入、状态快照和 accessor 输出互不别名；默认格式化隐藏全部材料。
该类型不含账号身份或认证状态，也不触发 Session/Store/网络操作。

实际 REA 6.4.0 stdio MCP/Ghidra 12.1.4 已返回两个投影函数的反编译文本，见
[摘要、Evidence ID 和全文路径](evidence/task6-rea-install.json)。投影保留原 VA 基准 0，
函数指令摘要与原始 ELF 一致，缺少大多数被调函数和动态 relocation；所有上述槽位及调用均用原始汇编复核。
完整原始 ELF 的 Ghidra 分析仍超时；本页不把投影当成完整样本分析。

尚待完成：首次 ManualAuth 的真实状态转移、设备报告、鉴权封包及外层认证/关联、
完整账号/网络参数安装、凭据持久化、secautoauth 请求与 Resume，然后再做同步及文本收发。

验证：全仓库 `go test -race -count=1 ./...`、`go vet ./...` 通过，原生夹具重跑后逐字节一致。
独立审查另行重放夹具、运行 protocol race，核对 9 个投影函数与 21 个原始函数摘要、
2 份 REA 全文摘要、1,016 条链接汇编记录及关键 relocation，未发现审查项。
