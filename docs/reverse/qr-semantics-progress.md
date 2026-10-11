# 二维码首包语义：当前证据与阻塞项

日期：2026-10-11。固定 deb/ELF 哈希沿用 [原生逆向进展](native-protocol-progress.md)。
本轮实现了 wire、原子存储和契约核验；仍未实现可联网扫码或收发消息的程序。

## 新确认的局部数据流

| 消息字段 | 可直接证明的内容 | 指令依据 |
|---|---|---|
| GetLoginQRCodeRequest.2 | SKBuiltinBuffer_t 中写入 16 字节本地材料，长度也为 16 | `0x77beecd`、`0x77bef54`、`0x77bef93` |
| GetLoginQRCodeRequest.3 | QR 流程明确置为零并设置 presence bit | `0x77bf083`、`0x77bf087` |
| GetLoginQRCodeRequest.4 | 当前机器 hostname 字符串 | `0x77bef9d` → `0x8716ee0`；`0x8716f67` 调用 `gethostname`；`0x77befe4` 复制 |
| GetLoginQRCodeRequest.11 | helper 返回非空时写入的可选 Buffer | `0x77bf0b9`–`0x77bf166`；helper `0x84e38c0` |
| GetLoginQRCodeResponse.3 | 后续轮询所用 token；不能据此构造登录 URL | `0x77bf996`–`0x77bf9a1` 写入上下文 `+0x118`；`0x77c33f0`–`0x77c33f7` 写入 CheckLoginQRCodeRequest.3 |

材料 helper [0x9abbed0](evidence/asm/qr_material_urandom.asm) 从 `/dev/urandom` 读字节。
调用者长度为 16，不能仅凭这个长度把材料命名为 AES 密钥或断定具体加密模式。
[hostname helper](evidence/asm/qr_hostname_helper.asm) 的导入调用经 GOT relocation 确认：
PLT `0xa66ff00` → GOT `0xacca6d0` → `gethostname`；后续 PLT `0xa66e160` 对应 `strlen`。

请求序列化器 `0x7cc5f50` 的对象偏移 `+0x18` 绑定字段 4，
因此 hostname 是该字段的语义证据，不能把它当成 BaseRequest 中的设备标识。
响应的第 2 字段和第 5 字段目前只证明 Buffer 的复制关系；显示格式和密钥用途尚未确定。
第 4/6 字段还需核对时间单位及过期计算。

## 首包封装的进一步定位

[QR CoCgi 调度](evidence/asm/qr_cocgi_dispatch.asm) `0x77eb130`
拷贝业务请求并通过任务/网络对象的虚方法发起操作。
继续追踪确认编码虚方法 `0x77ecfe0` 和共同字段填充 `0x77ed0f0`；
BaseRequest 六个字段的来源及 presence 现已记录，配置实际值和部分业务含义仍未知。

封包上层入口 `0x8df5900` 按解析出的上下文选择两条路径，见
[分派摘录](evidence/asm/packet_dispatch_choice_excerpt.asm)：

- `0x8df8b62` 检查栈上 `+0x114` 的布尔值；非零时在 `0x8df8b98` 调用 PackWxPkg。
- 零值分支在 `0x8df8d11` 调用 PackMMPkg。
- 两次调用都传入栈上 `+0x348` 的参数结构。PackWxPkg 内再按结构中的 selector 分派。

这证明调用路径存在，不证明 getloginqrcode 走哪一条。
该上下文已定位为 `mars.account.RequestInfo`，字段 12 的布尔值控制此分派。
Pack 入参中 `rdx` 为输出 AutoBuffer，`rcx/r8` 为明文指针/长度；
selector 位于封包参数结构 `+0x08`，已核对 15 项跳表。
新增 [运行时证据和 QR 专用采集工具](qr-runtime-evidence.md) 用于确认实际分支与独立向量。
尚未恢复的 KDF、nonce/AAD、端点与外层握手不能用候选值代替。

## 本轮验证范围

[qr.json](contracts/qr.json) 记录 28 个字段、119 处机器码引用。
实际对 Git LFS 的完整 deb 执行了契约验证器，固定样本哈希和全部引用字节匹配。
`semantic_verified/packet_verified/live_verified` 全为 false。
Go 测试确认该契约不能通过 semantic/packet/live 任一启用条件。

未生成 native 成功二维码夹具，未编写依赖猜测字段的二维码业务 API。
任务 2 的语义恢复尚未完成，任务 3/4 的在线封包与传输也未完成；
依赖它们的登录、同步、发送和终端保持待实现。
