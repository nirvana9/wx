00000000079f0830: 4156                         push     r14
00000000079f0832: 53                           push     rbx
00000000079f0833: 50                           push     rax
00000000079f0834: 4889f3                       mov      rbx, rsi
00000000079f0837: 4989fe                       mov      r14, rdi
00000000079f083a: 8b8794000000                 mov      eax, dword ptr [rdi + 0x94]
00000000079f0840: a801                         test     al, 1
00000000079f0842: 0f85d8000000                 jne      0x79f0920
00000000079f0848: a802                         test     al, 2
00000000079f084a: 0f85f0000000                 jne      0x79f0940
00000000079f0850: a804                         test     al, 4
00000000079f0852: 0f8508010000                 jne      0x79f0960
00000000079f0858: a808                         test     al, 8
00000000079f085a: 0f8520010000                 jne      0x79f0980
00000000079f0860: a810                         test     al, 0x10
00000000079f0862: 0f8538010000                 jne      0x79f09a0
00000000079f0868: a820                         test     al, 0x20
00000000079f086a: 0f8550010000                 jne      0x79f09c0
00000000079f0870: a840                         test     al, 0x40
00000000079f0872: 0f8568010000                 jne      0x79f09e0
00000000079f0878: 84c0                         test     al, al
00000000079f087a: 0f8880010000                 js       0x79f0a00
00000000079f0880: a900010000                   test     eax, 0x100
00000000079f0885: 0f85ab010000                 jne      0x79f0a36
00000000079f088b: a900020000                   test     eax, 0x200
00000000079f0890: 0f85c3010000                 jne      0x79f0a59
00000000079f0896: a900040000                   test     eax, 0x400
00000000079f089b: 0f85ee010000                 jne      0x79f0a8f
00000000079f08a1: a900080000                   test     eax, 0x800
00000000079f08a6: 0f8506020000                 jne      0x79f0ab2
00000000079f08ac: a900100000                   test     eax, 0x1000
00000000079f08b1: 0f851e020000                 jne      0x79f0ad5
00000000079f08b7: a900200000                   test     eax, 0x2000
00000000079f08bc: 0f8536020000                 jne      0x79f0af8
00000000079f08c2: a900400000                   test     eax, 0x4000
00000000079f08c7: 0f854e020000                 jne      0x79f0b1b
00000000079f08cd: 6685c0                       test     ax, ax
00000000079f08d0: 0f8866020000                 js       0x79f0b3c
00000000079f08d6: a900000100                   test     eax, 0x10000
00000000079f08db: 0f857e020000                 jne      0x79f0b5f
00000000079f08e1: a900000200                   test     eax, 0x20000
00000000079f08e6: 0f8596020000                 jne      0x79f0b82
00000000079f08ec: a900000400                   test     eax, 0x40000
00000000079f08f1: 0f85c1020000                 jne      0x79f0bb8
00000000079f08f7: a900000800                   test     eax, 0x80000
00000000079f08fc: 0f85d9020000                 jne      0x79f0bdb
00000000079f0902: a900001000                   test     eax, 0x100000
00000000079f0907: 0f85f1020000                 jne      0x79f0bfe
00000000079f090d: a900002000                   test     eax, 0x200000
00000000079f0912: 0f850c030000                 jne      0x79f0c24
00000000079f0918: 4883c408                     add      rsp, 8
00000000079f091c: 5b                           pop      rbx
00000000079f091d: 415e                         pop      r14
00000000079f091f: c3                           ret
00000000079f0920: 498b7608                     mov      rsi, qword ptr [r14 + 8]
00000000079f0924: bf01000000                   mov      edi, 1
00000000079f0929: 4889da                       mov      rdx, rbx
00000000079f092c: e81f1c5601                   call     0x8f52550
00000000079f0931: 418b8694000000               mov      eax, dword ptr [r14 + 0x94]
00000000079f0938: a802                         test     al, 2
00000000079f093a: 0f8410ffffff                 je       0x79f0850
00000000079f0940: 498b7610                     mov      rsi, qword ptr [r14 + 0x10]
00000000079f0944: bf02000000                   mov      edi, 2
00000000079f0949: 4889da                       mov      rdx, rbx
00000000079f094c: e8ff1b5601                   call     0x8f52550
00000000079f0951: 418b8694000000               mov      eax, dword ptr [r14 + 0x94]
00000000079f0958: a804                         test     al, 4
00000000079f095a: 0f84f8feffff                 je       0x79f0858
00000000079f0960: 418b7618                     mov      esi, dword ptr [r14 + 0x18]
00000000079f0964: bf03000000                   mov      edi, 3
00000000079f0969: 4889da                       mov      rdx, rbx
00000000079f096c: e80f1a5601                   call     0x8f52380
00000000079f0971: 418b8694000000               mov      eax, dword ptr [r14 + 0x94]
00000000079f0978: a808                         test     al, 8
00000000079f097a: 0f84e0feffff                 je       0x79f0860
00000000079f0980: 418b761c                     mov      esi, dword ptr [r14 + 0x1c]
00000000079f0984: bf04000000                   mov      edi, 4
00000000079f0989: 4889da                       mov      rdx, rbx
00000000079f098c: e8ef195601                   call     0x8f52380
00000000079f0991: 418b8694000000               mov      eax, dword ptr [r14 + 0x94]
00000000079f0998: a810                         test     al, 0x10
00000000079f099a: 0f84c8feffff                 je       0x79f0868
00000000079f09a0: 498b7620                     mov      rsi, qword ptr [r14 + 0x20]
00000000079f09a4: bf05000000                   mov      edi, 5
00000000079f09a9: 4889da                       mov      rdx, rbx
00000000079f09ac: e89f1b5601                   call     0x8f52550
00000000079f09b1: 418b8694000000               mov      eax, dword ptr [r14 + 0x94]
00000000079f09b8: a820                         test     al, 0x20
00000000079f09ba: 0f84b0feffff                 je       0x79f0870
00000000079f09c0: 418b7628                     mov      esi, dword ptr [r14 + 0x28]
00000000079f09c4: bf06000000                   mov      edi, 6
00000000079f09c9: 4889da                       mov      rdx, rbx
00000000079f09cc: e8af195601                   call     0x8f52380
00000000079f09d1: 418b8694000000               mov      eax, dword ptr [r14 + 0x94]
00000000079f09d8: a840                         test     al, 0x40
00000000079f09da: 0f8498feffff                 je       0x79f0878
00000000079f09e0: 418b762c                     mov      esi, dword ptr [r14 + 0x2c]
00000000079f09e4: bf07000000                   mov      edi, 7
00000000079f09e9: 4889da                       mov      rdx, rbx
00000000079f09ec: e88f195601                   call     0x8f52380
00000000079f09f1: 418b8694000000               mov      eax, dword ptr [r14 + 0x94]
00000000079f09f8: 84c0                         test     al, al
00000000079f09fa: 0f8980feffff                 jns      0x79f0880
00000000079f0a00: 498b7630                     mov      rsi, qword ptr [r14 + 0x30]
00000000079f0a04: 4885f6                       test     rsi, rsi
00000000079f0a07: 750e                         jne      0x79f0a17
00000000079f0a09: 488d05e0963003               lea      rax, [rip + 0x33096e0]
00000000079f0a10: 488b00                       mov      rax, qword ptr [rax]
00000000079f0a13: 488b7030                     mov      rsi, qword ptr [rax + 0x30]
00000000079f0a17: bf08000000                   mov      edi, 8
00000000079f0a1c: 4889da                       mov      rdx, rbx
00000000079f0a1f: e8cc1c5601                   call     0x8f526f0
00000000079f0a24: 418b8694000000               mov      eax, dword ptr [r14 + 0x94]
00000000079f0a2b: a900010000                   test     eax, 0x100
00000000079f0a30: 0f8455feffff                 je       0x79f088b
00000000079f0a36: 418b7640                     mov      esi, dword ptr [r14 + 0x40]
00000000079f0a3a: bf09000000                   mov      edi, 9
00000000079f0a3f: 4889da                       mov      rdx, rbx
00000000079f0a42: e839195601                   call     0x8f52380
00000000079f0a47: 418b8694000000               mov      eax, dword ptr [r14 + 0x94]
00000000079f0a4e: a900020000                   test     eax, 0x200
00000000079f0a53: 0f843dfeffff                 je       0x79f0896
00000000079f0a59: 498b7638                     mov      rsi, qword ptr [r14 + 0x38]
00000000079f0a5d: 4885f6                       test     rsi, rsi
00000000079f0a60: 750e                         jne      0x79f0a70
00000000079f0a62: 488d0587963003               lea      rax, [rip + 0x3309687]
00000000079f0a69: 488b00                       mov      rax, qword ptr [rax]
00000000079f0a6c: 488b7038                     mov      rsi, qword ptr [rax + 0x38]
00000000079f0a70: bf0a000000                   mov      edi, 0xa
00000000079f0a75: 4889da                       mov      rdx, rbx
00000000079f0a78: e8731c5601                   call     0x8f526f0
00000000079f0a7d: 418b8694000000               mov      eax, dword ptr [r14 + 0x94]
00000000079f0a84: a900040000                   test     eax, 0x400
00000000079f0a89: 0f8412feffff                 je       0x79f08a1
00000000079f0a8f: 418b7644                     mov      esi, dword ptr [r14 + 0x44]
00000000079f0a93: bf0b000000                   mov      edi, 0xb
00000000079f0a98: 4889da                       mov      rdx, rbx
00000000079f0a9b: e8e0185601                   call     0x8f52380
00000000079f0aa0: 418b8694000000               mov      eax, dword ptr [r14 + 0x94]
00000000079f0aa7: a900080000                   test     eax, 0x800
00000000079f0aac: 0f84fafdffff                 je       0x79f08ac
00000000079f0ab2: 498b7648                     mov      rsi, qword ptr [r14 + 0x48]
00000000079f0ab6: bf0c000000                   mov      edi, 0xc
00000000079f0abb: 4889da                       mov      rdx, rbx
00000000079f0abe: e88d1a5601                   call     0x8f52550
00000000079f0ac3: 418b8694000000               mov      eax, dword ptr [r14 + 0x94]
00000000079f0aca: a900100000                   test     eax, 0x1000
00000000079f0acf: 0f84e2fdffff                 je       0x79f08b7
00000000079f0ad5: 418b7650                     mov      esi, dword ptr [r14 + 0x50]
00000000079f0ad9: bf0d000000                   mov      edi, 0xd
00000000079f0ade: 4889da                       mov      rdx, rbx
00000000079f0ae1: e89a185601                   call     0x8f52380
00000000079f0ae6: 418b8694000000               mov      eax, dword ptr [r14 + 0x94]
00000000079f0aed: a900200000                   test     eax, 0x2000
00000000079f0af2: 0f84cafdffff                 je       0x79f08c2
00000000079f0af8: 418b7654                     mov      esi, dword ptr [r14 + 0x54]
00000000079f0afc: bf0e000000                   mov      edi, 0xe
00000000079f0b01: 4889da                       mov      rdx, rbx
00000000079f0b04: e877185601                   call     0x8f52380
00000000079f0b09: 418b8694000000               mov      eax, dword ptr [r14 + 0x94]
00000000079f0b10: a900400000                   test     eax, 0x4000
00000000079f0b15: 0f84b2fdffff                 je       0x79f08cd
00000000079f0b1b: 418b7658                     mov      esi, dword ptr [r14 + 0x58]
00000000079f0b1f: bf0f000000                   mov      edi, 0xf
00000000079f0b24: 4889da                       mov      rdx, rbx
00000000079f0b27: e854185601                   call     0x8f52380
00000000079f0b2c: 418b8694000000               mov      eax, dword ptr [r14 + 0x94]
00000000079f0b33: 6685c0                       test     ax, ax
00000000079f0b36: 0f899afdffff                 jns      0x79f08d6
00000000079f0b3c: 498b7660                     mov      rsi, qword ptr [r14 + 0x60]
00000000079f0b40: bf10000000                   mov      edi, 0x10
00000000079f0b45: 4889da                       mov      rdx, rbx
00000000079f0b48: e863185601                   call     0x8f523b0
00000000079f0b4d: 418b8694000000               mov      eax, dword ptr [r14 + 0x94]
00000000079f0b54: a900000100                   test     eax, 0x10000
00000000079f0b59: 0f8482fdffff                 je       0x79f08e1
00000000079f0b5f: 418b765c                     mov      esi, dword ptr [r14 + 0x5c]
00000000079f0b63: bf11000000                   mov      edi, 0x11
00000000079f0b68: 4889da                       mov      rdx, rbx
00000000079f0b6b: e810185601                   call     0x8f52380
00000000079f0b70: 418b8694000000               mov      eax, dword ptr [r14 + 0x94]
00000000079f0b77: a900000200                   test     eax, 0x20000
00000000079f0b7c: 0f846afdffff                 je       0x79f08ec
00000000079f0b82: 498b7668                     mov      rsi, qword ptr [r14 + 0x68]
00000000079f0b86: 4885f6                       test     rsi, rsi
00000000079f0b89: 750e                         jne      0x79f0b99
00000000079f0b8b: 488d055e953003               lea      rax, [rip + 0x330955e]
00000000079f0b92: 488b00                       mov      rax, qword ptr [rax]
00000000079f0b95: 488b7068                     mov      rsi, qword ptr [rax + 0x68]
00000000079f0b99: bf12000000                   mov      edi, 0x12
00000000079f0b9e: 4889da                       mov      rdx, rbx
00000000079f0ba1: e84a1b5601                   call     0x8f526f0
00000000079f0ba6: 418b8694000000               mov      eax, dword ptr [r14 + 0x94]
00000000079f0bad: a900000400                   test     eax, 0x40000
00000000079f0bb2: 0f843ffdffff                 je       0x79f08f7
00000000079f0bb8: 498b7670                     mov      rsi, qword ptr [r14 + 0x70]
00000000079f0bbc: bf13000000                   mov      edi, 0x13
00000000079f0bc1: 4889da                       mov      rdx, rbx
00000000079f0bc4: e887195601                   call     0x8f52550
00000000079f0bc9: 418b8694000000               mov      eax, dword ptr [r14 + 0x94]
00000000079f0bd0: a900000800                   test     eax, 0x80000
00000000079f0bd5: 0f8427fdffff                 je       0x79f0902
00000000079f0bdb: 498b7678                     mov      rsi, qword ptr [r14 + 0x78]
00000000079f0bdf: bf14000000                   mov      edi, 0x14
00000000079f0be4: 4889da                       mov      rdx, rbx
00000000079f0be7: e864195601                   call     0x8f52550
00000000079f0bec: 418b8694000000               mov      eax, dword ptr [r14 + 0x94]
00000000079f0bf3: a900001000                   test     eax, 0x100000
00000000079f0bf8: 0f840ffdffff                 je       0x79f090d
00000000079f0bfe: 498bb680000000               mov      rsi, qword ptr [r14 + 0x80]
00000000079f0c05: bf15000000                   mov      edi, 0x15
00000000079f0c0a: 4889da                       mov      rdx, rbx
00000000079f0c0d: e83e195601                   call     0x8f52550
00000000079f0c12: 418b8694000000               mov      eax, dword ptr [r14 + 0x94]
00000000079f0c19: a900002000                   test     eax, 0x200000
00000000079f0c1e: 0f84f4fcffff                 je       0x79f0918
00000000079f0c24: 498bb688000000               mov      rsi, qword ptr [r14 + 0x88]
00000000079f0c2b: bf18000000                   mov      edi, 0x18
00000000079f0c30: 4889da                       mov      rdx, rbx
00000000079f0c33: 4883c408                     add      rsp, 8
00000000079f0c37: 5b                           pop      rbx
00000000079f0c38: 415e                         pop      r14
00000000079f0c3a: e911195601                   jmp      0x8f52550
