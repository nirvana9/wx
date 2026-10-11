0000000007cc5f50: 4156                         push     r14
0000000007cc5f52: 53                           push     rbx
0000000007cc5f53: 50                           push     rax
0000000007cc5f54: 4889f3                       mov      rbx, rsi
0000000007cc5f57: 4989fe                       mov      r14, rdi
0000000007cc5f5a: 8b475c                       mov      eax, dword ptr [rdi + 0x5c]
0000000007cc5f5d: a801                         test     al, 1
0000000007cc5f5f: 7561                         jne      0x7cc5fc2
0000000007cc5f61: a802                         test     al, 2
0000000007cc5f63: 0f8589000000                 jne      0x7cc5ff2
0000000007cc5f69: a804                         test     al, 4
0000000007cc5f6b: 0f85b1000000                 jne      0x7cc6022
0000000007cc5f71: a808                         test     al, 8
0000000007cc5f73: 0f85c6000000                 jne      0x7cc603f
0000000007cc5f79: a810                         test     al, 0x10
0000000007cc5f7b: 0f85db000000                 jne      0x7cc605c
0000000007cc5f81: a820                         test     al, 0x20
0000000007cc5f83: 0f85f0000000                 jne      0x7cc6079
0000000007cc5f89: a840                         test     al, 0x40
0000000007cc5f8b: 0f8505010000                 jne      0x7cc6096
0000000007cc5f91: 84c0                         test     al, al
0000000007cc5f93: 0f881a010000                 js       0x7cc60b3
0000000007cc5f99: a900010000                   test     eax, 0x100
0000000007cc5f9e: 0f852f010000                 jne      0x7cc60d3
0000000007cc5fa4: a900020000                   test     eax, 0x200
0000000007cc5fa9: 0f8557010000                 jne      0x7cc6106
0000000007cc5faf: a900040000                   test     eax, 0x400
0000000007cc5fb4: 0f857f010000                 jne      0x7cc6139
0000000007cc5fba: 4883c408                     add      rsp, 8
0000000007cc5fbe: 5b                           pop      rbx
0000000007cc5fbf: 415e                         pop      r14
0000000007cc5fc1: c3                           ret
0000000007cc5fc2: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007cc5fc6: 4885f6                       test     rsi, rsi
0000000007cc5fc9: 750e                         jne      0x7cc5fd9
0000000007cc5fcb: 488d05be5c0303               lea      rax, [rip + 0x3035cbe]
0000000007cc5fd2: 488b00                       mov      rax, qword ptr [rax]
0000000007cc5fd5: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000007cc5fd9: bf01000000                   mov      edi, 1
0000000007cc5fde: 4889da                       mov      rdx, rbx
0000000007cc5fe1: e80ac72801                   call     0x8f526f0
0000000007cc5fe6: 418b465c                     mov      eax, dword ptr [r14 + 0x5c]
0000000007cc5fea: a802                         test     al, 2
0000000007cc5fec: 0f8477ffffff                 je       0x7cc5f69
0000000007cc5ff2: 498b7610                     mov      rsi, qword ptr [r14 + 0x10]
0000000007cc5ff6: 4885f6                       test     rsi, rsi
0000000007cc5ff9: 750e                         jne      0x7cc6009
0000000007cc5ffb: 488d058e5c0303               lea      rax, [rip + 0x3035c8e]
0000000007cc6002: 488b00                       mov      rax, qword ptr [rax]
0000000007cc6005: 488b7010                     mov      rsi, qword ptr [rax + 0x10]
0000000007cc6009: bf02000000                   mov      edi, 2
0000000007cc600e: 4889da                       mov      rdx, rbx
0000000007cc6011: e8dac62801                   call     0x8f526f0
0000000007cc6016: 418b465c                     mov      eax, dword ptr [r14 + 0x5c]
0000000007cc601a: a804                         test     al, 4
0000000007cc601c: 0f844fffffff                 je       0x7cc5f71
0000000007cc6022: 418b7620                     mov      esi, dword ptr [r14 + 0x20]
0000000007cc6026: bf03000000                   mov      edi, 3
0000000007cc602b: 4889da                       mov      rdx, rbx
0000000007cc602e: e84dc32801                   call     0x8f52380
0000000007cc6033: 418b465c                     mov      eax, dword ptr [r14 + 0x5c]
0000000007cc6037: a808                         test     al, 8
0000000007cc6039: 0f843affffff                 je       0x7cc5f79
0000000007cc603f: 498b7618                     mov      rsi, qword ptr [r14 + 0x18]
0000000007cc6043: bf04000000                   mov      edi, 4
0000000007cc6048: 4889da                       mov      rdx, rbx
0000000007cc604b: e800c52801                   call     0x8f52550
0000000007cc6050: 418b465c                     mov      eax, dword ptr [r14 + 0x5c]
0000000007cc6054: a810                         test     al, 0x10
0000000007cc6056: 0f8425ffffff                 je       0x7cc5f81
0000000007cc605c: 498b7628                     mov      rsi, qword ptr [r14 + 0x28]
0000000007cc6060: bf05000000                   mov      edi, 5
0000000007cc6065: 4889da                       mov      rdx, rbx
0000000007cc6068: e8e3c42801                   call     0x8f52550
0000000007cc606d: 418b465c                     mov      eax, dword ptr [r14 + 0x5c]
0000000007cc6071: a820                         test     al, 0x20
0000000007cc6073: 0f8410ffffff                 je       0x7cc5f89
0000000007cc6079: 418b7624                     mov      esi, dword ptr [r14 + 0x24]
0000000007cc607d: bf06000000                   mov      edi, 6
0000000007cc6082: 4889da                       mov      rdx, rbx
0000000007cc6085: e8f6c22801                   call     0x8f52380
0000000007cc608a: 418b465c                     mov      eax, dword ptr [r14 + 0x5c]
0000000007cc608e: a840                         test     al, 0x40
0000000007cc6090: 0f84fbfeffff                 je       0x7cc5f91
0000000007cc6096: 498b7630                     mov      rsi, qword ptr [r14 + 0x30]
0000000007cc609a: bf07000000                   mov      edi, 7
0000000007cc609f: 4889da                       mov      rdx, rbx
0000000007cc60a2: e8a9c42801                   call     0x8f52550
0000000007cc60a7: 418b465c                     mov      eax, dword ptr [r14 + 0x5c]
0000000007cc60ab: 84c0                         test     al, al
0000000007cc60ad: 0f89e6feffff                 jns      0x7cc5f99
0000000007cc60b3: 498b7638                     mov      rsi, qword ptr [r14 + 0x38]
0000000007cc60b7: bf08000000                   mov      edi, 8
0000000007cc60bc: 4889da                       mov      rdx, rbx
0000000007cc60bf: e88cc42801                   call     0x8f52550
0000000007cc60c4: 418b465c                     mov      eax, dword ptr [r14 + 0x5c]
0000000007cc60c8: a900010000                   test     eax, 0x100
0000000007cc60cd: 0f84d1feffff                 je       0x7cc5fa4
0000000007cc60d3: 498b7640                     mov      rsi, qword ptr [r14 + 0x40]
0000000007cc60d7: 4885f6                       test     rsi, rsi
0000000007cc60da: 750e                         jne      0x7cc60ea
0000000007cc60dc: 488d05ad5b0303               lea      rax, [rip + 0x3035bad]
0000000007cc60e3: 488b00                       mov      rax, qword ptr [rax]
0000000007cc60e6: 488b7040                     mov      rsi, qword ptr [rax + 0x40]
0000000007cc60ea: bf09000000                   mov      edi, 9
0000000007cc60ef: 4889da                       mov      rdx, rbx
0000000007cc60f2: e8f9c52801                   call     0x8f526f0
0000000007cc60f7: 418b465c                     mov      eax, dword ptr [r14 + 0x5c]
0000000007cc60fb: a900020000                   test     eax, 0x200
0000000007cc6100: 0f84a9feffff                 je       0x7cc5faf
0000000007cc6106: 498b7648                     mov      rsi, qword ptr [r14 + 0x48]
0000000007cc610a: 4885f6                       test     rsi, rsi
0000000007cc610d: 750e                         jne      0x7cc611d
0000000007cc610f: 488d057a5b0303               lea      rax, [rip + 0x3035b7a]
0000000007cc6116: 488b00                       mov      rax, qword ptr [rax]
0000000007cc6119: 488b7048                     mov      rsi, qword ptr [rax + 0x48]
0000000007cc611d: bf0a000000                   mov      edi, 0xa
0000000007cc6122: 4889da                       mov      rdx, rbx
0000000007cc6125: e8c6c52801                   call     0x8f526f0
0000000007cc612a: 418b465c                     mov      eax, dword ptr [r14 + 0x5c]
0000000007cc612e: a900040000                   test     eax, 0x400
0000000007cc6133: 0f8481feffff                 je       0x7cc5fba
0000000007cc6139: 498b7650                     mov      rsi, qword ptr [r14 + 0x50]
0000000007cc613d: 4885f6                       test     rsi, rsi
0000000007cc6140: 750e                         jne      0x7cc6150
0000000007cc6142: 488d05475b0303               lea      rax, [rip + 0x3035b47]
0000000007cc6149: 488b00                       mov      rax, qword ptr [rax]
0000000007cc614c: 488b7050                     mov      rsi, qword ptr [rax + 0x50]
0000000007cc6150: bf0b000000                   mov      edi, 0xb
0000000007cc6155: 4889da                       mov      rdx, rbx
0000000007cc6158: 4883c408                     add      rsp, 8
0000000007cc615c: 5b                           pop      rbx
0000000007cc615d: 415e                         pop      r14
0000000007cc615f: e98cc52801                   jmp      0x8f526f0
