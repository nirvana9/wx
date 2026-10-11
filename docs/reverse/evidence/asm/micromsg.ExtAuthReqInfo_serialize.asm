0000000007cd43d0: 4156                         push     r14
0000000007cd43d2: 53                           push     rbx
0000000007cd43d3: 50                           push     rax
0000000007cd43d4: 4889f3                       mov      rbx, rsi
0000000007cd43d7: 4989fe                       mov      r14, rdi
0000000007cd43da: 8b471c                       mov      eax, dword ptr [rdi + 0x1c]
0000000007cd43dd: a801                         test     al, 1
0000000007cd43df: 7415                         je       0x7cd43f6
0000000007cd43e1: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007cd43e5: bf02000000                   mov      edi, 2
0000000007cd43ea: 4889da                       mov      rdx, rbx
0000000007cd43ed: e85ee12701                   call     0x8f52550
0000000007cd43f2: 418b461c                     mov      eax, dword ptr [r14 + 0x1c]
0000000007cd43f6: a802                         test     al, 2
0000000007cd43f8: 7508                         jne      0x7cd4402
0000000007cd43fa: 4883c408                     add      rsp, 8
0000000007cd43fe: 5b                           pop      rbx
0000000007cd43ff: 415e                         pop      r14
0000000007cd4401: c3                           ret
0000000007cd4402: 498b7610                     mov      rsi, qword ptr [r14 + 0x10]
0000000007cd4406: bf03000000                   mov      edi, 3
0000000007cd440b: 4889da                       mov      rdx, rbx
0000000007cd440e: 4883c408                     add      rsp, 8
0000000007cd4412: 5b                           pop      rbx
0000000007cd4413: 415e                         pop      r14
0000000007cd4415: e936e12701                   jmp      0x8f52550
