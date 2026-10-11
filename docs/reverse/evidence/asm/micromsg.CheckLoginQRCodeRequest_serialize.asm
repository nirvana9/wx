0000000007cc8050: 4156                         push     r14
0000000007cc8052: 53                           push     rbx
0000000007cc8053: 50                           push     rax
0000000007cc8054: 4889f3                       mov      rbx, rsi
0000000007cc8057: 4989fe                       mov      r14, rdi
0000000007cc805a: 8b472c                       mov      eax, dword ptr [rdi + 0x2c]
0000000007cc805d: a801                         test     al, 1
0000000007cc805f: 7520                         jne      0x7cc8081
0000000007cc8061: a802                         test     al, 2
0000000007cc8063: 7548                         jne      0x7cc80ad
0000000007cc8065: a804                         test     al, 4
0000000007cc8067: 7570                         jne      0x7cc80d9
0000000007cc8069: a808                         test     al, 8
0000000007cc806b: 0f8585000000                 jne      0x7cc80f6
0000000007cc8071: a810                         test     al, 0x10
0000000007cc8073: 0f859a000000                 jne      0x7cc8113
0000000007cc8079: 4883c408                     add      rsp, 8
0000000007cc807d: 5b                           pop      rbx
0000000007cc807e: 415e                         pop      r14
0000000007cc8080: c3                           ret
0000000007cc8081: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007cc8085: 4885f6                       test     rsi, rsi
0000000007cc8088: 750e                         jne      0x7cc8098
0000000007cc808a: 488d050f3c0303               lea      rax, [rip + 0x3033c0f]
0000000007cc8091: 488b00                       mov      rax, qword ptr [rax]
0000000007cc8094: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000007cc8098: bf01000000                   mov      edi, 1
0000000007cc809d: 4889da                       mov      rdx, rbx
0000000007cc80a0: e84ba62801                   call     0x8f526f0
0000000007cc80a5: 418b462c                     mov      eax, dword ptr [r14 + 0x2c]
0000000007cc80a9: a802                         test     al, 2
0000000007cc80ab: 74b8                         je       0x7cc8065
0000000007cc80ad: 498b7610                     mov      rsi, qword ptr [r14 + 0x10]
0000000007cc80b1: 4885f6                       test     rsi, rsi
0000000007cc80b4: 750e                         jne      0x7cc80c4
0000000007cc80b6: 488d05e33b0303               lea      rax, [rip + 0x3033be3]
0000000007cc80bd: 488b00                       mov      rax, qword ptr [rax]
0000000007cc80c0: 488b7010                     mov      rsi, qword ptr [rax + 0x10]
0000000007cc80c4: bf02000000                   mov      edi, 2
0000000007cc80c9: 4889da                       mov      rdx, rbx
0000000007cc80cc: e81fa62801                   call     0x8f526f0
0000000007cc80d1: 418b462c                     mov      eax, dword ptr [r14 + 0x2c]
0000000007cc80d5: a804                         test     al, 4
0000000007cc80d7: 7490                         je       0x7cc8069
0000000007cc80d9: 498b7618                     mov      rsi, qword ptr [r14 + 0x18]
0000000007cc80dd: bf03000000                   mov      edi, 3
0000000007cc80e2: 4889da                       mov      rdx, rbx
0000000007cc80e5: e866a42801                   call     0x8f52550
0000000007cc80ea: 418b462c                     mov      eax, dword ptr [r14 + 0x2c]
0000000007cc80ee: a808                         test     al, 8
0000000007cc80f0: 0f847bffffff                 je       0x7cc8071
0000000007cc80f6: 418b7620                     mov      esi, dword ptr [r14 + 0x20]
0000000007cc80fa: bf04000000                   mov      edi, 4
0000000007cc80ff: 4889da                       mov      rdx, rbx
0000000007cc8102: e879a22801                   call     0x8f52380
0000000007cc8107: 418b462c                     mov      eax, dword ptr [r14 + 0x2c]
0000000007cc810b: a810                         test     al, 0x10
0000000007cc810d: 0f8466ffffff                 je       0x7cc8079
0000000007cc8113: 418b7624                     mov      esi, dword ptr [r14 + 0x24]
0000000007cc8117: bf05000000                   mov      edi, 5
0000000007cc811c: 4889da                       mov      rdx, rbx
0000000007cc811f: 4883c408                     add      rsp, 8
0000000007cc8123: 5b                           pop      rbx
0000000007cc8124: 415e                         pop      r14
0000000007cc8126: e955a22801                   jmp      0x8f52380
