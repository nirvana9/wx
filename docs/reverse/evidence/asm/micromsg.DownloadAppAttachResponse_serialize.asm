0000000007c02e70: 4156                         push     r14
0000000007c02e72: 53                           push     rbx
0000000007c02e73: 50                           push     rax
0000000007c02e74: 4889f3                       mov      rbx, rsi
0000000007c02e77: 4989fe                       mov      r14, rdi
0000000007c02e7a: 8b4740                       mov      eax, dword ptr [rdi + 0x40]
0000000007c02e7d: a801                         test     al, 1
0000000007c02e7f: 7538                         jne      0x7c02eb9
0000000007c02e81: a802                         test     al, 2
0000000007c02e83: 7560                         jne      0x7c02ee5
0000000007c02e85: a804                         test     al, 4
0000000007c02e87: 7575                         jne      0x7c02efe
0000000007c02e89: a808                         test     al, 8
0000000007c02e8b: 0f858a000000                 jne      0x7c02f1b
0000000007c02e91: a810                         test     al, 0x10
0000000007c02e93: 0f859f000000                 jne      0x7c02f38
0000000007c02e99: a820                         test     al, 0x20
0000000007c02e9b: 0f85b4000000                 jne      0x7c02f55
0000000007c02ea1: a840                         test     al, 0x40
0000000007c02ea3: 0f85c9000000                 jne      0x7c02f72
0000000007c02ea9: 84c0                         test     al, al
0000000007c02eab: 0f88de000000                 js       0x7c02f8f
0000000007c02eb1: 4883c408                     add      rsp, 8
0000000007c02eb5: 5b                           pop      rbx
0000000007c02eb6: 415e                         pop      r14
0000000007c02eb8: c3                           ret
0000000007c02eb9: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007c02ebd: 4885f6                       test     rsi, rsi
0000000007c02ec0: 750e                         jne      0x7c02ed0
0000000007c02ec2: 488d051f840f03               lea      rax, [rip + 0x30f841f]
0000000007c02ec9: 488b00                       mov      rax, qword ptr [rax]
0000000007c02ecc: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000007c02ed0: bf01000000                   mov      edi, 1
0000000007c02ed5: 4889da                       mov      rdx, rbx
0000000007c02ed8: e813f83401                   call     0x8f526f0
0000000007c02edd: 418b4640                     mov      eax, dword ptr [r14 + 0x40]
0000000007c02ee1: a802                         test     al, 2
0000000007c02ee3: 74a0                         je       0x7c02e85
0000000007c02ee5: 498b7610                     mov      rsi, qword ptr [r14 + 0x10]
0000000007c02ee9: bf02000000                   mov      edi, 2
0000000007c02eee: 4889da                       mov      rdx, rbx
0000000007c02ef1: e85af63401                   call     0x8f52550
0000000007c02ef6: 418b4640                     mov      eax, dword ptr [r14 + 0x40]
0000000007c02efa: a804                         test     al, 4
0000000007c02efc: 748b                         je       0x7c02e89
0000000007c02efe: 498b7618                     mov      rsi, qword ptr [r14 + 0x18]
0000000007c02f02: bf03000000                   mov      edi, 3
0000000007c02f07: 4889da                       mov      rdx, rbx
0000000007c02f0a: e841f63401                   call     0x8f52550
0000000007c02f0f: 418b4640                     mov      eax, dword ptr [r14 + 0x40]
0000000007c02f13: a808                         test     al, 8
0000000007c02f15: 0f8476ffffff                 je       0x7c02e91
0000000007c02f1b: 498b7620                     mov      rsi, qword ptr [r14 + 0x20]
0000000007c02f1f: bf04000000                   mov      edi, 4
0000000007c02f24: 4889da                       mov      rdx, rbx
0000000007c02f27: e824f63401                   call     0x8f52550
0000000007c02f2c: 418b4640                     mov      eax, dword ptr [r14 + 0x40]
0000000007c02f30: a810                         test     al, 0x10
0000000007c02f32: 0f8461ffffff                 je       0x7c02e99
0000000007c02f38: 418b7628                     mov      esi, dword ptr [r14 + 0x28]
0000000007c02f3c: bf05000000                   mov      edi, 5
0000000007c02f41: 4889da                       mov      rdx, rbx
0000000007c02f44: e837f43401                   call     0x8f52380
0000000007c02f49: 418b4640                     mov      eax, dword ptr [r14 + 0x40]
0000000007c02f4d: a820                         test     al, 0x20
0000000007c02f4f: 0f844cffffff                 je       0x7c02ea1
0000000007c02f55: 418b762c                     mov      esi, dword ptr [r14 + 0x2c]
0000000007c02f59: bf06000000                   mov      edi, 6
0000000007c02f5e: 4889da                       mov      rdx, rbx
0000000007c02f61: e81af43401                   call     0x8f52380
0000000007c02f66: 418b4640                     mov      eax, dword ptr [r14 + 0x40]
0000000007c02f6a: a840                         test     al, 0x40
0000000007c02f6c: 0f8437ffffff                 je       0x7c02ea9
0000000007c02f72: 418b7638                     mov      esi, dword ptr [r14 + 0x38]
0000000007c02f76: bf07000000                   mov      edi, 7
0000000007c02f7b: 4889da                       mov      rdx, rbx
0000000007c02f7e: e8fdf33401                   call     0x8f52380
0000000007c02f83: 418b4640                     mov      eax, dword ptr [r14 + 0x40]
0000000007c02f87: 84c0                         test     al, al
0000000007c02f89: 0f8922ffffff                 jns      0x7c02eb1
0000000007c02f8f: 498b7630                     mov      rsi, qword ptr [r14 + 0x30]
0000000007c02f93: 4885f6                       test     rsi, rsi
0000000007c02f96: 750e                         jne      0x7c02fa6
0000000007c02f98: 488d0549830f03               lea      rax, [rip + 0x30f8349]
0000000007c02f9f: 488b00                       mov      rax, qword ptr [rax]
0000000007c02fa2: 488b7030                     mov      rsi, qword ptr [rax + 0x30]
0000000007c02fa6: bf08000000                   mov      edi, 8
0000000007c02fab: 4889da                       mov      rdx, rbx
0000000007c02fae: 4883c408                     add      rsp, 8
0000000007c02fb2: 5b                           pop      rbx
0000000007c02fb3: 415e                         pop      r14
0000000007c02fb5: e936f73401                   jmp      0x8f526f0
