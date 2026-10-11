00000000077fce90: 55                           push     rbp
00000000077fce91: 4157                         push     r15
00000000077fce93: 4156                         push     r14
00000000077fce95: 4155                         push     r13
00000000077fce97: 4154                         push     r12
00000000077fce99: 53                           push     rbx
00000000077fce9a: 4883ec38                     sub      rsp, 0x38
00000000077fce9e: 4d89c5                       mov      r13, r8
00000000077fcea1: 4989ce                       mov      r14, rcx
00000000077fcea4: 4989d7                       mov      r15, rdx
00000000077fcea7: 4889f5                       mov      rbp, rsi
00000000077fceaa: 4889fb                       mov      rbx, rdi
00000000077fcead: 48b8aaaaaaaaaaaaaaaa         movabs   rax, 0xaaaaaaaaaaaaaaaa
00000000077fceb7: 4889442430                   mov      qword ptr [rsp + 0x30], rax
00000000077fcebc: 0f28057d4255f9               movaps   xmm0, xmmword ptr [rip - 0x6aabd83]
00000000077fcec3: 0f290424                     movaps   xmmword ptr [rsp], xmm0
00000000077fcec7: 48c7442410fb020000           mov      qword ptr [rsp + 0x10], 0x2fb
00000000077fced0: bf28000000                   mov      edi, 0x28
00000000077fced5: e8c60ee702                   call     0xa66dda0
00000000077fceda: 4889442428                   mov      qword ptr [rsp + 0x28], rax
00000000077fcedf: 48c744241829000000           mov      qword ptr [rsp + 0x18], 0x29
00000000077fcee8: 48c744242021000000           mov      qword ptr [rsp + 0x20], 0x21
00000000077fcef1: 0f1005899c5df9               movups   xmm0, xmmword ptr [rip - 0x6a26377]
00000000077fcef8: 0f114010                     movups   xmmword ptr [rax + 0x10], xmm0
00000000077fcefc: 0f10056e9c5df9               movups   xmm0, xmmword ptr [rip - 0x6a26392]
00000000077fcf03: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077fcf06: 66c740206800                 mov      word ptr [rax + 0x20], 0x68
00000000077fcf0c: c644243001                   mov      byte ptr [rsp + 0x30], 1
00000000077fcf11: 410fb64608                   movzx    eax, byte ptr [r14 + 8]
00000000077fcf16: a801                         test     al, 1
00000000077fcf18: 740b                         je       0x77fcf25
00000000077fcf1a: 498b4610                     mov      rax, qword ptr [r14 + 0x10]
00000000077fcf1e: 4885c0                       test     rax, rax
00000000077fcf21: 7509                         jne      0x77fcf2c
00000000077fcf23: eb15                         jmp      0x77fcf3a
00000000077fcf25: d1e8                         shr      eax, 1
00000000077fcf27: 4885c0                       test     rax, rax
00000000077fcf2a: 740e                         je       0x77fcf3a
00000000077fcf2c: 488d7c2418                   lea      rdi, [rsp + 0x18]
00000000077fcf31: 498d7608                     lea      rsi, [r14 + 8]
00000000077fcf35: e8760ed1fc                   call     0x450ddb0
00000000077fcf3a: bff0000000                   mov      edi, 0xf0
00000000077fcf3f: e85c0ee702                   call     0xa66dda0
00000000077fcf44: 4989c4                       mov      r12, rax
00000000077fcf47: 4889e6                       mov      rsi, rsp
00000000077fcf4a: 4889c7                       mov      rdi, rax
00000000077fcf4d: e89e010000                   call     0x77fd0f0
00000000077fcf52: 498b0424                     mov      rax, qword ptr [r12]
00000000077fcf56: 4c89e7                       mov      rdi, r12
00000000077fcf59: ff5020                       call     qword ptr [rax + 0x20]
00000000077fcf5c: 4889c7                       mov      rdi, rax
00000000077fcf5f: 4889ee                       mov      rsi, rbp
00000000077fcf62: e829294e00                   call     0x7cdf890
00000000077fcf67: 498d6c2450                   lea      rbp, [r12 + 0x50]
00000000077fcf6c: 498b7c2470                   mov      rdi, qword ptr [r12 + 0x70]
00000000077fcf71: 49c744247000000000           mov      qword ptr [r12 + 0x70], 0
00000000077fcf7a: 4839ef                       cmp      rdi, rbp
00000000077fcf7d: 740d                         je       0x77fcf8c
00000000077fcf7f: 4885ff                       test     rdi, rdi
00000000077fcf82: 7412                         je       0x77fcf96
00000000077fcf84: 488b07                       mov      rax, qword ptr [rdi]
00000000077fcf87: ff5028                       call     qword ptr [rax + 0x28]
00000000077fcf8a: eb0a                         jmp      0x77fcf96
00000000077fcf8c: 488b4500                     mov      rax, qword ptr [rbp]
00000000077fcf90: 4889ef                       mov      rdi, rbp
00000000077fcf93: ff5020                       call     qword ptr [rax + 0x20]
00000000077fcf96: 498d442470                   lea      rax, [r12 + 0x70]
00000000077fcf9b: 498b4d20                     mov      rcx, qword ptr [r13 + 0x20]
00000000077fcf9f: 4885c9                       test     rcx, rcx
00000000077fcfa2: 740f                         je       0x77fcfb3
00000000077fcfa4: 4c39e9                       cmp      rcx, r13
00000000077fcfa7: 7413                         je       0x77fcfbc
00000000077fcfa9: 4983c520                     add      r13, 0x20
00000000077fcfad: 488908                       mov      qword ptr [rax], rcx
00000000077fcfb0: 4c89e8                       mov      rax, r13
00000000077fcfb3: 48c70000000000               mov      qword ptr [rax], 0
00000000077fcfba: eb10                         jmp      0x77fcfcc
00000000077fcfbc: 488928                       mov      qword ptr [rax], rbp
00000000077fcfbf: 498b4500                     mov      rax, qword ptr [r13]
00000000077fcfc3: 4c89ef                       mov      rdi, r13
00000000077fcfc6: 4889ee                       mov      rsi, rbp
00000000077fcfc9: ff5018                       call     qword ptr [rax + 0x18]
00000000077fcfcc: 498d7c2438                   lea      rdi, [r12 + 0x38]
00000000077fcfd1: 4c89fe                       mov      rsi, r15
00000000077fcfd4: e8d70dd1fc                   call     0x450ddb0
00000000077fcfd9: 410fb64620                   movzx    eax, byte ptr [r14 + 0x20]
00000000077fcfde: 4188842480000000             mov      byte ptr [r12 + 0x80], al
00000000077fcfe6: 418b4624                     mov      eax, dword ptr [r14 + 0x24]
00000000077fcfea: 4189842484000000             mov      dword ptr [r12 + 0x84], eax
00000000077fcff2: 488b03                       mov      rax, qword ptr [rbx]
00000000077fcff5: 4889df                       mov      rdi, rbx
00000000077fcff8: 4c89e6                       mov      rsi, r12
00000000077fcffb: ff5028                       call     qword ptr [rax + 0x28]
00000000077fcffe: e8ad69bfff                   call     0x73f39b0
00000000077fd003: 4c89e6                       mov      rsi, r12
00000000077fd006: 4883c618                     add      rsi, 0x18
00000000077fd00a: 4889c7                       mov      rdi, rax
00000000077fd00d: e87e6bbfff                   call     0x73f3b90
00000000077fd012: 418b5c2408                   mov      ebx, dword ptr [r12 + 8]
00000000077fd017: f644241801                   test     byte ptr [rsp + 0x18], 1
00000000077fd01c: 740a                         je       0x77fd028
00000000077fd01e: 488b7c2428                   mov      rdi, qword ptr [rsp + 0x28]
00000000077fd023: e818d1d0fc                   call     0x450a140
00000000077fd028: 89d8                         mov      eax, ebx
00000000077fd02a: 4883c438                     add      rsp, 0x38
00000000077fd02e: 5b                           pop      rbx
00000000077fd02f: 415c                         pop      r12
00000000077fd031: 415d                         pop      r13
00000000077fd033: 415e                         pop      r14
00000000077fd035: 415f                         pop      r15
00000000077fd037: 5d                           pop      rbp
00000000077fd038: c3                           ret
00000000077fd039: 4889c7                       mov      rdi, rax
00000000077fd03c: e8fff5cefc                   call     0x44ec640
00000000077fd041: eb0f                         jmp      0x77fd052
00000000077fd043: 4889c3                       mov      rbx, rax
00000000077fd046: 4c89e7                       mov      rdi, r12
00000000077fd049: e8f2d0d0fc                   call     0x450a140
00000000077fd04e: eb05                         jmp      0x77fd055
00000000077fd050: eb00                         jmp      0x77fd052
00000000077fd052: 4889c3                       mov      rbx, rax
00000000077fd055: f644241801                   test     byte ptr [rsp + 0x18], 1
00000000077fd05a: 740a                         je       0x77fd066
00000000077fd05c: 488b7c2428                   mov      rdi, qword ptr [rsp + 0x28]
00000000077fd061: e8dad0d0fc                   call     0x450a140
00000000077fd066: 4889df                       mov      rdi, rbx
00000000077fd069: e8b2fdcefc                   call     0x44ece20
