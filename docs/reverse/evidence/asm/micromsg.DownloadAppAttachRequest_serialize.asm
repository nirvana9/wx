0000000007c01db0: 4156                         push     r14
0000000007c01db2: 53                           push     rbx
0000000007c01db3: 50                           push     rax
0000000007c01db4: 4889f3                       mov      rbx, rsi
0000000007c01db7: 4989fe                       mov      r14, rdi
0000000007c01dba: 8b4758                       mov      eax, dword ptr [rdi + 0x58]
0000000007c01dbd: a801                         test     al, 1
0000000007c01dbf: 7577                         jne      0x7c01e38
0000000007c01dc1: a802                         test     al, 2
0000000007c01dc3: 0f859f000000                 jne      0x7c01e68
0000000007c01dc9: a804                         test     al, 4
0000000007c01dcb: 0f85b4000000                 jne      0x7c01e85
0000000007c01dd1: a808                         test     al, 8
0000000007c01dd3: 0f85c9000000                 jne      0x7c01ea2
0000000007c01dd9: a810                         test     al, 0x10
0000000007c01ddb: 0f85de000000                 jne      0x7c01ebf
0000000007c01de1: a820                         test     al, 0x20
0000000007c01de3: 0f85f3000000                 jne      0x7c01edc
0000000007c01de9: a840                         test     al, 0x40
0000000007c01deb: 0f8508010000                 jne      0x7c01ef9
0000000007c01df1: 84c0                         test     al, al
0000000007c01df3: 0f881d010000                 js       0x7c01f16
0000000007c01df9: a900010000                   test     eax, 0x100
0000000007c01dfe: 0f8532010000                 jne      0x7c01f36
0000000007c01e04: a900020000                   test     eax, 0x200
0000000007c01e09: 0f8547010000                 jne      0x7c01f56
0000000007c01e0f: a900040000                   test     eax, 0x400
0000000007c01e14: 0f855c010000                 jne      0x7c01f76
0000000007c01e1a: a900080000                   test     eax, 0x800
0000000007c01e1f: 0f8571010000                 jne      0x7c01f96
0000000007c01e25: a900100000                   test     eax, 0x1000
0000000007c01e2a: 0f8586010000                 jne      0x7c01fb6
0000000007c01e30: 4883c408                     add      rsp, 8
0000000007c01e34: 5b                           pop      rbx
0000000007c01e35: 415e                         pop      r14
0000000007c01e37: c3                           ret
0000000007c01e38: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007c01e3c: 4885f6                       test     rsi, rsi
0000000007c01e3f: 750e                         jne      0x7c01e4f
0000000007c01e41: 488d0598940f03               lea      rax, [rip + 0x30f9498]
0000000007c01e48: 488b00                       mov      rax, qword ptr [rax]
0000000007c01e4b: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000007c01e4f: bf01000000                   mov      edi, 1
0000000007c01e54: 4889da                       mov      rdx, rbx
0000000007c01e57: e894083501                   call     0x8f526f0
0000000007c01e5c: 418b4658                     mov      eax, dword ptr [r14 + 0x58]
0000000007c01e60: a802                         test     al, 2
0000000007c01e62: 0f8461ffffff                 je       0x7c01dc9
0000000007c01e68: 498b7610                     mov      rsi, qword ptr [r14 + 0x10]
0000000007c01e6c: bf02000000                   mov      edi, 2
0000000007c01e71: 4889da                       mov      rdx, rbx
0000000007c01e74: e8d7063501                   call     0x8f52550
0000000007c01e79: 418b4658                     mov      eax, dword ptr [r14 + 0x58]
0000000007c01e7d: a804                         test     al, 4
0000000007c01e7f: 0f844cffffff                 je       0x7c01dd1
0000000007c01e85: 418b7620                     mov      esi, dword ptr [r14 + 0x20]
0000000007c01e89: bf03000000                   mov      edi, 3
0000000007c01e8e: 4889da                       mov      rdx, rbx
0000000007c01e91: e8ea043501                   call     0x8f52380
0000000007c01e96: 418b4658                     mov      eax, dword ptr [r14 + 0x58]
0000000007c01e9a: a808                         test     al, 8
0000000007c01e9c: 0f8437ffffff                 je       0x7c01dd9
0000000007c01ea2: 498b7618                     mov      rsi, qword ptr [r14 + 0x18]
0000000007c01ea6: bf04000000                   mov      edi, 4
0000000007c01eab: 4889da                       mov      rdx, rbx
0000000007c01eae: e89d063501                   call     0x8f52550
0000000007c01eb3: 418b4658                     mov      eax, dword ptr [r14 + 0x58]
0000000007c01eb7: a810                         test     al, 0x10
0000000007c01eb9: 0f8422ffffff                 je       0x7c01de1
0000000007c01ebf: 498b7628                     mov      rsi, qword ptr [r14 + 0x28]
0000000007c01ec3: bf05000000                   mov      edi, 5
0000000007c01ec8: 4889da                       mov      rdx, rbx
0000000007c01ecb: e880063501                   call     0x8f52550
0000000007c01ed0: 418b4658                     mov      eax, dword ptr [r14 + 0x58]
0000000007c01ed4: a820                         test     al, 0x20
0000000007c01ed6: 0f840dffffff                 je       0x7c01de9
0000000007c01edc: 418b7624                     mov      esi, dword ptr [r14 + 0x24]
0000000007c01ee0: bf06000000                   mov      edi, 6
0000000007c01ee5: 4889da                       mov      rdx, rbx
0000000007c01ee8: e893043501                   call     0x8f52380
0000000007c01eed: 418b4658                     mov      eax, dword ptr [r14 + 0x58]
0000000007c01ef1: a840                         test     al, 0x40
0000000007c01ef3: 0f84f8feffff                 je       0x7c01df1
0000000007c01ef9: 418b7630                     mov      esi, dword ptr [r14 + 0x30]
0000000007c01efd: bf07000000                   mov      edi, 7
0000000007c01f02: 4889da                       mov      rdx, rbx
0000000007c01f05: e876043501                   call     0x8f52380
0000000007c01f0a: 418b4658                     mov      eax, dword ptr [r14 + 0x58]
0000000007c01f0e: 84c0                         test     al, al
0000000007c01f10: 0f89e3feffff                 jns      0x7c01df9
0000000007c01f16: 418b7634                     mov      esi, dword ptr [r14 + 0x34]
0000000007c01f1a: bf08000000                   mov      edi, 8
0000000007c01f1f: 4889da                       mov      rdx, rbx
0000000007c01f22: e859043501                   call     0x8f52380
0000000007c01f27: 418b4658                     mov      eax, dword ptr [r14 + 0x58]
0000000007c01f2b: a900010000                   test     eax, 0x100
0000000007c01f30: 0f84cefeffff                 je       0x7c01e04
0000000007c01f36: 498b7638                     mov      rsi, qword ptr [r14 + 0x38]
0000000007c01f3a: bf09000000                   mov      edi, 9
0000000007c01f3f: 4889da                       mov      rdx, rbx
0000000007c01f42: e809063501                   call     0x8f52550
0000000007c01f47: 418b4658                     mov      eax, dword ptr [r14 + 0x58]
0000000007c01f4b: a900020000                   test     eax, 0x200
0000000007c01f50: 0f84b9feffff                 je       0x7c01e0f
0000000007c01f56: 418b7640                     mov      esi, dword ptr [r14 + 0x40]
0000000007c01f5a: bf0a000000                   mov      edi, 0xa
0000000007c01f5f: 4889da                       mov      rdx, rbx
0000000007c01f62: e8a9033501                   call     0x8f52310
0000000007c01f67: 418b4658                     mov      eax, dword ptr [r14 + 0x58]
0000000007c01f6b: a900040000                   test     eax, 0x400
0000000007c01f70: 0f84a4feffff                 je       0x7c01e1a
0000000007c01f76: 418b7644                     mov      esi, dword ptr [r14 + 0x44]
0000000007c01f7a: bf0b000000                   mov      edi, 0xb
0000000007c01f7f: 4889da                       mov      rdx, rbx
0000000007c01f82: e8f9033501                   call     0x8f52380
0000000007c01f87: 418b4658                     mov      eax, dword ptr [r14 + 0x58]
0000000007c01f8b: a900080000                   test     eax, 0x800
0000000007c01f90: 0f848ffeffff                 je       0x7c01e25
0000000007c01f96: 418b7650                     mov      esi, dword ptr [r14 + 0x50]
0000000007c01f9a: bf0c000000                   mov      edi, 0xc
0000000007c01f9f: 4889da                       mov      rdx, rbx
0000000007c01fa2: e8d9033501                   call     0x8f52380
0000000007c01fa7: 418b4658                     mov      eax, dword ptr [r14 + 0x58]
0000000007c01fab: a900100000                   test     eax, 0x1000
0000000007c01fb0: 0f847afeffff                 je       0x7c01e30
0000000007c01fb6: 498b7648                     mov      rsi, qword ptr [r14 + 0x48]
0000000007c01fba: bf0d000000                   mov      edi, 0xd
0000000007c01fbf: 4889da                       mov      rdx, rbx
0000000007c01fc2: 4883c408                     add      rsp, 8
0000000007c01fc6: 5b                           pop      rbx
0000000007c01fc7: 415e                         pop      r14
0000000007c01fc9: e9e2033501                   jmp      0x8f523b0
