# MMReq2Buf 0x8df5900: parameter +8 initial value from entry object +0x34.
0000000008df5b65: 488b8424f0000000             mov      rax, qword ptr [rsp + 0xf0]
0000000008df5b6d: 4889842458030000             mov      qword ptr [rsp + 0x358], rax
0000000008df5b75: 4889842460030000             mov      qword ptr [rsp + 0x360], rax
0000000008df5b7d: 498b7f60                     mov      rdi, qword ptr [r15 + 0x60]
0000000008df5b81: 6689bc2478030000             mov      word ptr [rsp + 0x378], di
0000000008df5b89: 4c8b2424                     mov      r12, qword ptr [rsp]
0000000008df5b8d: 418b442434                   mov      eax, dword ptr [r12 + 0x34]
0000000008df5b92: 89842450030000               mov      dword ptr [rsp + 0x350], eax
0000000008df5b99: 410fb7442430                 movzx    eax, word ptr [r12 + 0x30]
# __EncodePackBuffer 0x8dfe2c0: selector table and three reviewed calls.
0000000008dfe2d1: 410fb74008                   movzx    eax, word ptr [r8 + 8]
0000000008dfe2d6: 4883f80e                     cmp      rax, 0xe
0000000008dfe2da: 0f87fa170000                 ja       0x8dffada
0000000008dfe2e0: 4d89cf                       mov      r15, r9
0000000008dfe2e3: 4989ce                       mov      r14, rcx
0000000008dfe2e6: 89f3                         mov      ebx, esi
0000000008dfe2e8: 4c8bac24d0030000             mov      r13, qword ptr [rsp + 0x3d0]
0000000008dfe2f0: 488d0d999724f9               lea      rcx, [rip - 0x6db6867]
0000000008dfe2f7: 48630481                     movsxd   rax, dword ptr [rcx + rax*4]
0000000008dfe2fb: 4801c8                       add      rax, rcx
0000000008dfe2fe: ffe0                         jmp      rax
0000000008dfe45b: 498bb8b0000000               mov      rdi, qword ptr [r8 + 0xb0]
0000000008dfe462: 4885ff                       test     rdi, rdi
0000000008dfe465: 0f84da090000                 je       0x8dfee45
0000000008dfe46b: 0f57c0                       xorps    xmm0, xmm0
0000000008dfe46e: 0f29842440010000             movaps   xmmword ptr [rsp + 0x140], xmm0
0000000008dfe476: 48c784245001000000000000     mov      qword ptr [rsp + 0x150], 0
0000000008dfe482: 488d8c2440010000             lea      rcx, [rsp + 0x140]
0000000008dfe48a: 4889d6                       mov      rsi, rdx
0000000008dfe48d: 4c89f2                       mov      rdx, r14
0000000008dfe490: e89bf2d1ff                   call     0x8b1d730
0000000008dfe495: 85c0                         test     eax, eax
0000000008dfe694: 410fb68088000000             movzx    eax, byte ptr [r8 + 0x88]
0000000008dfe69c: 4c89ed                       mov      rbp, r13
0000000008dfe69f: a801                         test     al, 1
0000000008dfe6a1: 0f8491030000                 je       0x8dfea38
0000000008dfe6a7: 498b8090000000               mov      rax, qword ptr [r8 + 0x90]
0000000008dfe6ae: 4885c0                       test     rax, rax
0000000008dfe6b1: 0f848c030000                 je       0x8dfea43
0000000008dfe6b7: 4981c088000000               add      r8, 0x88
0000000008dfe6be: 0f57c0                       xorps    xmm0, xmm0
0000000008dfe6c1: 0f298424f0000000             movaps   xmmword ptr [rsp + 0xf0], xmm0
0000000008dfe6c9: 48c784240001000000000000     mov      qword ptr [rsp + 0x100], 0
0000000008dfe6d5: 488b3f                       mov      rdi, qword ptr [rdi]
0000000008dfe6d8: 4d89c4                       mov      r12, r8
0000000008dfe6db: 4989d5                       mov      r13, rdx
0000000008dfe6de: e8cdb3ffff                   call     0x8df9ab0
0000000008dfe6e3: 4c8d8424f0000000             lea      r8, [rsp + 0xf0]
0000000008dfe6eb: 4889c7                       mov      rdi, rax
0000000008dfe6ee: 4c89ee                       mov      rsi, r13
0000000008dfe6f1: 4c89f2                       mov      rdx, r14
0000000008dfe6f4: 4c89e1                       mov      rcx, r12
0000000008dfe6f7: e88447ffff                   call     0x8df2e80
0000000008dfe6fc: 84c0                         test     al, al
0000000008dfe76f: 498bb8a8000000               mov      rdi, qword ptr [r8 + 0xa8]
0000000008dfe776: 4885ff                       test     rdi, rdi
0000000008dfe779: 0f844a070000                 je       0x8dfeec9
0000000008dfe77f: 0f57c0                       xorps    xmm0, xmm0
0000000008dfe782: 0f29842440010000             movaps   xmmword ptr [rsp + 0x140], xmm0
0000000008dfe78a: 48c784245001000000000000     mov      qword ptr [rsp + 0x150], 0
0000000008dfe796: 488d8c2440010000             lea      rcx, [rsp + 0x140]
0000000008dfe79e: 4889d6                       mov      rsi, rdx
0000000008dfe7a1: 4c89f2                       mov      rdx, r14
0000000008dfe7a4: e80731d2ff                   call     0x8b218b0
0000000008dfe7a9: 85c0                         test     eax, eax
