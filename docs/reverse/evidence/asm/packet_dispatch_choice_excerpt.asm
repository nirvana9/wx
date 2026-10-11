0000000008df8b5b: 4d89e5                       mov      r13, r12
0000000008df8b5e: 4c8b2424                     mov      r12, qword ptr [rsp]
0000000008df8b62: 80bc241401000000             cmp      byte ptr [rsp + 0x114], 0
0000000008df8b6a: 498b7c2408                   mov      rdi, qword ptr [r12 + 8]
0000000008df8b6f: 488d442408                   lea      rax, [rsp + 8]
0000000008df8b74: 0f8479010000                 je       0x8df8cf3
0000000008df8b7a: 4883ec08                     sub      rsp, 8
0000000008df8b7e: 4c8d8c2448030000             lea      r9, [rsp + 0x348]
0000000008df8b86: 4489f6                       mov      esi, r14d
0000000008df8b89: 488b942480020000             mov      rdx, qword ptr [rsp + 0x280]
0000000008df8b91: 4889d9                       mov      rcx, rbx
0000000008df8b94: 4d89f8                       mov      r8, r15
0000000008df8b97: 50                           push     rax
0000000008df8b98: e803aa0000                   call     0x8e035a0
0000000008df8b9d: 4883c410                     add      rsp, 0x10
0000000008df8ba1: 84c0                         test     al, al
0000000008df8ba3: 0f8479010000                 je       0x8df8d22
0000000008df8ba9: bf02000000                   mov      edi, 2
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
