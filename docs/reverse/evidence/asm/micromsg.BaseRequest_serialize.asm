00000000079f3c60: 4156                         push     r14
00000000079f3c62: 53                           push     rbx
00000000079f3c63: 50                           push     rax
00000000079f3c64: 4889f3                       mov      rbx, rsi
00000000079f3c67: 4989fe                       mov      r14, rdi
00000000079f3c6a: 8b4734                       mov      eax, dword ptr [rdi + 0x34]
00000000079f3c6d: a801                         test     al, 1
00000000079f3c6f: 7520                         jne      0x79f3c91
00000000079f3c71: a802                         test     al, 2
00000000079f3c73: 7535                         jne      0x79f3caa
00000000079f3c75: a804                         test     al, 4
00000000079f3c77: 754a                         jne      0x79f3cc3
00000000079f3c79: a808                         test     al, 8
00000000079f3c7b: 755f                         jne      0x79f3cdc
00000000079f3c7d: a810                         test     al, 0x10
00000000079f3c7f: 7574                         jne      0x79f3cf5
00000000079f3c81: a820                         test     al, 0x20
00000000079f3c83: 0f8589000000                 jne      0x79f3d12
00000000079f3c89: 4883c408                     add      rsp, 8
00000000079f3c8d: 5b                           pop      rbx
00000000079f3c8e: 415e                         pop      r14
00000000079f3c90: c3                           ret
00000000079f3c91: 498b7608                     mov      rsi, qword ptr [r14 + 8]
00000000079f3c95: bf01000000                   mov      edi, 1
00000000079f3c9a: 4889da                       mov      rdx, rbx
00000000079f3c9d: e87ee95501                   call     0x8f52620
00000000079f3ca2: 418b4634                     mov      eax, dword ptr [r14 + 0x34]
00000000079f3ca6: a802                         test     al, 2
00000000079f3ca8: 74cb                         je       0x79f3c75
00000000079f3caa: 498b7610                     mov      rsi, qword ptr [r14 + 0x10]
00000000079f3cae: bf02000000                   mov      edi, 2
00000000079f3cb3: 4889da                       mov      rdx, rbx
00000000079f3cb6: e8f5e65501                   call     0x8f523b0
00000000079f3cbb: 418b4634                     mov      eax, dword ptr [r14 + 0x34]
00000000079f3cbf: a804                         test     al, 4
00000000079f3cc1: 74b6                         je       0x79f3c79
00000000079f3cc3: 498b7618                     mov      rsi, qword ptr [r14 + 0x18]
00000000079f3cc7: bf03000000                   mov      edi, 3
00000000079f3ccc: 4889da                       mov      rdx, rbx
00000000079f3ccf: e84ce95501                   call     0x8f52620
00000000079f3cd4: 418b4634                     mov      eax, dword ptr [r14 + 0x34]
00000000079f3cd8: a808                         test     al, 8
00000000079f3cda: 74a1                         je       0x79f3c7d
00000000079f3cdc: 418b7628                     mov      esi, dword ptr [r14 + 0x28]
00000000079f3ce0: bf04000000                   mov      edi, 4
00000000079f3ce5: 4889da                       mov      rdx, rbx
00000000079f3ce8: e823e65501                   call     0x8f52310
00000000079f3ced: 418b4634                     mov      eax, dword ptr [r14 + 0x34]
00000000079f3cf1: a810                         test     al, 0x10
00000000079f3cf3: 748c                         je       0x79f3c81
00000000079f3cf5: 498b7620                     mov      rsi, qword ptr [r14 + 0x20]
00000000079f3cf9: bf05000000                   mov      edi, 5
00000000079f3cfe: 4889da                       mov      rdx, rbx
00000000079f3d01: e81ae95501                   call     0x8f52620
00000000079f3d06: 418b4634                     mov      eax, dword ptr [r14 + 0x34]
00000000079f3d0a: a820                         test     al, 0x20
00000000079f3d0c: 0f8477ffffff                 je       0x79f3c89
00000000079f3d12: 418b762c                     mov      esi, dword ptr [r14 + 0x2c]
00000000079f3d16: bf06000000                   mov      edi, 6
00000000079f3d1b: 4889da                       mov      rdx, rbx
00000000079f3d1e: 4883c408                     add      rsp, 8
00000000079f3d22: 5b                           pop      rbx
00000000079f3d23: 415e                         pop      r14
00000000079f3d25: e956e65501                   jmp      0x8f52380
