0000000007d1d5f0: 4156                         push     r14
0000000007d1d5f2: 53                           push     rbx
0000000007d1d5f3: 50                           push     rax
0000000007d1d5f4: 4889f3                       mov      rbx, rsi
0000000007d1d5f7: 4989fe                       mov      r14, rdi
0000000007d1d5fa: 8b4744                       mov      eax, dword ptr [rdi + 0x44]
0000000007d1d5fd: a801                         test     al, 1
0000000007d1d5ff: 753f                         jne      0x7d1d640
0000000007d1d601: a802                         test     al, 2
0000000007d1d603: 7554                         jne      0x7d1d659
0000000007d1d605: a804                         test     al, 4
0000000007d1d607: 7569                         jne      0x7d1d672
0000000007d1d609: a808                         test     al, 8
0000000007d1d60b: 757e                         jne      0x7d1d68b
0000000007d1d60d: a810                         test     al, 0x10
0000000007d1d60f: 0f8593000000                 jne      0x7d1d6a8
0000000007d1d615: a820                         test     al, 0x20
0000000007d1d617: 0f85bb000000                 jne      0x7d1d6d8
0000000007d1d61d: a840                         test     al, 0x40
0000000007d1d61f: 0f85d0000000                 jne      0x7d1d6f5
0000000007d1d625: 84c0                         test     al, al
0000000007d1d627: 0f88e5000000                 js       0x7d1d712
0000000007d1d62d: a900010000                   test     eax, 0x100
0000000007d1d632: 0f85fa000000                 jne      0x7d1d732
0000000007d1d638: 4883c408                     add      rsp, 8
0000000007d1d63c: 5b                           pop      rbx
0000000007d1d63d: 415e                         pop      r14
0000000007d1d63f: c3                           ret
0000000007d1d640: 418b7608                     mov      esi, dword ptr [r14 + 8]
0000000007d1d644: bf01000000                   mov      edi, 1
0000000007d1d649: 4889da                       mov      rdx, rbx
0000000007d1d64c: e82f4d2301                   call     0x8f52380
0000000007d1d651: 418b4644                     mov      eax, dword ptr [r14 + 0x44]
0000000007d1d655: a802                         test     al, 2
0000000007d1d657: 74ac                         je       0x7d1d605
0000000007d1d659: 418b760c                     mov      esi, dword ptr [r14 + 0xc]
0000000007d1d65d: bf02000000                   mov      edi, 2
0000000007d1d662: 4889da                       mov      rdx, rbx
0000000007d1d665: e8164d2301                   call     0x8f52380
0000000007d1d66a: 418b4644                     mov      eax, dword ptr [r14 + 0x44]
0000000007d1d66e: a804                         test     al, 4
0000000007d1d670: 7497                         je       0x7d1d609
0000000007d1d672: 418b7628                     mov      esi, dword ptr [r14 + 0x28]
0000000007d1d676: bf03000000                   mov      edi, 3
0000000007d1d67b: 4889da                       mov      rdx, rbx
0000000007d1d67e: e8fd4c2301                   call     0x8f52380
0000000007d1d683: 418b4644                     mov      eax, dword ptr [r14 + 0x44]
0000000007d1d687: a808                         test     al, 8
0000000007d1d689: 7482                         je       0x7d1d60d
0000000007d1d68b: 498b7610                     mov      rsi, qword ptr [r14 + 0x10]
0000000007d1d68f: bf04000000                   mov      edi, 4
0000000007d1d694: 4889da                       mov      rdx, rbx
0000000007d1d697: e8b44e2301                   call     0x8f52550
0000000007d1d69c: 418b4644                     mov      eax, dword ptr [r14 + 0x44]
0000000007d1d6a0: a810                         test     al, 0x10
0000000007d1d6a2: 0f846dffffff                 je       0x7d1d615
0000000007d1d6a8: 498b7618                     mov      rsi, qword ptr [r14 + 0x18]
0000000007d1d6ac: 4885f6                       test     rsi, rsi
0000000007d1d6af: 750e                         jne      0x7d1d6bf
0000000007d1d6b1: 488d0508e9fd02               lea      rax, [rip + 0x2fde908]
0000000007d1d6b8: 488b00                       mov      rax, qword ptr [rax]
0000000007d1d6bb: 488b7018                     mov      rsi, qword ptr [rax + 0x18]
0000000007d1d6bf: bf05000000                   mov      edi, 5
0000000007d1d6c4: 4889da                       mov      rdx, rbx
0000000007d1d6c7: e824502301                   call     0x8f526f0
0000000007d1d6cc: 418b4644                     mov      eax, dword ptr [r14 + 0x44]
0000000007d1d6d0: a820                         test     al, 0x20
0000000007d1d6d2: 0f8445ffffff                 je       0x7d1d61d
0000000007d1d6d8: 498b7620                     mov      rsi, qword ptr [r14 + 0x20]
0000000007d1d6dc: bf06000000                   mov      edi, 6
0000000007d1d6e1: 4889da                       mov      rdx, rbx
0000000007d1d6e4: e8c74c2301                   call     0x8f523b0
0000000007d1d6e9: 418b4644                     mov      eax, dword ptr [r14 + 0x44]
0000000007d1d6ed: a840                         test     al, 0x40
0000000007d1d6ef: 0f8430ffffff                 je       0x7d1d625
0000000007d1d6f5: 498b7630                     mov      rsi, qword ptr [r14 + 0x30]
0000000007d1d6f9: bf07000000                   mov      edi, 7
0000000007d1d6fe: 4889da                       mov      rdx, rbx
0000000007d1d701: e84a4e2301                   call     0x8f52550
0000000007d1d706: 418b4644                     mov      eax, dword ptr [r14 + 0x44]
0000000007d1d70a: 84c0                         test     al, al
0000000007d1d70c: 0f891bffffff                 jns      0x7d1d62d
0000000007d1d712: 498b7638                     mov      rsi, qword ptr [r14 + 0x38]
0000000007d1d716: bf08000000                   mov      edi, 8
0000000007d1d71b: 4889da                       mov      rdx, rbx
0000000007d1d71e: e88d4c2301                   call     0x8f523b0
0000000007d1d723: 418b4644                     mov      eax, dword ptr [r14 + 0x44]
0000000007d1d727: a900010000                   test     eax, 0x100
0000000007d1d72c: 0f8406ffffff                 je       0x7d1d638
0000000007d1d732: 418b762c                     mov      esi, dword ptr [r14 + 0x2c]
0000000007d1d736: bf09000000                   mov      edi, 9
0000000007d1d73b: 4889da                       mov      rdx, rbx
0000000007d1d73e: 4883c408                     add      rsp, 8
0000000007d1d742: 5b                           pop      rbx
0000000007d1d743: 415e                         pop      r14
0000000007d1d745: e9364c2301                   jmp      0x8f52380
