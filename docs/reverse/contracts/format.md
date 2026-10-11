# 原生协议契约

契约记录固定样本中的字段、角色、参数和指令依据，不是可直接联网的 `.proto`。
键名与 `internal/protocol/contract.go` 一致。fields 中的 message+number 唯一；
roles 的键为完整消息名加角色名，值绑定该消息的字段编号。

Representation 空字符串表示声明未恢复；已恢复项只允许
uint32/int32/uint64/string/bytes/message，必须与 wire type 一致。
Presence 为 set/conditional/omitted/unknown，表示已核对的赋值/省略策略；
只找到 presence bit 不等于证明服务端必填性。
Meaning 可以描述已证明的局部赋值，不能把候选用途写成已确认业务名。

每条 Evidence 指定 ELF 哈希、未重定位的函数/指令地址、机器码和解释。
机器码验证器通过 PT_LOAD 换算文件偏移；不验证指令边界、控制流或业务语义，
这些仍需结合反汇编人工核对。CLI 额外校验固定 deb/ELF 哈希。

```sh
.venv/bin/python tools/check_protocol_contracts.py \
  --deb WeChatLinux_x86_64.deb --contract docs/reverse/contracts/qr.json
python3 -m unittest discover -s tools/tests -v
go test ./internal/protocol -v
```

通过验证器只表示形状与引用字节匹配。semantic/packet/live 是累计的人工核验记录；
不能由脚本从字段编号自动升级。存在未确认字段或 blocked_reasons 时操作不得启用。
Go Require 检查完整性和记录，使用前还必须运行样本字节验证器。

当前 qr.json 仍 blocked；未提供 BuildGetQRCode/ParseGetQRCode 实现或伪成功夹具。
合成 ELF 仅测试验证器的地址映射、坏字节与错误处理，不能证明微信协议。
