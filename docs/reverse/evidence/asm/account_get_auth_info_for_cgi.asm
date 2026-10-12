0000000008df4f20: 55                           push     rbp
0000000008df4f21: 4157                         push     r15
0000000008df4f23: 4156                         push     r14
0000000008df4f25: 4155                         push     r13
0000000008df4f27: 4154                         push     r12
0000000008df4f29: 53                           push     rbx
0000000008df4f2a: 4881ec28030000               sub      rsp, 0x328
0000000008df4f31: 4989cf                       mov      r15, rcx
0000000008df4f34: 4189d4                       mov      r12d, edx
0000000008df4f37: 4889f5                       mov      rbp, rsi
0000000008df4f3a: 4889fb                       mov      rbx, rdi
0000000008df4f3d: 488dbea0010000               lea      rdi, [rsi + 0x1a0]
0000000008df4f44: 48893c24                     mov      qword ptr [rsp], rdi
0000000008df4f48: e883e001fc                   call     0x4e12fd0
0000000008df4f4d: 4c8bad88010000               mov      r13, qword ptr [rbp + 0x188]
0000000008df4f54: 4c8db590010000               lea      r14, [rbp + 0x190]
0000000008df4f5b: 4d39f5                       cmp      r13, r14
0000000008df4f5e: 0f8598000000                 jne      0x8df4ffc
0000000008df4f64: 0f57c0                       xorps    xmm0, xmm0
0000000008df4f67: 0f1103                       movups   xmmword ptr [rbx], xmm0
0000000008df4f6a: 48c7431000000000             mov      qword ptr [rbx + 0x10], 0
0000000008df4f72: 488d4370                     lea      rax, [rbx + 0x70]
0000000008df4f76: 0f114370                     movups   xmmword ptr [rbx + 0x70], xmm0
0000000008df4f7a: 0f114320                     movups   xmmword ptr [rbx + 0x20], xmm0
0000000008df4f7e: 0f114330                     movups   xmmword ptr [rbx + 0x30], xmm0
0000000008df4f82: 0f114340                     movups   xmmword ptr [rbx + 0x40], xmm0
0000000008df4f86: 0f114350                     movups   xmmword ptr [rbx + 0x50], xmm0
0000000008df4f8a: 48c7436000000000             mov      qword ptr [rbx + 0x60], 0
0000000008df4f92: 48894368                     mov      qword ptr [rbx + 0x68], rax
0000000008df4f96: 0f118380000000               movups   xmmword ptr [rbx + 0x80], xmm0
0000000008df4f9d: 0f118390000000               movups   xmmword ptr [rbx + 0x90], xmm0
0000000008df4fa4: 0f1183a0000000               movups   xmmword ptr [rbx + 0xa0], xmm0
0000000008df4fab: 48c783b000000000000000       mov      qword ptr [rbx + 0xb0], 0
0000000008df4fb6: 488db5a0000000               lea      rsi, [rbp + 0xa0]
0000000008df4fbd: 488d7b50                     lea      rdi, [rbx + 0x50]
0000000008df4fc1: e8ea8d71fb                   call     0x450ddb0
0000000008df4fc6: 0fb685f0000000               movzx    eax, byte ptr [rbp + 0xf0]
0000000008df4fcd: a801                         test     al, 1
0000000008df4fcf: 747d                         je       0x8df504e
0000000008df4fd1: 488b85f8000000               mov      rax, qword ptr [rbp + 0xf8]
0000000008df4fd8: 4c8b3424                     mov      r14, qword ptr [rsp]
0000000008df4fdc: 4c8d6b20                     lea      r13, [rbx + 0x20]
0000000008df4fe0: 4885c0                       test     rax, rax
0000000008df4fe3: 757c                         jne      0x8df5061
0000000008df4fe5: e906020000                   jmp      0x8df51f0
0000000008df4fea: 660f1f440000                 nop      word ptr [rax + rax]
0000000008df4ff0: 4989c5                       mov      r13, rax
0000000008df4ff3: 4c39f0                       cmp      rax, r14
0000000008df4ff6: 0f8468ffffff                 je       0x8df4f64
0000000008df4ffc: 498dbd90000000               lea      rdi, [r13 + 0x90]
0000000008df5003: 4c89fe                       mov      rsi, r15
0000000008df5006: e8159369ff                   call     0x848e320
0000000008df500b: 498d8d98000000               lea      rcx, [r13 + 0x98]
0000000008df5012: 4839c8                       cmp      rax, rcx
0000000008df5015: 0f85a5000000                 jne      0x8df50c0
0000000008df501b: 498b4d08                     mov      rcx, qword ptr [r13 + 8]
0000000008df501f: 4885c9                       test     rcx, rcx
0000000008df5022: 741c                         je       0x8df5040
0000000008df5024: 6666662e0f1f840000000000     nop      word ptr cs:[rax + rax]
0000000008df5030: 4889c8                       mov      rax, rcx
0000000008df5033: 488b09                       mov      rcx, qword ptr [rcx]
0000000008df5036: 4885c9                       test     rcx, rcx
0000000008df5039: 75f5                         jne      0x8df5030
0000000008df503b: ebb3                         jmp      0x8df4ff0
0000000008df503d: 0f1f00                       nop      dword ptr [rax]
0000000008df5040: 498b4510                     mov      rax, qword ptr [r13 + 0x10]
0000000008df5044: 4c3928                       cmp      qword ptr [rax], r13
0000000008df5047: 4989c5                       mov      r13, rax
0000000008df504a: 75f4                         jne      0x8df5040
0000000008df504c: eba2                         jmp      0x8df4ff0
0000000008df504e: d1e8                         shr      eax, 1
0000000008df5050: 4c8b3424                     mov      r14, qword ptr [rsp]
0000000008df5054: 4c8d6b20                     lea      r13, [rbx + 0x20]
0000000008df5058: 4885c0                       test     rax, rax
0000000008df505b: 0f848f010000                 je       0x8df51f0
0000000008df5061: 0fb68508010000               movzx    eax, byte ptr [rbp + 0x108]
0000000008df5068: a801                         test     al, 1
0000000008df506a: 0f8475010000                 je       0x8df51e5
0000000008df5070: 488b8510010000               mov      rax, qword ptr [rbp + 0x110]
0000000008df5077: 4885c0                       test     rax, rax
0000000008df507a: 0f8470010000                 je       0x8df51f0
0000000008df5080: 4c8dbdf0000000               lea      r15, [rbp + 0xf0]
0000000008df5087: 4881c508010000               add      rbp, 0x108
0000000008df508e: 488d35e27e0ef8               lea      rsi, [rip - 0x7f1811e] ; 'main'
0000000008df5095: 4889df                       mov      rdi, rbx
0000000008df5098: e8538b71fb                   call     0x450dbf0
0000000008df509d: 4c89ef                       mov      rdi, r13
0000000008df50a0: 4c89fe                       mov      rsi, r15
0000000008df50a3: e8088d71fb                   call     0x450ddb0
0000000008df50a8: 488d7b38                     lea      rdi, [rbx + 0x38]
0000000008df50ac: 4889ee                       mov      rsi, rbp
0000000008df50af: e8fc8c71fb                   call     0x450ddb0
0000000008df50b4: c743180d000000               mov      dword ptr [rbx + 0x18], 0xd
0000000008df50bb: e925060000                   jmp      0x8df56e5
0000000008df50c0: 498d7528                     lea      rsi, [r13 + 0x28]
0000000008df50c4: 4889df                       mov      rdi, rbx
0000000008df50c7: 4989c6                       mov      r14, rax
0000000008df50ca: e841060000                   call     0x8df5710
0000000008df50cf: 418b4638                     mov      eax, dword ptr [r14 + 0x38]
0000000008df50d3: 894318                       mov      dword ptr [rbx + 0x18], eax
0000000008df50d6: 31ff                         xor      edi, edi
0000000008df50d8: e8b31b3200                   call     0x9116c90
0000000008df50dd: 85c0                         test     eax, eax
0000000008df50df: 4c8b3424                     mov      r14, qword ptr [rsp]
0000000008df50e3: 0f84fc050000                 je       0x8df56e5
0000000008df50e9: 488d156e4f16f8               lea      rdx, [rip - 0x7e9b092] ; 'mars::account'
0000000008df50f0: 488d0d15f825f8               lea      rcx, [rip - 0x7da07eb] ; 'account_core.cc'
0000000008df50f7: 4c8d054a1006f8               lea      r8, [rip - 0x7f9efb6] ; 'GetAuthInfoForCgi'
0000000008df50fe: 488dbc2498020000             lea      rdi, [rsp + 0x298]
0000000008df5106: 31f6                         xor      esi, esi
0000000008df5108: 41b914010000                 mov      r9d, 0x114
0000000008df510e: 6a00                         push     0
0000000008df5110: 6a00                         push     0
0000000008df5112: e889c43100                   call     0x91115a0
0000000008df5117: 4883c410                     add      rsp, 0x10
0000000008df511b: 48c78424f000000000000000     mov      qword ptr [rsp + 0xf0], 0
0000000008df5127: b807000000                   mov      eax, 7
0000000008df512c: 488d8c24f7000000             lea      rcx, [rsp + 0xf7]
0000000008df5134: bacdcccccc                   mov      edx, 0xcccccccd
0000000008df5139: 488d2dcca213f8               lea      rbp, [rip - 0x7ec5d34] ; 'ZYXWVUTSRQPONMLKJIHGFEDCBA9876543210123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'
0000000008df5140: 4489e6                       mov      esi, r12d
0000000008df5143: 480faff2                     imul     rsi, rdx
0000000008df5147: 48c1ee23                     shr      rsi, 0x23
0000000008df514b: 8d3c36                       lea      edi, [rsi + rsi]
0000000008df514e: 8d3cbf                       lea      edi, [rdi + rdi*4]
0000000008df5151: f7df                         neg      edi
0000000008df5153: 4401e7                       add      edi, r12d
0000000008df5156: 83c723                       add      edi, 0x23
0000000008df5159: 0fb63c2f                     movzx    edi, byte ptr [rdi + rbp]
0000000008df515d: 40887901                     mov      byte ptr [rcx + 1], dil
0000000008df5161: 48ffc1                       inc      rcx
0000000008df5164: 48ffc0                       inc      rax
0000000008df5167: 4183fc09                     cmp      r12d, 9
0000000008df516b: 4189f4                       mov      r12d, esi
0000000008df516e: 77d0                         ja       0x8df5140
0000000008df5170: 488d9424f8000000             lea      rdx, [rsp + 0xf8]
0000000008df5178: c6410100                     mov      byte ptr [rcx + 1], 0
0000000008df517c: 4883f809                     cmp      rax, 9
0000000008df5180: 722b                         jb       0x8df51ad
0000000008df5182: 488d8424f9000000             lea      rax, [rsp + 0xf9]
0000000008df518a: 660f1f440000                 nop      word ptr [rax + rax]
0000000008df5190: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008df5193: 0fb678ff                     movzx    edi, byte ptr [rax - 1]
0000000008df5197: 408839                       mov      byte ptr [rcx], dil
0000000008df519a: 48ffc9                       dec      rcx
0000000008df519d: 408870ff                     mov      byte ptr [rax - 1], sil
0000000008df51a1: 488d7001                     lea      rsi, [rax + 1]
0000000008df51a5: 4839c8                       cmp      rax, rcx
0000000008df51a8: 4889f0                       mov      rax, rsi
0000000008df51ab: 72e3                         jb       0x8df5190
0000000008df51ad: 48899424f0000000             mov      qword ptr [rsp + 0xf0], rdx
0000000008df51b5: 41f60701                     test     byte ptr [r15], 1
0000000008df51b9: 0f8473030000                 je       0x8df5532
0000000008df51bf: 4d8b7f10                     mov      r15, qword ptr [r15 + 0x10]
0000000008df51c3: 4c89bc2448020000             mov      qword ptr [rsp + 0x248], r15
0000000008df51cb: c684245002000000             mov      byte ptr [rsp + 0x250], 0
0000000008df51d3: f60301                       test     byte ptr [rbx], 1
0000000008df51d6: 0f8572030000                 jne      0x8df554e
0000000008df51dc: 488d4301                     lea      rax, [rbx + 1]
0000000008df51e0: e96d030000                   jmp      0x8df5552
0000000008df51e5: d1e8                         shr      eax, 1
0000000008df51e7: 4885c0                       test     rax, rax
0000000008df51ea: 0f8590feffff                 jne      0x8df5080
0000000008df51f0: 488d3511c117f8               lea      rsi, [rip - 0x7e83eef] ; 'origin'
0000000008df51f7: 4889df                       mov      rdi, rbx
0000000008df51fa: e8f18971fb                   call     0x450dbf0
0000000008df51ff: 4881c5b8000000               add      rbp, 0xb8
0000000008df5206: 4c89ef                       mov      rdi, r13
0000000008df5209: 4889ee                       mov      rsi, rbp
0000000008df520c: e89f8b71fb                   call     0x450ddb0
0000000008df5211: 488d7b38                     lea      rdi, [rbx + 0x38]
0000000008df5215: 4889ee                       mov      rsi, rbp
0000000008df5218: e8938b71fb                   call     0x450ddb0
0000000008df521d: c7431805000000               mov      dword ptr [rbx + 0x18], 5
0000000008df5224: 31ff                         xor      edi, edi
0000000008df5226: e8651a3200                   call     0x9116c90
0000000008df522b: 85c0                         test     eax, eax
0000000008df522d: 0f84b2040000                 je       0x8df56e5
0000000008df5233: 488d15244e16f8               lea      rdx, [rip - 0x7e9b1dc] ; 'mars::account'
0000000008df523a: 488d0dcbf625f8               lea      rcx, [rip - 0x7da0935] ; 'account_core.cc'
0000000008df5241: 4c8d05000f06f8               lea      r8, [rip - 0x7f9f100] ; 'GetAuthInfoForCgi'
0000000008df5248: 488dbc2498020000             lea      rdi, [rsp + 0x298]
0000000008df5250: 31f6                         xor      esi, esi
0000000008df5252: 41b932010000                 mov      r9d, 0x132
0000000008df5258: 6a00                         push     0
0000000008df525a: 6a00                         push     0
0000000008df525c: e83fc33100                   call     0x91115a0
0000000008df5261: 4883c410                     add      rsp, 0x10
0000000008df5265: 48c78424f000000000000000     mov      qword ptr [rsp + 0xf0], 0
0000000008df5271: b807000000                   mov      eax, 7
0000000008df5276: 488d8c24f7000000             lea      rcx, [rsp + 0xf7]
0000000008df527e: bacdcccccc                   mov      edx, 0xcccccccd
0000000008df5283: 488d2d82a113f8               lea      rbp, [rip - 0x7ec5e7e] ; 'ZYXWVUTSRQPONMLKJIHGFEDCBA9876543210123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'
0000000008df528a: 660f1f440000                 nop      word ptr [rax + rax]
0000000008df5290: 4489e6                       mov      esi, r12d
0000000008df5293: 480faff2                     imul     rsi, rdx
0000000008df5297: 48c1ee23                     shr      rsi, 0x23
0000000008df529b: 8d3c36                       lea      edi, [rsi + rsi]
0000000008df529e: 8d3cbf                       lea      edi, [rdi + rdi*4]
0000000008df52a1: f7df                         neg      edi
0000000008df52a3: 4401e7                       add      edi, r12d
0000000008df52a6: 83c723                       add      edi, 0x23
0000000008df52a9: 0fb63c2f                     movzx    edi, byte ptr [rdi + rbp]
0000000008df52ad: 40887901                     mov      byte ptr [rcx + 1], dil
0000000008df52b1: 48ffc1                       inc      rcx
0000000008df52b4: 48ffc0                       inc      rax
0000000008df52b7: 4183fc09                     cmp      r12d, 9
0000000008df52bb: 4189f4                       mov      r12d, esi
0000000008df52be: 77d0                         ja       0x8df5290
0000000008df52c0: 488d9424f8000000             lea      rdx, [rsp + 0xf8]
0000000008df52c8: c6410100                     mov      byte ptr [rcx + 1], 0
0000000008df52cc: 4883f809                     cmp      rax, 9
0000000008df52d0: 722b                         jb       0x8df52fd
0000000008df52d2: 488d8424f9000000             lea      rax, [rsp + 0xf9]
0000000008df52da: 660f1f440000                 nop      word ptr [rax + rax]
0000000008df52e0: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008df52e3: 0fb678ff                     movzx    edi, byte ptr [rax - 1]
0000000008df52e7: 408839                       mov      byte ptr [rcx], dil
0000000008df52ea: 48ffc9                       dec      rcx
0000000008df52ed: 408870ff                     mov      byte ptr [rax - 1], sil
0000000008df52f1: 488d7001                     lea      rsi, [rax + 1]
0000000008df52f5: 4839c8                       cmp      rax, rcx
0000000008df52f8: 4889f0                       mov      rax, rsi
0000000008df52fb: 72e3                         jb       0x8df52e0
0000000008df52fd: 48899424f0000000             mov      qword ptr [rsp + 0xf0], rdx
0000000008df5305: 41f60701                     test     byte ptr [r15], 1
0000000008df5309: 741f                         je       0x8df532a
0000000008df530b: 4d8b7f10                     mov      r15, qword ptr [r15 + 0x10]
0000000008df530f: 4c89bc2448020000             mov      qword ptr [rsp + 0x248], r15
0000000008df5317: c684245002000000             mov      byte ptr [rsp + 0x250], 0
0000000008df531f: f60301                       test     byte ptr [rbx], 1
0000000008df5322: 751e                         jne      0x8df5342
0000000008df5324: 488d4301                     lea      rax, [rbx + 1]
0000000008df5328: eb1c                         jmp      0x8df5346
0000000008df532a: 49ffc7                       inc      r15
0000000008df532d: 4c89bc2448020000             mov      qword ptr [rsp + 0x248], r15
0000000008df5335: c684245002000000             mov      byte ptr [rsp + 0x250], 0
0000000008df533d: f60301                       test     byte ptr [rbx], 1
0000000008df5340: 74e2                         je       0x8df5324
0000000008df5342: 488b4310                     mov      rax, qword ptr [rbx + 0x10]
0000000008df5346: 48898424f8010000             mov      qword ptr [rsp + 0x1f8], rax
0000000008df534e: c684240002000000             mov      byte ptr [rsp + 0x200], 0
0000000008df5356: 4c8dbc24b0010000             lea      r15, [rsp + 0x1b0]
0000000008df535e: 8b4b18                       mov      ecx, dword ptr [rbx + 0x18]
0000000008df5361: 488d15972a18f8               lea      rdx, [rip - 0x7e7d569] ; '%d'
0000000008df5368: be41000000                   mov      esi, 0x41
0000000008df536d: 4c89ff                       mov      rdi, r15
0000000008df5370: 31c0                         xor      eax, eax
0000000008df5372: e8298f8701                   call     0xa66e2a0
0000000008df5377: 4c89bc24a8010000             mov      qword ptr [rsp + 0x1a8], r15
0000000008df537f: 4c8dbc2440010000             lea      r15, [rsp + 0x140]
0000000008df5387: 4c89ff                       mov      rdi, r15
0000000008df538a: 4c89ee                       mov      rsi, r13
0000000008df538d: e8be673200                   call     0x911bb50
0000000008df5392: 488d7c2408                   lea      rdi, [rsp + 8]
0000000008df5397: 4c89fe                       mov      rsi, r15
0000000008df539a: e8a1630200                   call     0x8e1b740
0000000008df539f: f644240801                   test     byte ptr [rsp + 8], 1
0000000008df53a4: 7407                         je       0x8df53ad
0000000008df53a6: 488b442418                   mov      rax, qword ptr [rsp + 0x18]
0000000008df53ab: eb05                         jmp      0x8df53b2
0000000008df53ad: 488d442409                   lea      rax, [rsp + 9]
0000000008df53b2: 48898424a0000000             mov      qword ptr [rsp + 0xa0], rax
0000000008df53ba: c68424a800000000             mov      byte ptr [rsp + 0xa8], 0
0000000008df53c2: 0fb64b20                     movzx    ecx, byte ptr [rbx + 0x20]
0000000008df53c6: f6c101                       test     cl, 1
0000000008df53c9: 7406                         je       0x8df53d1
0000000008df53cb: 488b4b28                     mov      rcx, qword ptr [rbx + 0x28]
0000000008df53cf: eb02                         jmp      0x8df53d3
0000000008df53d1: d1e9                         shr      ecx, 1
0000000008df53d3: 48c784245801000000000000     mov      qword ptr [rsp + 0x158], 0
0000000008df53df: bf07000000                   mov      edi, 7
0000000008df53e4: 488db4245f010000             lea      rsi, [rsp + 0x15f]
0000000008df53ec: 49b8cdcccccccccccccc         movabs   r8, 0xcccccccccccccccd
0000000008df53f6: 662e0f1f840000000000         nop      word ptr cs:[rax + rax]
0000000008df5400: 4889c8                       mov      rax, rcx
0000000008df5403: 49f7e0                       mul      r8
0000000008df5406: 48c1ea03                     shr      rdx, 3
0000000008df540a: 488d0412                     lea      rax, [rdx + rdx]
0000000008df540e: 488d0480                     lea      rax, [rax + rax*4]
0000000008df5412: 4989e9                       mov      r9, rbp
0000000008df5415: 4929c1                       sub      r9, rax
0000000008df5418: 410fb6440923                 movzx    eax, byte ptr [r9 + rcx + 0x23]
0000000008df541e: 884601                       mov      byte ptr [rsi + 1], al
0000000008df5421: 48ffc6                       inc      rsi
0000000008df5424: 48ffc7                       inc      rdi
0000000008df5427: 4883f909                     cmp      rcx, 9
0000000008df542b: 4889d1                       mov      rcx, rdx
0000000008df542e: 77d0                         ja       0x8df5400
0000000008df5430: 488d842460010000             lea      rax, [rsp + 0x160]
0000000008df5438: c6460100                     mov      byte ptr [rsi + 1], 0
0000000008df543c: 4883ff09                     cmp      rdi, 9
0000000008df5440: 722a                         jb       0x8df546c
0000000008df5442: 488d8c2461010000             lea      rcx, [rsp + 0x161]
0000000008df544a: 660f1f440000                 nop      word ptr [rax + rax]
0000000008df5450: 0fb616                       movzx    edx, byte ptr [rsi]
0000000008df5453: 0fb679ff                     movzx    edi, byte ptr [rcx - 1]
0000000008df5457: 40883e                       mov      byte ptr [rsi], dil
0000000008df545a: 48ffce                       dec      rsi
0000000008df545d: 8851ff                       mov      byte ptr [rcx - 1], dl
0000000008df5460: 488d5101                     lea      rdx, [rcx + 1]
0000000008df5464: 4839f1                       cmp      rcx, rsi
0000000008df5467: 4889d1                       mov      rcx, rdx
0000000008df546a: 72e4                         jb       0x8df5450
0000000008df546c: 4889842458010000             mov      qword ptr [rsp + 0x158], rax
0000000008df5474: 488d8424f0000000             lea      rax, [rsp + 0xf0]
0000000008df547c: 4889442420                   mov      qword ptr [rsp + 0x20], rax
0000000008df5481: 488d842448020000             lea      rax, [rsp + 0x248]
0000000008df5489: 4889442428                   mov      qword ptr [rsp + 0x28], rax
0000000008df548e: 488d8424f8010000             lea      rax, [rsp + 0x1f8]
0000000008df5496: 4889442430                   mov      qword ptr [rsp + 0x30], rax
0000000008df549b: 488d8424a8010000             lea      rax, [rsp + 0x1a8]
0000000008df54a3: 4889442438                   mov      qword ptr [rsp + 0x38], rax
0000000008df54a8: 488d8424a0000000             lea      rax, [rsp + 0xa0]
0000000008df54b0: 4889442440                   mov      qword ptr [rsp + 0x40], rax
0000000008df54b5: 488d842458010000             lea      rax, [rsp + 0x158]
0000000008df54bd: 4889442448                   mov      qword ptr [rsp + 0x48], rax
0000000008df54c2: 0f57c0                       xorps    xmm0, xmm0
0000000008df54c5: 0f29442450                   movaps   xmmword ptr [rsp + 0x50], xmm0
0000000008df54ca: 0f29442460                   movaps   xmmword ptr [rsp + 0x60], xmm0
0000000008df54cf: 0f29442470                   movaps   xmmword ptr [rsp + 0x70], xmm0
0000000008df54d4: 0f29842480000000             movaps   xmmword ptr [rsp + 0x80], xmm0
0000000008df54dc: 0f29842490000000             movaps   xmmword ptr [rsp + 0x90], xmm0
0000000008df54e4: 488d3515640ff8               lea      rsi, [rip - 0x7f09beb] ; 'mmpack taskid:%_, host:%_, identify:%_, algo:%_, session_key:%_, len:%_'
0000000008df54eb: 488dbc2498020000             lea      rdi, [rsp + 0x298]
0000000008df54f3: 488d542420                   lea      rdx, [rsp + 0x20]
0000000008df54f8: e8f3c33100                   call     0x91118f0
0000000008df54fd: f644240801                   test     byte ptr [rsp + 8], 1
0000000008df5502: 740a                         je       0x8df550e
0000000008df5504: 488b7c2418                   mov      rdi, qword ptr [rsp + 0x18]
0000000008df5509: e8324c71fb                   call     0x450a140
0000000008df550e: f684244001000001             test     byte ptr [rsp + 0x140], 1
0000000008df5516: 740d                         je       0x8df5525
0000000008df5518: 488bbc2450010000             mov      rdi, qword ptr [rsp + 0x150]
0000000008df5520: e81b4c71fb                   call     0x450a140
0000000008df5525: 488dbc2498020000             lea      rdi, [rsp + 0x298]
0000000008df552d: e9ae010000                   jmp      0x8df56e0
0000000008df5532: 49ffc7                       inc      r15
0000000008df5535: 4c89bc2448020000             mov      qword ptr [rsp + 0x248], r15
0000000008df553d: c684245002000000             mov      byte ptr [rsp + 0x250], 0
0000000008df5545: f60301                       test     byte ptr [rbx], 1
0000000008df5548: 0f848efcffff                 je       0x8df51dc
0000000008df554e: 488b4310                     mov      rax, qword ptr [rbx + 0x10]
0000000008df5552: 48898424f8010000             mov      qword ptr [rsp + 0x1f8], rax
0000000008df555a: c684240002000000             mov      byte ptr [rsp + 0x200], 0
0000000008df5562: 4c8dbc24b0010000             lea      r15, [rsp + 0x1b0]
0000000008df556a: 8b4b18                       mov      ecx, dword ptr [rbx + 0x18]
0000000008df556d: 488d158b2818f8               lea      rdx, [rip - 0x7e7d775] ; '%d'
0000000008df5574: be41000000                   mov      esi, 0x41
0000000008df5579: 4c89ff                       mov      rdi, r15
0000000008df557c: 31c0                         xor      eax, eax
0000000008df557e: e81d8d8701                   call     0xa66e2a0
0000000008df5583: 4c89bc24a8010000             mov      qword ptr [rsp + 0x1a8], r15
0000000008df558b: 418b4d20                     mov      ecx, dword ptr [r13 + 0x20]
0000000008df558f: 48c78424a000000000000000     mov      qword ptr [rsp + 0xa0], 0
0000000008df559b: b808000000                   mov      eax, 8
0000000008df55a0: 89ca                         mov      edx, ecx
0000000008df55a2: 66666666662e0f1f840000000000 nop      word ptr cs:[rax + rax]
0000000008df55b0: 4863f2                       movsxd   rsi, edx
0000000008df55b3: 4869d667666666               imul     rdx, rsi, 0x66666667
0000000008df55ba: 4889d7                       mov      rdi, rdx
0000000008df55bd: 48c1ef3f                     shr      rdi, 0x3f
0000000008df55c1: 48c1fa22                     sar      rdx, 0x22
0000000008df55c5: 01fa                         add      edx, edi
0000000008df55c7: 8d3c12                       lea      edi, [rdx + rdx]
0000000008df55ca: 8d3cbf                       lea      edi, [rdi + rdi*4]
0000000008df55cd: 4189f0                       mov      r8d, esi
0000000008df55d0: 4129f8                       sub      r8d, edi
0000000008df55d3: 4963f8                       movsxd   rdi, r8d
0000000008df55d6: 0fb67c2f23                   movzx    edi, byte ptr [rdi + rbp + 0x23]
0000000008df55db: 4088bc04a0000000             mov      byte ptr [rsp + rax + 0xa0], dil
0000000008df55e3: 48ffc0                       inc      rax
0000000008df55e6: 83c609                       add      esi, 9
0000000008df55e9: 83fe12                       cmp      esi, 0x12
0000000008df55ec: 77c2                         ja       0x8df55b0
0000000008df55ee: 85c9                         test     ecx, ecx
0000000008df55f0: 790b                         jns      0x8df55fd
0000000008df55f2: c68404a00000002d             mov      byte ptr [rsp + rax + 0xa0], 0x2d
0000000008df55fa: 48ffc0                       inc      rax
0000000008df55fd: 488d8c24a8000000             lea      rcx, [rsp + 0xa8]
0000000008df5605: c68404a000000000             mov      byte ptr [rsp + rax + 0xa0], 0
0000000008df560d: 4883f80a                     cmp      rax, 0xa
0000000008df5611: 7c3a                         jl       0x8df564d
0000000008df5613: 4801e0                       add      rax, rsp
0000000008df5616: 4805a0000000                 add      rax, 0xa0
0000000008df561c: 48ffc8                       dec      rax
0000000008df561f: 488d9424a9000000             lea      rdx, [rsp + 0xa9]
0000000008df5627: 660f1f840000000000           nop      word ptr [rax + rax]
0000000008df5630: 0fb630                       movzx    esi, byte ptr [rax]
0000000008df5633: 0fb67aff                     movzx    edi, byte ptr [rdx - 1]
0000000008df5637: 408838                       mov      byte ptr [rax], dil
0000000008df563a: 408872ff                     mov      byte ptr [rdx - 1], sil
0000000008df563e: 48ffc8                       dec      rax
0000000008df5641: 488d7201                     lea      rsi, [rdx + 1]
0000000008df5645: 4839c2                       cmp      rdx, rax
0000000008df5648: 4889f2                       mov      rdx, rsi
0000000008df564b: 72e3                         jb       0x8df5630
0000000008df564d: 48898c24a0000000             mov      qword ptr [rsp + 0xa0], rcx
0000000008df5655: 488d8424f0000000             lea      rax, [rsp + 0xf0]
0000000008df565d: 4889442420                   mov      qword ptr [rsp + 0x20], rax
0000000008df5662: 488d842448020000             lea      rax, [rsp + 0x248]
0000000008df566a: 4889442428                   mov      qword ptr [rsp + 0x28], rax
0000000008df566f: 488d8424f8010000             lea      rax, [rsp + 0x1f8]
0000000008df5677: 4889442430                   mov      qword ptr [rsp + 0x30], rax
0000000008df567c: 488d8424a8010000             lea      rax, [rsp + 0x1a8]
0000000008df5684: 4889442438                   mov      qword ptr [rsp + 0x38], rax
0000000008df5689: 488d8424a0000000             lea      rax, [rsp + 0xa0]
0000000008df5691: 4889442440                   mov      qword ptr [rsp + 0x40], rax
0000000008df5696: 0f57c0                       xorps    xmm0, xmm0
0000000008df5699: 0f11442448                   movups   xmmword ptr [rsp + 0x48], xmm0
0000000008df569e: 0f11442458                   movups   xmmword ptr [rsp + 0x58], xmm0
0000000008df56a3: 0f11442468                   movups   xmmword ptr [rsp + 0x68], xmm0
0000000008df56a8: 0f11442478                   movups   xmmword ptr [rsp + 0x78], xmm0
0000000008df56ad: 0f11842488000000             movups   xmmword ptr [rsp + 0x88], xmm0
0000000008df56b5: 48c784249800000000000000     mov      qword ptr [rsp + 0x98], 0
0000000008df56c1: 488d35bd1b00f8               lea      rsi, [rip - 0x7ffe443] ; 'mmpack taskid:%_, host:%_, identify:%_, algo:%_, business_type:%_'
0000000008df56c8: 4c8dbc2498020000             lea      r15, [rsp + 0x298]
0000000008df56d0: 488d542420                   lea      rdx, [rsp + 0x20]
0000000008df56d5: 4c89ff                       mov      rdi, r15
0000000008df56d8: e813c23100                   call     0x91118f0
0000000008df56dd: 4c89ff                       mov      rdi, r15
0000000008df56e0: e84bbf3100                   call     0x9111630
0000000008df56e5: 4c89f7                       mov      rdi, r14
0000000008df56e8: e863d901fc                   call     0x4e13050
0000000008df56ed: 4889d8                       mov      rax, rbx
0000000008df56f0: 4881c428030000               add      rsp, 0x328
0000000008df56f7: 5b                           pop      rbx
0000000008df56f8: 415c                         pop      r12
0000000008df56fa: 415d                         pop      r13
0000000008df56fc: 415e                         pop      r14
0000000008df56fe: 415f                         pop      r15
0000000008df5700: 5d                           pop      rbp
0000000008df5701: c3                           ret
