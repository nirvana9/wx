00000000079ecce0: 55                           push     rbp
00000000079ecce1: 4157                         push     r15
00000000079ecce3: 4156                         push     r14
00000000079ecce5: 4155                         push     r13
00000000079ecce7: 4154                         push     r12
00000000079ecce9: 53                           push     rbx
00000000079eccea: 4883ec28                     sub      rsp, 0x28
00000000079eccee: 4889f3                       mov      rbx, rsi
00000000079eccf1: 4989fe                       mov      r14, rdi
00000000079eccf4: 4c8d6f18                     lea      r13, [rdi + 0x18]
00000000079eccf8: 4c8d671c                     lea      r12, [rdi + 0x1c]
00000000079eccfc: 488d4728                     lea      rax, [rdi + 0x28]
00000000079ecd00: 4889442408                   mov      qword ptr [rsp + 8], rax
00000000079ecd05: 488d472c                     lea      rax, [rdi + 0x2c]
00000000079ecd09: 4889442410                   mov      qword ptr [rsp + 0x10], rax
00000000079ecd0e: 488d2dfb975dfa               lea      rbp, [rip - 0x5a26805]
00000000079ecd15: 66662e0f1f840000000000       nop      word ptr cs:[rax + rax]
00000000079ecd20: 488b4308                     mov      rax, qword ptr [rbx + 8]
00000000079ecd24: 483b4310                     cmp      rax, qword ptr [rbx + 0x10]
00000000079ecd28: 7316                         jae      0x79ecd40
00000000079ecd2a: 0fb630                       movzx    esi, byte ptr [rax]
00000000079ecd2d: 4084f6                       test     sil, sil
00000000079ecd30: 780e                         js       0x79ecd40
00000000079ecd32: 897320                       mov      dword ptr [rbx + 0x20], esi
00000000079ecd35: 48ffc0                       inc      rax
00000000079ecd38: 48894308                     mov      qword ptr [rbx + 8], rax
00000000079ecd3c: eb0f                         jmp      0x79ecd4d
00000000079ecd3e: 6690                         nop
00000000079ecd40: 4889df                       mov      rdi, rbx
00000000079ecd43: e808455601                   call     0x8f51250
00000000079ecd48: 89c6                         mov      esi, eax
00000000079ecd4a: 894320                       mov      dword ptr [rbx + 0x20], eax
00000000079ecd4d: 41b701                       mov      r15b, 1
00000000079ecd50: 85f6                         test     esi, esi
00000000079ecd52: 0f84ea030000                 je       0x79ed142
00000000079ecd58: 89f1                         mov      ecx, esi
00000000079ecd5a: c1e903                       shr      ecx, 3
00000000079ecd5d: 89f0                         mov      eax, esi
00000000079ecd5f: 83e007                       and      eax, 7
00000000079ecd62: ffc9                         dec      ecx
00000000079ecd64: 83f906                       cmp      ecx, 6
00000000079ecd67: 0f87e3000000                 ja       0x79ece50
00000000079ecd6d: 48634c8d00                   movsxd   rcx, dword ptr [rbp + rcx*4]
00000000079ecd72: 4801e9                       add      rcx, rbp
00000000079ecd75: ffe1                         jmp      rcx
00000000079ecd77: 83f802                       cmp      eax, 2
00000000079ecd7a: 0f85d0000000                 jne      0x79ece50
00000000079ecd80: 4c89642420                   mov      qword ptr [rsp + 0x20], r12
00000000079ecd85: 41804e3401                   or       byte ptr [r14 + 0x34], 1
00000000079ecd8a: 4d8b6608                     mov      r12, qword ptr [r14 + 8]
00000000079ecd8e: 4d85e4                       test     r12, r12
00000000079ecd91: 7519                         jne      0x79ecdac
00000000079ecd93: bf18000000                   mov      edi, 0x18
00000000079ecd98: e80310c802                   call     0xa66dda0
00000000079ecd9d: 4989c4                       mov      r12, rax
00000000079ecda0: 4889c7                       mov      rdi, rax
00000000079ecda3: e8483c1b00                   call     0x7ba09f0
00000000079ecda8: 4d896608                     mov      qword ptr [r14 + 8], r12
00000000079ecdac: 4c896c2418                   mov      qword ptr [rsp + 0x18], r13
00000000079ecdb1: c7442404aaaaaaaa             mov      dword ptr [rsp + 4], 0xaaaaaaaa
00000000079ecdb9: 488b4308                     mov      rax, qword ptr [rbx + 8]
00000000079ecdbd: 483b4310                     cmp      rax, qword ptr [rbx + 0x10]
00000000079ecdc1: 0f83bd000000                 jae      0x79ece84
00000000079ecdc7: 0fb608                       movzx    ecx, byte ptr [rax]
00000000079ecdca: 84c9                         test     cl, cl
00000000079ecdcc: 0f88b2000000                 js       0x79ece84
00000000079ecdd2: 894c2404                     mov      dword ptr [rsp + 4], ecx
00000000079ecdd6: 48ffc0                       inc      rax
00000000079ecdd9: 48894308                     mov      qword ptr [rbx + 8], rax
00000000079ecddd: e9b7000000                   jmp      0x79ece99
00000000079ecde2: 85c0                         test     eax, eax
00000000079ecde4: 756a                         jne      0x79ece50
00000000079ecde6: 488b4308                     mov      rax, qword ptr [rbx + 8]
00000000079ecdea: 488b4b10                     mov      rcx, qword ptr [rbx + 0x10]
00000000079ecdee: 4839c8                       cmp      rax, rcx
00000000079ecdf1: 0f822a020000                 jb       0x79ed021
00000000079ecdf7: e93c020000                   jmp      0x79ed038
00000000079ecdfc: 85c0                         test     eax, eax
00000000079ecdfe: 7550                         jne      0x79ece50
00000000079ece00: 488b4308                     mov      rax, qword ptr [rbx + 8]
00000000079ece04: 488b4b10                     mov      rcx, qword ptr [rbx + 0x10]
00000000079ece08: 4839c8                       cmp      rax, rcx
00000000079ece0b: 0f826c010000                 jb       0x79ecf7d
00000000079ece11: e97b010000                   jmp      0x79ecf91
00000000079ece16: 85c0                         test     eax, eax
00000000079ece18: 7536                         jne      0x79ece50
00000000079ece1a: 488b4308                     mov      rax, qword ptr [rbx + 8]
00000000079ece1e: 488b4b10                     mov      rcx, qword ptr [rbx + 0x10]
00000000079ece22: 4839c8                       cmp      rax, rcx
00000000079ece25: 0f82a4010000                 jb       0x79ecfcf
00000000079ece2b: e9b3010000                   jmp      0x79ecfe3
00000000079ece30: 83f802                       cmp      eax, 2
00000000079ece33: 751b                         jne      0x79ece50
00000000079ece35: e9dc000000                   jmp      0x79ecf16
00000000079ece3a: 83f802                       cmp      eax, 2
00000000079ece3d: 7511                         jne      0x79ece50
00000000079ece3f: 418b5634                     mov      edx, dword ptr [r14 + 0x34]
00000000079ece43: e931020000                   jmp      0x79ed079
00000000079ece48: 85c0                         test     eax, eax
00000000079ece4a: 7422                         je       0x79ece6e
00000000079ece4c: 0f1f4000                     nop      dword ptr [rax]
00000000079ece50: 83f804                       cmp      eax, 4
00000000079ece53: 0f84e9020000                 je       0x79ed142
00000000079ece59: 4889df                       mov      rdi, rbx
00000000079ece5c: e8af515601                   call     0x8f52010
00000000079ece61: 84c0                         test     al, al
00000000079ece63: 0f85b7feffff                 jne      0x79ecd20
00000000079ece69: e9d1020000                   jmp      0x79ed13f
00000000079ece6e: 488b4308                     mov      rax, qword ptr [rbx + 8]
00000000079ece72: 488b4b10                     mov      rcx, qword ptr [rbx + 0x10]
00000000079ece76: 4839c8                       cmp      rax, rcx
00000000079ece79: 0f8263020000                 jb       0x79ed0e2
00000000079ece7f: e975020000                   jmp      0x79ed0f9
00000000079ece84: 4889df                       mov      rdi, rbx
00000000079ece87: 488d742404                   lea      rsi, [rsp + 4]
00000000079ece8c: e87f425601                   call     0x8f51110
00000000079ece91: 84c0                         test     al, al
00000000079ece93: 0f84a6020000                 je       0x79ed13f
00000000079ece99: 8b4338                       mov      eax, dword ptr [rbx + 0x38]
00000000079ece9c: 8d4801                       lea      ecx, [rax + 1]
00000000079ece9f: 894b38                       mov      dword ptr [rbx + 0x38], ecx
00000000079ecea2: 3b433c                       cmp      eax, dword ptr [rbx + 0x3c]
00000000079ecea5: 0f8d94020000                 jge      0x79ed13f
00000000079eceab: 8b742404                     mov      esi, dword ptr [rsp + 4]
00000000079eceaf: 4889df                       mov      rdi, rbx
00000000079eceb2: e8193b5601                   call     0x8f509d0
00000000079eceb7: 4189c5                       mov      r13d, eax
00000000079eceba: 4c89e7                       mov      rdi, r12
00000000079ecebd: 4889de                       mov      rsi, rbx
00000000079ecec0: e83b3d1b00                   call     0x7ba0c00
00000000079ecec5: 84c0                         test     al, al
00000000079ecec7: 0f8472020000                 je       0x79ed13f
00000000079ececd: 807b2400                     cmp      byte ptr [rbx + 0x24], 0
00000000079eced1: 0f8468020000                 je       0x79ed13f
00000000079eced7: 4889df                       mov      rdi, rbx
00000000079eceda: 4489ee                       mov      esi, r13d
00000000079ecedd: e85e3b5601                   call     0x8f50a40
00000000079ecee2: 8b4338                       mov      eax, dword ptr [rbx + 0x38]
00000000079ecee5: 85c0                         test     eax, eax
00000000079ecee7: 7e05                         jle      0x79eceee
00000000079ecee9: ffc8                         dec      eax
00000000079eceeb: 894338                       mov      dword ptr [rbx + 0x38], eax
00000000079eceee: 488b4308                     mov      rax, qword ptr [rbx + 8]
00000000079ecef2: 483b4310                     cmp      rax, qword ptr [rbx + 0x10]
00000000079ecef6: 4c8b6c2418                   mov      r13, qword ptr [rsp + 0x18]
00000000079ecefb: 4c8b642420                   mov      r12, qword ptr [rsp + 0x20]
00000000079ecf00: 0f831afeffff                 jae      0x79ecd20
00000000079ecf06: 803812                       cmp      byte ptr [rax], 0x12
00000000079ecf09: 0f8511feffff                 jne      0x79ecd20
00000000079ecf0f: 48ffc0                       inc      rax
00000000079ecf12: 48894308                     mov      qword ptr [rbx + 8], rax
00000000079ecf16: 41804e3402                   or       byte ptr [r14 + 0x34], 2
00000000079ecf1b: 498b7610                     mov      rsi, qword ptr [r14 + 0x10]
00000000079ecf1f: 483b35da651003               cmp      rsi, qword ptr [rip + 0x31065da] ; reloc 0xad176f0
00000000079ecf26: 751f                         jne      0x79ecf47
00000000079ecf28: bf18000000                   mov      edi, 0x18
00000000079ecf2d: e86e0ec802                   call     0xa66dda0
00000000079ecf32: 4889c6                       mov      rsi, rax
00000000079ecf35: 0f57c0                       xorps    xmm0, xmm0
00000000079ecf38: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000079ecf3b: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000079ecf43: 49894610                     mov      qword ptr [r14 + 0x10], rax
00000000079ecf47: 4889df                       mov      rdi, rbx
00000000079ecf4a: e8f1575601                   call     0x8f52740
00000000079ecf4f: 84c0                         test     al, al
00000000079ecf51: 0f84e8010000                 je       0x79ed13f
00000000079ecf57: 488b4308                     mov      rax, qword ptr [rbx + 8]
00000000079ecf5b: 488b4b10                     mov      rcx, qword ptr [rbx + 0x10]
00000000079ecf5f: 4839c8                       cmp      rax, rcx
00000000079ecf62: 0f83b8fdffff                 jae      0x79ecd20
00000000079ecf68: 803818                       cmp      byte ptr [rax], 0x18
00000000079ecf6b: 0f85affdffff                 jne      0x79ecd20
00000000079ecf71: 48ffc0                       inc      rax
00000000079ecf74: 48894308                     mov      qword ptr [rbx + 8], rax
00000000079ecf78: 4839c8                       cmp      rax, rcx
00000000079ecf7b: 7314                         jae      0x79ecf91
00000000079ecf7d: 0fb610                       movzx    edx, byte ptr [rax]
00000000079ecf80: 84d2                         test     dl, dl
00000000079ecf82: 780d                         js       0x79ecf91
00000000079ecf84: 41895500                     mov      dword ptr [r13], edx
00000000079ecf88: 48ffc0                       inc      rax
00000000079ecf8b: 48894308                     mov      qword ptr [rbx + 8], rax
00000000079ecf8f: eb1b                         jmp      0x79ecfac
00000000079ecf91: 4889df                       mov      rdi, rbx
00000000079ecf94: 4c89ee                       mov      rsi, r13
00000000079ecf97: e874415601                   call     0x8f51110
00000000079ecf9c: 84c0                         test     al, al
00000000079ecf9e: 0f849b010000                 je       0x79ed13f
00000000079ecfa4: 488b4308                     mov      rax, qword ptr [rbx + 8]
00000000079ecfa8: 488b4b10                     mov      rcx, qword ptr [rbx + 0x10]
00000000079ecfac: 41804e3404                   or       byte ptr [r14 + 0x34], 4
00000000079ecfb1: 4839c8                       cmp      rax, rcx
00000000079ecfb4: 0f8366fdffff                 jae      0x79ecd20
00000000079ecfba: 803820                       cmp      byte ptr [rax], 0x20
00000000079ecfbd: 0f855dfdffff                 jne      0x79ecd20
00000000079ecfc3: 48ffc0                       inc      rax
00000000079ecfc6: 48894308                     mov      qword ptr [rbx + 8], rax
00000000079ecfca: 4839c8                       cmp      rax, rcx
00000000079ecfcd: 7314                         jae      0x79ecfe3
00000000079ecfcf: 0fb610                       movzx    edx, byte ptr [rax]
00000000079ecfd2: 84d2                         test     dl, dl
00000000079ecfd4: 780d                         js       0x79ecfe3
00000000079ecfd6: 41891424                     mov      dword ptr [r12], edx
00000000079ecfda: 48ffc0                       inc      rax
00000000079ecfdd: 48894308                     mov      qword ptr [rbx + 8], rax
00000000079ecfe1: eb1b                         jmp      0x79ecffe
00000000079ecfe3: 4889df                       mov      rdi, rbx
00000000079ecfe6: 4c89e6                       mov      rsi, r12
00000000079ecfe9: e822415601                   call     0x8f51110
00000000079ecfee: 84c0                         test     al, al
00000000079ecff0: 0f8449010000                 je       0x79ed13f
00000000079ecff6: 488b4308                     mov      rax, qword ptr [rbx + 8]
00000000079ecffa: 488b4b10                     mov      rcx, qword ptr [rbx + 0x10]
00000000079ecffe: 41804e3408                   or       byte ptr [r14 + 0x34], 8
00000000079ed003: 4839c8                       cmp      rax, rcx
00000000079ed006: 0f8314fdffff                 jae      0x79ecd20
00000000079ed00c: 803828                       cmp      byte ptr [rax], 0x28
00000000079ed00f: 0f850bfdffff                 jne      0x79ecd20
00000000079ed015: 48ffc0                       inc      rax
00000000079ed018: 48894308                     mov      qword ptr [rbx + 8], rax
00000000079ed01c: 4839c8                       cmp      rax, rcx
00000000079ed01f: 7317                         jae      0x79ed038
00000000079ed021: 0fb610                       movzx    edx, byte ptr [rax]
00000000079ed024: 84d2                         test     dl, dl
00000000079ed026: 7810                         js       0x79ed038
00000000079ed028: 488b742408                   mov      rsi, qword ptr [rsp + 8]
00000000079ed02d: 8916                         mov      dword ptr [rsi], edx
00000000079ed02f: 48ffc0                       inc      rax
00000000079ed032: 48894308                     mov      qword ptr [rbx + 8], rax
00000000079ed036: eb1d                         jmp      0x79ed055
00000000079ed038: 4889df                       mov      rdi, rbx
00000000079ed03b: 488b742408                   mov      rsi, qword ptr [rsp + 8]
00000000079ed040: e8cb405601                   call     0x8f51110
00000000079ed045: 84c0                         test     al, al
00000000079ed047: 0f84f2000000                 je       0x79ed13f
00000000079ed04d: 488b4308                     mov      rax, qword ptr [rbx + 8]
00000000079ed051: 488b4b10                     mov      rcx, qword ptr [rbx + 0x10]
00000000079ed055: 418b5634                     mov      edx, dword ptr [r14 + 0x34]
00000000079ed059: 83ca10                       or       edx, 0x10
00000000079ed05c: 41895634                     mov      dword ptr [r14 + 0x34], edx
00000000079ed060: 4839c8                       cmp      rax, rcx
00000000079ed063: 0f83b7fcffff                 jae      0x79ecd20
00000000079ed069: 803832                       cmp      byte ptr [rax], 0x32
00000000079ed06c: 0f85aefcffff                 jne      0x79ecd20
00000000079ed072: 48ffc0                       inc      rax
00000000079ed075: 48894308                     mov      qword ptr [rbx + 8], rax
00000000079ed079: 83ca20                       or       edx, 0x20
00000000079ed07c: 41895634                     mov      dword ptr [r14 + 0x34], edx
00000000079ed080: 498b7620                     mov      rsi, qword ptr [r14 + 0x20]
00000000079ed084: 483b3575641003               cmp      rsi, qword ptr [rip + 0x3106475] ; reloc 0xad176f0
00000000079ed08b: 751f                         jne      0x79ed0ac
00000000079ed08d: bf18000000                   mov      edi, 0x18
00000000079ed092: e8090dc802                   call     0xa66dda0
00000000079ed097: 4889c6                       mov      rsi, rax
00000000079ed09a: 0f57c0                       xorps    xmm0, xmm0
00000000079ed09d: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000079ed0a0: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000079ed0a8: 49894620                     mov      qword ptr [r14 + 0x20], rax
00000000079ed0ac: 4889df                       mov      rdi, rbx
00000000079ed0af: e88c565601                   call     0x8f52740
00000000079ed0b4: 84c0                         test     al, al
00000000079ed0b6: 0f8483000000                 je       0x79ed13f
00000000079ed0bc: 488b4308                     mov      rax, qword ptr [rbx + 8]
00000000079ed0c0: 488b4b10                     mov      rcx, qword ptr [rbx + 0x10]
00000000079ed0c4: 4839c8                       cmp      rax, rcx
00000000079ed0c7: 0f8353fcffff                 jae      0x79ecd20
00000000079ed0cd: 803838                       cmp      byte ptr [rax], 0x38
00000000079ed0d0: 0f854afcffff                 jne      0x79ecd20
00000000079ed0d6: 48ffc0                       inc      rax
00000000079ed0d9: 48894308                     mov      qword ptr [rbx + 8], rax
00000000079ed0dd: 4839c8                       cmp      rax, rcx
00000000079ed0e0: 7317                         jae      0x79ed0f9
00000000079ed0e2: 0fb610                       movzx    edx, byte ptr [rax]
00000000079ed0e5: 84d2                         test     dl, dl
00000000079ed0e7: 7810                         js       0x79ed0f9
00000000079ed0e9: 488b742410                   mov      rsi, qword ptr [rsp + 0x10]
00000000079ed0ee: 8916                         mov      dword ptr [rsi], edx
00000000079ed0f0: 48ffc0                       inc      rax
00000000079ed0f3: 48894308                     mov      qword ptr [rbx + 8], rax
00000000079ed0f7: eb19                         jmp      0x79ed112
00000000079ed0f9: 4889df                       mov      rdi, rbx
00000000079ed0fc: 488b742410                   mov      rsi, qword ptr [rsp + 0x10]
00000000079ed101: e80a405601                   call     0x8f51110
00000000079ed106: 84c0                         test     al, al
00000000079ed108: 7435                         je       0x79ed13f
00000000079ed10a: 488b4308                     mov      rax, qword ptr [rbx + 8]
00000000079ed10e: 488b4b10                     mov      rcx, qword ptr [rbx + 0x10]
00000000079ed112: 41804e3440                   or       byte ptr [r14 + 0x34], 0x40
00000000079ed117: 4839c8                       cmp      rax, rcx
00000000079ed11a: 0f8500fcffff                 jne      0x79ecd20
00000000079ed120: 837b2c00                     cmp      dword ptr [rbx + 0x2c], 0
00000000079ed124: 750c                         jne      0x79ed132
00000000079ed126: 8b4318                       mov      eax, dword ptr [rbx + 0x18]
00000000079ed129: 3b4328                       cmp      eax, dword ptr [rbx + 0x28]
00000000079ed12c: 0f85eefbffff                 jne      0x79ecd20
00000000079ed132: c7432000000000               mov      dword ptr [rbx + 0x20], 0
00000000079ed139: c6432401                     mov      byte ptr [rbx + 0x24], 1
00000000079ed13d: eb03                         jmp      0x79ed142
00000000079ed13f: 4531ff                       xor      r15d, r15d
00000000079ed142: 4489f8                       mov      eax, r15d
00000000079ed145: 4883c428                     add      rsp, 0x28
00000000079ed149: 5b                           pop      rbx
00000000079ed14a: 415c                         pop      r12
00000000079ed14c: 415d                         pop      r13
00000000079ed14e: 415e                         pop      r14
00000000079ed150: 415f                         pop      r15
00000000079ed152: 5d                           pop      rbp
00000000079ed153: c3                           ret
00000000079ed154: 4889c3                       mov      rbx, rax
00000000079ed157: 4c89e7                       mov      rdi, r12
00000000079ed15a: e8e1cfb1fc                   call     0x450a140
00000000079ed15f: 4889df                       mov      rdi, rbx
00000000079ed162: e8b9fcaffc                   call     0x44ece20
