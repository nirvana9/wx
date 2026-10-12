0000000008df6a58: 4c8dbc24d0050000             lea      r15, [rsp + 0x5d0]
0000000008df7d9b: 8b8424c8050000               mov      eax, dword ptr [rsp + 0x5c8]
0000000008df7da2: 89442428                     mov      dword ptr [rsp + 0x28], eax
0000000008df7da6: 488d9c24b00c0000             lea      rbx, [rsp + 0xcb0]
0000000008df7dae: 4889df                       mov      rdi, rbx
0000000008df7db1: 4c89e6                       mov      rsi, r12
0000000008df7db4: 4489f2                       mov      edx, r14d
0000000008df7db7: 488b8c2400110000             mov      rcx, qword ptr [rsp + 0x1100]
0000000008df7dbf: e85cd1ffff                   call     0x8df4f20
0000000008df7dc4: 488dbc24b0050000             lea      rdi, [rsp + 0x5b0]
0000000008df7dcc: 4889de                       mov      rsi, rbx
0000000008df7dcf: e8ac1d0000                   call     0x8df9b80
0000000008df7dd4: 4889df                       mov      rdi, rbx
0000000008df7dd7: e8b4b7ffff                   call     0x8df3590
0000000008df7ddc: 0fb68424d0050000             movzx    eax, byte ptr [rsp + 0x5d0]
0000000008df835a: d1e8                         shr      eax, 1
0000000008df835c: 4885c0                       test     rax, rax
0000000008df835f: 0f847e150000                 je       0x8df98e3
0000000008df8365: 83bc24c80500000d             cmp      dword ptr [rsp + 0x5c8], 0xd
0000000008df836d: 750a                         jne      0x8df8379
0000000008df836f: 66c78424400300000200         mov      word ptr [rsp + 0x340], 2
0000000008df8379: 488db42400060000             lea      rsi, [rsp + 0x600]
0000000008df8381: 488dbc2460020000             lea      rdi, [rsp + 0x260]
0000000008df8389: e8225a71fb                   call     0x450ddb0
0000000008df838e: 488dbc24c8030000             lea      rdi, [rsp + 0x3c8]
0000000008df8396: 4c89fe                       mov      rsi, r15
0000000008df8399: e8125a71fb                   call     0x450ddb0
0000000008df839e: 0fb78424c8050000             movzx    eax, word ptr [rsp + 0x5c8]
0000000008df83a6: 6689842448030000             mov      word ptr [rsp + 0x348], ax
0000000008df83ae: c684249803000001             mov      byte ptr [rsp + 0x398], 1
0000000008df8cf3: 4883ec08                     sub      rsp, 8
0000000008df8cf7: 4c8d8c2448030000             lea      r9, [rsp + 0x348]
0000000008df8cff: 4489f6                       mov      esi, r14d
0000000008df8d02: 488b942480020000             mov      rdx, qword ptr [rsp + 0x280]
0000000008df8d0a: 4889d9                       mov      rcx, rbx
0000000008df8d0d: 4d89f8                       mov      r8, r15
0000000008df8d10: 50                           push     rax
0000000008df8d11: e82a3b0000                   call     0x8dfc840
0000000008df8d16: 4883c410                     add      rsp, 0x10
0000000008df8d1a: 84c0                         test     al, al
0000000008df8d1c: 0f8587feffff                 jne      0x8df8ba9
0000000008df8d22: bf04000000                   mov      edi, 4
