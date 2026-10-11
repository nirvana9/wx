0000000007cdc810: 4156                         push     r14
0000000007cdc812: 53                           push     rbx
0000000007cdc813: 50                           push     rax
0000000007cdc814: 4889f3                       mov      rbx, rsi
0000000007cdc817: 4989fe                       mov      r14, rdi
0000000007cdc81a: 8b471c                       mov      eax, dword ptr [rdi + 0x1c]
0000000007cdc81d: a801                         test     al, 1
0000000007cdc81f: 7428                         je       0x7cdc849
0000000007cdc821: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007cdc825: 4885f6                       test     rsi, rsi
0000000007cdc828: 750e                         jne      0x7cdc838
0000000007cdc82a: 488d056ff50103               lea      rax, [rip + 0x301f56f]
0000000007cdc831: 488b00                       mov      rax, qword ptr [rax]
0000000007cdc834: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000007cdc838: bf01000000                   mov      edi, 1
0000000007cdc83d: 4889da                       mov      rdx, rbx
0000000007cdc840: e8ab5e2701                   call     0x8f526f0
0000000007cdc845: 418b461c                     mov      eax, dword ptr [r14 + 0x1c]
0000000007cdc849: a802                         test     al, 2
0000000007cdc84b: 7508                         jne      0x7cdc855
0000000007cdc84d: 4883c408                     add      rsp, 8
0000000007cdc851: 5b                           pop      rbx
0000000007cdc852: 415e                         pop      r14
0000000007cdc854: c3                           ret
0000000007cdc855: 498b7610                     mov      rsi, qword ptr [r14 + 0x10]
0000000007cdc859: 4885f6                       test     rsi, rsi
0000000007cdc85c: 750e                         jne      0x7cdc86c
0000000007cdc85e: 488d053bf50103               lea      rax, [rip + 0x301f53b]
0000000007cdc865: 488b00                       mov      rax, qword ptr [rax]
0000000007cdc868: 488b7010                     mov      rsi, qword ptr [rax + 0x10]
0000000007cdc86c: bf02000000                   mov      edi, 2
0000000007cdc871: 4889da                       mov      rdx, rbx
0000000007cdc874: 4883c408                     add      rsp, 8
0000000007cdc878: 5b                           pop      rbx
0000000007cdc879: 415e                         pop      r14
0000000007cdc87b: e9705e2701                   jmp      0x8f526f0
