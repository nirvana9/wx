0000000007cdf760: 4156                         push     r14
0000000007cdf762: 53                           push     rbx
0000000007cdf763: 50                           push     rax
0000000007cdf764: 4889f3                       mov      rbx, rsi
0000000007cdf767: 4989fe                       mov      r14, rdi
0000000007cdf76a: 8b471c                       mov      eax, dword ptr [rdi + 0x1c]
0000000007cdf76d: a801                         test     al, 1
0000000007cdf76f: 7428                         je       0x7cdf799
0000000007cdf771: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007cdf775: 4885f6                       test     rsi, rsi
0000000007cdf778: 750e                         jne      0x7cdf788
0000000007cdf77a: 488d052fc60103               lea      rax, [rip + 0x301c62f]
0000000007cdf781: 488b00                       mov      rax, qword ptr [rax]
0000000007cdf784: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000007cdf788: bf01000000                   mov      edi, 1
0000000007cdf78d: 4889da                       mov      rdx, rbx
0000000007cdf790: e85b2f2701                   call     0x8f526f0
0000000007cdf795: 418b461c                     mov      eax, dword ptr [r14 + 0x1c]
0000000007cdf799: a802                         test     al, 2
0000000007cdf79b: 7508                         jne      0x7cdf7a5
0000000007cdf79d: 4883c408                     add      rsp, 8
0000000007cdf7a1: 5b                           pop      rbx
0000000007cdf7a2: 415e                         pop      r14
0000000007cdf7a4: c3                           ret
0000000007cdf7a5: 498b7610                     mov      rsi, qword ptr [r14 + 0x10]
0000000007cdf7a9: 4885f6                       test     rsi, rsi
0000000007cdf7ac: 750e                         jne      0x7cdf7bc
0000000007cdf7ae: 488d05fbc50103               lea      rax, [rip + 0x301c5fb]
0000000007cdf7b5: 488b00                       mov      rax, qword ptr [rax]
0000000007cdf7b8: 488b7010                     mov      rsi, qword ptr [rax + 0x10]
0000000007cdf7bc: bf02000000                   mov      edi, 2
0000000007cdf7c1: 4889da                       mov      rdx, rbx
0000000007cdf7c4: 4883c408                     add      rsp, 8
0000000007cdf7c8: 5b                           pop      rbx
0000000007cdf7c9: 415e                         pop      r14
0000000007cdf7cb: e9202f2701                   jmp      0x8f526f0
