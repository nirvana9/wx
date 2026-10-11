0000000007cf9d70: 4156                         push     r14
0000000007cf9d72: 53                           push     rbx
0000000007cf9d73: 50                           push     rax
0000000007cf9d74: 4889f3                       mov      rbx, rsi
0000000007cf9d77: 4989fe                       mov      r14, rdi
0000000007cf9d7a: 8b877c010000                 mov      eax, dword ptr [rdi + 0x17c]
0000000007cf9d80: a801                         test     al, 1
0000000007cf9d82: 0f854e020000                 jne      0x7cf9fd6
0000000007cf9d88: a802                         test     al, 2
0000000007cf9d8a: 0f8579020000                 jne      0x7cfa009
0000000007cf9d90: a804                         test     al, 4
0000000007cf9d92: 0f85a4020000                 jne      0x7cfa03c
0000000007cf9d98: a808                         test     al, 8
0000000007cf9d9a: 0f85cf020000                 jne      0x7cfa06f
0000000007cf9da0: a810                         test     al, 0x10
0000000007cf9da2: 0f85fa020000                 jne      0x7cfa0a2
0000000007cf9da8: a820                         test     al, 0x20
0000000007cf9daa: 0f8512030000                 jne      0x7cfa0c2
0000000007cf9db0: a840                         test     al, 0x40
0000000007cf9db2: 0f852a030000                 jne      0x7cfa0e2
0000000007cf9db8: 84c0                         test     al, al
0000000007cf9dba: 0f8842030000                 js       0x7cfa102
0000000007cf9dc0: a900010000                   test     eax, 0x100
0000000007cf9dc5: 0f856d030000                 jne      0x7cfa138
0000000007cf9dcb: a900020000                   test     eax, 0x200
0000000007cf9dd0: 0f8585030000                 jne      0x7cfa15b
0000000007cf9dd6: a900040000                   test     eax, 0x400
0000000007cf9ddb: 0f859d030000                 jne      0x7cfa17e
0000000007cf9de1: a900080000                   test     eax, 0x800
0000000007cf9de6: 0f85b5030000                 jne      0x7cfa1a1
0000000007cf9dec: a900100000                   test     eax, 0x1000
0000000007cf9df1: 0f85cd030000                 jne      0x7cfa1c4
0000000007cf9df7: a900200000                   test     eax, 0x2000
0000000007cf9dfc: 0f85e5030000                 jne      0x7cfa1e7
0000000007cf9e02: a900400000                   test     eax, 0x4000
0000000007cf9e07: 0f85fd030000                 jne      0x7cfa20a
0000000007cf9e0d: 6685c0                       test     ax, ax
0000000007cf9e10: 0f8815040000                 js       0x7cfa22b
0000000007cf9e16: a900000100                   test     eax, 0x10000
0000000007cf9e1b: 0f852d040000                 jne      0x7cfa24e
0000000007cf9e21: a900000200                   test     eax, 0x20000
0000000007cf9e26: 0f8545040000                 jne      0x7cfa271
0000000007cf9e2c: a900000400                   test     eax, 0x40000
0000000007cf9e31: 0f855d040000                 jne      0x7cfa294
0000000007cf9e37: a900000800                   test     eax, 0x80000
0000000007cf9e3c: 0f8575040000                 jne      0x7cfa2b7
0000000007cf9e42: a900001000                   test     eax, 0x100000
0000000007cf9e47: 0f858d040000                 jne      0x7cfa2da
0000000007cf9e4d: a900002000                   test     eax, 0x200000
0000000007cf9e52: 0f85a8040000                 jne      0x7cfa300
0000000007cf9e58: a900004000                   test     eax, 0x400000
0000000007cf9e5d: 0f85c3040000                 jne      0x7cfa326
0000000007cf9e63: a900008000                   test     eax, 0x800000
0000000007cf9e68: 0f85de040000                 jne      0x7cfa34c
0000000007cf9e6e: a900000001                   test     eax, 0x1000000
0000000007cf9e73: 0f85f9040000                 jne      0x7cfa372
0000000007cf9e79: a900000002                   test     eax, 0x2000000
0000000007cf9e7e: 0f8514050000                 jne      0x7cfa398
0000000007cf9e84: a900000004                   test     eax, 0x4000000
0000000007cf9e89: 0f852f050000                 jne      0x7cfa3be
0000000007cf9e8f: a900000008                   test     eax, 0x8000000
0000000007cf9e94: 0f854a050000                 jne      0x7cfa3e4
0000000007cf9e9a: a900000010                   test     eax, 0x10000000
0000000007cf9e9f: 0f8565050000                 jne      0x7cfa40a
0000000007cf9ea5: a900000020                   test     eax, 0x20000000
0000000007cf9eaa: 0f8580050000                 jne      0x7cfa430
0000000007cf9eb0: a900000040                   test     eax, 0x40000000
0000000007cf9eb5: 0f859b050000                 jne      0x7cfa456
0000000007cf9ebb: 85c0                         test     eax, eax
0000000007cf9ebd: 0f88b6050000                 js       0x7cfa479
0000000007cf9ec3: 418b8680010000               mov      eax, dword ptr [r14 + 0x180]
0000000007cf9eca: a801                         test     al, 1
0000000007cf9ecc: 0f85c0050000                 jne      0x7cfa492
0000000007cf9ed2: a802                         test     al, 2
0000000007cf9ed4: 0f85db050000                 jne      0x7cfa4b5
0000000007cf9eda: a804                         test     al, 4
0000000007cf9edc: 0f85f6050000                 jne      0x7cfa4d8
0000000007cf9ee2: a808                         test     al, 8
0000000007cf9ee4: 0f8511060000                 jne      0x7cfa4fb
0000000007cf9eea: a810                         test     al, 0x10
0000000007cf9eec: 0f852c060000                 jne      0x7cfa51e
0000000007cf9ef2: a820                         test     al, 0x20
0000000007cf9ef4: 0f8547060000                 jne      0x7cfa541
0000000007cf9efa: a840                         test     al, 0x40
0000000007cf9efc: 0f8562060000                 jne      0x7cfa564
0000000007cf9f02: 84c0                         test     al, al
0000000007cf9f04: 0f887d060000                 js       0x7cfa587
0000000007cf9f0a: a900010000                   test     eax, 0x100
0000000007cf9f0f: 0f8598060000                 jne      0x7cfa5ad
0000000007cf9f15: a900020000                   test     eax, 0x200
0000000007cf9f1a: 0f85b3060000                 jne      0x7cfa5d3
0000000007cf9f20: a900040000                   test     eax, 0x400
0000000007cf9f25: 0f85ce060000                 jne      0x7cfa5f9
0000000007cf9f2b: a900080000                   test     eax, 0x800
0000000007cf9f30: 0f85e9060000                 jne      0x7cfa61f
0000000007cf9f36: a900100000                   test     eax, 0x1000
0000000007cf9f3b: 0f851a070000                 jne      0x7cfa65b
0000000007cf9f41: a900200000                   test     eax, 0x2000
0000000007cf9f46: 0f854b070000                 jne      0x7cfa697
0000000007cf9f4c: a900400000                   test     eax, 0x4000
0000000007cf9f51: 0f8566070000                 jne      0x7cfa6bd
0000000007cf9f57: 6685c0                       test     ax, ax
0000000007cf9f5a: 0f8881070000                 js       0x7cfa6e1
0000000007cf9f60: a900000100                   test     eax, 0x10000
0000000007cf9f65: 0f85b2070000                 jne      0x7cfa71d
0000000007cf9f6b: a900000200                   test     eax, 0x20000
0000000007cf9f70: 0f85cd070000                 jne      0x7cfa743
0000000007cf9f76: a900000400                   test     eax, 0x40000
0000000007cf9f7b: 0f85e8070000                 jne      0x7cfa769
0000000007cf9f81: a900000800                   test     eax, 0x80000
0000000007cf9f86: 0f8503080000                 jne      0x7cfa78f
0000000007cf9f8c: a900001000                   test     eax, 0x100000
0000000007cf9f91: 0f851e080000                 jne      0x7cfa7b5
0000000007cf9f97: a900002000                   test     eax, 0x200000
0000000007cf9f9c: 0f8539080000                 jne      0x7cfa7db
0000000007cf9fa2: a900004000                   test     eax, 0x400000
0000000007cf9fa7: 0f8554080000                 jne      0x7cfa801
0000000007cf9fad: a900008000                   test     eax, 0x800000
0000000007cf9fb2: 0f856f080000                 jne      0x7cfa827
0000000007cf9fb8: a900000001                   test     eax, 0x1000000
0000000007cf9fbd: 0f858a080000                 jne      0x7cfa84d
0000000007cf9fc3: a900000002                   test     eax, 0x2000000
0000000007cf9fc8: 0f85bb080000                 jne      0x7cfa889
0000000007cf9fce: 4883c408                     add      rsp, 8
0000000007cf9fd2: 5b                           pop      rbx
0000000007cf9fd3: 415e                         pop      r14
0000000007cf9fd5: c3                           ret
0000000007cf9fd6: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007cf9fda: 4885f6                       test     rsi, rsi
0000000007cf9fdd: 750e                         jne      0x7cf9fed
0000000007cf9fdf: 488d05d21e0003               lea      rax, [rip + 0x3001ed2]
0000000007cf9fe6: 488b00                       mov      rax, qword ptr [rax]
0000000007cf9fe9: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000007cf9fed: bf01000000                   mov      edi, 1
0000000007cf9ff2: 4889da                       mov      rdx, rbx
0000000007cf9ff5: e8f6862501                   call     0x8f526f0
0000000007cf9ffa: 418b867c010000               mov      eax, dword ptr [r14 + 0x17c]
0000000007cfa001: a802                         test     al, 2
0000000007cfa003: 0f8487fdffff                 je       0x7cf9d90
0000000007cfa009: 498b7610                     mov      rsi, qword ptr [r14 + 0x10]
0000000007cfa00d: 4885f6                       test     rsi, rsi
0000000007cfa010: 750e                         jne      0x7cfa020
0000000007cfa012: 488d059f1e0003               lea      rax, [rip + 0x3001e9f]
0000000007cfa019: 488b00                       mov      rax, qword ptr [rax]
0000000007cfa01c: 488b7010                     mov      rsi, qword ptr [rax + 0x10]
0000000007cfa020: bf02000000                   mov      edi, 2
0000000007cfa025: 4889da                       mov      rdx, rbx
0000000007cfa028: e8c3862501                   call     0x8f526f0
0000000007cfa02d: 418b867c010000               mov      eax, dword ptr [r14 + 0x17c]
0000000007cfa034: a804                         test     al, 4
0000000007cfa036: 0f845cfdffff                 je       0x7cf9d98
0000000007cfa03c: 498b7618                     mov      rsi, qword ptr [r14 + 0x18]
0000000007cfa040: 4885f6                       test     rsi, rsi
0000000007cfa043: 750e                         jne      0x7cfa053
0000000007cfa045: 488d056c1e0003               lea      rax, [rip + 0x3001e6c]
0000000007cfa04c: 488b00                       mov      rax, qword ptr [rax]
0000000007cfa04f: 488b7018                     mov      rsi, qword ptr [rax + 0x18]
0000000007cfa053: bf03000000                   mov      edi, 3
0000000007cfa058: 4889da                       mov      rdx, rbx
0000000007cfa05b: e890862501                   call     0x8f526f0
0000000007cfa060: 418b867c010000               mov      eax, dword ptr [r14 + 0x17c]
0000000007cfa067: a808                         test     al, 8
0000000007cfa069: 0f8431fdffff                 je       0x7cf9da0
0000000007cfa06f: 498b7620                     mov      rsi, qword ptr [r14 + 0x20]
0000000007cfa073: 4885f6                       test     rsi, rsi
0000000007cfa076: 750e                         jne      0x7cfa086
0000000007cfa078: 488d05391e0003               lea      rax, [rip + 0x3001e39]
0000000007cfa07f: 488b00                       mov      rax, qword ptr [rax]
0000000007cfa082: 488b7020                     mov      rsi, qword ptr [rax + 0x20]
0000000007cfa086: bf04000000                   mov      edi, 4
0000000007cfa08b: 4889da                       mov      rdx, rbx
0000000007cfa08e: e85d862501                   call     0x8f526f0
0000000007cfa093: 418b867c010000               mov      eax, dword ptr [r14 + 0x17c]
0000000007cfa09a: a810                         test     al, 0x10
0000000007cfa09c: 0f8406fdffff                 je       0x7cf9da8
0000000007cfa0a2: 418b7628                     mov      esi, dword ptr [r14 + 0x28]
0000000007cfa0a6: bf05000000                   mov      edi, 5
0000000007cfa0ab: 4889da                       mov      rdx, rbx
0000000007cfa0ae: e8cd822501                   call     0x8f52380
0000000007cfa0b3: 418b867c010000               mov      eax, dword ptr [r14 + 0x17c]
0000000007cfa0ba: a820                         test     al, 0x20
0000000007cfa0bc: 0f84eefcffff                 je       0x7cf9db0
0000000007cfa0c2: 418b762c                     mov      esi, dword ptr [r14 + 0x2c]
0000000007cfa0c6: bf06000000                   mov      edi, 6
0000000007cfa0cb: 4889da                       mov      rdx, rbx
0000000007cfa0ce: e8ad822501                   call     0x8f52380
0000000007cfa0d3: 418b867c010000               mov      eax, dword ptr [r14 + 0x17c]
0000000007cfa0da: a840                         test     al, 0x40
0000000007cfa0dc: 0f84d6fcffff                 je       0x7cf9db8
0000000007cfa0e2: 418b7630                     mov      esi, dword ptr [r14 + 0x30]
0000000007cfa0e6: bf07000000                   mov      edi, 7
0000000007cfa0eb: 4889da                       mov      rdx, rbx
0000000007cfa0ee: e88d822501                   call     0x8f52380
0000000007cfa0f3: 418b867c010000               mov      eax, dword ptr [r14 + 0x17c]
0000000007cfa0fa: 84c0                         test     al, al
0000000007cfa0fc: 0f89befcffff                 jns      0x7cf9dc0
0000000007cfa102: 498b7638                     mov      rsi, qword ptr [r14 + 0x38]
0000000007cfa106: 4885f6                       test     rsi, rsi
0000000007cfa109: 750e                         jne      0x7cfa119
0000000007cfa10b: 488d05a61d0003               lea      rax, [rip + 0x3001da6]
0000000007cfa112: 488b00                       mov      rax, qword ptr [rax]
0000000007cfa115: 488b7038                     mov      rsi, qword ptr [rax + 0x38]
0000000007cfa119: bf08000000                   mov      edi, 8
0000000007cfa11e: 4889da                       mov      rdx, rbx
0000000007cfa121: e8ca852501                   call     0x8f526f0
0000000007cfa126: 418b867c010000               mov      eax, dword ptr [r14 + 0x17c]
0000000007cfa12d: a900010000                   test     eax, 0x100
0000000007cfa132: 0f8493fcffff                 je       0x7cf9dcb
0000000007cfa138: 418b7634                     mov      esi, dword ptr [r14 + 0x34]
0000000007cfa13c: bf09000000                   mov      edi, 9
0000000007cfa141: 4889da                       mov      rdx, rbx
0000000007cfa144: e837822501                   call     0x8f52380
0000000007cfa149: 418b867c010000               mov      eax, dword ptr [r14 + 0x17c]
0000000007cfa150: a900020000                   test     eax, 0x200
0000000007cfa155: 0f847bfcffff                 je       0x7cf9dd6
0000000007cfa15b: 498b7640                     mov      rsi, qword ptr [r14 + 0x40]
0000000007cfa15f: bf0a000000                   mov      edi, 0xa
0000000007cfa164: 4889da                       mov      rdx, rbx
0000000007cfa167: e8e4832501                   call     0x8f52550
0000000007cfa16c: 418b867c010000               mov      eax, dword ptr [r14 + 0x17c]
0000000007cfa173: a900040000                   test     eax, 0x400
0000000007cfa178: 0f8463fcffff                 je       0x7cf9de1
0000000007cfa17e: 418b7648                     mov      esi, dword ptr [r14 + 0x48]
0000000007cfa182: bf0b000000                   mov      edi, 0xb
0000000007cfa187: 4889da                       mov      rdx, rbx
0000000007cfa18a: e8f1812501                   call     0x8f52380
0000000007cfa18f: 418b867c010000               mov      eax, dword ptr [r14 + 0x17c]
0000000007cfa196: a900080000                   test     eax, 0x800
0000000007cfa19b: 0f844bfcffff                 je       0x7cf9dec
0000000007cfa1a1: 418b764c                     mov      esi, dword ptr [r14 + 0x4c]
0000000007cfa1a5: bf0c000000                   mov      edi, 0xc
0000000007cfa1aa: 4889da                       mov      rdx, rbx
0000000007cfa1ad: e85e812501                   call     0x8f52310
0000000007cfa1b2: 418b867c010000               mov      eax, dword ptr [r14 + 0x17c]
0000000007cfa1b9: a900100000                   test     eax, 0x1000
0000000007cfa1be: 0f8433fcffff                 je       0x7cf9df7
0000000007cfa1c4: 418b7660                     mov      esi, dword ptr [r14 + 0x60]
0000000007cfa1c8: bf0d000000                   mov      edi, 0xd
0000000007cfa1cd: 4889da                       mov      rdx, rbx
0000000007cfa1d0: e83b812501                   call     0x8f52310
0000000007cfa1d5: 418b867c010000               mov      eax, dword ptr [r14 + 0x17c]
0000000007cfa1dc: a900200000                   test     eax, 0x2000
0000000007cfa1e1: 0f841bfcffff                 je       0x7cf9e02
0000000007cfa1e7: 498b7650                     mov      rsi, qword ptr [r14 + 0x50]
0000000007cfa1eb: bf0e000000                   mov      edi, 0xe
0000000007cfa1f0: 4889da                       mov      rdx, rbx
0000000007cfa1f3: e858832501                   call     0x8f52550
0000000007cfa1f8: 418b867c010000               mov      eax, dword ptr [r14 + 0x17c]
0000000007cfa1ff: a900400000                   test     eax, 0x4000
0000000007cfa204: 0f8403fcffff                 je       0x7cf9e0d
0000000007cfa20a: 498b7658                     mov      rsi, qword ptr [r14 + 0x58]
0000000007cfa20e: bf0f000000                   mov      edi, 0xf
0000000007cfa213: 4889da                       mov      rdx, rbx
0000000007cfa216: e835832501                   call     0x8f52550
0000000007cfa21b: 418b867c010000               mov      eax, dword ptr [r14 + 0x17c]
0000000007cfa222: 6685c0                       test     ax, ax
0000000007cfa225: 0f89ebfbffff                 jns      0x7cf9e16
0000000007cfa22b: 498b7668                     mov      rsi, qword ptr [r14 + 0x68]
0000000007cfa22f: bf10000000                   mov      edi, 0x10
0000000007cfa234: 4889da                       mov      rdx, rbx
0000000007cfa237: e814832501                   call     0x8f52550
0000000007cfa23c: 418b867c010000               mov      eax, dword ptr [r14 + 0x17c]
0000000007cfa243: a900000100                   test     eax, 0x10000
0000000007cfa248: 0f84d3fbffff                 je       0x7cf9e21
0000000007cfa24e: 498b7670                     mov      rsi, qword ptr [r14 + 0x70]
0000000007cfa252: bf11000000                   mov      edi, 0x11
0000000007cfa257: 4889da                       mov      rdx, rbx
0000000007cfa25a: e8f1822501                   call     0x8f52550
0000000007cfa25f: 418b867c010000               mov      eax, dword ptr [r14 + 0x17c]
0000000007cfa266: a900000200                   test     eax, 0x20000
0000000007cfa26b: 0f84bbfbffff                 je       0x7cf9e2c
0000000007cfa271: 418b7664                     mov      esi, dword ptr [r14 + 0x64]
0000000007cfa275: bf12000000                   mov      edi, 0x12
0000000007cfa27a: 4889da                       mov      rdx, rbx
0000000007cfa27d: e88e802501                   call     0x8f52310
0000000007cfa282: 418b867c010000               mov      eax, dword ptr [r14 + 0x17c]
0000000007cfa289: a900000400                   test     eax, 0x40000
0000000007cfa28e: 0f84a3fbffff                 je       0x7cf9e37
0000000007cfa294: 418b7678                     mov      esi, dword ptr [r14 + 0x78]
0000000007cfa298: bf13000000                   mov      edi, 0x13
0000000007cfa29d: 4889da                       mov      rdx, rbx
0000000007cfa2a0: e86b802501                   call     0x8f52310
0000000007cfa2a5: 418b867c010000               mov      eax, dword ptr [r14 + 0x17c]
0000000007cfa2ac: a900000800                   test     eax, 0x80000
0000000007cfa2b1: 0f848bfbffff                 je       0x7cf9e42
0000000007cfa2b7: 418b767c                     mov      esi, dword ptr [r14 + 0x7c]
0000000007cfa2bb: bf14000000                   mov      edi, 0x14
0000000007cfa2c0: 4889da                       mov      rdx, rbx
0000000007cfa2c3: e848802501                   call     0x8f52310
0000000007cfa2c8: 418b867c010000               mov      eax, dword ptr [r14 + 0x17c]
0000000007cfa2cf: a900001000                   test     eax, 0x100000
0000000007cfa2d4: 0f8473fbffff                 je       0x7cf9e4d
0000000007cfa2da: 498bb680000000               mov      rsi, qword ptr [r14 + 0x80]
0000000007cfa2e1: bf15000000                   mov      edi, 0x15
0000000007cfa2e6: 4889da                       mov      rdx, rbx
0000000007cfa2e9: e862822501                   call     0x8f52550
0000000007cfa2ee: 418b867c010000               mov      eax, dword ptr [r14 + 0x17c]
0000000007cfa2f5: a900002000                   test     eax, 0x200000
0000000007cfa2fa: 0f8458fbffff                 je       0x7cf9e58
0000000007cfa300: 418bb688000000               mov      esi, dword ptr [r14 + 0x88]
0000000007cfa307: bf16000000                   mov      edi, 0x16
0000000007cfa30c: 4889da                       mov      rdx, rbx
0000000007cfa30f: e8fc7f2501                   call     0x8f52310
0000000007cfa314: 418b867c010000               mov      eax, dword ptr [r14 + 0x17c]
0000000007cfa31b: a900004000                   test     eax, 0x400000
0000000007cfa320: 0f843dfbffff                 je       0x7cf9e63
0000000007cfa326: 418bb68c000000               mov      esi, dword ptr [r14 + 0x8c]
0000000007cfa32d: bf17000000                   mov      edi, 0x17
0000000007cfa332: 4889da                       mov      rdx, rbx
0000000007cfa335: e8d67f2501                   call     0x8f52310
0000000007cfa33a: 418b867c010000               mov      eax, dword ptr [r14 + 0x17c]
0000000007cfa341: a900008000                   test     eax, 0x800000
0000000007cfa346: 0f8422fbffff                 je       0x7cf9e6e
0000000007cfa34c: 418bb698000000               mov      esi, dword ptr [r14 + 0x98]
0000000007cfa353: bf18000000                   mov      edi, 0x18
0000000007cfa358: 4889da                       mov      rdx, rbx
0000000007cfa35b: e8b07f2501                   call     0x8f52310
0000000007cfa360: 418b867c010000               mov      eax, dword ptr [r14 + 0x17c]
0000000007cfa367: a900000001                   test     eax, 0x1000000
0000000007cfa36c: 0f8407fbffff                 je       0x7cf9e79
0000000007cfa372: 498bb690000000               mov      rsi, qword ptr [r14 + 0x90]
0000000007cfa379: bf19000000                   mov      edi, 0x19
0000000007cfa37e: 4889da                       mov      rdx, rbx
0000000007cfa381: e8ca812501                   call     0x8f52550
0000000007cfa386: 418b867c010000               mov      eax, dword ptr [r14 + 0x17c]
0000000007cfa38d: a900000002                   test     eax, 0x2000000
0000000007cfa392: 0f84ecfaffff                 je       0x7cf9e84
0000000007cfa398: 418bb69c000000               mov      esi, dword ptr [r14 + 0x9c]
0000000007cfa39f: bf1a000000                   mov      edi, 0x1a
0000000007cfa3a4: 4889da                       mov      rdx, rbx
0000000007cfa3a7: e8d47f2501                   call     0x8f52380
0000000007cfa3ac: 418b867c010000               mov      eax, dword ptr [r14 + 0x17c]
0000000007cfa3b3: a900000004                   test     eax, 0x4000000
0000000007cfa3b8: 0f84d1faffff                 je       0x7cf9e8f
0000000007cfa3be: 498bb6a0000000               mov      rsi, qword ptr [r14 + 0xa0]
0000000007cfa3c5: bf1b000000                   mov      edi, 0x1b
0000000007cfa3ca: 4889da                       mov      rdx, rbx
0000000007cfa3cd: e87e812501                   call     0x8f52550
0000000007cfa3d2: 418b867c010000               mov      eax, dword ptr [r14 + 0x17c]
0000000007cfa3d9: a900000008                   test     eax, 0x8000000
0000000007cfa3de: 0f84b6faffff                 je       0x7cf9e9a
0000000007cfa3e4: 418bb6a8000000               mov      esi, dword ptr [r14 + 0xa8]
0000000007cfa3eb: bf1c000000                   mov      edi, 0x1c
0000000007cfa3f0: 4889da                       mov      rdx, rbx
0000000007cfa3f3: e8887f2501                   call     0x8f52380
0000000007cfa3f8: 418b867c010000               mov      eax, dword ptr [r14 + 0x17c]
0000000007cfa3ff: a900000010                   test     eax, 0x10000000
0000000007cfa404: 0f849bfaffff                 je       0x7cf9ea5
0000000007cfa40a: 418bb6ac000000               mov      esi, dword ptr [r14 + 0xac]
0000000007cfa411: bf1d000000                   mov      edi, 0x1d
0000000007cfa416: 4889da                       mov      rdx, rbx
0000000007cfa419: e8627f2501                   call     0x8f52380
0000000007cfa41e: 418b867c010000               mov      eax, dword ptr [r14 + 0x17c]
0000000007cfa425: a900000020                   test     eax, 0x20000000
0000000007cfa42a: 0f8480faffff                 je       0x7cf9eb0
0000000007cfa430: 418bb6c8000000               mov      esi, dword ptr [r14 + 0xc8]
0000000007cfa437: bf1e000000                   mov      edi, 0x1e
0000000007cfa43c: 4889da                       mov      rdx, rbx
0000000007cfa43f: e83c7f2501                   call     0x8f52380
0000000007cfa444: 418b867c010000               mov      eax, dword ptr [r14 + 0x17c]
0000000007cfa44b: a900000040                   test     eax, 0x40000000
0000000007cfa450: 0f8465faffff                 je       0x7cf9ebb
0000000007cfa456: 498bb6b0000000               mov      rsi, qword ptr [r14 + 0xb0]
0000000007cfa45d: bf1f000000                   mov      edi, 0x1f
0000000007cfa462: 4889da                       mov      rdx, rbx
0000000007cfa465: e8e6802501                   call     0x8f52550
0000000007cfa46a: 418b867c010000               mov      eax, dword ptr [r14 + 0x17c]
0000000007cfa471: 85c0                         test     eax, eax
0000000007cfa473: 0f894afaffff                 jns      0x7cf9ec3
0000000007cfa479: 498bb6b8000000               mov      rsi, qword ptr [r14 + 0xb8]
0000000007cfa480: bf20000000                   mov      edi, 0x20
0000000007cfa485: 4889da                       mov      rdx, rbx
0000000007cfa488: e8c3802501                   call     0x8f52550
0000000007cfa48d: e931faffff                   jmp      0x7cf9ec3
0000000007cfa492: 498bb6c0000000               mov      rsi, qword ptr [r14 + 0xc0]
0000000007cfa499: bf21000000                   mov      edi, 0x21
0000000007cfa49e: 4889da                       mov      rdx, rbx
0000000007cfa4a1: e8aa802501                   call     0x8f52550
0000000007cfa4a6: 418b8680010000               mov      eax, dword ptr [r14 + 0x180]
0000000007cfa4ad: a802                         test     al, 2
0000000007cfa4af: 0f8425faffff                 je       0x7cf9eda
0000000007cfa4b5: 498bb6d0000000               mov      rsi, qword ptr [r14 + 0xd0]
0000000007cfa4bc: bf22000000                   mov      edi, 0x22
0000000007cfa4c1: 4889da                       mov      rdx, rbx
0000000007cfa4c4: e887802501                   call     0x8f52550
0000000007cfa4c9: 418b8680010000               mov      eax, dword ptr [r14 + 0x180]
0000000007cfa4d0: a804                         test     al, 4
0000000007cfa4d2: 0f840afaffff                 je       0x7cf9ee2
0000000007cfa4d8: 498bb6d8000000               mov      rsi, qword ptr [r14 + 0xd8]
0000000007cfa4df: bf23000000                   mov      edi, 0x23
0000000007cfa4e4: 4889da                       mov      rdx, rbx
0000000007cfa4e7: e864802501                   call     0x8f52550
0000000007cfa4ec: 418b8680010000               mov      eax, dword ptr [r14 + 0x180]
0000000007cfa4f3: a808                         test     al, 8
0000000007cfa4f5: 0f84eff9ffff                 je       0x7cf9eea
0000000007cfa4fb: 418bb6cc000000               mov      esi, dword ptr [r14 + 0xcc]
0000000007cfa502: bf24000000                   mov      edi, 0x24
0000000007cfa507: 4889da                       mov      rdx, rbx
0000000007cfa50a: e8717e2501                   call     0x8f52380
0000000007cfa50f: 418b8680010000               mov      eax, dword ptr [r14 + 0x180]
0000000007cfa516: a810                         test     al, 0x10
0000000007cfa518: 0f84d4f9ffff                 je       0x7cf9ef2
0000000007cfa51e: 498bb6e0000000               mov      rsi, qword ptr [r14 + 0xe0]
0000000007cfa525: bf25000000                   mov      edi, 0x25
0000000007cfa52a: 4889da                       mov      rdx, rbx
0000000007cfa52d: e81e802501                   call     0x8f52550
0000000007cfa532: 418b8680010000               mov      eax, dword ptr [r14 + 0x180]
0000000007cfa539: a820                         test     al, 0x20
0000000007cfa53b: 0f84b9f9ffff                 je       0x7cf9efa
0000000007cfa541: 498bb6e8000000               mov      rsi, qword ptr [r14 + 0xe8]
0000000007cfa548: bf26000000                   mov      edi, 0x26
0000000007cfa54d: 4889da                       mov      rdx, rbx
0000000007cfa550: e8fb7f2501                   call     0x8f52550
0000000007cfa555: 418b8680010000               mov      eax, dword ptr [r14 + 0x180]
0000000007cfa55c: a840                         test     al, 0x40
0000000007cfa55e: 0f849ef9ffff                 je       0x7cf9f02
0000000007cfa564: 498bb6f0000000               mov      rsi, qword ptr [r14 + 0xf0]
0000000007cfa56b: bf27000000                   mov      edi, 0x27
0000000007cfa570: 4889da                       mov      rdx, rbx
0000000007cfa573: e8d87f2501                   call     0x8f52550
0000000007cfa578: 418b8680010000               mov      eax, dword ptr [r14 + 0x180]
0000000007cfa57f: 84c0                         test     al, al
0000000007cfa581: 0f8983f9ffff                 jns      0x7cf9f0a
0000000007cfa587: 498bb6f8000000               mov      rsi, qword ptr [r14 + 0xf8]
0000000007cfa58e: bf28000000                   mov      edi, 0x28
0000000007cfa593: 4889da                       mov      rdx, rbx
0000000007cfa596: e8b57f2501                   call     0x8f52550
0000000007cfa59b: 418b8680010000               mov      eax, dword ptr [r14 + 0x180]
0000000007cfa5a2: a900010000                   test     eax, 0x100
0000000007cfa5a7: 0f8468f9ffff                 je       0x7cf9f15
0000000007cfa5ad: 418bb610010000               mov      esi, dword ptr [r14 + 0x110]
0000000007cfa5b4: bf29000000                   mov      edi, 0x29
0000000007cfa5b9: 4889da                       mov      rdx, rbx
0000000007cfa5bc: e8bf7d2501                   call     0x8f52380
0000000007cfa5c1: 418b8680010000               mov      eax, dword ptr [r14 + 0x180]
0000000007cfa5c8: a900020000                   test     eax, 0x200
0000000007cfa5cd: 0f844df9ffff                 je       0x7cf9f20
0000000007cfa5d3: 498bb600010000               mov      rsi, qword ptr [r14 + 0x100]
0000000007cfa5da: bf2a000000                   mov      edi, 0x2a
0000000007cfa5df: 4889da                       mov      rdx, rbx
0000000007cfa5e2: e8697f2501                   call     0x8f52550
0000000007cfa5e7: 418b8680010000               mov      eax, dword ptr [r14 + 0x180]
0000000007cfa5ee: a900040000                   test     eax, 0x400
0000000007cfa5f3: 0f8432f9ffff                 je       0x7cf9f2b
0000000007cfa5f9: 498bb608010000               mov      rsi, qword ptr [r14 + 0x108]
0000000007cfa600: bf2b000000                   mov      edi, 0x2b
0000000007cfa605: 4889da                       mov      rdx, rbx
0000000007cfa608: e8437f2501                   call     0x8f52550
0000000007cfa60d: 418b8680010000               mov      eax, dword ptr [r14 + 0x180]
0000000007cfa614: a900080000                   test     eax, 0x800
0000000007cfa619: 0f8417f9ffff                 je       0x7cf9f36
0000000007cfa61f: 498bb618010000               mov      rsi, qword ptr [r14 + 0x118]
0000000007cfa626: 4885f6                       test     rsi, rsi
0000000007cfa629: 7511                         jne      0x7cfa63c
0000000007cfa62b: 488d0586180003               lea      rax, [rip + 0x3001886]
0000000007cfa632: 488b00                       mov      rax, qword ptr [rax]
0000000007cfa635: 488bb018010000               mov      rsi, qword ptr [rax + 0x118]
0000000007cfa63c: bf2c000000                   mov      edi, 0x2c
0000000007cfa641: 4889da                       mov      rdx, rbx
0000000007cfa644: e8a7802501                   call     0x8f526f0
0000000007cfa649: 418b8680010000               mov      eax, dword ptr [r14 + 0x180]
0000000007cfa650: a900100000                   test     eax, 0x1000
0000000007cfa655: 0f84e6f8ffff                 je       0x7cf9f41
0000000007cfa65b: 498bb620010000               mov      rsi, qword ptr [r14 + 0x120]
0000000007cfa662: 4885f6                       test     rsi, rsi
0000000007cfa665: 7511                         jne      0x7cfa678
0000000007cfa667: 488d054a180003               lea      rax, [rip + 0x300184a]
0000000007cfa66e: 488b00                       mov      rax, qword ptr [rax]
0000000007cfa671: 488bb020010000               mov      rsi, qword ptr [rax + 0x120]
0000000007cfa678: bf2d000000                   mov      edi, 0x2d
0000000007cfa67d: 4889da                       mov      rdx, rbx
0000000007cfa680: e86b802501                   call     0x8f526f0
0000000007cfa685: 418b8680010000               mov      eax, dword ptr [r14 + 0x180]
0000000007cfa68c: a900200000                   test     eax, 0x2000
0000000007cfa691: 0f84b5f8ffff                 je       0x7cf9f4c
0000000007cfa697: 418bb614010000               mov      esi, dword ptr [r14 + 0x114]
0000000007cfa69e: bf2e000000                   mov      edi, 0x2e
0000000007cfa6a3: 4889da                       mov      rdx, rbx
0000000007cfa6a6: e8d57c2501                   call     0x8f52380
0000000007cfa6ab: 418b8680010000               mov      eax, dword ptr [r14 + 0x180]
0000000007cfa6b2: a900400000                   test     eax, 0x4000
0000000007cfa6b7: 0f849af8ffff                 je       0x7cf9f57
0000000007cfa6bd: 498bb628010000               mov      rsi, qword ptr [r14 + 0x128]
0000000007cfa6c4: bf2f000000                   mov      edi, 0x2f
0000000007cfa6c9: 4889da                       mov      rdx, rbx
0000000007cfa6cc: e87f7e2501                   call     0x8f52550
0000000007cfa6d1: 418b8680010000               mov      eax, dword ptr [r14 + 0x180]
0000000007cfa6d8: 6685c0                       test     ax, ax
0000000007cfa6db: 0f897ff8ffff                 jns      0x7cf9f60
0000000007cfa6e1: 498bb630010000               mov      rsi, qword ptr [r14 + 0x130]
0000000007cfa6e8: 4885f6                       test     rsi, rsi
0000000007cfa6eb: 7511                         jne      0x7cfa6fe
0000000007cfa6ed: 488d05c4170003               lea      rax, [rip + 0x30017c4]
0000000007cfa6f4: 488b00                       mov      rax, qword ptr [rax]
0000000007cfa6f7: 488bb030010000               mov      rsi, qword ptr [rax + 0x130]
0000000007cfa6fe: bf30000000                   mov      edi, 0x30
0000000007cfa703: 4889da                       mov      rdx, rbx
0000000007cfa706: e8e57f2501                   call     0x8f526f0
0000000007cfa70b: 418b8680010000               mov      eax, dword ptr [r14 + 0x180]
0000000007cfa712: a900000100                   test     eax, 0x10000
0000000007cfa717: 0f844ef8ffff                 je       0x7cf9f6b
0000000007cfa71d: 418bb638010000               mov      esi, dword ptr [r14 + 0x138]
0000000007cfa724: bf31000000                   mov      edi, 0x31
0000000007cfa729: 4889da                       mov      rdx, rbx
0000000007cfa72c: e84f7c2501                   call     0x8f52380
0000000007cfa731: 418b8680010000               mov      eax, dword ptr [r14 + 0x180]
0000000007cfa738: a900000200                   test     eax, 0x20000
0000000007cfa73d: 0f8433f8ffff                 je       0x7cf9f76
0000000007cfa743: 418bb63c010000               mov      esi, dword ptr [r14 + 0x13c]
0000000007cfa74a: bf32000000                   mov      edi, 0x32
0000000007cfa74f: 4889da                       mov      rdx, rbx
0000000007cfa752: e8297c2501                   call     0x8f52380
0000000007cfa757: 418b8680010000               mov      eax, dword ptr [r14 + 0x180]
0000000007cfa75e: a900000400                   test     eax, 0x40000
0000000007cfa763: 0f8418f8ffff                 je       0x7cf9f81
0000000007cfa769: 498bb640010000               mov      rsi, qword ptr [r14 + 0x140]
0000000007cfa770: bf33000000                   mov      edi, 0x33
0000000007cfa775: 4889da                       mov      rdx, rbx
0000000007cfa778: e8d37d2501                   call     0x8f52550
0000000007cfa77d: 418b8680010000               mov      eax, dword ptr [r14 + 0x180]
0000000007cfa784: a900000800                   test     eax, 0x80000
0000000007cfa789: 0f84fdf7ffff                 je       0x7cf9f8c
0000000007cfa78f: 498bb648010000               mov      rsi, qword ptr [r14 + 0x148]
0000000007cfa796: bf34000000                   mov      edi, 0x34
0000000007cfa79b: 4889da                       mov      rdx, rbx
0000000007cfa79e: e8ad7d2501                   call     0x8f52550
0000000007cfa7a3: 418b8680010000               mov      eax, dword ptr [r14 + 0x180]
0000000007cfa7aa: a900001000                   test     eax, 0x100000
0000000007cfa7af: 0f84e2f7ffff                 je       0x7cf9f97
0000000007cfa7b5: 418bb660010000               mov      esi, dword ptr [r14 + 0x160]
0000000007cfa7bc: bf35000000                   mov      edi, 0x35
0000000007cfa7c1: 4889da                       mov      rdx, rbx
0000000007cfa7c4: e8b77b2501                   call     0x8f52380
0000000007cfa7c9: 418b8680010000               mov      eax, dword ptr [r14 + 0x180]
0000000007cfa7d0: a900002000                   test     eax, 0x200000
0000000007cfa7d5: 0f84c7f7ffff                 je       0x7cf9fa2
0000000007cfa7db: 498bb650010000               mov      rsi, qword ptr [r14 + 0x150]
0000000007cfa7e2: bf36000000                   mov      edi, 0x36
0000000007cfa7e7: 4889da                       mov      rdx, rbx
0000000007cfa7ea: e8617d2501                   call     0x8f52550
0000000007cfa7ef: 418b8680010000               mov      eax, dword ptr [r14 + 0x180]
0000000007cfa7f6: a900004000                   test     eax, 0x400000
0000000007cfa7fb: 0f84acf7ffff                 je       0x7cf9fad
0000000007cfa801: 498bb658010000               mov      rsi, qword ptr [r14 + 0x158]
0000000007cfa808: bf37000000                   mov      edi, 0x37
0000000007cfa80d: 4889da                       mov      rdx, rbx
0000000007cfa810: e83b7d2501                   call     0x8f52550
0000000007cfa815: 418b8680010000               mov      eax, dword ptr [r14 + 0x180]
0000000007cfa81c: a900008000                   test     eax, 0x800000
0000000007cfa821: 0f8491f7ffff                 je       0x7cf9fb8
0000000007cfa827: 498bb668010000               mov      rsi, qword ptr [r14 + 0x168]
0000000007cfa82e: bf38000000                   mov      edi, 0x38
0000000007cfa833: 4889da                       mov      rdx, rbx
0000000007cfa836: e8157d2501                   call     0x8f52550
0000000007cfa83b: 418b8680010000               mov      eax, dword ptr [r14 + 0x180]
0000000007cfa842: a900000001                   test     eax, 0x1000000
0000000007cfa847: 0f8476f7ffff                 je       0x7cf9fc3
0000000007cfa84d: 498bb670010000               mov      rsi, qword ptr [r14 + 0x170]
0000000007cfa854: 4885f6                       test     rsi, rsi
0000000007cfa857: 7511                         jne      0x7cfa86a
0000000007cfa859: 488d0558160003               lea      rax, [rip + 0x3001658]
0000000007cfa860: 488b00                       mov      rax, qword ptr [rax]
0000000007cfa863: 488bb070010000               mov      rsi, qword ptr [rax + 0x170]
0000000007cfa86a: bf39000000                   mov      edi, 0x39
0000000007cfa86f: 4889da                       mov      rdx, rbx
0000000007cfa872: e8797e2501                   call     0x8f526f0
0000000007cfa877: 418b8680010000               mov      eax, dword ptr [r14 + 0x180]
0000000007cfa87e: a900000002                   test     eax, 0x2000000
0000000007cfa883: 0f8445f7ffff                 je       0x7cf9fce
0000000007cfa889: 418bb664010000               mov      esi, dword ptr [r14 + 0x164]
0000000007cfa890: bf3a000000                   mov      edi, 0x3a
0000000007cfa895: 4889da                       mov      rdx, rbx
0000000007cfa898: 4883c408                     add      rsp, 8
0000000007cfa89c: 5b                           pop      rbx
0000000007cfa89d: 415e                         pop      r14
0000000007cfa89f: e9dc7a2501                   jmp      0x8f52380
