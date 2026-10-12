# 正式鉴权：请求核心与会话密钥恢复

已实现 Go 的临时 P224 密钥、ManualAuthRsaReqData 核心编码、UnifyAuthResponse 密钥解析。
2026-10-12 新增完整 ManualAuthAesReqData **wire 字段布局**编码，以及原生 QR caller 的 proof/pwd2 绑定；
随后新增 [ManualAuthRequest 双子消息容器](native-auth-request-container.md)的原生向量及 Go 编码；
又新增 [任务 ECDHInfo 分支和默认候选业务密钥选择](native-auth-transport-progress.md)，
用真实原生查询和 setter/getter 合成向量核对；
设备字段语义、presence 策略与完整正式鉴权仍未成立，见 [本轮证据与边界](native-manualauth-aes.md)。
本阶段没有发出 secmanualauth 请求，没有手机确认，也没有安装或持久化已登录会话。
`wx login`、自动鉴权和在线消息收发仍未接通。

| API | 已实现的范围 |
| --- | --- |
| `cryptox.NewAuthP224KeyPair` | crypto/rand 生成临时密钥；SEC1 DER 私钥、57 字节非压缩公钥；默认格式化隐藏私钥 |
| `protocol.EncodeManualAuthCore` | 16 字节随机 key、NID713 公钥、用户名及显式 pwd/pwd2；仅请求的 RSA data 部分 |
| `protocol.EncodeQRCodeAuthCore` | 固定 QR caller 的 username/proof 直接传递与显式空 pwd2；独立原生 caller/serializer 合成向量 |
| `protocol.EncodeManualAuthAESFields` | 27 个 wire 字段、23/24 Buffer、26 PubKeyInfo、28 ExtAuthReqInfo；显式输入，不填设备默认值或宣称登录 |
| `protocol.EncodeManualAuthRequest` | 按原生字段 1/2 组合 RSA/AES 子体，原生 parent 向量核对；仅 protobuf 容器 |
| `protocol.NativeTaskSelectsECDHInfo` | 固定样本 10 项 CGI 选择表，实际原生集合查询向量；只选择任务元数据 |
| `protocol.SelectNativeBusinessKeyCandidates` | 默认路由 main/13 与 origin/5 的方向 key 选择、副本和格式化隐藏；不安装或认证会话 |
| `cryptox.DeriveAuthP224` | native KDF0：MD5(P224 共享 X 坐标的固定 28 字节表示) |
| `cryptox.OpenAuthCBC` | key=IV 的 AES-128-CBC，严格 PKCS7，不解压，不做响应认证 |
| `protocol.DecodeManualAuthKeys` | 校验返回码、账号匹配和 Buffer；只支持 AuthResultFlag&4/NID713；恢复四类材料，完整保留私有 Raw |

解码器需要调用者先认证并解开业务包。它只返回候选材料，没有 Authenticated 标志，
不改变登录状态、不保存凭据。未知方案、曲线、错误返回码、错误 padding、长度/类型/单值字段重复均失败。
所有密钥和原始回包存放在不可导出的成员中；byte accessor 返回副本，值和指针的默认格式化均隐藏材料。

## 固定 ELF 证据

样本 SHA-256：`2ca28ea56b1a400543d0128ebaf0b93f88172dd66dc0426d3d74fdb971eab959`。

- `0x77c8b00`–`0x77c8b05`：生成 NID713 密钥。ECDHKey 的字段/布局见既有 protobuf evidence。
- `0x77ccfc1`–`0x77ccfc4`：AuthSectResp.19 的 **0x4** 位决定 ECDH 解密分支。未设置时原生路径可能直接复制 field3；Go 不把该未验证路径声明为可用。
- `0x77cd0d8`–`0x77cd0e9`：从 AuthSectResp.2 取服务端 ECDHKey，使用请求私钥和 KDF0。
- `0xaa266e0`：KDF0 长度16，callback `0x8b1c600`；callback 调用原生 MD5 init/update/final。
- `0x77cd15a`、`0x77cd1ed`：AuthSectResp.3 是 Buffer；`0x79c6f80` 跳至 `0x79c67e0`，执行 AES-128-CBC。
- `0x77cd429`、`0x77cd470`、`0x77cd4a5`：field23 的 Buffer 数据独立复制至第三个输出。
- `0x77cd4c8`–`0x77cd543`：field24 的 Buffer 数据独立复制至第四个输出。
- `0x77d0adb`–`0x77d0b1a`：四个输出分别保存到登录信息 +0x88/+0xa0/+0xb8/+0xd0。
- `0x8df3d70` 的日志及 +0xf0/+0x108 写入区分 client/server session key。公开 [协议实现](https://github.com/G5t4r/WeProtocol/blob/a9b30f7b1b07e9cecae20d1eba380b4b3b779fc2/Cilent/mm/mm123.proto) 的 23/24 标签与当前原生布局、复制顺序一致；当前已另行核对默认路由 getter、请求参数和响应 decrypt_key 的方向槽，见 [原生证据](native-auth-transport-progress.md)。完整安装及封包仍待验证。
- AcctSectResp 新恢复的映射：type name `0x7ce6960`，serialize `0x7ce5df0`，field1 LEN/+0x8；不将 UIN 当作联系人 ID。

请求核心只序列化当前已恢复的字段形状，pwd2 显式传入，不在编码器中猜测密码转换或字段默认值。
ManualAuthAesReqData 的全部 wire 字段已增加独立编码；完整设备字段、clientCheckData/extSpamInfo（23/24）及新增字段的来源/必填性，
还有请求封包、会话安装和自动鉴权，尚未完成验证；不发送缺少这些契约的登录请求。

## 独立验证

`testdata/auth/native-keys.json` 全部数据是合成输入（固定标量1/2、虚构账号和 token）。
研究工具真正执行固定 ELF 的 ComputeDh、MD5、AES、完整 `0x77ccdd0` 密钥处理及原生 Protobuf size/serialize，
得到四个独立的 16 字节输出；另以 OpenSSL CLI 核对 P224 共享坐标和 CBC 样本。
没有替换 ECC、MD5、AES 或序列化实现，没有执行客户端启动代码、网络或账号操作。

CPU 模拟器为单线程 guest 明确建模锁、once、TLS、内存比较、空环境、固定 PID/时间、合成熵和退出注册。
guest syscall 仍一律拒绝。这些模型只在研究工具中使用，Go 运行时使用 crypto/rand，不依赖模拟器、OpenSSL CLI 或 deb。

复现：

```bash
python tools/research/native_auth_vectors.py --elf /path/to/pinned-wechat.elf --output /tmp/wx-auth-vectors
go test -race ./...
go vet ./...
```

原生 whole-routine 向量证明密钥恢复的一致性，不等于真实账号登录成功。
