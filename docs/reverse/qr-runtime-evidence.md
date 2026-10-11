# QR 运行时证据采集与原生 ABI

2026-10-11。目标仍是独立 Go 命令行客户端。**登录、接收和发送尚未实现。**
这里的 Python/Frida 程序用于恢复协议，它需要挂接研究用官方进程；它不是最终客户端，也不能替代独立登录验收。

## 已确认的静态数据流

固定 Linux x86-64 4.1.13.23 ELF SHA-256：
`2ca28ea56b1a400543d0128ebaf0b93f88172dd66dc0426d3d74fdb971eab959`。

| 入口 | 证据 | 能证明的内容 |
|---|---|---|
| QR task 编码虚方法 `0x77ecfe0` | [汇编](evidence/asm/qr_task_encode.asm) | task `+0x88` 为请求对象；调用共同字段填充，然后序列化 |
| QR task 解码虚方法 `0x77ed090` | [汇编](evidence/asm/qr_task_decode.asm) | task `+0xe8` 为响应对象；解析输入业务体 |
| 共同字段填充 `0x77ed0f0` | [汇编](evidence/asm/qr_fill_base_request.asm) | 六个 BaseRequest 字段均设置 presence；编码模式输出值置为 1 |
| RequestInfo 类型 | [类型名](evidence/asm/request_info_type_name.asm)、[构造器](evidence/asm/request_info_constructor.asm) | `mars.account.RequestInfo`；不是二维码业务消息 |
| RequestInfo 字段 12 | [序列化摘录](evidence/asm/request_info_field12_excerpt.asm) | 布尔对象偏移 `+0x2c`；对应上层分派栈 `+0x114` |
| PackMMPkg `0x8dfc840` | [汇编](evidence/asm/PackMMPkg.asm) | `rdx` 是输出 AutoBuffer，`rcx/r8` 是输入业务体及长度，`r9` 是参数结构 |
| AutoBuffer | [指针](evidence/asm/auto_buffer_ptr.asm)、[长度](evidence/asm/auto_buffer_length.asm) | 数据指针在对象 `+0x00`，长度在 `+0x10` |

两种 Pack 函数的 SysV 入参依次为：引擎对象、内部请求值、输出 AutoBuffer、明文字节指针、长度、封包参数结构。
内部请求值不能直接称为线上 CGI 编号。AutoBuffer 与业务 ByteBuffer 的布局不同，采集器没有复用后者的读取方式。
序列化临时值采用此样本的 libc++ 字符串布局：短串长度为首字节右移 1；长串长度和指针在 `+0x08/+0x10`。读取按二进制长度执行，保留 NUL。

BaseRequest 的局部来源：字段 1 是固定单字节 `00`；字段 2 是管理对象返回的 64 位值或零；
字段 3 取 helper 材料前 16 字节；字段 4/5 分别来自配置对象 `+0x60/+0x88`；字段 6 是本地 task `+0x08` 编号。
字段 4 的写入 helper 处理有符号 int32，字段 6 为 uint32，字段 2 为 uint64。
这些来源不等于已证明 UIN、客户端版本、设备类型或最终密钥用途。

QR 请求的 [IsInitialized](evidence/asm/qr_request_initialized.asm) 要求前两个 presence 位，并检查已出现的子消息。
这不能证明服务器允许任意省略其他字段。

`__EncodePackBuffer` 的 selector 位于参数结构 `+0x08`，跳表覆盖 0..14：
0、5、11、12、13、14 有独立目标，其余值进入默认结束路径。不能由编号自行命名密码算法。
跳表原字节和目标见 [qr_runtime_map.json](evidence/qr_runtime_map.json)。

[qr.json](contracts/qr.json) 现在包含 119 处指令引用；三个业务/封包/在线验证标记仍为 false。
挂接配置 [qr_capture_profile.json](../../tools/qr_capture_profile.json) 固定六个函数入口和各入口 16 字节机器码。

## 采集一次二维码交换

需要同一 Linux 主机上可被 Frida 挂接的上述固定版本进程，停留在未登录的二维码页。
采集只需刷新二维码，无需扫描、确认登录或发送消息。工具不启动、安装或修改客户端配置。

在仓库根目录运行：

```sh
python3 -m venv .venv-capture
.venv-capture/bin/pip install -r requirements-capture.txt
# 将 12345 替换为该未登录进程的 PID。
.venv-capture/bin/python tools/qr_capture.py --pid 12345 --seconds 120
```

先校验 `/proc/PID/exe` 的完整 SHA-256；附加后再次校验，并在安装任一 hook 前核对全部入口机器码。
架构、版本、权限或字节不匹配会拒绝采集，没有跳过版本校验的命令参数。
采用 Frida 官方 [Interceptor](https://frida.re/docs/javascript-api/#interceptor) 和二进制 `send` API；分析依赖固定为 Frida 17.23.3，Go 产品模块无此依赖。

采集范围：

- `qr_request`：同一线程内 QR 编码调用所持有请求对象的序列化原字节。
- `qr_frame`：输入字节与已采集 QR 请求完全一致的 Pack 输出，以及两个未解释的参数 word、selector、内部请求值。
- `qr_response`：同一 QR task 的业务响应原字节和原生解析器的布尔返回值。

响应 ID 按 task 对象关联；请求与 frame 还核对完整字节。匹配一次请求、frame、解析成功响应后自动停止。
该条件只表示一组数据齐备，**不表示服务器业务成功、登录成功或消息收发成功**。
没有完整一组数据、发生错误或中断时返回非零；已有记录保留供检查。

默认目录为 `private-captures/<时间戳>`，目录 0700、文件 0600。拒绝复用已有目录或符号链接。
每条最多 1 MiB，最多 4 次二维码编码和 12 条记录。文件名由工具生成，拒绝非 QR 类型及未声明的元数据。
`events.jsonl` 和 `manifest.json` 保存长度、哈希和关联信息，终端只输出计数与路径。
manifest 始终写入 `live_login_verified=false`、`messaging_verified=false`。

记录可能含二维码临时 token、随机材料和设备信息。保持私有，不提交真实 `.bin` 或整个采集目录到公开 GitHub。
若供后续协议恢复使用，应通过私有渠道提供完整目录；仅提供 selector 或截图不足以核对独立封包向量。

## 验证与剩余条件

已验证：Python 文件/元数据/预算/退出路径测试；Node 二进制字符串与 AutoBuffer 布局、线程与对象关联、字节相等过滤、全入口校验测试；固定完整 ELF 的入口、指令和跳表字节核对。
测试体是具名人工字节，不作为原生服务器成功夹具。

本环境无法完成动态采集：隔离运行的 namespace 创建被内核拒绝；临时测试进程的 PID 与 `/proc` PID 不一致，Frida 无法定位它。
Frida 包已安装，但 agent 尚未在此固定微信进程中挂接验证，官方样本未执行、未使用账号、未发送消息。

实际 QR 请求/响应/封包仍为空缺。之后需恢复所选密码分支及端点/外层握手，建立原生封包向量，再实现二维码解析、扫码确认、会话同步与发送确认。
命令行登录与收发不能由这些离线测试推断为完成。
