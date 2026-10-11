0000000007d0dd50: 4156                         push     r14
0000000007d0dd52: 53                           push     rbx
0000000007d0dd53: 50                           push     rax
0000000007d0dd54: 4889f3                       mov      rbx, rsi
0000000007d0dd57: 4989fe                       mov      r14, rdi
0000000007d0dd5a: 8b4764                       mov      eax, dword ptr [rdi + 0x64]
0000000007d0dd5d: a801                         test     al, 1
0000000007d0dd5f: 7577                         jne      0x7d0ddd8
0000000007d0dd61: a802                         test     al, 2
0000000007d0dd63: 0f859f000000                 jne      0x7d0de08
0000000007d0dd69: a804                         test     al, 4
0000000007d0dd6b: 0f85b4000000                 jne      0x7d0de25
0000000007d0dd71: a808                         test     al, 8
0000000007d0dd73: 0f85c9000000                 jne      0x7d0de42
0000000007d0dd79: a810                         test     al, 0x10
0000000007d0dd7b: 0f85de000000                 jne      0x7d0de5f
0000000007d0dd81: a820                         test     al, 0x20
0000000007d0dd83: 0f85f3000000                 jne      0x7d0de7c
0000000007d0dd89: a840                         test     al, 0x40
0000000007d0dd8b: 0f8508010000                 jne      0x7d0de99
0000000007d0dd91: 84c0                         test     al, al
0000000007d0dd93: 0f881d010000                 js       0x7d0deb6
0000000007d0dd99: a900010000                   test     eax, 0x100
0000000007d0dd9e: 0f8532010000                 jne      0x7d0ded6
0000000007d0dda4: a900020000                   test     eax, 0x200
0000000007d0dda9: 0f8547010000                 jne      0x7d0def6
0000000007d0ddaf: a900040000                   test     eax, 0x400
0000000007d0ddb4: 0f855c010000                 jne      0x7d0df16
0000000007d0ddba: a900080000                   test     eax, 0x800
0000000007d0ddbf: 0f8571010000                 jne      0x7d0df36
0000000007d0ddc5: a900100000                   test     eax, 0x1000
0000000007d0ddca: 0f8586010000                 jne      0x7d0df56
0000000007d0ddd0: 4883c408                     add      rsp, 8
0000000007d0ddd4: 5b                           pop      rbx
0000000007d0ddd5: 415e                         pop      r14
0000000007d0ddd7: c3                           ret
0000000007d0ddd8: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007d0dddc: 4885f6                       test     rsi, rsi
0000000007d0dddf: 750e                         jne      0x7d0ddef
0000000007d0dde1: 488d0548e1fe02               lea      rax, [rip + 0x2fee148]
0000000007d0dde8: 488b00                       mov      rax, qword ptr [rax]
0000000007d0ddeb: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000007d0ddef: bf01000000                   mov      edi, 1
0000000007d0ddf4: 4889da                       mov      rdx, rbx
0000000007d0ddf7: e8f4482401                   call     0x8f526f0
0000000007d0ddfc: 418b4664                     mov      eax, dword ptr [r14 + 0x64]
0000000007d0de00: a802                         test     al, 2
0000000007d0de02: 0f8461ffffff                 je       0x7d0dd69
0000000007d0de08: 498b7610                     mov      rsi, qword ptr [r14 + 0x10]
0000000007d0de0c: bf02000000                   mov      edi, 2
0000000007d0de11: 4889da                       mov      rdx, rbx
0000000007d0de14: e837472401                   call     0x8f52550
0000000007d0de19: 418b4664                     mov      eax, dword ptr [r14 + 0x64]
0000000007d0de1d: a804                         test     al, 4
0000000007d0de1f: 0f844cffffff                 je       0x7d0dd71
0000000007d0de25: 498b7618                     mov      rsi, qword ptr [r14 + 0x18]
0000000007d0de29: bf03000000                   mov      edi, 3
0000000007d0de2e: 4889da                       mov      rdx, rbx
0000000007d0de31: e81a472401                   call     0x8f52550
0000000007d0de36: 418b4664                     mov      eax, dword ptr [r14 + 0x64]
0000000007d0de3a: a808                         test     al, 8
0000000007d0de3c: 0f8437ffffff                 je       0x7d0dd79
0000000007d0de42: 498b7620                     mov      rsi, qword ptr [r14 + 0x20]
0000000007d0de46: bf04000000                   mov      edi, 4
0000000007d0de4b: 4889da                       mov      rdx, rbx
0000000007d0de4e: e8fd462401                   call     0x8f52550
0000000007d0de53: 418b4664                     mov      eax, dword ptr [r14 + 0x64]
0000000007d0de57: a810                         test     al, 0x10
0000000007d0de59: 0f8422ffffff                 je       0x7d0dd81
0000000007d0de5f: 418b7630                     mov      esi, dword ptr [r14 + 0x30]
0000000007d0de63: bf05000000                   mov      edi, 5
0000000007d0de68: 4889da                       mov      rdx, rbx
0000000007d0de6b: e810452401                   call     0x8f52380
0000000007d0de70: 418b4664                     mov      eax, dword ptr [r14 + 0x64]
0000000007d0de74: a820                         test     al, 0x20
0000000007d0de76: 0f840dffffff                 je       0x7d0dd89
0000000007d0de7c: 498b7628                     mov      rsi, qword ptr [r14 + 0x28]
0000000007d0de80: bf06000000                   mov      edi, 6
0000000007d0de85: 4889da                       mov      rdx, rbx
0000000007d0de88: e8c3462401                   call     0x8f52550
0000000007d0de8d: 418b4664                     mov      eax, dword ptr [r14 + 0x64]
0000000007d0de91: a840                         test     al, 0x40
0000000007d0de93: 0f84f8feffff                 je       0x7d0dd91
0000000007d0de99: 418b7634                     mov      esi, dword ptr [r14 + 0x34]
0000000007d0de9d: bf07000000                   mov      edi, 7
0000000007d0dea2: 4889da                       mov      rdx, rbx
0000000007d0dea5: e8d6442401                   call     0x8f52380
0000000007d0deaa: 418b4664                     mov      eax, dword ptr [r14 + 0x64]
0000000007d0deae: 84c0                         test     al, al
0000000007d0deb0: 0f89e3feffff                 jns      0x7d0dd99
0000000007d0deb6: 418b7648                     mov      esi, dword ptr [r14 + 0x48]
0000000007d0deba: bf08000000                   mov      edi, 8
0000000007d0debf: 4889da                       mov      rdx, rbx
0000000007d0dec2: e8b9442401                   call     0x8f52380
0000000007d0dec7: 418b4664                     mov      eax, dword ptr [r14 + 0x64]
0000000007d0decb: a900010000                   test     eax, 0x100
0000000007d0ded0: 0f84cefeffff                 je       0x7d0dda4
0000000007d0ded6: 498b7638                     mov      rsi, qword ptr [r14 + 0x38]
0000000007d0deda: bf09000000                   mov      edi, 9
0000000007d0dedf: 4889da                       mov      rdx, rbx
0000000007d0dee2: e8c9442401                   call     0x8f523b0
0000000007d0dee7: 418b4664                     mov      eax, dword ptr [r14 + 0x64]
0000000007d0deeb: a900020000                   test     eax, 0x200
0000000007d0def0: 0f84b9feffff                 je       0x7d0ddaf
0000000007d0def6: 498b7640                     mov      rsi, qword ptr [r14 + 0x40]
0000000007d0defa: bf0a000000                   mov      edi, 0xa
0000000007d0deff: 4889da                       mov      rdx, rbx
0000000007d0df02: e849462401                   call     0x8f52550
0000000007d0df07: 418b4664                     mov      eax, dword ptr [r14 + 0x64]
0000000007d0df0b: a900040000                   test     eax, 0x400
0000000007d0df10: 0f84a4feffff                 je       0x7d0ddba
0000000007d0df16: 498b7650                     mov      rsi, qword ptr [r14 + 0x50]
0000000007d0df1a: bf0b000000                   mov      edi, 0xb
0000000007d0df1f: 4889da                       mov      rdx, rbx
0000000007d0df22: e829462401                   call     0x8f52550
0000000007d0df27: 418b4664                     mov      eax, dword ptr [r14 + 0x64]
0000000007d0df2b: a900080000                   test     eax, 0x800
0000000007d0df30: 0f848ffeffff                 je       0x7d0ddc5
0000000007d0df36: 418b764c                     mov      esi, dword ptr [r14 + 0x4c]
0000000007d0df3a: bf0c000000                   mov      edi, 0xc
0000000007d0df3f: 4889da                       mov      rdx, rbx
0000000007d0df42: e839442401                   call     0x8f52380
0000000007d0df47: 418b4664                     mov      eax, dword ptr [r14 + 0x64]
0000000007d0df4b: a900100000                   test     eax, 0x1000
0000000007d0df50: 0f847afeffff                 je       0x7d0ddd0
0000000007d0df56: 498b7658                     mov      rsi, qword ptr [r14 + 0x58]
0000000007d0df5a: bf0d000000                   mov      edi, 0xd
0000000007d0df5f: 4889da                       mov      rdx, rbx
0000000007d0df62: 4883c408                     add      rsp, 8
0000000007d0df66: 5b                           pop      rbx
0000000007d0df67: 415e                         pop      r14
0000000007d0df69: e9e2452401                   jmp      0x8f52550
