# 原生密码函数：离线模拟与独立实现

2026-10-11。已从固定 Linux 4.1.13.23 deb 取得原生 AES-GCM 和 HKDF 输出，
并实现匹配输出的独立 Go 代码：[internal/cryptox](../../internal/cryptox)。
完整二维码封包、传输握手和登录收发仍未完成。这里的向量只证明局部密码函数。

## 已验证的行为

| 函数 | 已确认行为 | 验证方式 |
|---|---|---|
| AesGcmEncrypt `0x8b1c710` | 16/24/32 字节密钥；12 字节 nonce；16 字节 tag；输出 `ciphertext || nonce || tag` | 5 组原生函数输出，包括二进制 AAD、空明文和全零标准向量 |
| AesGcmDecrypt `0x8b1c950` | 从尾部取 nonce/tag；篡改 tag 返回 `0xffffffff` | 每组原生向量分别解密及破坏标签 |
| HKDF 字符串适配器 `0x8b211c0` | 参数顺序 salt、IKM、info；SHA-256 Extract/Expand | 7 组原生输出/拒绝向量；包含 RFC 5869 case 1、56 字节输出、空 salt/IKM |
| HKDF_Expand `0x8b214d0` | 拒绝空 info、零输出长度和大于 255×32 字节的输出 | 原生返回码；独立 Go 保留这些边界 |
| AesGcmEncryptWithCompress `0x8b1cb00` | 先压缩，再执行上述 GCM 包装 | 静态调用链；尚未交付完整压缩封包向量 |
| ZLibCompress `0x8b1cf50` | 导入 `compressBound`、分配输出、调用 zlib `compress` | 指令及 PLT/GOT relocation；压缩字节兼容性仍待独立核验 |

所有输入均为人为指定的测试材料，没有账号、真实会话密钥或服务器响应。
Go 的 `SealAESGCM` 由调用者提供 nonce；后续会话层需要生成新 nonce。
`OpenAESGCM` 只在认证成功后返回明文，失败时返回 nil。
原生 EVP 可能在返回认证失败前写入输出缓冲区；研究工具也丢弃失败输出。

[向量](../../testdata/crypto/native_vectors.json)与[来源清单](../../testdata/crypto/manifest.json)
记录样本哈希、函数入口/长度/机器码哈希、模拟环境和替换点。
对应反汇编存放在 `evidence/asm/crypto_*.asm`。
这些是从独立原生代码执行取得的期望值，Go 测试没有用自身加密结果生成期望值。

## 如何复核

研究工具将 ELF 的 PT_LOAD 和相对 relocation 载入 Unicorn 的 x86-64 虚拟内存，
直接调用三个固定入口；微信主程序、初始化数组和客户端入口均未启动。
工具拒绝哈希不同的 ELF；guest syscall 和未知导入均报错，未提供网络接口。
AES/HMAC/HKDF 的机器码来自固定 ELF，没有用 Python/Go 密码函数替换。

仅替换两处基础设施：

- `0x8b1eb00` 管理器 accessor 返回零，避免启动单例初始化；其值作为原始 GCM helper 未使用的第一个实参。
- `0x8b1eb60` 随机数 helper 写入向量指定的 12 字节 nonce，以取得可复现的输出。

实际调用的五个导入只模拟 guest 内存中的 malloc/free/memcpy/memmove/memset。
每次调用最多 200 万条指令、10 秒；输入不超过 1 MiB，guest heap 总预算 16 MiB。
这些是研究工具的本地预算，不是服务端限制；Go 原语的本地输入预算为 16 MiB。

先校验完整 deb，提取 `/opt/wechat/wechat`，不要执行它：

```sh
sha256sum WeChatLinux_x86_64.deb
# 必须为 b7d0f8d53e9f648bc2c77a6096a04100d008f2d9f0d3988a2a4859b5992aca0a
dpkg-deb --fsys-tarfile WeChatLinux_x86_64.deb | tar -xOf - ./opt/wechat/wechat > /tmp/wx-research.elf
python3 -m venv .venv-emulation
.venv-emulation/bin/pip install -r requirements-emulation.txt
.venv-emulation/bin/python tools/native_crypto_vectors.py --elf /tmp/wx-research.elf
WX_NATIVE_ELF=/tmp/wx-research.elf .venv-emulation/bin/python -m unittest discover -s tools/tests -p test_native_crypto.py -v
go test ./internal/cryptox -v
```

工具在 CPU 模拟前重新校验 ELF SHA-256，不能替换成其他版本。
常规 Python 套件不要求 deb 或 Unicorn；原生 replay 测试需要上述环境变量。
本轮已实际设置变量运行 replay，未将跳过测试计为原生验证成功。

## 继续恢复的密码分支与封包

静态追踪已到达下列函数，仍需恢复完整入参和输出结构：

- selector 11 → Ax ECDH Encrypt `0x8b1d730`。
- selector 12 → Hybrid ECDH Encrypt `0x8b218b0`，调用 HKDF 适配器，申请 56 字节输出；实际 salt、IKM、info 的完整来源还需核对。
- selector 14 → `0x8df2e80`，调用标记为 `Sm4gcmEncryptBuffer` 的虚方法包装；实际 callback 实现仍需核对，不能因附近 AES 日志而实现为 AES。

`__EncodePackBuffer` 从参数结构 `+0x08` 读取 selector。
上层 `MMReq2Buf` 的参数结构 `+0x00` 还会写入 11/12，两个偏移不能混用。
这次又确认了 `+0x08` 初值来自入口对象 `+0x34`，见 [selector 来源摘录](evidence/asm/packet_selector_source_excerpt.asm)；尚未恢复该配置的实际值。
包头格式、压缩标记、实际 QR 路径、服务器公钥/证书、会话材料绑定和传输握手仍需逐项恢复。
这些局部原语暂未组成 `Engine.Seal/Open(scheme, ...)` 或 Packet Codec。

缺少抓包不会阻止继续静态逆向和离线函数模拟。
运行时 QR 交换可用于核对实际路径和联通性；当前没有真实二维码或登录成功证据。
HKDF 标准参考：[RFC 5869](https://datatracker.ietf.org/doc/html/rfc5869)。
