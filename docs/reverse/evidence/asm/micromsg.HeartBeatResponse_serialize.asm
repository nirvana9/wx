0000000007df0f00: 4156                         push     r14
0000000007df0f02: 53                           push     rbx
0000000007df0f03: 50                           push     rax
0000000007df0f04: 4889f3                       mov      rbx, rsi
0000000007df0f07: 4989fe                       mov      r14, rdi
0000000007df0f0a: 8b471c                       mov      eax, dword ptr [rdi + 0x1c]
0000000007df0f0d: a801                         test     al, 1
0000000007df0f0f: 7510                         jne      0x7df0f21
0000000007df0f11: a802                         test     al, 2
0000000007df0f13: 7538                         jne      0x7df0f4d
0000000007df0f15: a804                         test     al, 4
0000000007df0f17: 754d                         jne      0x7df0f66
0000000007df0f19: 4883c408                     add      rsp, 8
0000000007df0f1d: 5b                           pop      rbx
0000000007df0f1e: 415e                         pop      r14
0000000007df0f20: c3                           ret
0000000007df0f21: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007df0f25: 4885f6                       test     rsi, rsi
0000000007df0f28: 750e                         jne      0x7df0f38
0000000007df0f2a: 488d05c7b9f002               lea      rax, [rip + 0x2f0b9c7]
0000000007df0f31: 488b00                       mov      rax, qword ptr [rax]
0000000007df0f34: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000007df0f38: bf01000000                   mov      edi, 1
0000000007df0f3d: 4889da                       mov      rdx, rbx
0000000007df0f40: e8ab171601                   call     0x8f526f0
0000000007df0f45: 418b461c                     mov      eax, dword ptr [r14 + 0x1c]
0000000007df0f49: a802                         test     al, 2
0000000007df0f4b: 74c8                         je       0x7df0f15
0000000007df0f4d: 418b7610                     mov      esi, dword ptr [r14 + 0x10]
0000000007df0f51: bf02000000                   mov      edi, 2
0000000007df0f56: 4889da                       mov      rdx, rbx
0000000007df0f59: e822141601                   call     0x8f52380
0000000007df0f5e: 418b461c                     mov      eax, dword ptr [r14 + 0x1c]
0000000007df0f62: a804                         test     al, 4
0000000007df0f64: 74b3                         je       0x7df0f19
0000000007df0f66: 418b7614                     mov      esi, dword ptr [r14 + 0x14]
0000000007df0f6a: bf03000000                   mov      edi, 3
0000000007df0f6f: 4889da                       mov      rdx, rbx
0000000007df0f72: 4883c408                     add      rsp, 8
0000000007df0f76: 5b                           pop      rbx
0000000007df0f77: 415e                         pop      r14
0000000007df0f79: e902141601                   jmp      0x8f52380
