0000000007ceb600: 4156                         push     r14
0000000007ceb602: 53                           push     rbx
0000000007ceb603: 50                           push     rax
0000000007ceb604: 4889f3                       mov      rbx, rsi
0000000007ceb607: 4989fe                       mov      r14, rdi
0000000007ceb60a: 8b472c                       mov      eax, dword ptr [rdi + 0x2c]
0000000007ceb60d: a801                         test     al, 1
0000000007ceb60f: 7518                         jne      0x7ceb629
0000000007ceb611: a802                         test     al, 2
0000000007ceb613: 7540                         jne      0x7ceb655
0000000007ceb615: a804                         test     al, 4
0000000007ceb617: 7568                         jne      0x7ceb681
0000000007ceb619: a808                         test     al, 8
0000000007ceb61b: 0f8590000000                 jne      0x7ceb6b1
0000000007ceb621: 4883c408                     add      rsp, 8
0000000007ceb625: 5b                           pop      rbx
0000000007ceb626: 415e                         pop      r14
0000000007ceb628: c3                           ret
0000000007ceb629: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007ceb62d: 4885f6                       test     rsi, rsi
0000000007ceb630: 750e                         jne      0x7ceb640
0000000007ceb632: 488d05d7070103               lea      rax, [rip + 0x30107d7]
0000000007ceb639: 488b00                       mov      rax, qword ptr [rax]
0000000007ceb63c: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000007ceb640: bf01000000                   mov      edi, 1
0000000007ceb645: 4889da                       mov      rdx, rbx
0000000007ceb648: e8a3702601                   call     0x8f526f0
0000000007ceb64d: 418b462c                     mov      eax, dword ptr [r14 + 0x2c]
0000000007ceb651: a802                         test     al, 2
0000000007ceb653: 74c0                         je       0x7ceb615
0000000007ceb655: 498b7610                     mov      rsi, qword ptr [r14 + 0x10]
0000000007ceb659: 4885f6                       test     rsi, rsi
0000000007ceb65c: 750e                         jne      0x7ceb66c
0000000007ceb65e: 488d05ab070103               lea      rax, [rip + 0x30107ab]
0000000007ceb665: 488b00                       mov      rax, qword ptr [rax]
0000000007ceb668: 488b7010                     mov      rsi, qword ptr [rax + 0x10]
0000000007ceb66c: bf02000000                   mov      edi, 2
0000000007ceb671: 4889da                       mov      rdx, rbx
0000000007ceb674: e877702601                   call     0x8f526f0
0000000007ceb679: 418b462c                     mov      eax, dword ptr [r14 + 0x2c]
0000000007ceb67d: a804                         test     al, 4
0000000007ceb67f: 7498                         je       0x7ceb619
0000000007ceb681: 498b7618                     mov      rsi, qword ptr [r14 + 0x18]
0000000007ceb685: 4885f6                       test     rsi, rsi
0000000007ceb688: 750e                         jne      0x7ceb698
0000000007ceb68a: 488d057f070103               lea      rax, [rip + 0x301077f]
0000000007ceb691: 488b00                       mov      rax, qword ptr [rax]
0000000007ceb694: 488b7018                     mov      rsi, qword ptr [rax + 0x18]
0000000007ceb698: bf03000000                   mov      edi, 3
0000000007ceb69d: 4889da                       mov      rdx, rbx
0000000007ceb6a0: e84b702601                   call     0x8f526f0
0000000007ceb6a5: 418b462c                     mov      eax, dword ptr [r14 + 0x2c]
0000000007ceb6a9: a808                         test     al, 8
0000000007ceb6ab: 0f8470ffffff                 je       0x7ceb621
0000000007ceb6b1: 498b7620                     mov      rsi, qword ptr [r14 + 0x20]
0000000007ceb6b5: 4885f6                       test     rsi, rsi
0000000007ceb6b8: 750e                         jne      0x7ceb6c8
0000000007ceb6ba: 488d054f070103               lea      rax, [rip + 0x301074f]
0000000007ceb6c1: 488b00                       mov      rax, qword ptr [rax]
0000000007ceb6c4: 488b7020                     mov      rsi, qword ptr [rax + 0x20]
0000000007ceb6c8: bf04000000                   mov      edi, 4
0000000007ceb6cd: 4889da                       mov      rdx, rbx
0000000007ceb6d0: 4883c408                     add      rsp, 8
0000000007ceb6d4: 5b                           pop      rbx
0000000007ceb6d5: 415e                         pop      r14
0000000007ceb6d7: e914702601                   jmp      0x8f526f0
