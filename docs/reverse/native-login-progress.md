# 登录与消息收发的前置恢复

目标仍是独立 Go 登录和文本收发。二维码获取已经联网验收；本阶段先实现匿名轮询，消息尚未接通。

当前增加 `nativeqr.Client.Begin` 与 `Challenge.Check`：保留本次二维码的 token、notify key、设备和 PSK；
通知材料只在内存中使用，默认格式化不会打印它们。`wx qr` 的现有行为不变。

固定 ELF 证据：

- `0x77c32f8`–`0x77c3428`：CheckLoginQRCodeRequest.2 为新生成的 16 字节 Buffer；.3 为二维码 token；.5=0。
- `0x7391200` 使用 gettimeofday 转为 epoch 毫秒；`0x77c340b`–`0x77c341d` **先截成 uint32 再除 1000**，不能直接写 Unix 秒。
- `0x77c0e2a`–`0x77c0e2f`：通知解密传入 selector5 和上下文 notify key。
- `0x77c39bd`、`0x77c39d4`、`0x77c39eb`：CheckResponse.3 → LoginQRCodeNotifyPkg.1 → SKBuiltinBuffer.2，先解开两层结构才能取 CBC 密文。
- `0x79c66a2`–`0x79c6706`：selector5 走 `0x79c67e0` 的 AES-128-CBC，而 selector13 才走 GCM。
- `0x79c6831`–`0x79c6927`：16 字节 key 同时复制为 CBC IV；解密后移除填充，直接解析 LoginQRCodeNotify。
- `0x77c1222`–`0x77c1229`：Notify.2 写入状态；.3/.4 携带后续鉴权材料。状态通知不是鉴权成功。

合成加密服务已完成 Begin→Check 往返并校验设备连续性、CGI503、路径和原生时钟形状。
匿名 Check 已由真实服务端验证：提交 `1e0c51a2cb8b555f7cb2d1bedb7fcabedf2103a9`，
[运行 38155410280](https://github.com/nirvana9/wx/actions/runs/38155410280)，
加密 artifact 11707574219 的 SHA-256 为
`500dcfdc4997b5174edcd45daa58a8b6b725eb1a660138185c353fb26ebc4d21`。
下载摘要和 CMS-GCM 认证通过后，日志确认独立 Begin 得到 185×185 图像，Check 完成回包认证和 CBC 通知解码，原生状态值为 0。
该测试没有手机扫码，不证明其他状态的语义或鉴权成功。原始 token、key、通知和二维码不提交仓库。
当前没有扫码确认、secmanualauth 会话建立，也没有可用的消息发送/接收命令。
检查响应会在转为 int32 前验证返回码范围，并拒绝已使用通知字段的错误 wire type，避免截断为 0 或跳过 token/proof 校验。
审查加固后的提交 `6e51307f89507e41c8863b07520b0d93b59b11bb` 已再次联网验证：
[运行 38156845945](https://github.com/nirvana9/wx/actions/runs/38156845945)，
artifact 11709095978，SHA-256 `06307bb2e6abb12fc0da83e41b28547762b49eefa33c89975b5c7e875f7347d4`。
摘要和 CMS-GCM 认证通过，独立 Begin/Check 再次得到 185×185 图像和原生状态 0。
这次验证同样没有手机确认、账号鉴权或消息操作。

消息业务体的下一段实现见 [消息编解码进展](native-message-progress.md)。
正式鉴权的请求核心和密钥恢复已增加独立 Go 实现及完整原生函数合成向量，见 [鉴权进展](native-auth-progress.md)；完整登录请求和会话建立尚未接通。
