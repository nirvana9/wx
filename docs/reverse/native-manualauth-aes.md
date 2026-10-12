# Task 6：AES 段 wire 与 QR proof 传递

2026-10-12。基于 main `006d6cbf79c9db54176fcbe382632343aded3895` 继续恢复。
本增量实现完整的 **ManualAuthAesReqData 序列化字段布局**，以及 QR 路径的 RSA 核心参数绑定。
没有构造或发送完整 secmanualauth，没有会话安装、凭据保存、自动鉴权或账号登录成功。

## 样本与分析入口

deb SHA-256：`b7d0f8d53e9f648bc2c77a6096a04100d008f2d9f0d3988a2a4859b5992aca0a`。
ELF SHA-256：`2ca28ea56b1a400543d0128ebaf0b93f88172dd66dc0426d3d74fdb971eab959`。
只从匹配的 deb 提取 ELF；本机 `/opt/wechat/wechat` 哈希不同，没有作为本轮样本使用或执行。
未找到工作区 handoff 文件。

Codex 本轮没有直接暴露 REA MCP 工具。通过已安装 REA 的公共 launcher 启动本地 stdio MCP，
实际完成 initialize、tools/list（170 个工具），读取工具 inputSchema 后调用 binary_session、open_binary、procedure_pseudo_code。
这是实际 MCP 连接，不是把普通 objdump/Capstone 输出标为 REA Evidence。
REA 为 6.4.0，MCP 协议 2024-11-05；Ghidra 为 12.1.4，隔离 Temurin JDK 为 21.0.12.1。
Ghidra ZIP 和 JDK tar 的摘要分别匹配官方发布元数据的
`ddac49f903da9d5bac833e5cc79395098b9c33cfd3279be5f31bd00387d2d4db`、
`ce79869e1307ed8ee1e2baa86a412b1eb5b75d10a01006d788a6f968bcfaee94`。
工具仅放在 `/tmp`，未改变系统 Java、客户端注册或仓库的 Go 工具链。

REA open_binary 校验到上述 ELF；Ghidra profile digest 为
`a04af771c3a78edf03c11c3b8652d4812dfce76da00d380345526a333361b5c9`。
本页下面的结论来自固定 ELF 的指令和隔离原生函数执行；Ghidra 全样本分析的导入基址与反编译结果另行记录，
尚未返回的反编译不能作为字段语义已经恢复的依据。此处地址均为 ELF 原始 VA，原始 PT_LOAD 基准为 0。

## 23–28 号字段

主类 constructor `0x7cd8040` 分配大小 `0xd8`，presence mask 在 `+0xd0`。
`0x7cd80d5` 清零 mask；默认成员值与“写出该字段”不同。
主类 serialize `0x7cda4a0` 按 presence 写 27 个字段，本样本没有 field12 的写出分支。
这不说明 field12 的历史语义或保留策略。

| 字段 | 成员位置 | presence 位 | 当前样本的实际结构 | 写出入口 |
| --- | --- | --- | --- | --- |
| 23 clientCheckData | `+0xa0` | `0x200000` | SKBuiltinBuffer_t | `0x7cda8e9` |
| 24 extSpamInfo | `+0xa8` | `0x400000` | SKBuiltinBuffer_t | `0x7cda925` |
| 25 | `+0xb0` | `0x800000` | LEN，保持 opaque bytes | `0x7cda94b` |
| 26 | `+0xb8` | `0x1000000` | PubKeyInfo | `0x7cda987` |
| 27 | `+0xc8` | `0x2000000` | uint32 writer | `0x7cda9ad` |
| 28 | `+0xc0` | `0x4000000` | ExtAuthReqInfo | `0x7cda9f0` |

子类型证据不来自旧版本 `.proto`：给真实 `0x7cd9390` partial parser 输入单个空子消息，
在原生分配的 child 上执行 GetTypeName。六个探测（含 BaseRequest/BaseAuthReqInfo）均返回 partial-parse=1；
结果及精确输入在 `testdata/auth/native-aes-fields.json`。CodedInputStream 的设置直接复用
`0x8f500ef`–`0x8f5013c` 的布局及固定 ELF 常量。没有运行 IsInitialized；不据此判断完整请求必填性。

PubKeyInfo 的 vtable 为 `0xa9821a8`，type name `0x79ec8d0`；新增映射见
`evidence/manual-auth-added-types.json`。`0x79ec7ad` 用 int32 writer 写 field1，
`0x79ec7e8` 用 message writer 写 field2；size 中 `0x79ec844 → 0x7ba08f0` 确认 field2 是 Buffer。
因此它不是“版本号+普通字符串”即可拼出的结构；field1 的选择来源与语义仍未恢复。
ExtAuthReqInfo `0x7cd43d0` 只按独立 presence 位写 LEN field2/3。
字段25/27及两个扩展子消息的实际值来源、语义和服务器必填条件继续保持未知。

在已保存的完整 `0x77c7f00` 反汇编中，未找到对 23、25–28 的 presence 位的**直接写入**。
这是针对该函数的有界静态搜索，不证明所有登录模式都省略，也不证明服务端接受省略。

## extSpamInfo 的来源

调用链：`0x77c7f00 → 0x77ca9eb → 0x84e38c0 → 0x84e38e5 → 0x9b09b80 → 0x9b0c650`。
adapter 先把输出 pointer/length 清零，传 selector0；仅当 length>0 且 pointer 非空才复制数据并调用释放函数。
首次鉴权构造器在 `0x77ca9f0`–`0x77caa0a` 检查结果非空，随后
`0x77caa65` 设置 field24 presence，`0x77caa89` 创建 Buffer，`0x77cab19` 复制 payload，
`0x77cab34` 写入声明长度。

`0x9b0c650` 的固定 ELF FDE 范围大小为 1,307,867 字节，包含混淆控制流。
尚未恢复它收集的设备材料、内部编码或是否在本 Linux 分支必然返回非空。
Go 编码器要求显式传入已有 payload；不会制造替代报告，也不会把空值作为已验证设备契约。

## QR 用户名与 pwd/pwd2

通知处理 `0x77c0d40`：`0x77c126c` 将 Notify.3 保存到控制器 `+0x138`，
`0x77c1280` 将 Notify.4 保存到 `+0x150`。这些是鉴权候选材料，不是鉴权成功状态。

QR caller `0x77c7700` 在 `0x77c7915` 取 `+0x138`，`0x77c7985` 取 `+0x150`；
`0x77c797b` 明确创建空的短字符串。在 `0x77c79aa → 0x77c7f00` 调用处，
RCX=username、R8=proof、R9=空字符串。
构造器 `0x77c838a`–`0x77c83b2` 保存实参，
`0x77c8733/0x77c879d/0x77c880e` 分别复制到 RSA data field3/4/5。
因此 **这一 QR 分支**直接使用 proof 作为 pwd，pwd2 显式为空；没有在这条链中对 proof 做 MD5 转换。
不推广到其他鉴权方式。

隔离执行 QR caller 到 manual-auth 入口立即停止，独立记录这些实参，再执行真实 RSA-data size/serialize。
研究模型只把日志开关设为 false、账号目录锁检查设为 true；没有执行手动鉴权、文件锁、客户端启动或网络。
向量为 `testdata/auth/native-qr-core.json`，P224 点复用既有 scalar1 合成向量，不重新研究或替换 ECC。
Go 的 `EncodeQRCodeAuthCore` 固定此参数绑定，仍仅返回 RSA data，不安装或持久化会话。

## Go 增量与验收边界

`EncodeManualAuthAESFields` 覆盖全部 27 个 wire 字段，并区分省略、显式空值及显式零值；
只支持当前样本已经证明的槽位和类型。未知语义使用数字字段名或显式 byte map。
BaseRequest/BaseAuthReqInfo 由调用者提供，校验 wire 有效性；不制造设备值或替代登录策略。
输入预算小于 1 MiB（另预留 512 字节编码开销），错误不返回部分结果，输出独立复制；
默认格式化隐藏输入材料。

4 组独立原生向量包括 absent、全字段、显式空/零和空的 26/28 子消息。
27-bit presence mask `0x7ffffff`、负 field13 和 PubKeyInfo.field1 均由真实原生 serializer 编码；
没有用 Go 编码器生成期望值。只调用原生内存分配/复制接口，guest syscall 一律拒绝。
“全字段”是合成字段覆盖，不是完整合法的登录请求或设备 profile。

复现：

```sh
.venv-emulation/bin/python tools/research/native_auth_aes_vectors.py --elf /path/to/pinned.elf --output /tmp/native-aes-fields.json
.venv-emulation/bin/python tools/research/native_qr_auth_core_vectors.py --elf /path/to/pinned.elf --output /tmp/native-qr-core.json
go test -race -count=1 ./...
go vet ./...
```

尚待完成：完整设备参数和 clientCheckData/扩展字段的语义与必填条件；通知状态枚举和材料连续性；
secmanualauth 真实封包、压缩/加密分支、外层认证和关联；四类密钥的业务用途及网络参数安装；
持久化、secautoauth/Resume；其后才是同步、联系人、收发和终端。Task 6 保持未完成。
