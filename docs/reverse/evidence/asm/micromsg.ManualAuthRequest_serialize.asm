0000000007cdbac0: 4156                         push     r14
0000000007cdbac2: 53                           push     rbx
0000000007cdbac3: 50                           push     rax
0000000007cdbac4: 4889f3                       mov      rbx, rsi
0000000007cdbac7: 4989fe                       mov      r14, rdi
0000000007cdbaca: 8b471c                       mov      eax, dword ptr [rdi + 0x1c]
0000000007cdbacd: a801                         test     al, 1
0000000007cdbacf: 7428                         je       0x7cdbaf9
0000000007cdbad1: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007cdbad5: 4885f6                       test     rsi, rsi
0000000007cdbad8: 750e                         jne      0x7cdbae8
0000000007cdbada: 488d05af020203               lea      rax, [rip + 0x30202af]
0000000007cdbae1: 488b00                       mov      rax, qword ptr [rax]
0000000007cdbae4: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000007cdbae8: bf01000000                   mov      edi, 1
0000000007cdbaed: 4889da                       mov      rdx, rbx
0000000007cdbaf0: e8fb6b2701                   call     0x8f526f0
0000000007cdbaf5: 418b461c                     mov      eax, dword ptr [r14 + 0x1c]
0000000007cdbaf9: a802                         test     al, 2
0000000007cdbafb: 7508                         jne      0x7cdbb05
0000000007cdbafd: 4883c408                     add      rsp, 8
0000000007cdbb01: 5b                           pop      rbx
0000000007cdbb02: 415e                         pop      r14
0000000007cdbb04: c3                           ret
0000000007cdbb05: 498b7610                     mov      rsi, qword ptr [r14 + 0x10]
0000000007cdbb09: 4885f6                       test     rsi, rsi
0000000007cdbb0c: 750e                         jne      0x7cdbb1c
0000000007cdbb0e: 488d057b020203               lea      rax, [rip + 0x302027b]
0000000007cdbb15: 488b00                       mov      rax, qword ptr [rax]
0000000007cdbb18: 488b7010                     mov      rsi, qword ptr [rax + 0x10]
0000000007cdbb1c: bf02000000                   mov      edi, 2
0000000007cdbb21: 4889da                       mov      rdx, rbx
0000000007cdbb24: 4883c408                     add      rsp, 8
0000000007cdbb28: 5b                           pop      rbx
0000000007cdbb29: 415e                         pop      r14
0000000007cdbb2b: e9c06b2701                   jmp      0x8f526f0
