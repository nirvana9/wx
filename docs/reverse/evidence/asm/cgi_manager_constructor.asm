00000000079df2b0: 55                           push     rbp
00000000079df2b1: 4157                         push     r15
00000000079df2b3: 4156                         push     r14
00000000079df2b5: 4155                         push     r13
00000000079df2b7: 4154                         push     r12
00000000079df2b9: 53                           push     rbx
00000000079df2ba: 4883ec38                     sub      rsp, 0x38
00000000079df2be: 4889fb                       mov      rbx, rdi
00000000079df2c1: 488d050025fa02               lea      rax, [rip + 0x2fa2500]
00000000079df2c8: 488d4810                     lea      rcx, [rax + 0x10]
00000000079df2cc: 48890f                       mov      qword ptr [rdi], rcx
00000000079df2cf: 488d8858010000               lea      rcx, [rax + 0x158]
00000000079df2d6: 48894f08                     mov      qword ptr [rdi + 8], rcx
00000000079df2da: 480580010000                 add      rax, 0x180
00000000079df2e0: 48894710                     mov      qword ptr [rdi + 0x10], rax
00000000079df2e4: c6471801                     mov      byte ptr [rdi + 0x18], 1
00000000079df2e8: 4c8d7768                     lea      r14, [rdi + 0x68]
00000000079df2ec: 488d6f70                     lea      rbp, [rdi + 0x70]
00000000079df2f0: 0f57c0                       xorps    xmm0, xmm0
00000000079df2f3: 0f114770                     movups   xmmword ptr [rdi + 0x70], xmm0
00000000079df2f7: 0f114720                     movups   xmmword ptr [rdi + 0x20], xmm0
00000000079df2fb: 0f114730                     movups   xmmword ptr [rdi + 0x30], xmm0
00000000079df2ff: 0f114740                     movups   xmmword ptr [rdi + 0x40], xmm0
00000000079df303: 0f114750                     movups   xmmword ptr [rdi + 0x50], xmm0
00000000079df307: 48c7476000000000             mov      qword ptr [rdi + 0x60], 0
00000000079df30f: 48896f68                     mov      qword ptr [rdi + 0x68], rbp
00000000079df313: 0f118780000000               movups   xmmword ptr [rdi + 0x80], xmm0
00000000079df31a: 0f118790000000               movups   xmmword ptr [rdi + 0x90], xmm0
00000000079df321: 0f1187a0000000               movups   xmmword ptr [rdi + 0xa0], xmm0
00000000079df328: 0f1187b0000000               movups   xmmword ptr [rdi + 0xb0], xmm0
00000000079df32f: 0f1187bc000000               movups   xmmword ptr [rdi + 0xbc], xmm0
00000000079df336: 0f1187d0000000               movups   xmmword ptr [rdi + 0xd0], xmm0
00000000079df33d: 4c89f7                       mov      rdi, r14
00000000079df340: 31f6                         xor      esi, esi
00000000079df342: e8f9600000                   call     0x79e5440
00000000079df347: 48896b68                     mov      qword ptr [rbx + 0x68], rbp
00000000079df34b: 0f57c0                       xorps    xmm0, xmm0
00000000079df34e: 0f114370                     movups   xmmword ptr [rbx + 0x70], xmm0
00000000079df352: bf10000000                   mov      edi, 0x10
00000000079df357: e844eac802                   call     0xa66dda0
00000000079df35c: 4989c4                       mov      r12, rax
00000000079df35f: 4889c7                       mov      rdi, rax
00000000079df362: 4889de                       mov      rsi, rbx
00000000079df365: e8c6670000                   call     0x79e5b30
00000000079df36a: 4c896330                     mov      qword ptr [rbx + 0x30], r12
00000000079df36e: bf10000000                   mov      edi, 0x10
00000000079df373: e828eac802                   call     0xa66dda0
00000000079df378: 4989c4                       mov      r12, rax
00000000079df37b: 488d7308                     lea      rsi, [rbx + 8]
00000000079df37f: 4889c7                       mov      rdi, rax
00000000079df382: e889690000                   call     0x79e5d10
00000000079df387: 4c896338                     mov      qword ptr [rbx + 0x38], r12
00000000079df38b: bf08000000                   mov      edi, 8
00000000079df390: e80beac802                   call     0xa66dda0
00000000079df395: 4989c4                       mov      r12, rax
00000000079df398: 4889c7                       mov      rdi, rax
00000000079df39b: e8d06f0000                   call     0x79e6370
00000000079df3a0: 4c896348                     mov      qword ptr [rbx + 0x48], r12
00000000079df3a4: bf08000000                   mov      edi, 8
00000000079df3a9: e8f2e9c802                   call     0xa66dda0
00000000079df3ae: 4989c4                       mov      r12, rax
00000000079df3b1: 4889c7                       mov      rdi, rax
00000000079df3b4: e8e7750000                   call     0x79e69a0
00000000079df3b9: 4c896350                     mov      qword ptr [rbx + 0x50], r12
00000000079df3bd: bf10000000                   mov      edi, 0x10
00000000079df3c2: e8d9e9c802                   call     0xa66dda0
00000000079df3c7: 4989c4                       mov      r12, rax
00000000079df3ca: 4889c7                       mov      rdi, rax
00000000079df3cd: e82e88feff                   call     0x79c7c00
00000000079df3d2: 4c896340                     mov      qword ptr [rbx + 0x40], r12
00000000079df3d6: c604240e                     mov      byte ptr [rsp], 0xe
00000000079df3da: c744240164656661             mov      dword ptr [rsp + 1], 0x61666564
00000000079df3e2: c744240461756c74             mov      dword ptr [rsp + 4], 0x746c7561
00000000079df3ea: c644240800                   mov      byte ptr [rsp + 8], 0
00000000079df3ef: 4889e7                       mov      rdi, rsp
00000000079df3f2: e879034a01                   call     0x8e7f770
00000000079df3f7: 4989c7                       mov      r15, rax
00000000079df3fa: f6042401                     test     byte ptr [rsp], 1
00000000079df3fe: 740a                         je       0x79df40a
00000000079df400: 488b7c2410                   mov      rdi, qword ptr [rsp + 0x10]
00000000079df405: e836adb2fc                   call     0x450a140
00000000079df40a: bf80010000                   mov      edi, 0x180
00000000079df40f: e88ce9c802                   call     0xa66dda0
00000000079df414: 4989c4                       mov      r12, rax
00000000079df417: 4889c7                       mov      rdi, rax
00000000079df41a: 4c89fe                       mov      rsi, r15
00000000079df41d: e85e084101                   call     0x8defc80
00000000079df422: 4c89ff                       mov      rdi, r15
00000000079df425: 4c89e6                       mov      rsi, r12
00000000079df428: e893020000                   call     0x79df6c0
00000000079df42d: 488b7b48                     mov      rdi, qword ptr [rbx + 0x48]
00000000079df431: e8ba154101                   call     0x8df09f0
00000000079df436: bf30010000                   mov      edi, 0x130
00000000079df43b: e860e9c802                   call     0xa66dda0
00000000079df440: 4989c4                       mov      r12, rax
00000000079df443: 4889c7                       mov      rdi, rax
00000000079df446: 4c89fe                       mov      rsi, r15
00000000079df449: e8b21f4a01                   call     0x8e81400
00000000079df44e: 4c89ff                       mov      rdi, r15
00000000079df451: 4c89e6                       mov      rsi, r12
00000000079df454: e857030000                   call     0x79df7b0
00000000079df459: 488b7b30                     mov      rdi, qword ptr [rbx + 0x30]
00000000079df45d: e81e715601                   call     0x8f46580
00000000079df462: bfa0000000                   mov      edi, 0xa0
00000000079df467: e834e9c802                   call     0xa66dda0
00000000079df46c: 4989c4                       mov      r12, rax
00000000079df46f: 4889c7                       mov      rdi, rax
00000000079df472: 4c89fe                       mov      rsi, r15
00000000079df475: e816c65701                   call     0x8f5ba90
00000000079df47a: 4c89ff                       mov      rdi, r15
00000000079df47d: 4c89e6                       mov      rsi, r12
00000000079df480: e81b040000                   call     0x79df8a0
00000000079df485: 488b7b38                     mov      rdi, qword ptr [rbx + 0x38]
00000000079df489: e8b2615701                   call     0x8f55640
00000000079df48e: bfe0000000                   mov      edi, 0xe0
00000000079df493: e808e9c802                   call     0xa66dda0
00000000079df498: 4989c4                       mov      r12, rax
00000000079df49b: 4889c7                       mov      rdi, rax
00000000079df49e: 4c89fe                       mov      rsi, r15
00000000079df4a1: e81a561301                   call     0x8b14ac0
00000000079df4a6: 4c89ff                       mov      rdi, r15
00000000079df4a9: 4c89e6                       mov      rsi, r12
00000000079df4ac: e8df040000                   call     0x79df990
00000000079df4b1: 488b7b50                     mov      rdi, qword ptr [rbx + 0x50]
00000000079df4b5: e8468e0c01                   call     0x8aa8300
00000000079df4ba: bf38000000                   mov      edi, 0x38
00000000079df4bf: e8dce8c802                   call     0xa66dda0
00000000079df4c4: 4989c4                       mov      r12, rax
00000000079df4c7: 4889c7                       mov      rdi, rax
00000000079df4ca: 4c89fe                       mov      rsi, r15
00000000079df4cd: e83ee54301                   call     0x8e1da10
00000000079df4d2: 4c89ff                       mov      rdi, r15
00000000079df4d5: 4c89e6                       mov      rsi, r12
00000000079df4d8: e8a3050000                   call     0x79dfa80
00000000079df4dd: 488b7b40                     mov      rdi, qword ptr [rbx + 0x40]
00000000079df4e1: e84a874501                   call     0x8e37c30
00000000079df4e6: bf50000000                   mov      edi, 0x50
00000000079df4eb: e8b0e8c802                   call     0xa66dda0
00000000079df4f0: 4989c4                       mov      r12, rax
00000000079df4f3: 4889c7                       mov      rdi, rax
00000000079df4f6: 4c89fe                       mov      rsi, r15
00000000079df4f9: e832284001                   call     0x8de1d30
00000000079df4fe: 4c89ff                       mov      rdi, r15
00000000079df501: 4c89e6                       mov      rsi, r12
00000000079df504: e867060000                   call     0x79dfb70
00000000079df509: bf28000000                   mov      edi, 0x28
00000000079df50e: e88de8c802                   call     0xa66dda0
00000000079df513: 4989c4                       mov      r12, rax
00000000079df516: 4889c7                       mov      rdi, rax
00000000079df519: 4c89fe                       mov      rsi, r15
00000000079df51c: e80f0b0a01                   call     0x8a80030
00000000079df521: 4c89ff                       mov      rdi, r15
00000000079df524: 4c89e6                       mov      rsi, r12
00000000079df527: e834070000                   call     0x79dfc60
00000000079df52c: bf30000000                   mov      edi, 0x30
00000000079df531: e86ae8c802                   call     0xa66dda0
00000000079df536: 4989c4                       mov      r12, rax
00000000079df539: 4889c7                       mov      rdi, rax
00000000079df53c: 4c89fe                       mov      rsi, r15
00000000079df53f: e81c254101                   call     0x8df1a60
00000000079df544: 4c89ff                       mov      rdi, r15
00000000079df547: 4c89e6                       mov      rsi, r12
00000000079df54a: e801080000                   call     0x79dfd50
00000000079df54f: bf10000000                   mov      edi, 0x10
00000000079df554: e847e8c802                   call     0xa66dda0
00000000079df559: 4989c5                       mov      r13, rax
00000000079df55c: 4889c7                       mov      rdi, rax
00000000079df55f: 4889de                       mov      rsi, rbx
00000000079df562: e809750000                   call     0x79e6a70
00000000079df567: 4c896b58                     mov      qword ptr [rbx + 0x58], r13
00000000079df56b: 4c89e7                       mov      rdi, r12
00000000079df56e: 4c89ee                       mov      rsi, r13
00000000079df571: e8ea284101                   call     0x8df1e60
00000000079df576: 4c896360                     mov      qword ptr [rbx + 0x60], r12
00000000079df57a: 4c897b20                     mov      qword ptr [rbx + 0x20], r15
00000000079df57e: e8addd5601                   call     0x8f4d330
00000000079df583: c604240e                     mov      byte ptr [rsp], 0xe
00000000079df587: c744240164656661             mov      dword ptr [rsp + 1], 0x61666564
00000000079df58f: c744240461756c74             mov      dword ptr [rsp + 4], 0x746c7561
00000000079df597: c644240800                   mov      byte ptr [rsp + 8], 0
00000000079df59c: 4989e4                       mov      r12, rsp
00000000079df59f: bf01000000                   mov      edi, 1
00000000079df5a4: 4c89e6                       mov      rsi, r12
00000000079df5a7: e8a4dd5601                   call     0x8f4d350
00000000079df5ac: f6042401                     test     byte ptr [rsp], 1
00000000079df5b0: 740a                         je       0x79df5bc
00000000079df5b2: 488b7c2410                   mov      rdi, qword ptr [rsp + 0x10]
00000000079df5b7: e884abb2fc                   call     0x450a140
00000000079df5bc: e83f07c902                   call     0xa66fd00
00000000079df5c1: 488d050825fa02               lea      rax, [rip + 0x2fa2508]
00000000079df5c8: 48890424                     mov      qword ptr [rsp], rax
00000000079df5cc: 48895c2408                   mov      qword ptr [rsp + 8], rbx
00000000079df5d1: 4c89642420                   mov      qword ptr [rsp + 0x20], r12
00000000079df5d6: 4c89e7                       mov      rdi, r12
00000000079df5d9: e83207c902                   call     0xa66fd10
00000000079df5de: 488b4c2420                   mov      rcx, qword ptr [rsp + 0x20]
00000000079df5e3: 4889e7                       mov      rdi, rsp
00000000079df5e6: 4839f9                       cmp      rcx, rdi
00000000079df5e9: 7411                         je       0x79df5fc
00000000079df5eb: 4885c9                       test     rcx, rcx
00000000079df5ee: 7416                         je       0x79df606
00000000079df5f0: 488b01                       mov      rax, qword ptr [rcx]
00000000079df5f3: 4883c028                     add      rax, 0x28
00000000079df5f7: 4889cf                       mov      rdi, rcx
00000000079df5fa: eb08                         jmp      0x79df604
00000000079df5fc: 488b0424                     mov      rax, qword ptr [rsp]
00000000079df600: 4883c020                     add      rax, 0x20
00000000079df604: ff10                         call     qword ptr [rax]
00000000079df606: 4883c438                     add      rsp, 0x38
00000000079df60a: 5b                           pop      rbx
00000000079df60b: 415c                         pop      r12
00000000079df60d: 415d                         pop      r13
00000000079df60f: 415e                         pop      r14
00000000079df611: 415f                         pop      r15
00000000079df613: 5d                           pop      rbp
00000000079df614: c3                           ret
00000000079df615: 4989c7                       mov      r15, rax
00000000079df618: 488b4c2420                   mov      rcx, qword ptr [rsp + 0x20]
00000000079df61d: 4c39e1                       cmp      rcx, r12
00000000079df620: 750a                         jne      0x79df62c
00000000079df622: 488b0424                     mov      rax, qword ptr [rsp]
00000000079df626: 4883c020                     add      rax, 0x20
00000000079df62a: eb0f                         jmp      0x79df63b
00000000079df62c: 4885c9                       test     rcx, rcx
00000000079df62f: 7461                         je       0x79df692
00000000079df631: 488b01                       mov      rax, qword ptr [rcx]
00000000079df634: 4883c028                     add      rax, 0x28
00000000079df638: 4989cc                       mov      r12, rcx
00000000079df63b: 4c89e7                       mov      rdi, r12
00000000079df63e: ff10                         call     qword ptr [rax]
00000000079df640: eb50                         jmp      0x79df692
00000000079df642: eb1d                         jmp      0x79df661
00000000079df644: 4989c7                       mov      r15, rax
00000000079df647: 4c89ef                       mov      rdi, r13
00000000079df64a: e8f1aab2fc                   call     0x450a140
00000000079df64f: eb41                         jmp      0x79df692
00000000079df651: eb2b                         jmp      0x79df67e
00000000079df653: eb29                         jmp      0x79df67e
00000000079df655: eb27                         jmp      0x79df67e
00000000079df657: eb25                         jmp      0x79df67e
00000000079df659: eb23                         jmp      0x79df67e
00000000079df65b: eb21                         jmp      0x79df67e
00000000079df65d: eb1f                         jmp      0x79df67e
00000000079df65f: eb1d                         jmp      0x79df67e
00000000079df661: 4989c7                       mov      r15, rax
00000000079df664: f6042401                     test     byte ptr [rsp], 1
00000000079df668: 7428                         je       0x79df692
00000000079df66a: 488b7c2410                   mov      rdi, qword ptr [rsp + 0x10]
00000000079df66f: e8ccaab2fc                   call     0x450a140
00000000079df674: eb1c                         jmp      0x79df692
00000000079df676: eb06                         jmp      0x79df67e
00000000079df678: eb04                         jmp      0x79df67e
00000000079df67a: eb02                         jmp      0x79df67e
00000000079df67c: eb00                         jmp      0x79df67e
00000000079df67e: 4989c7                       mov      r15, rax
00000000079df681: 4c89e7                       mov      rdi, r12
00000000079df684: e8b7aab2fc                   call     0x450a140
00000000079df689: eb07                         jmp      0x79df692
00000000079df68b: eb02                         jmp      0x79df68f
00000000079df68d: eb00                         jmp      0x79df68f
00000000079df68f: 4989c7                       mov      r15, rax
00000000079df692: f683b000000001               test     byte ptr [rbx + 0xb0], 1
00000000079df699: 740c                         je       0x79df6a7
00000000079df69b: 488bbbc0000000               mov      rdi, qword ptr [rbx + 0xc0]
00000000079df6a2: e899aab2fc                   call     0x450a140
00000000079df6a7: 488b7500                     mov      rsi, qword ptr [rbp]
00000000079df6ab: 4c89f7                       mov      rdi, r14
00000000079df6ae: e88d5d0000                   call     0x79e5440
00000000079df6b3: 4c89ff                       mov      rdi, r15
00000000079df6b6: e865d7b0fc                   call     0x44ece20
