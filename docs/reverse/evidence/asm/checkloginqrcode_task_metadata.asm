00000000077f0920: 55                           push     rbp
00000000077f0921: 4157                         push     r15
00000000077f0923: 4156                         push     r14
00000000077f0925: 4155                         push     r13
00000000077f0927: 4154                         push     r12
00000000077f0929: 53                           push     rbx
00000000077f092a: 4883ec38                     sub      rsp, 0x38
00000000077f092e: 4d89c5                       mov      r13, r8
00000000077f0931: 4989ce                       mov      r14, rcx
00000000077f0934: 4989d7                       mov      r15, rdx
00000000077f0937: 4889f5                       mov      rbp, rsi
00000000077f093a: 4889fb                       mov      rbx, rdi
00000000077f093d: 48b8aaaaaaaaaaaaaaaa         movabs   rax, 0xaaaaaaaaaaaaaaaa
00000000077f0947: 4889442430                   mov      qword ptr [rsp + 0x30], rax
00000000077f094c: 0f28056d2356f9               movaps   xmm0, xmmword ptr [rip - 0x6a9dc93]
00000000077f0953: 0f290424                     movaps   xmmword ptr [rsp], xmm0
00000000077f0957: 48c7442410f7010000           mov      qword ptr [rsp + 0x10], 0x1f7
00000000077f0960: bf28000000                   mov      edi, 0x28
00000000077f0965: e836d4e702                   call     0xa66dda0
00000000077f096a: 4889442428                   mov      qword ptr [rsp + 0x28], rax
00000000077f096f: 48c744241829000000           mov      qword ptr [rsp + 0x18], 0x29
00000000077f0978: 48c744242026000000           mov      qword ptr [rsp + 0x20], 0x26
00000000077f0981: 48b9696e7172636f6465         movabs   rcx, 0x65646f6372716e69
00000000077f098b: 4889481e                     mov      qword ptr [rax + 0x1e], rcx
00000000077f098f: 0f1005af4879f9               movups   xmm0, xmmword ptr [rip - 0x686b751]
00000000077f0996: 0f114010                     movups   xmmword ptr [rax + 0x10], xmm0
00000000077f099a: 0f1005944879f9               movups   xmm0, xmmword ptr [rip - 0x686b76c]
00000000077f09a1: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077f09a4: c6402600                     mov      byte ptr [rax + 0x26], 0
00000000077f09a8: c644243001                   mov      byte ptr [rsp + 0x30], 1
00000000077f09ad: 410fb64608                   movzx    eax, byte ptr [r14 + 8]
00000000077f09b2: a801                         test     al, 1
00000000077f09b4: 740b                         je       0x77f09c1
00000000077f09b6: 498b4610                     mov      rax, qword ptr [r14 + 0x10]
00000000077f09ba: 4885c0                       test     rax, rax
00000000077f09bd: 7509                         jne      0x77f09c8
00000000077f09bf: eb15                         jmp      0x77f09d6
00000000077f09c1: d1e8                         shr      eax, 1
00000000077f09c3: 4885c0                       test     rax, rax
00000000077f09c6: 740e                         je       0x77f09d6
00000000077f09c8: 488d7c2418                   lea      rdi, [rsp + 0x18]
00000000077f09cd: 498d7608                     lea      rsi, [r14 + 8]
00000000077f09d1: e8dad3d1fc                   call     0x450ddb0
00000000077f09d6: bfe0000000                   mov      edi, 0xe0
00000000077f09db: e8c0d3e702                   call     0xa66dda0
00000000077f09e0: 4989c4                       mov      r12, rax
00000000077f09e3: 4889e6                       mov      rsi, rsp
00000000077f09e6: 4889c7                       mov      rdi, rax
00000000077f09e9: e8a2010000                   call     0x77f0b90
00000000077f09ee: 498b0424                     mov      rax, qword ptr [r12]
00000000077f09f2: 4c89e7                       mov      rdi, r12
00000000077f09f5: ff5020                       call     qword ptr [rax + 0x20]
00000000077f09f8: 4889c7                       mov      rdi, rax
00000000077f09fb: 4889ee                       mov      rsi, rbp
00000000077f09fe: e8bd784d00                   call     0x7cc82c0
00000000077f0a03: 498d6c2450                   lea      rbp, [r12 + 0x50]
00000000077f0a08: 498b7c2470                   mov      rdi, qword ptr [r12 + 0x70]
00000000077f0a0d: 49c744247000000000           mov      qword ptr [r12 + 0x70], 0
00000000077f0a16: 4839ef                       cmp      rdi, rbp
00000000077f0a19: 740d                         je       0x77f0a28
00000000077f0a1b: 4885ff                       test     rdi, rdi
00000000077f0a1e: 7412                         je       0x77f0a32
00000000077f0a20: 488b07                       mov      rax, qword ptr [rdi]
00000000077f0a23: ff5028                       call     qword ptr [rax + 0x28]
00000000077f0a26: eb0a                         jmp      0x77f0a32
00000000077f0a28: 488b4500                     mov      rax, qword ptr [rbp]
00000000077f0a2c: 4889ef                       mov      rdi, rbp
00000000077f0a2f: ff5020                       call     qword ptr [rax + 0x20]
00000000077f0a32: 498d442470                   lea      rax, [r12 + 0x70]
00000000077f0a37: 498b4d20                     mov      rcx, qword ptr [r13 + 0x20]
00000000077f0a3b: 4885c9                       test     rcx, rcx
00000000077f0a3e: 740f                         je       0x77f0a4f
00000000077f0a40: 4c39e9                       cmp      rcx, r13
00000000077f0a43: 7413                         je       0x77f0a58
00000000077f0a45: 4983c520                     add      r13, 0x20
00000000077f0a49: 488908                       mov      qword ptr [rax], rcx
00000000077f0a4c: 4c89e8                       mov      rax, r13
00000000077f0a4f: 48c70000000000               mov      qword ptr [rax], 0
00000000077f0a56: eb10                         jmp      0x77f0a68
00000000077f0a58: 488928                       mov      qword ptr [rax], rbp
00000000077f0a5b: 498b4500                     mov      rax, qword ptr [r13]
00000000077f0a5f: 4c89ef                       mov      rdi, r13
00000000077f0a62: 4889ee                       mov      rsi, rbp
00000000077f0a65: ff5018                       call     qword ptr [rax + 0x18]
00000000077f0a68: 498d7c2438                   lea      rdi, [r12 + 0x38]
00000000077f0a6d: 4c89fe                       mov      rsi, r15
00000000077f0a70: e83bd3d1fc                   call     0x450ddb0
00000000077f0a75: 410fb64620                   movzx    eax, byte ptr [r14 + 0x20]
00000000077f0a7a: 4188842480000000             mov      byte ptr [r12 + 0x80], al
00000000077f0a82: 418b4624                     mov      eax, dword ptr [r14 + 0x24]
00000000077f0a86: 4189842484000000             mov      dword ptr [r12 + 0x84], eax
00000000077f0a8e: 488b03                       mov      rax, qword ptr [rbx]
00000000077f0a91: 4889df                       mov      rdi, rbx
00000000077f0a94: 4c89e6                       mov      rsi, r12
00000000077f0a97: ff5028                       call     qword ptr [rax + 0x28]
00000000077f0a9a: e8112fc0ff                   call     0x73f39b0
00000000077f0a9f: 4c89e6                       mov      rsi, r12
00000000077f0aa2: 4883c618                     add      rsi, 0x18
00000000077f0aa6: 4889c7                       mov      rdi, rax
00000000077f0aa9: e8e230c0ff                   call     0x73f3b90
00000000077f0aae: 418b5c2408                   mov      ebx, dword ptr [r12 + 8]
00000000077f0ab3: f644241801                   test     byte ptr [rsp + 0x18], 1
00000000077f0ab8: 740a                         je       0x77f0ac4
00000000077f0aba: 488b7c2428                   mov      rdi, qword ptr [rsp + 0x28]
00000000077f0abf: e87c96d1fc                   call     0x450a140
00000000077f0ac4: 89d8                         mov      eax, ebx
00000000077f0ac6: 4883c438                     add      rsp, 0x38
00000000077f0aca: 5b                           pop      rbx
00000000077f0acb: 415c                         pop      r12
00000000077f0acd: 415d                         pop      r13
00000000077f0acf: 415e                         pop      r14
00000000077f0ad1: 415f                         pop      r15
00000000077f0ad3: 5d                           pop      rbp
00000000077f0ad4: c3                           ret
00000000077f0ad5: 4889c7                       mov      rdi, rax
00000000077f0ad8: e863bbcffc                   call     0x44ec640
00000000077f0add: eb0f                         jmp      0x77f0aee
00000000077f0adf: 4889c3                       mov      rbx, rax
00000000077f0ae2: 4c89e7                       mov      rdi, r12
00000000077f0ae5: e85696d1fc                   call     0x450a140
00000000077f0aea: eb05                         jmp      0x77f0af1
00000000077f0aec: eb00                         jmp      0x77f0aee
00000000077f0aee: 4889c3                       mov      rbx, rax
00000000077f0af1: f644241801                   test     byte ptr [rsp + 0x18], 1
00000000077f0af6: 740a                         je       0x77f0b02
00000000077f0af8: 488b7c2428                   mov      rdi, qword ptr [rsp + 0x28]
00000000077f0afd: e83e96d1fc                   call     0x450a140
00000000077f0b02: 4889df                       mov      rdi, rbx
00000000077f0b05: e816c3cffc                   call     0x44ece20
