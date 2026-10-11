0000000007cfcd80: 4156                         push     r14
0000000007cfcd82: 53                           push     rbx
0000000007cfcd83: 50                           push     rax
0000000007cfcd84: 4889f3                       mov      rbx, rsi
0000000007cfcd87: 4989fe                       mov      r14, rdi
0000000007cfcd8a: 8b4760                       mov      eax, dword ptr [rdi + 0x60]
0000000007cfcd8d: a801                         test     al, 1
0000000007cfcd8f: 7577                         jne      0x7cfce08
0000000007cfcd91: a802                         test     al, 2
0000000007cfcd93: 0f859f000000                 jne      0x7cfce38
0000000007cfcd99: a804                         test     al, 4
0000000007cfcd9b: 0f85b4000000                 jne      0x7cfce55
0000000007cfcda1: a808                         test     al, 8
0000000007cfcda3: 0f85dc000000                 jne      0x7cfce85
0000000007cfcda9: a810                         test     al, 0x10
0000000007cfcdab: 0f8504010000                 jne      0x7cfceb5
0000000007cfcdb1: a820                         test     al, 0x20
0000000007cfcdb3: 0f852c010000                 jne      0x7cfcee5
0000000007cfcdb9: a840                         test     al, 0x40
0000000007cfcdbb: 0f8541010000                 jne      0x7cfcf02
0000000007cfcdc1: 84c0                         test     al, al
0000000007cfcdc3: 0f8856010000                 js       0x7cfcf1f
0000000007cfcdc9: a900010000                   test     eax, 0x100
0000000007cfcdce: 0f856b010000                 jne      0x7cfcf3f
0000000007cfcdd4: a900020000                   test     eax, 0x200
0000000007cfcdd9: 0f8580010000                 jne      0x7cfcf5f
0000000007cfcddf: a900040000                   test     eax, 0x400
0000000007cfcde4: 0f8595010000                 jne      0x7cfcf7f
0000000007cfcdea: a900080000                   test     eax, 0x800
0000000007cfcdef: 0f85aa010000                 jne      0x7cfcf9f
0000000007cfcdf5: a900100000                   test     eax, 0x1000
0000000007cfcdfa: 0f85bf010000                 jne      0x7cfcfbf
0000000007cfce00: 4883c408                     add      rsp, 8
0000000007cfce04: 5b                           pop      rbx
0000000007cfce05: 415e                         pop      r14
0000000007cfce07: c3                           ret
0000000007cfce08: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007cfce0c: 4885f6                       test     rsi, rsi
0000000007cfce0f: 750e                         jne      0x7cfce1f
0000000007cfce11: 488d05a8f0ff02               lea      rax, [rip + 0x2fff0a8]
0000000007cfce18: 488b00                       mov      rax, qword ptr [rax]
0000000007cfce1b: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000007cfce1f: bf01000000                   mov      edi, 1
0000000007cfce24: 4889da                       mov      rdx, rbx
0000000007cfce27: e8c4582501                   call     0x8f526f0
0000000007cfce2c: 418b4660                     mov      eax, dword ptr [r14 + 0x60]
0000000007cfce30: a802                         test     al, 2
0000000007cfce32: 0f8461ffffff                 je       0x7cfcd99
0000000007cfce38: 418b7620                     mov      esi, dword ptr [r14 + 0x20]
0000000007cfce3c: bf02000000                   mov      edi, 2
0000000007cfce41: 4889da                       mov      rdx, rbx
0000000007cfce44: e837552501                   call     0x8f52380
0000000007cfce49: 418b4660                     mov      eax, dword ptr [r14 + 0x60]
0000000007cfce4d: a804                         test     al, 4
0000000007cfce4f: 0f844cffffff                 je       0x7cfcda1
0000000007cfce55: 498b7610                     mov      rsi, qword ptr [r14 + 0x10]
0000000007cfce59: 4885f6                       test     rsi, rsi
0000000007cfce5c: 750e                         jne      0x7cfce6c
0000000007cfce5e: 488d055bf0ff02               lea      rax, [rip + 0x2fff05b]
0000000007cfce65: 488b00                       mov      rax, qword ptr [rax]
0000000007cfce68: 488b7010                     mov      rsi, qword ptr [rax + 0x10]
0000000007cfce6c: bf03000000                   mov      edi, 3
0000000007cfce71: 4889da                       mov      rdx, rbx
0000000007cfce74: e877582501                   call     0x8f526f0
0000000007cfce79: 418b4660                     mov      eax, dword ptr [r14 + 0x60]
0000000007cfce7d: a808                         test     al, 8
0000000007cfce7f: 0f8424ffffff                 je       0x7cfcda9
0000000007cfce85: 498b7618                     mov      rsi, qword ptr [r14 + 0x18]
0000000007cfce89: 4885f6                       test     rsi, rsi
0000000007cfce8c: 750e                         jne      0x7cfce9c
0000000007cfce8e: 488d052bf0ff02               lea      rax, [rip + 0x2fff02b]
0000000007cfce95: 488b00                       mov      rax, qword ptr [rax]
0000000007cfce98: 488b7018                     mov      rsi, qword ptr [rax + 0x18]
0000000007cfce9c: bf04000000                   mov      edi, 4
0000000007cfcea1: 4889da                       mov      rdx, rbx
0000000007cfcea4: e847582501                   call     0x8f526f0
0000000007cfcea9: 418b4660                     mov      eax, dword ptr [r14 + 0x60]
0000000007cfcead: a810                         test     al, 0x10
0000000007cfceaf: 0f84fcfeffff                 je       0x7cfcdb1
0000000007cfceb5: 498b7628                     mov      rsi, qword ptr [r14 + 0x28]
0000000007cfceb9: 4885f6                       test     rsi, rsi
0000000007cfcebc: 750e                         jne      0x7cfcecc
0000000007cfcebe: 488d05fbefff02               lea      rax, [rip + 0x2ffeffb]
0000000007cfcec5: 488b00                       mov      rax, qword ptr [rax]
0000000007cfcec8: 488b7028                     mov      rsi, qword ptr [rax + 0x28]
0000000007cfcecc: bf05000000                   mov      edi, 5
0000000007cfced1: 4889da                       mov      rdx, rbx
0000000007cfced4: e817582501                   call     0x8f526f0
0000000007cfced9: 418b4660                     mov      eax, dword ptr [r14 + 0x60]
0000000007cfcedd: a820                         test     al, 0x20
0000000007cfcedf: 0f84d4feffff                 je       0x7cfcdb9
0000000007cfcee5: 418b7624                     mov      esi, dword ptr [r14 + 0x24]
0000000007cfcee9: bf06000000                   mov      edi, 6
0000000007cfceee: 4889da                       mov      rdx, rbx
0000000007cfcef1: e88a542501                   call     0x8f52380
0000000007cfcef6: 418b4660                     mov      eax, dword ptr [r14 + 0x60]
0000000007cfcefa: a840                         test     al, 0x40
0000000007cfcefc: 0f84bffeffff                 je       0x7cfcdc1
0000000007cfcf02: 418b7630                     mov      esi, dword ptr [r14 + 0x30]
0000000007cfcf06: bf07000000                   mov      edi, 7
0000000007cfcf0b: 4889da                       mov      rdx, rbx
0000000007cfcf0e: e86d542501                   call     0x8f52380
0000000007cfcf13: 418b4660                     mov      eax, dword ptr [r14 + 0x60]
0000000007cfcf17: 84c0                         test     al, al
0000000007cfcf19: 0f89aafeffff                 jns      0x7cfcdc9
0000000007cfcf1f: 418b7634                     mov      esi, dword ptr [r14 + 0x34]
0000000007cfcf23: bf08000000                   mov      edi, 8
0000000007cfcf28: 4889da                       mov      rdx, rbx
0000000007cfcf2b: e850542501                   call     0x8f52380
0000000007cfcf30: 418b4660                     mov      eax, dword ptr [r14 + 0x60]
0000000007cfcf34: a900010000                   test     eax, 0x100
0000000007cfcf39: 0f8495feffff                 je       0x7cfcdd4
0000000007cfcf3f: 418b7658                     mov      esi, dword ptr [r14 + 0x58]
0000000007cfcf43: bf09000000                   mov      edi, 9
0000000007cfcf48: 4889da                       mov      rdx, rbx
0000000007cfcf4b: e830542501                   call     0x8f52380
0000000007cfcf50: 418b4660                     mov      eax, dword ptr [r14 + 0x60]
0000000007cfcf54: a900020000                   test     eax, 0x200
0000000007cfcf59: 0f8480feffff                 je       0x7cfcddf
0000000007cfcf5f: 498b7638                     mov      rsi, qword ptr [r14 + 0x38]
0000000007cfcf63: bf0a000000                   mov      edi, 0xa
0000000007cfcf68: 4889da                       mov      rdx, rbx
0000000007cfcf6b: e840542501                   call     0x8f523b0
0000000007cfcf70: 418b4660                     mov      eax, dword ptr [r14 + 0x60]
0000000007cfcf74: a900040000                   test     eax, 0x400
0000000007cfcf79: 0f846bfeffff                 je       0x7cfcdea
0000000007cfcf7f: 498b7640                     mov      rsi, qword ptr [r14 + 0x40]
0000000007cfcf83: bf0b000000                   mov      edi, 0xb
0000000007cfcf88: 4889da                       mov      rdx, rbx
0000000007cfcf8b: e8c0552501                   call     0x8f52550
0000000007cfcf90: 418b4660                     mov      eax, dword ptr [r14 + 0x60]
0000000007cfcf94: a900080000                   test     eax, 0x800
0000000007cfcf99: 0f8456feffff                 je       0x7cfcdf5
0000000007cfcf9f: 498b7648                     mov      rsi, qword ptr [r14 + 0x48]
0000000007cfcfa3: bf0c000000                   mov      edi, 0xc
0000000007cfcfa8: 4889da                       mov      rdx, rbx
0000000007cfcfab: e8a0552501                   call     0x8f52550
0000000007cfcfb0: 418b4660                     mov      eax, dword ptr [r14 + 0x60]
0000000007cfcfb4: a900100000                   test     eax, 0x1000
0000000007cfcfb9: 0f8441feffff                 je       0x7cfce00
0000000007cfcfbf: 498b7650                     mov      rsi, qword ptr [r14 + 0x50]
0000000007cfcfc3: bf0d000000                   mov      edi, 0xd
0000000007cfcfc8: 4889da                       mov      rdx, rbx
0000000007cfcfcb: 4883c408                     add      rsp, 8
0000000007cfcfcf: 5b                           pop      rbx
0000000007cfcfd0: 415e                         pop      r14
0000000007cfcfd2: e979552501                   jmp      0x8f52550
