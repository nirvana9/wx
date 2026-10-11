# 独立 Go 二维码交换

2026-10-11，GitHub run [38151243546](https://github.com/nirvana9/wx/actions/runs/38151243546)
中的独立 Go 程序从真实服务端取得了新二维码，验证得到 185×185 PNG。
随后实际 `wx qr` 命令在 [run 38152646107](https://github.com/nirvana9/wx/actions/runs/38152646107)
取得新的 185×185 PNG；已核对 artifact 摘要、认证解密后的命令成功输出与图片。
同一 PNG 经终端渲染生成 23 行 × 45 列。研究过程使用固定 Linux 4.1.13.23 样本恢复协议；
最终 Go 运行时不加载或执行客户端。
代码位于 `internal/nativeqr`，命令为 `go run ./cmd/wx qr --output login-qr.png`。

## 已恢复的交换

| 层 | 已验证行为 |
|---|---|
| 初次 MMTLS | P-256 ECDHE，客户端索引 7/1000，签名根索引 5/1000，套件 C02B |
| 密钥派生 | 共享秘密为 SHA256(ECDH)，MMTLS 使用 HMAC-SHA256 HKDF Expand，标签后追加转录哈希 |
| 握手认证 | ECDSA 校验 SHA256(SHA256(CH∥SH))；服务器 Finished 为派生 key 的 HMAC |
| PSK | `PSK_ACCESS` 使用 CH∥SH∥Signature 哈希；保存第一张匿名短连接 ticket，仅在本次调用内使用 |
| 短连接 | 套件 00A8，early data 包含扩展、业务请求和 abort；回复校验 Finished 与 GCM |
| Hybrid 请求 | NID 415/P-256，随机数和正文各自 zlib 后 AES-192-GCM；请求版本 1，空 prior |
| Hybrid 回复 | 校验双 SHA256 的 ECDSA 签名、曲线 415 和凭据类型 1，再解密和解压 |
| 业务请求 | `/cgi-bin/micromsg-bin/getloginqrcode`，当前样本线上 CGI 为 502 |
| 图片 | 校验 BaseResponse 成功、Buffer 长度、完整 PNG；保留服务器原图 |

MMTLS AES-128-GCM 的 AAD 是 seqBE64∥recordHeader，nonce 是 IV 与末八字节序号 XOR。
MMTLS 的 HKDF 不做 Extract；业务 Hybrid 则执行 Extract+Expand，salt 为原生字面量
`security hdkf expand`。两种 GCM 输出格式不同：MMTLS 为 ciphertext∥tag，
Hybrid 为 ciphertext∥nonce12∥tag16。

Hybrid 第一层 AAD 为 SHA256("1415"∥clientPoint)。随机 32 字节与该 AAD 派生 56 字节；
前 24 字节加密正文，末 32 字节参与回复 AAD。回复 AAD 为
SHA256(mac32∥requestPlain∥"415"∥serverPoint∥"1")。
回复签名绑定 SHA256(SHA256(requestBodyCipher∥responseBodyCipher))。

当前请求省略原生可选 device-report Buffer，notice-ID 使用原生无回调分支的 0；
这两个选择已被本次真实服务端响应接受。嵌入配置仅含公开验证钥与公开 ECDH peer，
其 ELF SHA256 为 `2ca28ea56b1a400543d0128ebaf0b93f88172dd66dc0426d3d74fdb971eab959`。
私钥每次新生成，不从客户端复制。请求固定连接样本验证的两个 IPv4，HTTP Host 保持
`short.weixin.qq.com`；认证依赖 MMTLS 和 Hybrid 密码校验。没有代理、重定向或自动重试。

## 验证范围与限制

本地合成服务使用独立生成的私钥和无法登录的小图片，覆盖完整加密往返；
篡改签名、Finished 或 GCM，不合规曲线、凭据类型、重复字段/扩展、错误记录类型、
ticket 尾随数据与超预算 HTTP 响应均返回错误，且不输出图片。
真实交换证据只保存在加密的短期 artifact 中，不提交请求随机数、ticket、二维码 token 或真实 PNG。

HTTP 与解压各限制 1 MiB；单条 record 最多 65535 字节；记录数和 ticket 数有预算。
整个获取最多 45 秒，可由 Ctrl+C 取消。输出 PNG 以 0600 权限新建，不覆盖已有路径。
当前 `wx qr` 只显示二维码，不保留轮询凭据，不执行扫码轮询、登录确认、消息同步或发送。
服务端地址或固定版本协议变更可能导致请求失败。此前通用 JSON 契约仍是未完成证据，
本实现不会把它标为完整登录/消息协议已验证。
