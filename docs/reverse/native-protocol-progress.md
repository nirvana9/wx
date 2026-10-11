# 微信 Linux 原生协议逆向进展

日期：2026-10-11。目标：脱离官方客户端，独立完成二维码登录和文本消息收发。

## 当前结论

已从剥离符号的 ELF 恢复 63 个相关 `micromsg.*` 类型的虚表与函数关系、4 个封包类型、561 处消息字段写入指令、29 处封包字段写入指令和 6 个原生任务绑定。本次交付包含可复跑的离线分析程序和指令证据，尚不能登录微信或收发真实消息。

字段写入数量是代码位置的数量，不是独立字段数，更不是完整协议定义。字段的语义、必填条件、部分嵌套类型和完整的加密/传输封装还未恢复。没有执行样本、登录账号或连接微信服务器。

## 固定样本

| 项目 | 值 |
|---|---|
| 原始提交 | `3c16fee9c1d236828871920638596c15e93d5615` |
| 包 | `wechat 4.1.13.23`，amd64 |
| deb 大小 / SHA-256 | 231359624 字节 / `b7d0f8d53e9f648bc2c77a6096a04100d008f2d9f0d3988a2a4859b5992aca0a` |
| 主程序 | `opt/wechat/wechat`，181178912 字节 |
| 主 ELF SHA-256 | `2ca28ea56b1a400543d0128ebaf0b93f88172dd66dc0426d3d74fdb971eab959` |
| ELF Build ID | `ce28c3471d532eeb1f136482eeb4d0bdfd59c06e` |
| FDE 索引条目 | 359513 |

文中地址都是未重定位的 ELF 虚拟地址。运行时需要加 ASLR 基址。文件偏移与虚拟地址不能通用：例如 `.text` 的虚拟地址比文件偏移大 `0x1000`，`.data` 大 `0x3000`。工具通过 `PT_LOAD` 段换算。

## 原生任务与 CGI

所有路径均以 `/cgi-bin/micromsg-bin/` 开头。下面的编号来自实际分配任务对象前的元数据构造；不是从旧 XML 配置推断出来的。

| CGI | 原生任务 CGI 编号 | 2020 XML 的 reqid | 构造包装函数 VA | 编号写入指令 VA | 请求类型 / 原生请求包装函数 |
|---|---:|---:|---|---|---|
| `getloginqrcode` | 502 | 232 | `0x77ecbd0` | `0x77ecc07` | `GetLoginQRCodeRequest` / [`0x77c0540`](evidence/asm/getloginqrcode_native_request.asm) |
| `checkloginqrcode` | 503 | 233 | `0x77f0920` | `0x77f0957` | `CheckLoginQRCodeRequest` / [`0x77c4300`](evidence/asm/checkloginqrcode_native_request.asm) |
| `secmanualauth` | 252 | 433 | `0x77f6bf0` | `0x77f6c27` | `ManualAuthRequest` / [`0x77ce110`](evidence/asm/secmanualauth_native_request.asm) |
| `secautoauth` | 763 | 434 | `0x77fce90` | `0x77fcec7` | `AutoAuthRequest` / [`0x77dc9d0`](evidence/asm/secautoauth_native_request.asm) |
| `newsendmsg` | 522 | 237 | `0x695bf60` | `0x695bf97` | `SendMsgRequestNew` / [`0x6958540`](evidence/asm/newsendmsg_native_request.asm) |
| `newsync` | 138 | 121 | `0x61e2350` | `0x61e2387` | `NewSyncRequest` / [`0x61e0460`](evidence/asm/newsync_native_request.asm) |

每个构造包装函数把编号写到 `[rsp+0x10]`，随后将该元数据传给对应任务类构造函数。任务类把输入结构 `+0x10` 的值复制到任务对象 `+0xc`；例如二维码任务的这两条指令在 `0x77ecec3` 和 `0x77ecec7`。构造代码也内嵌相应请求和响应对象。

完整列表见 [native-tasks.json](evidence/native-tasks.json)。每个条目同时给出任务类构造函数和路径引用地址；[二维码构造包装](evidence/asm/getloginqrcode_task_metadata.asm)与[任务类构造](evidence/asm/getloginqrcode_task_constructor.asm)可直接核对。

这里确认的是任务对象中的 CGI 编号，还没有沿传输层证明它如何写入网络帧。不能据此宣布已恢复 on-wire 命令字。旧 XML 的 `reqid/respid` 属于另一层配置；原始 [2020 年配置](evidence/embedded-functionlist-20200830.xml)保留供比较，不能拿它填当前包头。扫描时还排除了使用同一鉴权路径的静态元数据初始化函数；路径和常量相同并不足以证明实际任务调用。

## Protobuf 函数和 wire 形状

关键恢复链是：精确类型名字串 → RIP 相对引用 → FDE 函数边界 → `R_X86_64_RELATIVE` 虚表槽 → 解析、长度计算和序列化候选函数。生成 JSON 仍使用 `*_candidate` 字段名，避免把本样本中的 ABI 布局推成通用规则。

先前只扫描 `lea/mov` 会漏掉构造字符串的 SSE `movups`。现在扫描四种对齐的所有 `disp32` 候选，再在 FDE 边界内用 Capstone 解码，确认实际指令和 RIP 操作数；不会把任意四字节命中直接当交叉引用。

下表只表达已观察的编码。`V` 为 varint / wire 0；`L` 为长度限定 / wire 2，string 与 bytes 的声明不能区分；`M` 为通过子消息虚方法序列化 / wire 2。表中没有赋予字段业务名字。

| 类型 | 字段编号:编码 | 序列化函数证据 |
|---|---|---|
| `BaseRequest` | `1:L, 2:V, 3:L, 4:V, 5:L, 6:V` | [`0x79f3c60`](evidence/asm/micromsg.BaseRequest_serialize.asm) |
| `BaseResponse` | `1:V, 2:M` | [`0x79f44c0`](evidence/asm/micromsg.BaseResponse_serialize.asm) |
| `SKBuiltinBuffer_t` | `1:V, 2:L` | [`0x7ba08a0`](evidence/asm/micromsg.SKBuiltinBuffer_t_serialize.asm) |
| `SKBuiltinString_t` | `1:L` | [`0x7ba0d00`](evidence/asm/micromsg.SKBuiltinString_t_serialize.asm) |
| `GetLoginQRCodeRequest` | `1:M, 2:M, 3:V, 4:L, 5:L, 6:V, 7:L, 8:L, 9:M, 10:M, 11:M` | [`0x7cc5f50`](evidence/asm/micromsg.GetLoginQRCodeRequest_serialize.asm) |
| `GetLoginQRCodeResponse` | `1:M, 2:M, 3:L, 4:V, 5:M, 6:V, 7:L, 8:M, 9:L` | [`0x7cc72f0`](evidence/asm/micromsg.GetLoginQRCodeResponse_serialize.asm) |
| `CheckLoginQRCodeRequest` | `1:M, 2:M, 3:L, 4:V, 5:V` | [`0x7cc8050`](evidence/asm/micromsg.CheckLoginQRCodeRequest_serialize.asm) |
| `CheckLoginQRCodeResponse` | `1:M, 3:M` | [`0x7cc8890`](evidence/asm/micromsg.CheckLoginQRCodeResponse_serialize.asm) |
| `LoginQRCodeNotifyPkg` | `1:M, 2:V` | [`0x7cc48c0`](evidence/asm/micromsg.LoginQRCodeNotifyPkg_serialize.asm) |
| `LoginQRCodeNotify` | `1:L, 2:V, 3:L, 4:L, 5:L, 6:V, 7:L, 8:V, 9:L, 10:V, 11:L, 12:V, 13:L, 14:V, 15:L, 16:M, 17:M` | [`0x7cca5d0`](evidence/asm/micromsg.LoginQRCodeNotify_serialize.asm) |
| `ManualAuthRequest` | `1:M, 2:M` | [`0x7cdbac0`](evidence/asm/micromsg.ManualAuthRequest_serialize.asm) |
| `AutoAuthRequest` | `1:M, 2:M` | [`0x7cdf760`](evidence/asm/micromsg.AutoAuthRequest_serialize.asm) |
| `SendMsgRequestNew` | `1:V, 2:M` | [`0x79ed9d0`](evidence/asm/micromsg.SendMsgRequestNew_serialize.asm) |
| `MicroMsgRequestNew` | `1:M, 2:L, 3:V, 4:V, 5:V, 6:L, 7:V` | [`0x79ed170`](evidence/asm/micromsg.MicroMsgRequestNew_serialize.asm) |
| `NewSyncRequest` | `1:M, 2:V, 3:M, 4:V, 5:L, 6:V, 7:V, 8:M, 9:V` | [`0x7dece20`](evidence/asm/micromsg.NewSyncRequest_serialize.asm) |
| `NewSyncResponse` | `1:V, 2:M, 3:V, 4:M, 5:V, 6:V, 7:V` | [`0x7dedb00`](evidence/asm/micromsg.NewSyncResponse_serialize.asm) |

值得继续追踪的具体差异：

- `GetLoginQRCodeRequest` 实际观察到 11 个字段。通过解析器调用和长度计算可交叉核对字段 1 的子类型 `BaseRequest`，以及字段 2、9、10、11 的 `SKBuiltinBuffer_t`。这些嵌套关系为手工核对结果，自动字段 JSON 仍保留 `nested_type: null`。
- `CheckLoginQRCodeResponse` 序列化只观察到编号 1 和 3，不能为填补编号间隔而虚构字段 2。
- `SendMsgRequestNew` 的字段 2 在序列化循环中重复写入；[解析器](evidence/asm/sendmsg_request_parse.asm)调用 `MicroMsgRequestNew` 的解析函数 `0x79ecce0`。[循环证据](evidence/asm/micromsg.SendMsgRequestNew_serialize.asm)显示消息数组遍历。字段 1 目前只确认 varint 编码，尚未确认其业务名。
- `NewSyncResponse` 的字段 1 是 varint，不能直接照搬旧版本把它写成 `BaseResponse` 子消息。

完整 [消息函数映射](evidence/message-function-map.json)、[字段证据](evidence/protobuf-field-evidence.json)与对应反汇编均已提交。字段 JSON 给出写入 helper、字段编号指令、写入指令和局部对象成员来源。成员来源只是局部数据流提示；默认实例、分支和循环索引都可能改变解释，不应直接拿它生成 C++ 布局。

已人工检查八个字段写入 helper。包括 `0x8f52380` 的 32 位 varint、`0x8f52310` 的负 int32 符号扩展处理、`0x8f523b0` 的 64 位 varint、两个 string/bytes 的 LEN helper、子消息的 LEN helper，以及来自 `xmm0` 的 32 位写入。定位到 helper 只能确认编码行为，不能区分 uint/enum/bool 等业务声明。

## 封包和加密入口

| 日志中的原生函数名 | 函数 VA | 直接证据 |
|---|---|---|
| `PackMMPkg` | `0x8dfc840` | [反汇编](evidence/asm/PackMMPkg.asm)，加密调用在 `0x8dfca4b` |
| `PackWxPkg` | `0x8e035a0` | [反汇编](evidence/asm/PackWxPkg.asm)，加密调用在 `0x8e037fe` |
| `UnPackWxPkg` | `0x8e04cc0` | [反汇编](evidence/asm/UnPackWxPkg.asm)，读取包头/包体、解密和解压路径 |
| `__EncodePackBuffer` | `0x8dfe2c0` | [反汇编](evidence/asm/__EncodePackBuffer.asm)，读取传入 `r8+8` 的 16 位选择值 |

函数名来自这些函数引用的 `mars::account` / `packer.cc` 日志上下文，不是 ELF 导出的符号。两个 pack 函数均调用 `__EncodePackBuffer`；此关系由直接 call 指令确认。

`PackWxPkg` 中的对象构造和虚表确认了 `alts.PKG`、`alts.AltsRequest`、`alts.AltsReqContext`、`alts.AltsReqBodyV1`。见 [封包类函数映射](evidence/packet-message-function-map.json)和[字段证据](evidence/packet-field-evidence.json)。`alts.PKG` 观察到编号 1–22；`AltsRequest` 观察到 1:V、2:M、3:M。外层包的完整格式和这些字段的含义尚未确认。

[加密分派表](evidence/encodepackbuffer-switch.json)记录了选择值 0–14 的跳转地址。选择值 0 有不加密的日志与复制路径；其他分支存在 AES_GCM 和 HybridECDH 等诊断。诊断或跳转表的存在不能证明某一登录请求实际采用哪个分支，更不能直接给出密钥、nonce、AAD、证书选择和派生步骤。

## 复现与已完成的验证

从仓库根目录执行，先用 Git LFS 获取原始 deb：

```sh
git lfs pull --include=WeChatLinux_x86_64.deb
python3 -m venv .venv
.venv/bin/pip install -r requirements-analysis.txt
.venv/bin/python tools/recover_native_protocol.py --deb WeChatLinux_x86_64.deb --output analysis-output
```

只读取样本，不安装或运行微信。需要 Python 3.11+、`dpkg-deb`，并预留约 2 GB 空闲内存。脚本对错误样本拒绝继续。`tools/native-profile.json` 是固定样本的人工审核地址线索，包括 helper、封包类构造函数和任务类构造函数；它不是自动适配任意微信版本的反编译器。

本次验证实际执行了完整提取命令：输出 63 个消息类、4 个封包类、561 / 29 处字段写入、6 个任务和 158 份自动生成反汇编。63 个消息和 4 个封包类的映射与先前交互式静态恢复逐项一致；先前的 558 处字段编号与 wire type 全部一致，新 helper 补充了 3 处。所有 6 个任务编号与单独核对的指令一致。清单见 [manifest.json](evidence/manifest.json)。手工挑选的调用链反汇编另附在同一目录。

这项验证没有证明当前微信服务端接受请求；没有可用的 CLI 登录/收发程序。下一步按 [原生 CLI 设计](../superpowers/specs/2026-10-11-wechat-native-cli-design.md)恢复二维码首包、鉴权密钥和同步语义，再接入命令行。
