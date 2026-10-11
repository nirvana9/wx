0000000007cf2eb0: 4156                         push     r14
0000000007cf2eb2: 53                           push     rbx
0000000007cf2eb3: 50                           push     rax
0000000007cf2eb4: 4889f3                       mov      rbx, rsi
0000000007cf2eb7: 4989fe                       mov      r14, rdi
0000000007cf2eba: 8b4724                       mov      eax, dword ptr [rdi + 0x24]
0000000007cf2ebd: a801                         test     al, 1
0000000007cf2ebf: 7510                         jne      0x7cf2ed1
0000000007cf2ec1: a802                         test     al, 2
0000000007cf2ec3: 7538                         jne      0x7cf2efd
0000000007cf2ec5: a804                         test     al, 4
0000000007cf2ec7: 754d                         jne      0x7cf2f16
0000000007cf2ec9: 4883c408                     add      rsp, 8
0000000007cf2ecd: 5b                           pop      rbx
0000000007cf2ece: 415e                         pop      r14
0000000007cf2ed0: c3                           ret
0000000007cf2ed1: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007cf2ed5: 4885f6                       test     rsi, rsi
0000000007cf2ed8: 750e                         jne      0x7cf2ee8
0000000007cf2eda: 488d05af8f0003               lea      rax, [rip + 0x3008faf]
0000000007cf2ee1: 488b00                       mov      rax, qword ptr [rax]
0000000007cf2ee4: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000007cf2ee8: bf01000000                   mov      edi, 1
0000000007cf2eed: 4889da                       mov      rdx, rbx
0000000007cf2ef0: e8fbf72501                   call     0x8f526f0
0000000007cf2ef5: 418b4624                     mov      eax, dword ptr [r14 + 0x24]
0000000007cf2ef9: a802                         test     al, 2
0000000007cf2efb: 74c8                         je       0x7cf2ec5
0000000007cf2efd: 498b7610                     mov      rsi, qword ptr [r14 + 0x10]
0000000007cf2f01: bf02000000                   mov      edi, 2
0000000007cf2f06: 4889da                       mov      rdx, rbx
0000000007cf2f09: e842f62501                   call     0x8f52550
0000000007cf2f0e: 418b4624                     mov      eax, dword ptr [r14 + 0x24]
0000000007cf2f12: a804                         test     al, 4
0000000007cf2f14: 74b3                         je       0x7cf2ec9
0000000007cf2f16: 498b7618                     mov      rsi, qword ptr [r14 + 0x18]
0000000007cf2f1a: bf03000000                   mov      edi, 3
0000000007cf2f1f: 4889da                       mov      rdx, rbx
0000000007cf2f22: 4883c408                     add      rsp, 8
0000000007cf2f26: 5b                           pop      rbx
0000000007cf2f27: 415e                         pop      r14
0000000007cf2f29: e922f62501                   jmp      0x8f52550
