00000000077ecbd0: 55                           push     rbp
00000000077ecbd1: 4157                         push     r15
00000000077ecbd3: 4156                         push     r14
00000000077ecbd5: 4155                         push     r13
00000000077ecbd7: 4154                         push     r12
00000000077ecbd9: 53                           push     rbx
00000000077ecbda: 4883ec38                     sub      rsp, 0x38
00000000077ecbde: 4d89c5                       mov      r13, r8
00000000077ecbe1: 4989ce                       mov      r14, rcx
00000000077ecbe4: 4989d7                       mov      r15, rdx
00000000077ecbe7: 4889f5                       mov      rbp, rsi
00000000077ecbea: 4889fb                       mov      rbx, rdi
00000000077ecbed: 48b8aaaaaaaaaaaaaaaa         movabs   rax, 0xaaaaaaaaaaaaaaaa
00000000077ecbf7: 4889442430                   mov      qword ptr [rsp + 0x30], rax
00000000077ecbfc: 0f2805fd5256f9               movaps   xmm0, xmmword ptr [rip - 0x6a9ad03]
00000000077ecc03: 0f290424                     movaps   xmmword ptr [rsp], xmm0
00000000077ecc07: 48c7442410f6010000           mov      qword ptr [rsp + 0x10], 0x1f6
00000000077ecc10: bf28000000                   mov      edi, 0x28
00000000077ecc15: e88611e802                   call     0xa66dda0
00000000077ecc1a: 4889442428                   mov      qword ptr [rsp + 0x28], rax
00000000077ecc1f: 48c744241829000000           mov      qword ptr [rsp + 0x18], 0x29
00000000077ecc28: 48c744242024000000           mov      qword ptr [rsp + 0x20], 0x24
00000000077ecc31: 0f100511c664f9               movups   xmm0, xmmword ptr [rip - 0x69b39ef]
00000000077ecc38: 0f114010                     movups   xmmword ptr [rax + 0x10], xmm0
00000000077ecc3c: 0f1005f6c564f9               movups   xmm0, xmmword ptr [rip - 0x69b3a0a]
00000000077ecc43: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077ecc46: c74020636f6465               mov      dword ptr [rax + 0x20], 0x65646f63
00000000077ecc4d: c6402400                     mov      byte ptr [rax + 0x24], 0
00000000077ecc51: c644243001                   mov      byte ptr [rsp + 0x30], 1
00000000077ecc56: 410fb64608                   movzx    eax, byte ptr [r14 + 8]
00000000077ecc5b: a801                         test     al, 1
00000000077ecc5d: 740b                         je       0x77ecc6a
00000000077ecc5f: 498b4610                     mov      rax, qword ptr [r14 + 0x10]
00000000077ecc63: 4885c0                       test     rax, rax
00000000077ecc66: 7509                         jne      0x77ecc71
00000000077ecc68: eb15                         jmp      0x77ecc7f
00000000077ecc6a: d1e8                         shr      eax, 1
00000000077ecc6c: 4885c0                       test     rax, rax
00000000077ecc6f: 740e                         je       0x77ecc7f
00000000077ecc71: 488d7c2418                   lea      rdi, [rsp + 0x18]
00000000077ecc76: 498d7608                     lea      rsi, [r14 + 8]
00000000077ecc7a: e83111d2fc                   call     0x450ddb0
00000000077ecc7f: bf40010000                   mov      edi, 0x140
00000000077ecc84: e81711e802                   call     0xa66dda0
00000000077ecc89: 4989c4                       mov      r12, rax
00000000077ecc8c: 4889e6                       mov      rsi, rsp
00000000077ecc8f: 4889c7                       mov      rdi, rax
00000000077ecc92: e8a9010000                   call     0x77ece40
00000000077ecc97: 498b0424                     mov      rax, qword ptr [r12]
00000000077ecc9b: 4c89e7                       mov      rdi, r12
00000000077ecc9e: ff5020                       call     qword ptr [rax + 0x20]
00000000077ecca1: 4889c7                       mov      rdi, rax
00000000077ecca4: 4889ee                       mov      rsi, rbp
00000000077ecca7: e884984d00                   call     0x7cc6530
00000000077eccac: 498d6c2450                   lea      rbp, [r12 + 0x50]
00000000077eccb1: 498b7c2470                   mov      rdi, qword ptr [r12 + 0x70]
00000000077eccb6: 49c744247000000000           mov      qword ptr [r12 + 0x70], 0
00000000077eccbf: 4839ef                       cmp      rdi, rbp
00000000077eccc2: 740d                         je       0x77eccd1
00000000077eccc4: 4885ff                       test     rdi, rdi
00000000077eccc7: 7412                         je       0x77eccdb
00000000077eccc9: 488b07                       mov      rax, qword ptr [rdi]
00000000077ecccc: ff5028                       call     qword ptr [rax + 0x28]
00000000077ecccf: eb0a                         jmp      0x77eccdb
00000000077eccd1: 488b4500                     mov      rax, qword ptr [rbp]
00000000077eccd5: 4889ef                       mov      rdi, rbp
00000000077eccd8: ff5020                       call     qword ptr [rax + 0x20]
00000000077eccdb: 498d442470                   lea      rax, [r12 + 0x70]
00000000077ecce0: 498b4d20                     mov      rcx, qword ptr [r13 + 0x20]
00000000077ecce4: 4885c9                       test     rcx, rcx
00000000077ecce7: 740f                         je       0x77eccf8
00000000077ecce9: 4c39e9                       cmp      rcx, r13
00000000077eccec: 7413                         je       0x77ecd01
00000000077eccee: 4983c520                     add      r13, 0x20
00000000077eccf2: 488908                       mov      qword ptr [rax], rcx
00000000077eccf5: 4c89e8                       mov      rax, r13
00000000077eccf8: 48c70000000000               mov      qword ptr [rax], 0
00000000077eccff: eb10                         jmp      0x77ecd11
00000000077ecd01: 488928                       mov      qword ptr [rax], rbp
00000000077ecd04: 498b4500                     mov      rax, qword ptr [r13]
00000000077ecd08: 4c89ef                       mov      rdi, r13
00000000077ecd0b: 4889ee                       mov      rsi, rbp
00000000077ecd0e: ff5018                       call     qword ptr [rax + 0x18]
00000000077ecd11: 498d7c2438                   lea      rdi, [r12 + 0x38]
00000000077ecd16: 4c89fe                       mov      rsi, r15
00000000077ecd19: e89210d2fc                   call     0x450ddb0
00000000077ecd1e: 410fb64620                   movzx    eax, byte ptr [r14 + 0x20]
00000000077ecd23: 4188842480000000             mov      byte ptr [r12 + 0x80], al
00000000077ecd2b: 418b4624                     mov      eax, dword ptr [r14 + 0x24]
00000000077ecd2f: 4189842484000000             mov      dword ptr [r12 + 0x84], eax
00000000077ecd37: 488b03                       mov      rax, qword ptr [rbx]
00000000077ecd3a: 4889df                       mov      rdi, rbx
00000000077ecd3d: 4c89e6                       mov      rsi, r12
00000000077ecd40: ff5028                       call     qword ptr [rax + 0x28]
00000000077ecd43: e8686cc0ff                   call     0x73f39b0
00000000077ecd48: 4c89e6                       mov      rsi, r12
00000000077ecd4b: 4883c618                     add      rsi, 0x18
00000000077ecd4f: 4889c7                       mov      rdi, rax
00000000077ecd52: e8396ec0ff                   call     0x73f3b90
00000000077ecd57: 418b5c2408                   mov      ebx, dword ptr [r12 + 8]
00000000077ecd5c: f644241801                   test     byte ptr [rsp + 0x18], 1
00000000077ecd61: 740a                         je       0x77ecd6d
00000000077ecd63: 488b7c2428                   mov      rdi, qword ptr [rsp + 0x28]
00000000077ecd68: e8d3d3d1fc                   call     0x450a140
00000000077ecd6d: 89d8                         mov      eax, ebx
00000000077ecd6f: 4883c438                     add      rsp, 0x38
00000000077ecd73: 5b                           pop      rbx
00000000077ecd74: 415c                         pop      r12
00000000077ecd76: 415d                         pop      r13
00000000077ecd78: 415e                         pop      r14
00000000077ecd7a: 415f                         pop      r15
00000000077ecd7c: 5d                           pop      rbp
00000000077ecd7d: c3                           ret
00000000077ecd7e: 4889c7                       mov      rdi, rax
00000000077ecd81: e8baf8cffc                   call     0x44ec640
00000000077ecd86: eb0f                         jmp      0x77ecd97
00000000077ecd88: 4889c3                       mov      rbx, rax
00000000077ecd8b: 4c89e7                       mov      rdi, r12
00000000077ecd8e: e8add3d1fc                   call     0x450a140
00000000077ecd93: eb05                         jmp      0x77ecd9a
00000000077ecd95: eb00                         jmp      0x77ecd97
00000000077ecd97: 4889c3                       mov      rbx, rax
00000000077ecd9a: f644241801                   test     byte ptr [rsp + 0x18], 1
00000000077ecd9f: 740a                         je       0x77ecdab
00000000077ecda1: 488b7c2428                   mov      rdi, qword ptr [rsp + 0x28]
00000000077ecda6: e895d3d1fc                   call     0x450a140
00000000077ecdab: 4889df                       mov      rdi, rbx
00000000077ecdae: e86d00d0fc                   call     0x44ece20
