00000000077c4300: 55                           push     rbp
00000000077c4301: 4157                         push     r15
00000000077c4303: 4156                         push     r14
00000000077c4305: 4155                         push     r13
00000000077c4307: 4154                         push     r12
00000000077c4309: 53                           push     rbx
00000000077c430a: 4881ecb8020000               sub      rsp, 0x2b8
00000000077c4311: 4d89c6                       mov      r14, r8
00000000077c4314: 4989cf                       mov      r15, rcx
00000000077c4317: 48899424a8000000             mov      qword ptr [rsp + 0xa8], rdx
00000000077c431f: 4889fb                       mov      rbx, rdi
00000000077c4322: 418b00                       mov      eax, dword ptr [r8]
00000000077c4325: 8944240c                     mov      dword ptr [rsp + 0xc], eax
00000000077c4329: 498d4008                     lea      rax, [r8 + 8]
00000000077c432d: 4889442410                   mov      qword ptr [rsp + 0x10], rax
00000000077c4332: 4c8d642470                   lea      r12, [rsp + 0x70]
00000000077c4337: 488d2dceb076f9               lea      rbp, [rip - 0x6894f32] ; 'ZYXWVUTSRQPONMLKJIHGFEDCBA9876543210123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'
00000000077c433e: 48898c24a0000000             mov      qword ptr [rsp + 0xa0], rcx
00000000077c4346: eb16                         jmp      0x77c435e
00000000077c4348: 0f1f840000000000             nop      dword ptr [rax + rax]
00000000077c4350: 4584ed                       test     r13b, r13b
00000000077c4353: 4c8d642470                   lea      r12, [rsp + 0x70]
00000000077c4358: 0f847b060000                 je       0x77c49d9
00000000077c435e: 0f28053b5359f9               movaps   xmm0, xmmword ptr [rip - 0x6a6acc5]
00000000077c4365: 0f29842490000000             movaps   xmmword ptr [rsp + 0x90], xmm0
00000000077c436d: 0f29842480000000             movaps   xmmword ptr [rsp + 0x80], xmm0
00000000077c4375: 0f29442470                   movaps   xmmword ptr [rsp + 0x70], xmm0
00000000077c437a: 4c89e7                       mov      rdi, r12
00000000077c437d: 31f6                         xor      esi, esi
00000000077c437f: 31d2                         xor      edx, edx
00000000077c4381: e8aaa90200                   call     0x77eed30
00000000077c4386: c744247092ffffff             mov      dword ptr [rsp + 0x70], 0xffffff92
00000000077c438e: 837c247400                   cmp      dword ptr [rsp + 0x74], 0
00000000077c4393: 7508                         jne      0x77c439d
00000000077c4395: c7442474aafbffff             mov      dword ptr [rsp + 0x74], 0xfffffbaa
00000000077c439d: 0f2805fc5259f9               movaps   xmm0, xmmword ptr [rip - 0x6a6ad04]
00000000077c43a4: 0f114320                     movups   xmmword ptr [rbx + 0x20], xmm0
00000000077c43a8: 0f114310                     movups   xmmword ptr [rbx + 0x10], xmm0
00000000077c43ac: 0f1103                       movups   xmmword ptr [rbx], xmm0
00000000077c43af: 458b4e04                     mov      r9d, dword ptr [r14 + 4]
00000000077c43b3: 4883ec08                     sub      rsp, 8
00000000077c43b7: 488dbc24e8010000             lea      rdi, [rsp + 0x1e8]
00000000077c43bf: 488d35622573f9               lea      rsi, [rip - 0x68cda9e] ; 'CoCgiSendRequest'
00000000077c43c6: 488d1533b984f9               lea      rdx, [rip - 0x67b46cd] ; 'mm_cgi.h'
00000000077c43cd: b93e010000                   mov      ecx, 0x13e
00000000077c43d2: 4531c0                       xor      r8d, r8d
00000000077c43d5: 4154                         push     r12
00000000077c43d7: e824aa0200                   call     0x77eee00
00000000077c43dc: 4883c410                     add      rsp, 0x10
00000000077c43e0: 4c8da424b0000000             lea      r12, [rsp + 0xb0]
00000000077c43e8: 4c89e7                       mov      rdi, r12
00000000077c43eb: 488bb424a8000000             mov      rsi, qword ptr [rsp + 0xa8]
00000000077c43f3: e808355000                   call     0x7cc7900
00000000077c43f8: 41f60701                     test     byte ptr [r15], 1
00000000077c43fc: 7522                         jne      0x77c4420
00000000077c43fe: 498b4710                     mov      rax, qword ptr [r15 + 0x10]
00000000077c4402: 488d8c24e0000000             lea      rcx, [rsp + 0xe0]
00000000077c440a: 48894110                     mov      qword ptr [rcx + 0x10], rax
00000000077c440e: 410f1007                     movups   xmm0, xmmword ptr [r15]
00000000077c4412: 0f1101                       movups   xmmword ptr [rcx], xmm0
00000000077c4415: eb1e                         jmp      0x77c4435
00000000077c4417: 660f1f840000000000           nop      word ptr [rax + rax]
00000000077c4420: 498b5708                     mov      rdx, qword ptr [r15 + 8]
00000000077c4424: 498b7710                     mov      rsi, qword ptr [r15 + 0x10]
00000000077c4428: 488dbc24e0000000             lea      rdi, [rsp + 0xe0]
00000000077c4430: e86b82d4fc                   call     0x450c6a0
00000000077c4435: 498b06                       mov      rax, qword ptr [r14]
00000000077c4438: 48898424f8000000             mov      qword ptr [rsp + 0xf8], rax
00000000077c4440: 41f6460801                   test     byte ptr [r14 + 8], 1
00000000077c4445: 7529                         jne      0x77c4470
00000000077c4447: 488b542410                   mov      rdx, qword ptr [rsp + 0x10]
00000000077c444c: 488b4210                     mov      rax, qword ptr [rdx + 0x10]
00000000077c4450: 488d8c2400010000             lea      rcx, [rsp + 0x100]
00000000077c4458: 48894110                     mov      qword ptr [rcx + 0x10], rax
00000000077c445c: 0f1002                       movups   xmm0, xmmword ptr [rdx]
00000000077c445f: 0f1101                       movups   xmmword ptr [rcx], xmm0
00000000077c4462: eb21                         jmp      0x77c4485
00000000077c4464: 6666662e0f1f840000000000     nop      word ptr cs:[rax + rax]
00000000077c4470: 498b5610                     mov      rdx, qword ptr [r14 + 0x10]
00000000077c4474: 498b7618                     mov      rsi, qword ptr [r14 + 0x18]
00000000077c4478: 488dbc2400010000             lea      rdi, [rsp + 0x100]
00000000077c4480: e81b82d4fc                   call     0x450c6a0
00000000077c4485: 498b4620                     mov      rax, qword ptr [r14 + 0x20]
00000000077c4489: 4889842418010000             mov      qword ptr [rsp + 0x118], rax
00000000077c4491: 4889df                       mov      rdi, rbx
00000000077c4494: 488db424e0010000             lea      rsi, [rsp + 0x1e0]
00000000077c449c: 4c89e2                       mov      rdx, r12
00000000077c449f: e87caa0200                   call     0x77eef20
00000000077c44a4: f684240001000001             test     byte ptr [rsp + 0x100], 1
00000000077c44ac: 740d                         je       0x77c44bb
00000000077c44ae: 488bbc2410010000             mov      rdi, qword ptr [rsp + 0x110]
00000000077c44b6: e8855cd4fc                   call     0x450a140
00000000077c44bb: f68424e000000001             test     byte ptr [rsp + 0xe0], 1
00000000077c44c3: 740d                         je       0x77c44d2
00000000077c44c5: 488bbc24f0000000             mov      rdi, qword ptr [rsp + 0xf0]
00000000077c44cd: e86e5cd4fc                   call     0x450a140
00000000077c44d2: 4c89e7                       mov      rdi, r12
00000000077c44d5: e826365000                   call     0x7cc7b00
00000000077c44da: 488bbc2428020000             mov      rdi, qword ptr [rsp + 0x228]
00000000077c44e2: 4885ff                       test     rdi, rdi
00000000077c44e5: 7412                         je       0x77c44f9
00000000077c44e7: 488b07                       mov      rax, qword ptr [rdi]
00000000077c44ea: ff5008                       call     qword ptr [rax + 8]
00000000077c44ed: 48c784242802000000000000     mov      qword ptr [rsp + 0x228], 0
00000000077c44f9: f68424e801000001             test     byte ptr [rsp + 0x1e8], 1
00000000077c4501: 740d                         je       0x77c4510
00000000077c4503: 488bbc24f8010000             mov      rdi, qword ptr [rsp + 0x1f8]
00000000077c450b: e8305cd4fc                   call     0x450a140
00000000077c4510: 48b8aaaaaaaaaaaaaaaa         movabs   rax, 0xaaaaaaaaaaaaaaaa
00000000077c451a: 4889442460                   mov      qword ptr [rsp + 0x60], rax
00000000077c451f: 0f28059ae758f9               movaps   xmm0, xmmword ptr [rip - 0x6a71866]
00000000077c4526: 0f29442430                   movaps   xmmword ptr [rsp + 0x30], xmm0
00000000077c452b: 48c7442440f7010000           mov      qword ptr [rsp + 0x40], 0x1f7
00000000077c4534: bf28000000                   mov      edi, 0x28
00000000077c4539: e86298ea02                   call     0xa66dda0
00000000077c453e: 4889442458                   mov      qword ptr [rsp + 0x58], rax
00000000077c4543: 48c744244829000000           mov      qword ptr [rsp + 0x48], 0x29
00000000077c454c: 48c744245026000000           mov      qword ptr [rsp + 0x50], 0x26
00000000077c4555: 0f1005e90c7cf9               movups   xmm0, xmmword ptr [rip - 0x683f317] ; 'g-bin/checkloginqrcode'
00000000077c455c: 0f114010                     movups   xmmword ptr [rax + 0x10], xmm0
00000000077c4560: 0f1005ce0c7cf9               movups   xmm0, xmmword ptr [rip - 0x683f332] ; '/cgi-bin/micromsg-bin/checkloginqrcode'
00000000077c4567: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077c456a: 48b9696e7172636f6465         movabs   rcx, 0x65646f6372716e69
00000000077c4574: 4889481e                     mov      qword ptr [rax + 0x1e], rcx
00000000077c4578: c6402600                     mov      byte ptr [rax + 0x26], 0
00000000077c457c: c644246001                   mov      byte ptr [rsp + 0x60], 1
00000000077c4581: 410fb64608                   movzx    eax, byte ptr [r14 + 8]
00000000077c4586: a801                         test     al, 1
00000000077c4588: 7416                         je       0x77c45a0
00000000077c458a: 498b4610                     mov      rax, qword ptr [r14 + 0x10]
00000000077c458e: 4885c0                       test     rax, rax
00000000077c4591: 7514                         jne      0x77c45a7
00000000077c4593: eb21                         jmp      0x77c45b6
00000000077c4595: 66662e0f1f840000000000       nop      word ptr cs:[rax + rax]
00000000077c45a0: d1e8                         shr      eax, 1
00000000077c45a2: 4885c0                       test     rax, rax
00000000077c45a5: 740f                         je       0x77c45b6
00000000077c45a7: 488d7c2448                   lea      rdi, [rsp + 0x48]
00000000077c45ac: 488b742410                   mov      rsi, qword ptr [rsp + 0x10]
00000000077c45b1: e8fa97d4fc                   call     0x450ddb0
00000000077c45b6: 458b2e                       mov      r13d, dword ptr [r14]
00000000077c45b9: 4589ec                       mov      r12d, r13d
00000000077c45bc: 8b7c240c                     mov      edi, dword ptr [rsp + 0xc]
00000000077c45c0: 4129fc                       sub      r12d, edi
00000000077c45c3: 8b03                         mov      eax, dword ptr [rbx]
00000000077c45c5: 8b5304                       mov      edx, dword ptr [rbx + 4]
00000000077c45c8: 31f6                         xor      esi, esi
00000000077c45ca: 89c1                         mov      ecx, eax
00000000077c45cc: 09d1                         or       ecx, edx
00000000077c45ce: 0f840c030000                 je       0x77c48e0
00000000077c45d4: 488b4b20                     mov      rcx, qword ptr [rbx + 0x20]
00000000077c45d8: 488b4908                     mov      rcx, qword ptr [rcx + 8]
00000000077c45dc: 4885c9                       test     rcx, rcx
00000000077c45df: 750e                         jne      0x77c45ef
00000000077c45e1: 488d0dc0765303               lea      rcx, [rip + 0x35376c0]
00000000077c45e8: 488b09                       mov      rcx, qword ptr [rcx]
00000000077c45eb: 488b4908                     mov      rcx, qword ptr [rcx + 8]
00000000077c45ef: 8b4910                       mov      ecx, dword ptr [rcx + 0x10]
00000000077c45f2: 488d7c2448                   lea      rdi, [rsp + 0x48]
00000000077c45f7: 89c6                         mov      esi, eax
00000000077c45f9: 4589e0                       mov      r8d, r12d
00000000077c45fc: e80f602200                   call     0x79ea610
00000000077c4601: 8b33                         mov      esi, dword ptr [rbx]
00000000077c4603: 85f6                         test     esi, esi
00000000077c4605: 0f95c0                       setne    al
00000000077c4608: 83fe92                       cmp      esi, -0x6e
00000000077c460b: 0f95c1                       setne    cl
00000000077c460e: 84c8                         test     al, cl
00000000077c4610: 0f85bc020000                 jne      0x77c48d2
00000000077c4616: 8b7c240c                     mov      edi, dword ptr [rsp + 0xc]
00000000077c461a: 85ff                         test     edi, edi
00000000077c461c: 0f84be020000                 je       0x77c48e0
00000000077c4622: bfe8030000                   mov      edi, 0x3e8
00000000077c4627: 4489e1                       mov      ecx, r12d
00000000077c462a: d3e7                         shl      edi, cl
00000000077c462c: e8af403202                   call     0x9ae86e0
00000000077c4631: bf02000000                   mov      edi, 2
00000000077c4636: e855269501                   call     0x9116c90
00000000077c463b: 448b7c240c                   mov      r15d, dword ptr [rsp + 0xc]
00000000077c4640: 41ffcf                       dec      r15d
00000000077c4643: 41b501                       mov      r13b, 1
00000000077c4646: 85c0                         test     eax, eax
00000000077c4648: 44897c240c                   mov      dword ptr [rsp + 0xc], r15d
00000000077c464d: 0f8473020000                 je       0x77c48c6
00000000077c4653: 488d7c2418                   lea      rdi, [rsp + 0x18]
00000000077c4658: e873e3beff                   call     0x73b29d0
00000000077c465d: 4c8da424b0000000             lea      r12, [rsp + 0xb0]
00000000077c4665: f644241801                   test     byte ptr [rsp + 0x18], 1
00000000077c466a: 488d542419                   lea      rdx, [rsp + 0x19]
00000000077c466f: 7405                         je       0x77c4676
00000000077c4671: 488b542428                   mov      rdx, qword ptr [rsp + 0x28]
00000000077c4676: 4c89e7                       mov      rdi, r12
00000000077c4679: be02000000                   mov      esi, 2
00000000077c467e: 488d0d55e46cf9               lea      rcx, [rip - 0x6931bab]
00000000077c4685: 4c8d056ae166f9               lea      r8, [rip - 0x6991e96]
00000000077c468c: 41b950010000                 mov      r9d, 0x150
00000000077c4692: 6a00                         push     0
00000000077c4694: 6a00                         push     0
00000000077c4696: e805cf9401                   call     0x91115a0
00000000077c469b: 4883c410                     add      rsp, 0x10
00000000077c469f: f644244801                   test     byte ptr [rsp + 0x48], 1
00000000077c46a4: 488d442449                   lea      rax, [rsp + 0x49]
00000000077c46a9: 7405                         je       0x77c46b0
00000000077c46ab: 488b442458                   mov      rax, qword ptr [rsp + 0x58]
00000000077c46b0: 4889842468020000             mov      qword ptr [rsp + 0x268], rax
00000000077c46b8: c684247002000000             mov      byte ptr [rsp + 0x270], 0
00000000077c46c0: 8b0b                         mov      ecx, dword ptr [rbx]
00000000077c46c2: 48c784249001000000000000     mov      qword ptr [rsp + 0x190], 0
00000000077c46ce: b808000000                   mov      eax, 8
00000000077c46d3: 89ca                         mov      edx, ecx
00000000077c46d5: 66662e0f1f840000000000       nop      word ptr cs:[rax + rax]
00000000077c46e0: 4863f2                       movsxd   rsi, edx
00000000077c46e3: 4869d667666666               imul     rdx, rsi, 0x66666667
00000000077c46ea: 4889d7                       mov      rdi, rdx
00000000077c46ed: 48c1ef3f                     shr      rdi, 0x3f
00000000077c46f1: 48c1fa22                     sar      rdx, 0x22
00000000077c46f5: 01fa                         add      edx, edi
00000000077c46f7: 8d3c12                       lea      edi, [rdx + rdx]
00000000077c46fa: 8d3cbf                       lea      edi, [rdi + rdi*4]
00000000077c46fd: 4189f0                       mov      r8d, esi
00000000077c4700: 4129f8                       sub      r8d, edi
00000000077c4703: 4963f8                       movsxd   rdi, r8d
00000000077c4706: 0fb67c2f23                   movzx    edi, byte ptr [rdi + rbp + 0x23]
00000000077c470b: 4088bc0490010000             mov      byte ptr [rsp + rax + 0x190], dil
00000000077c4713: 48ffc0                       inc      rax
00000000077c4716: 83c609                       add      esi, 9
00000000077c4719: 83fe12                       cmp      esi, 0x12
00000000077c471c: 77c2                         ja       0x77c46e0
00000000077c471e: 85c9                         test     ecx, ecx
00000000077c4720: 790b                         jns      0x77c472d
00000000077c4722: c68404900100002d             mov      byte ptr [rsp + rax + 0x190], 0x2d
00000000077c472a: 48ffc0                       inc      rax
00000000077c472d: c684049001000000             mov      byte ptr [rsp + rax + 0x190], 0
00000000077c4735: 4883f80a                     cmp      rax, 0xa
00000000077c4739: 7c31                         jl       0x77c476c
00000000077c473b: 4801e0                       add      rax, rsp
00000000077c473e: 480590010000                 add      rax, 0x190
00000000077c4744: 48ffc8                       dec      rax
00000000077c4747: 488d8c2499010000             lea      rcx, [rsp + 0x199]
00000000077c474f: 90                           nop
00000000077c4750: 0fb610                       movzx    edx, byte ptr [rax]
00000000077c4753: 0fb671ff                     movzx    esi, byte ptr [rcx - 1]
00000000077c4757: 408830                       mov      byte ptr [rax], sil
00000000077c475a: 8851ff                       mov      byte ptr [rcx - 1], dl
00000000077c475d: 48ffc8                       dec      rax
00000000077c4760: 488d5101                     lea      rdx, [rcx + 1]
00000000077c4764: 4839c1                       cmp      rcx, rax
00000000077c4767: 4889d1                       mov      rcx, rdx
00000000077c476a: 72e4                         jb       0x77c4750
00000000077c476c: 488d842498010000             lea      rax, [rsp + 0x198]
00000000077c4774: 4889842490010000             mov      qword ptr [rsp + 0x190], rax
00000000077c477c: 8b4b04                       mov      ecx, dword ptr [rbx + 4]
00000000077c477f: 48c784244001000000000000     mov      qword ptr [rsp + 0x140], 0
00000000077c478b: b808000000                   mov      eax, 8
00000000077c4790: 89ca                         mov      edx, ecx
00000000077c4792: 66666666662e0f1f840000000000 nop      word ptr cs:[rax + rax]
00000000077c47a0: 4863f2                       movsxd   rsi, edx
00000000077c47a3: 4869d667666666               imul     rdx, rsi, 0x66666667
00000000077c47aa: 4889d7                       mov      rdi, rdx
00000000077c47ad: 48c1ef3f                     shr      rdi, 0x3f
00000000077c47b1: 48c1fa22                     sar      rdx, 0x22
00000000077c47b5: 01fa                         add      edx, edi
00000000077c47b7: 8d3c12                       lea      edi, [rdx + rdx]
00000000077c47ba: 8d3cbf                       lea      edi, [rdi + rdi*4]
00000000077c47bd: 4189f0                       mov      r8d, esi
00000000077c47c0: 4129f8                       sub      r8d, edi
00000000077c47c3: 4963f8                       movsxd   rdi, r8d
00000000077c47c6: 0fb67c2f23                   movzx    edi, byte ptr [rdi + rbp + 0x23]
00000000077c47cb: 4088bc0440010000             mov      byte ptr [rsp + rax + 0x140], dil
00000000077c47d3: 48ffc0                       inc      rax
00000000077c47d6: 83c609                       add      esi, 9
00000000077c47d9: 83fe12                       cmp      esi, 0x12
00000000077c47dc: 77c2                         ja       0x77c47a0
00000000077c47de: 85c9                         test     ecx, ecx
00000000077c47e0: 790b                         jns      0x77c47ed
00000000077c47e2: c68404400100002d             mov      byte ptr [rsp + rax + 0x140], 0x2d
00000000077c47ea: 48ffc0                       inc      rax
00000000077c47ed: c684044001000000             mov      byte ptr [rsp + rax + 0x140], 0
00000000077c47f5: 4883f80a                     cmp      rax, 0xa
00000000077c47f9: 7c31                         jl       0x77c482c
00000000077c47fb: 4801e0                       add      rax, rsp
00000000077c47fe: 480540010000                 add      rax, 0x140
00000000077c4804: 48ffc8                       dec      rax
00000000077c4807: 488d8c2449010000             lea      rcx, [rsp + 0x149]
00000000077c480f: 90                           nop
00000000077c4810: 0fb610                       movzx    edx, byte ptr [rax]
00000000077c4813: 0fb671ff                     movzx    esi, byte ptr [rcx - 1]
00000000077c4817: 408830                       mov      byte ptr [rax], sil
00000000077c481a: 8851ff                       mov      byte ptr [rcx - 1], dl
00000000077c481d: 48ffc8                       dec      rax
00000000077c4820: 488d5101                     lea      rdx, [rcx + 1]
00000000077c4824: 4839c1                       cmp      rcx, rax
00000000077c4827: 4889d1                       mov      rcx, rdx
00000000077c482a: 72e4                         jb       0x77c4810
00000000077c482c: 488d842448010000             lea      rax, [rsp + 0x148]
00000000077c4834: 4889842440010000             mov      qword ptr [rsp + 0x140], rax
00000000077c483c: 488d842468020000             lea      rax, [rsp + 0x268]
00000000077c4844: 48898424e0010000             mov      qword ptr [rsp + 0x1e0], rax
00000000077c484c: 488d842490010000             lea      rax, [rsp + 0x190]
00000000077c4854: 48898424e8010000             mov      qword ptr [rsp + 0x1e8], rax
00000000077c485c: 488d842440010000             lea      rax, [rsp + 0x140]
00000000077c4864: 48898424f0010000             mov      qword ptr [rsp + 0x1f0], rax
00000000077c486c: 488d8424f8010000             lea      rax, [rsp + 0x1f8]
00000000077c4874: 0f57c0                       xorps    xmm0, xmm0
00000000077c4877: 0f114050                     movups   xmmword ptr [rax + 0x50], xmm0
00000000077c487b: 0f114040                     movups   xmmword ptr [rax + 0x40], xmm0
00000000077c487f: 0f114030                     movups   xmmword ptr [rax + 0x30], xmm0
00000000077c4883: 0f114020                     movups   xmmword ptr [rax + 0x20], xmm0
00000000077c4887: 0f114010                     movups   xmmword ptr [rax + 0x10], xmm0
00000000077c488b: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077c488e: 48c7406000000000             mov      qword ptr [rax + 0x60], 0
00000000077c4896: 4c89e7                       mov      rdi, r12
00000000077c4899: 488d35aab37ef9               lea      rsi, [rip - 0x6814c56]
00000000077c48a0: 488d9424e0010000             lea      rdx, [rsp + 0x1e0]
00000000077c48a8: e843d09401                   call     0x91118f0
00000000077c48ad: 4c89e7                       mov      rdi, r12
00000000077c48b0: e87bcd9401                   call     0x9111630
00000000077c48b5: f644241801                   test     byte ptr [rsp + 0x18], 1
00000000077c48ba: 740a                         je       0x77c48c6
00000000077c48bc: 488b7c2428                   mov      rdi, qword ptr [rsp + 0x28]
00000000077c48c1: e87a58d4fc                   call     0x450a140
00000000077c48c6: 4531ff                       xor      r15d, r15d
00000000077c48c9: f644244801                   test     byte ptr [rsp + 0x48], 1
00000000077c48ce: 7550                         jne      0x77c4920
00000000077c48d0: eb58                         jmp      0x77c492a
00000000077c48d2: 8b7c240c                     mov      edi, dword ptr [rsp + 0xc]
00000000077c48d6: 662e0f1f840000000000         nop      word ptr cs:[rax + rax]
00000000077c48e0: 41b701                       mov      r15b, 1
00000000077c48e3: 4139fd                       cmp      r13d, edi
00000000077c48e6: 742e                         je       0x77c4916
00000000077c48e8: 488b4320                     mov      rax, qword ptr [rbx + 0x20]
00000000077c48ec: 488b4008                     mov      rax, qword ptr [rax + 8]
00000000077c48f0: 4885c0                       test     rax, rax
00000000077c48f3: 750e                         jne      0x77c4903
00000000077c48f5: 488d05ac735303               lea      rax, [rip + 0x35373ac]
00000000077c48fc: 488b00                       mov      rax, qword ptr [rax]
00000000077c48ff: 488b4008                     mov      rax, qword ptr [rax + 8]
00000000077c4903: 8b5304                       mov      edx, dword ptr [rbx + 4]
00000000077c4906: 8b4810                       mov      ecx, dword ptr [rax + 0x10]
00000000077c4909: 488d7c2448                   lea      rdi, [rsp + 0x48]
00000000077c490e: 4589e0                       mov      r8d, r12d
00000000077c4911: e8fa5c2200                   call     0x79ea610
00000000077c4916: 4531ed                       xor      r13d, r13d
00000000077c4919: f644244801                   test     byte ptr [rsp + 0x48], 1
00000000077c491e: 740a                         je       0x77c492a
00000000077c4920: 488b7c2458                   mov      rdi, qword ptr [rsp + 0x58]
00000000077c4925: e81658d4fc                   call     0x450a140
00000000077c492a: 4584ff                       test     r15b, r15b
00000000077c492d: 4c8bbc24a0000000             mov      r15, qword ptr [rsp + 0xa0]
00000000077c4935: 752b                         jne      0x77c4962
00000000077c4937: 4c8b6328                     mov      r12, qword ptr [rbx + 0x28]
00000000077c493b: 4d85e4                       test     r12, r12
00000000077c493e: 7413                         je       0x77c4953
00000000077c4940: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000077c4947: f0490fc1442408               lock xadd qword ptr [r12 + 8], rax
00000000077c494e: 4885c0                       test     rax, rax
00000000077c4951: 746c                         je       0x77c49bf
00000000077c4953: f6430801                     test     byte ptr [rbx + 8], 1
00000000077c4957: 7409                         je       0x77c4962
00000000077c4959: 488b7b18                     mov      rdi, qword ptr [rbx + 0x18]
00000000077c495d: e8de57d4fc                   call     0x450a140
00000000077c4962: 4c8ba42498000000             mov      r12, qword ptr [rsp + 0x98]
00000000077c496a: 4d85e4                       test     r12, r12
00000000077c496d: 7413                         je       0x77c4982
00000000077c496f: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000077c4976: f0490fc1442408               lock xadd qword ptr [r12 + 8], rax
00000000077c497d: 4885c0                       test     rax, rax
00000000077c4980: 741e                         je       0x77c49a0
00000000077c4982: f644247801                   test     byte ptr [rsp + 0x78], 1
00000000077c4987: 0f84c3f9ffff                 je       0x77c4350
00000000077c498d: 488bbc2488000000             mov      rdi, qword ptr [rsp + 0x88]
00000000077c4995: e8a657d4fc                   call     0x450a140
00000000077c499a: e9b1f9ffff                   jmp      0x77c4350
00000000077c499f: 90                           nop
00000000077c49a0: 498b0424                     mov      rax, qword ptr [r12]
00000000077c49a4: 4c89e7                       mov      rdi, r12
00000000077c49a7: ff5010                       call     qword ptr [rax + 0x10]
00000000077c49aa: 4c89e7                       mov      rdi, r12
00000000077c49ad: e81e28d7fc                   call     0x45371d0
00000000077c49b2: f644247801                   test     byte ptr [rsp + 0x78], 1
00000000077c49b7: 0f8493f9ffff                 je       0x77c4350
00000000077c49bd: ebce                         jmp      0x77c498d
00000000077c49bf: 498b0424                     mov      rax, qword ptr [r12]
00000000077c49c3: 4c89e7                       mov      rdi, r12
00000000077c49c6: ff5010                       call     qword ptr [rax + 0x10]
00000000077c49c9: 4c89e7                       mov      rdi, r12
00000000077c49cc: e8ff27d7fc                   call     0x45371d0
00000000077c49d1: f6430801                     test     byte ptr [rbx + 8], 1
00000000077c49d5: 7582                         jne      0x77c4959
00000000077c49d7: eb89                         jmp      0x77c4962
00000000077c49d9: 4889d8                       mov      rax, rbx
00000000077c49dc: 4881c4b8020000               add      rsp, 0x2b8
00000000077c49e3: 5b                           pop      rbx
00000000077c49e4: 415c                         pop      r12
00000000077c49e6: 415d                         pop      r13
00000000077c49e8: 415e                         pop      r14
00000000077c49ea: 415f                         pop      r15
00000000077c49ec: 5d                           pop      rbp
00000000077c49ed: c3                           ret
00000000077c49ee: 4989c6                       mov      r14, rax
00000000077c49f1: 488dbc24b0000000             lea      rdi, [rsp + 0xb0]
00000000077c49f9: e832cc9401                   call     0x9111630
00000000077c49fe: eb03                         jmp      0x77c4a03
00000000077c4a00: 4989c6                       mov      r14, rax
00000000077c4a03: f644241801                   test     byte ptr [rsp + 0x18], 1
00000000077c4a08: 746f                         je       0x77c4a79
00000000077c4a0a: 488b7c2428                   mov      rdi, qword ptr [rsp + 0x28]
00000000077c4a0f: e82c57d4fc                   call     0x450a140
00000000077c4a14: eb63                         jmp      0x77c4a79
00000000077c4a16: eb5e                         jmp      0x77c4a76
00000000077c4a18: 4989c6                       mov      r14, rax
00000000077c4a1b: f68424e000000001             test     byte ptr [rsp + 0xe0], 1
00000000077c4a23: 7412                         je       0x77c4a37
00000000077c4a25: 488bbc24f0000000             mov      rdi, qword ptr [rsp + 0xf0]
00000000077c4a2d: e80e57d4fc                   call     0x450a140
00000000077c4a32: eb03                         jmp      0x77c4a37
00000000077c4a34: 4989c6                       mov      r14, rax
00000000077c4a37: 488dbc24b0000000             lea      rdi, [rsp + 0xb0]
00000000077c4a3f: e8bc305000                   call     0x7cc7b00
00000000077c4a44: eb1c                         jmp      0x77c4a62
00000000077c4a46: eb2e                         jmp      0x77c4a76
00000000077c4a48: 4989c6                       mov      r14, rax
00000000077c4a4b: eb45                         jmp      0x77c4a92
00000000077c4a4d: 4989c6                       mov      r14, rax
00000000077c4a50: eb10                         jmp      0x77c4a62
00000000077c4a52: 4989c6                       mov      r14, rax
00000000077c4a55: 488dbc24b0000000             lea      rdi, [rsp + 0xb0]
00000000077c4a5d: e8eeaa0200                   call     0x77ef550
00000000077c4a62: 488dbc24e0010000             lea      rdi, [rsp + 0x1e0]
00000000077c4a6a: e8414c88fe                   call     0x60496b0
00000000077c4a6f: eb21                         jmp      0x77c4a92
00000000077c4a71: 4989c6                       mov      r14, rax
00000000077c4a74: eb14                         jmp      0x77c4a8a
00000000077c4a76: 4989c6                       mov      r14, rax
00000000077c4a79: f644244801                   test     byte ptr [rsp + 0x48], 1
00000000077c4a7e: 740a                         je       0x77c4a8a
00000000077c4a80: 488b7c2458                   mov      rdi, qword ptr [rsp + 0x58]
00000000077c4a85: e8b656d4fc                   call     0x450a140
00000000077c4a8a: 4889df                       mov      rdi, rbx
00000000077c4a8d: e81e000000                   call     0x77c4ab0
00000000077c4a92: 488d7c2470                   lea      rdi, [rsp + 0x70]
00000000077c4a97: e814000000                   call     0x77c4ab0
00000000077c4a9c: 4c89f7                       mov      rdi, r14
00000000077c4a9f: e87c83d2fc                   call     0x44ece20
