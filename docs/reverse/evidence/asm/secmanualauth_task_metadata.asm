00000000077f6bf0: 55                           push     rbp
00000000077f6bf1: 4157                         push     r15
00000000077f6bf3: 4156                         push     r14
00000000077f6bf5: 4155                         push     r13
00000000077f6bf7: 4154                         push     r12
00000000077f6bf9: 53                           push     rbx
00000000077f6bfa: 4883ec38                     sub      rsp, 0x38
00000000077f6bfe: 4d89c5                       mov      r13, r8
00000000077f6c01: 4989ce                       mov      r14, rcx
00000000077f6c04: 4989d7                       mov      r15, rdx
00000000077f6c07: 4889f5                       mov      rbp, rsi
00000000077f6c0a: 4889fb                       mov      rbx, rdi
00000000077f6c0d: 48b8aaaaaaaaaaaaaaaa         movabs   rax, 0xaaaaaaaaaaaaaaaa
00000000077f6c17: 4889442430                   mov      qword ptr [rsp + 0x30], rax
00000000077f6c1c: 0f28055dba55f9               movaps   xmm0, xmmword ptr [rip - 0x6aa45a3]
00000000077f6c23: 0f290424                     movaps   xmmword ptr [rsp], xmm0
00000000077f6c27: 48c7442410fc000000           mov      qword ptr [rsp + 0x10], 0xfc
00000000077f6c30: bf28000000                   mov      edi, 0x28
00000000077f6c35: e86671e702                   call     0xa66dda0
00000000077f6c3a: 4889442428                   mov      qword ptr [rsp + 0x28], rax
00000000077f6c3f: 48c744241829000000           mov      qword ptr [rsp + 0x18], 0x29
00000000077f6c48: 48c744242023000000           mov      qword ptr [rsp + 0x20], 0x23
00000000077f6c51: 0f1005223a71f9               movups   xmm0, xmmword ptr [rip - 0x68ec5de]
00000000077f6c58: 0f114010                     movups   xmmword ptr [rax + 0x10], xmm0
00000000077f6c5c: 0f1005073a71f9               movups   xmm0, xmmword ptr [rip - 0x68ec5f9]
00000000077f6c63: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077f6c66: c7401f61757468               mov      dword ptr [rax + 0x1f], 0x68747561
00000000077f6c6d: c6402300                     mov      byte ptr [rax + 0x23], 0
00000000077f6c71: c644243001                   mov      byte ptr [rsp + 0x30], 1
00000000077f6c76: 410fb64608                   movzx    eax, byte ptr [r14 + 8]
00000000077f6c7b: a801                         test     al, 1
00000000077f6c7d: 740b                         je       0x77f6c8a
00000000077f6c7f: 498b4610                     mov      rax, qword ptr [r14 + 0x10]
00000000077f6c83: 4885c0                       test     rax, rax
00000000077f6c86: 7509                         jne      0x77f6c91
00000000077f6c88: eb15                         jmp      0x77f6c9f
00000000077f6c8a: d1e8                         shr      eax, 1
00000000077f6c8c: 4885c0                       test     rax, rax
00000000077f6c8f: 740e                         je       0x77f6c9f
00000000077f6c91: 488d7c2418                   lea      rdi, [rsp + 0x18]
00000000077f6c96: 498d7608                     lea      rsi, [r14 + 8]
00000000077f6c9a: e81171d1fc                   call     0x450ddb0
00000000077f6c9f: bff0000000                   mov      edi, 0xf0
00000000077f6ca4: e8f770e702                   call     0xa66dda0
00000000077f6ca9: 4989c4                       mov      r12, rax
00000000077f6cac: 4889e6                       mov      rsi, rsp
00000000077f6caf: 4889c7                       mov      rdi, rax
00000000077f6cb2: e8a9010000                   call     0x77f6e60
00000000077f6cb7: 498b0424                     mov      rax, qword ptr [r12]
00000000077f6cbb: 4c89e7                       mov      rdi, r12
00000000077f6cbe: ff5020                       call     qword ptr [rax + 0x20]
00000000077f6cc1: 4889c7                       mov      rdi, rax
00000000077f6cc4: 4889ee                       mov      rsi, rbp
00000000077f6cc7: e8244f4e00                   call     0x7cdbbf0
00000000077f6ccc: 498d6c2450                   lea      rbp, [r12 + 0x50]
00000000077f6cd1: 498b7c2470                   mov      rdi, qword ptr [r12 + 0x70]
00000000077f6cd6: 49c744247000000000           mov      qword ptr [r12 + 0x70], 0
00000000077f6cdf: 4839ef                       cmp      rdi, rbp
00000000077f6ce2: 740d                         je       0x77f6cf1
00000000077f6ce4: 4885ff                       test     rdi, rdi
00000000077f6ce7: 7412                         je       0x77f6cfb
00000000077f6ce9: 488b07                       mov      rax, qword ptr [rdi]
00000000077f6cec: ff5028                       call     qword ptr [rax + 0x28]
00000000077f6cef: eb0a                         jmp      0x77f6cfb
00000000077f6cf1: 488b4500                     mov      rax, qword ptr [rbp]
00000000077f6cf5: 4889ef                       mov      rdi, rbp
00000000077f6cf8: ff5020                       call     qword ptr [rax + 0x20]
00000000077f6cfb: 498d442470                   lea      rax, [r12 + 0x70]
00000000077f6d00: 498b4d20                     mov      rcx, qword ptr [r13 + 0x20]
00000000077f6d04: 4885c9                       test     rcx, rcx
00000000077f6d07: 740f                         je       0x77f6d18
00000000077f6d09: 4c39e9                       cmp      rcx, r13
00000000077f6d0c: 7413                         je       0x77f6d21
00000000077f6d0e: 4983c520                     add      r13, 0x20
00000000077f6d12: 488908                       mov      qword ptr [rax], rcx
00000000077f6d15: 4c89e8                       mov      rax, r13
00000000077f6d18: 48c70000000000               mov      qword ptr [rax], 0
00000000077f6d1f: eb10                         jmp      0x77f6d31
00000000077f6d21: 488928                       mov      qword ptr [rax], rbp
00000000077f6d24: 498b4500                     mov      rax, qword ptr [r13]
00000000077f6d28: 4c89ef                       mov      rdi, r13
00000000077f6d2b: 4889ee                       mov      rsi, rbp
00000000077f6d2e: ff5018                       call     qword ptr [rax + 0x18]
00000000077f6d31: 498d7c2438                   lea      rdi, [r12 + 0x38]
00000000077f6d36: 4c89fe                       mov      rsi, r15
00000000077f6d39: e87270d1fc                   call     0x450ddb0
00000000077f6d3e: 410fb64620                   movzx    eax, byte ptr [r14 + 0x20]
00000000077f6d43: 4188842480000000             mov      byte ptr [r12 + 0x80], al
00000000077f6d4b: 418b4624                     mov      eax, dword ptr [r14 + 0x24]
00000000077f6d4f: 4189842484000000             mov      dword ptr [r12 + 0x84], eax
00000000077f6d57: 488b03                       mov      rax, qword ptr [rbx]
00000000077f6d5a: 4889df                       mov      rdi, rbx
00000000077f6d5d: 4c89e6                       mov      rsi, r12
00000000077f6d60: ff5028                       call     qword ptr [rax + 0x28]
00000000077f6d63: e848ccbfff                   call     0x73f39b0
00000000077f6d68: 4c89e6                       mov      rsi, r12
00000000077f6d6b: 4883c618                     add      rsi, 0x18
00000000077f6d6f: 4889c7                       mov      rdi, rax
00000000077f6d72: e819cebfff                   call     0x73f3b90
00000000077f6d77: 418b5c2408                   mov      ebx, dword ptr [r12 + 8]
00000000077f6d7c: f644241801                   test     byte ptr [rsp + 0x18], 1
00000000077f6d81: 740a                         je       0x77f6d8d
00000000077f6d83: 488b7c2428                   mov      rdi, qword ptr [rsp + 0x28]
00000000077f6d88: e8b333d1fc                   call     0x450a140
00000000077f6d8d: 89d8                         mov      eax, ebx
00000000077f6d8f: 4883c438                     add      rsp, 0x38
00000000077f6d93: 5b                           pop      rbx
00000000077f6d94: 415c                         pop      r12
00000000077f6d96: 415d                         pop      r13
00000000077f6d98: 415e                         pop      r14
00000000077f6d9a: 415f                         pop      r15
00000000077f6d9c: 5d                           pop      rbp
00000000077f6d9d: c3                           ret
00000000077f6d9e: 4889c7                       mov      rdi, rax
00000000077f6da1: e89a58cffc                   call     0x44ec640
00000000077f6da6: eb0f                         jmp      0x77f6db7
00000000077f6da8: 4889c3                       mov      rbx, rax
00000000077f6dab: 4c89e7                       mov      rdi, r12
00000000077f6dae: e88d33d1fc                   call     0x450a140
00000000077f6db3: eb05                         jmp      0x77f6dba
00000000077f6db5: eb00                         jmp      0x77f6db7
00000000077f6db7: 4889c3                       mov      rbx, rax
00000000077f6dba: f644241801                   test     byte ptr [rsp + 0x18], 1
00000000077f6dbf: 740a                         je       0x77f6dcb
00000000077f6dc1: 488b7c2428                   mov      rdi, qword ptr [rsp + 0x28]
00000000077f6dc6: e87533d1fc                   call     0x450a140
00000000077f6dcb: 4889df                       mov      rdi, rbx
00000000077f6dce: e84d60cffc                   call     0x44ece20
