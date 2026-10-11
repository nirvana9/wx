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
匿名 Check 的真实服务端返回正在由加密 CI 证据核对，不能将本地服务通过算作真实登录。
当前没有扫码确认、secmanualauth 会话建立，也没有可用的消息发送/接收命令。
