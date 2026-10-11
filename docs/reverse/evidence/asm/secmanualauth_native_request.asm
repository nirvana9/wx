00000000077ce110: 55                           push     rbp
00000000077ce111: 4157                         push     r15
00000000077ce113: 4156                         push     r14
00000000077ce115: 4155                         push     r13
00000000077ce117: 4154                         push     r12
00000000077ce119: 53                           push     rbx
00000000077ce11a: 4881ecb8020000               sub      rsp, 0x2b8
00000000077ce121: 4d89c6                       mov      r14, r8
00000000077ce124: 4989cf                       mov      r15, rcx
00000000077ce127: 48899424a8000000             mov      qword ptr [rsp + 0xa8], rdx
00000000077ce12f: 4889fb                       mov      rbx, rdi
00000000077ce132: 418b00                       mov      eax, dword ptr [r8]
00000000077ce135: 8944240c                     mov      dword ptr [rsp + 0xc], eax
00000000077ce139: 498d4008                     lea      rax, [r8 + 8]
00000000077ce13d: 4889442410                   mov      qword ptr [rsp + 0x10], rax
00000000077ce142: 4c8d642470                   lea      r12, [rsp + 0x70]
00000000077ce147: 488d2dbe1276f9               lea      rbp, [rip - 0x689ed42] ; 'ZYXWVUTSRQPONMLKJIHGFEDCBA9876543210123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'
00000000077ce14e: 48898c24a0000000             mov      qword ptr [rsp + 0xa0], rcx
00000000077ce156: eb16                         jmp      0x77ce16e
00000000077ce158: 0f1f840000000000             nop      dword ptr [rax + rax]
00000000077ce160: 4584ed                       test     r13b, r13b
00000000077ce163: 4c8d642470                   lea      r12, [rsp + 0x70]
00000000077ce168: 0f846b060000                 je       0x77ce7d9
00000000077ce16e: 0f28052bb558f9               movaps   xmm0, xmmword ptr [rip - 0x6a74ad5]
00000000077ce175: 0f29842490000000             movaps   xmmword ptr [rsp + 0x90], xmm0
00000000077ce17d: 0f29842480000000             movaps   xmmword ptr [rsp + 0x80], xmm0
00000000077ce185: 0f29442470                   movaps   xmmword ptr [rsp + 0x70], xmm0
00000000077ce18a: 4c89e7                       mov      rdi, r12
00000000077ce18d: 31f6                         xor      esi, esi
00000000077ce18f: 31d2                         xor      edx, edx
00000000077ce191: e88a6e0200                   call     0x77f5020
00000000077ce196: c744247092ffffff             mov      dword ptr [rsp + 0x70], 0xffffff92
00000000077ce19e: 837c247400                   cmp      dword ptr [rsp + 0x74], 0
00000000077ce1a3: 7508                         jne      0x77ce1ad
00000000077ce1a5: c7442474aafbffff             mov      dword ptr [rsp + 0x74], 0xfffffbaa
00000000077ce1ad: 0f2805ecb458f9               movaps   xmm0, xmmword ptr [rip - 0x6a74b14]
00000000077ce1b4: 0f114320                     movups   xmmword ptr [rbx + 0x20], xmm0
00000000077ce1b8: 0f114310                     movups   xmmword ptr [rbx + 0x10], xmm0
00000000077ce1bc: 0f1103                       movups   xmmword ptr [rbx], xmm0
00000000077ce1bf: 458b4e04                     mov      r9d, dword ptr [r14 + 4]
00000000077ce1c3: 4883ec08                     sub      rsp, 8
00000000077ce1c7: 488dbc24e8010000             lea      rdi, [rsp + 0x1e8]
00000000077ce1cf: 488d35528772f9               lea      rsi, [rip - 0x68d78ae] ; 'CoCgiSendRequest'
00000000077ce1d6: 488d15231b84f9               lea      rdx, [rip - 0x67be4dd] ; 'mm_cgi.h'
00000000077ce1dd: b93e010000                   mov      ecx, 0x13e
00000000077ce1e2: 4531c0                       xor      r8d, r8d
00000000077ce1e5: 4154                         push     r12
00000000077ce1e7: e8046f0200                   call     0x77f50f0
00000000077ce1ec: 4883c410                     add      rsp, 0x10
00000000077ce1f0: 4c8da424b0000000             lea      r12, [rsp + 0xb0]
00000000077ce1f8: 4c89e7                       mov      rdi, r12
00000000077ce1fb: 488bb424a8000000             mov      rsi, qword ptr [rsp + 0xa8]
00000000077ce203: e8c8d35000                   call     0x7cdb5d0
00000000077ce208: 41f60701                     test     byte ptr [r15], 1
00000000077ce20c: 7522                         jne      0x77ce230
00000000077ce20e: 498b4710                     mov      rax, qword ptr [r15 + 0x10]
00000000077ce212: 488d8c24d0000000             lea      rcx, [rsp + 0xd0]
00000000077ce21a: 48894110                     mov      qword ptr [rcx + 0x10], rax
00000000077ce21e: 410f1007                     movups   xmm0, xmmword ptr [r15]
00000000077ce222: 0f1101                       movups   xmmword ptr [rcx], xmm0
00000000077ce225: eb1e                         jmp      0x77ce245
00000000077ce227: 660f1f840000000000           nop      word ptr [rax + rax]
00000000077ce230: 498b5708                     mov      rdx, qword ptr [r15 + 8]
00000000077ce234: 498b7710                     mov      rsi, qword ptr [r15 + 0x10]
00000000077ce238: 488dbc24d0000000             lea      rdi, [rsp + 0xd0]
00000000077ce240: e85be4d3fc                   call     0x450c6a0
00000000077ce245: 498b06                       mov      rax, qword ptr [r14]
00000000077ce248: 48898424e8000000             mov      qword ptr [rsp + 0xe8], rax
00000000077ce250: 41f6460801                   test     byte ptr [r14 + 8], 1
00000000077ce255: 7529                         jne      0x77ce280
00000000077ce257: 488b542410                   mov      rdx, qword ptr [rsp + 0x10]
00000000077ce25c: 488b4210                     mov      rax, qword ptr [rdx + 0x10]
00000000077ce260: 488d8c24f0000000             lea      rcx, [rsp + 0xf0]
00000000077ce268: 48894110                     mov      qword ptr [rcx + 0x10], rax
00000000077ce26c: 0f1002                       movups   xmm0, xmmword ptr [rdx]
00000000077ce26f: 0f1101                       movups   xmmword ptr [rcx], xmm0
00000000077ce272: eb21                         jmp      0x77ce295
00000000077ce274: 6666662e0f1f840000000000     nop      word ptr cs:[rax + rax]
00000000077ce280: 498b5610                     mov      rdx, qword ptr [r14 + 0x10]
00000000077ce284: 498b7618                     mov      rsi, qword ptr [r14 + 0x18]
00000000077ce288: 488dbc24f0000000             lea      rdi, [rsp + 0xf0]
00000000077ce290: e80be4d3fc                   call     0x450c6a0
00000000077ce295: 498b4620                     mov      rax, qword ptr [r14 + 0x20]
00000000077ce299: 4889842408010000             mov      qword ptr [rsp + 0x108], rax
00000000077ce2a1: 4889df                       mov      rdi, rbx
00000000077ce2a4: 488db424e0010000             lea      rsi, [rsp + 0x1e0]
00000000077ce2ac: 4c89e2                       mov      rdx, r12
00000000077ce2af: e85c6f0200                   call     0x77f5210
00000000077ce2b4: f68424f000000001             test     byte ptr [rsp + 0xf0], 1
00000000077ce2bc: 740d                         je       0x77ce2cb
00000000077ce2be: 488bbc2400010000             mov      rdi, qword ptr [rsp + 0x100]
00000000077ce2c6: e875bed3fc                   call     0x450a140
00000000077ce2cb: f68424d000000001             test     byte ptr [rsp + 0xd0], 1
00000000077ce2d3: 740d                         je       0x77ce2e2
00000000077ce2d5: 488bbc24e0000000             mov      rdi, qword ptr [rsp + 0xe0]
00000000077ce2dd: e85ebed3fc                   call     0x450a140
00000000077ce2e2: 4c89e7                       mov      rdi, r12
00000000077ce2e5: e876d45000                   call     0x7cdb760
00000000077ce2ea: 488bbc2428020000             mov      rdi, qword ptr [rsp + 0x228]
00000000077ce2f2: 4885ff                       test     rdi, rdi
00000000077ce2f5: 7412                         je       0x77ce309
00000000077ce2f7: 488b07                       mov      rax, qword ptr [rdi]
00000000077ce2fa: ff5008                       call     qword ptr [rax + 8]
00000000077ce2fd: 48c784242802000000000000     mov      qword ptr [rsp + 0x228], 0
00000000077ce309: f68424e801000001             test     byte ptr [rsp + 0x1e8], 1
00000000077ce311: 740d                         je       0x77ce320
00000000077ce313: 488bbc24f8010000             mov      rdi, qword ptr [rsp + 0x1f8]
00000000077ce31b: e820bed3fc                   call     0x450a140
00000000077ce320: 48b8aaaaaaaaaaaaaaaa         movabs   rax, 0xaaaaaaaaaaaaaaaa
00000000077ce32a: 4889442460                   mov      qword ptr [rsp + 0x60], rax
00000000077ce32f: 0f28054a4358f9               movaps   xmm0, xmmword ptr [rip - 0x6a7bcb6]
00000000077ce336: 0f29442430                   movaps   xmmword ptr [rsp + 0x30], xmm0
00000000077ce33b: 48c7442440fc000000           mov      qword ptr [rsp + 0x40], 0xfc
00000000077ce344: bf28000000                   mov      edi, 0x28
00000000077ce349: e852fae902                   call     0xa66dda0
00000000077ce34e: 4889442458                   mov      qword ptr [rsp + 0x58], rax
00000000077ce353: 48c744244829000000           mov      qword ptr [rsp + 0x48], 0x29
00000000077ce35c: 48c744245023000000           mov      qword ptr [rsp + 0x50], 0x23
00000000077ce365: 0f10050ec373f9               movups   xmm0, xmmword ptr [rip - 0x68c3cf2] ; 'g-bin/secmanualauth'
00000000077ce36c: 0f114010                     movups   xmmword ptr [rax + 0x10], xmm0
00000000077ce370: 0f1005f3c273f9               movups   xmm0, xmmword ptr [rip - 0x68c3d0d] ; '/cgi-bin/micromsg-bin/secmanualauth'
00000000077ce377: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077ce37a: c7401f61757468               mov      dword ptr [rax + 0x1f], 0x68747561
00000000077ce381: c6402300                     mov      byte ptr [rax + 0x23], 0
00000000077ce385: c644246001                   mov      byte ptr [rsp + 0x60], 1
00000000077ce38a: 410fb64608                   movzx    eax, byte ptr [r14 + 8]
00000000077ce38f: a801                         test     al, 1
00000000077ce391: 740d                         je       0x77ce3a0
00000000077ce393: 498b4610                     mov      rax, qword ptr [r14 + 0x10]
00000000077ce397: 4885c0                       test     rax, rax
00000000077ce39a: 750b                         jne      0x77ce3a7
00000000077ce39c: eb18                         jmp      0x77ce3b6
00000000077ce39e: 6690                         nop
00000000077ce3a0: d1e8                         shr      eax, 1
00000000077ce3a2: 4885c0                       test     rax, rax
00000000077ce3a5: 740f                         je       0x77ce3b6
00000000077ce3a7: 488d7c2448                   lea      rdi, [rsp + 0x48]
00000000077ce3ac: 488b742410                   mov      rsi, qword ptr [rsp + 0x10]
00000000077ce3b1: e8faf9d3fc                   call     0x450ddb0
00000000077ce3b6: 458b2e                       mov      r13d, dword ptr [r14]
00000000077ce3b9: 4589ec                       mov      r12d, r13d
00000000077ce3bc: 8b7c240c                     mov      edi, dword ptr [rsp + 0xc]
00000000077ce3c0: 4129fc                       sub      r12d, edi
00000000077ce3c3: 8b03                         mov      eax, dword ptr [rbx]
00000000077ce3c5: 8b5304                       mov      edx, dword ptr [rbx + 4]
00000000077ce3c8: 31f6                         xor      esi, esi
00000000077ce3ca: 89c1                         mov      ecx, eax
00000000077ce3cc: 09d1                         or       ecx, edx
00000000077ce3ce: 0f840c030000                 je       0x77ce6e0
00000000077ce3d4: 488b4b20                     mov      rcx, qword ptr [rbx + 0x20]
00000000077ce3d8: 488b4908                     mov      rcx, qword ptr [rcx + 8]
00000000077ce3dc: 4885c9                       test     rcx, rcx
00000000077ce3df: 750e                         jne      0x77ce3ef
00000000077ce3e1: 488d0d08da5203               lea      rcx, [rip + 0x352da08]
00000000077ce3e8: 488b09                       mov      rcx, qword ptr [rcx]
00000000077ce3eb: 488b4908                     mov      rcx, qword ptr [rcx + 8]
00000000077ce3ef: 8b4910                       mov      ecx, dword ptr [rcx + 0x10]
00000000077ce3f2: 488d7c2448                   lea      rdi, [rsp + 0x48]
00000000077ce3f7: 89c6                         mov      esi, eax
00000000077ce3f9: 4589e0                       mov      r8d, r12d
00000000077ce3fc: e80fc22100                   call     0x79ea610
00000000077ce401: 8b33                         mov      esi, dword ptr [rbx]
00000000077ce403: 85f6                         test     esi, esi
00000000077ce405: 0f95c0                       setne    al
00000000077ce408: 83fe92                       cmp      esi, -0x6e
00000000077ce40b: 0f95c1                       setne    cl
00000000077ce40e: 84c8                         test     al, cl
00000000077ce410: 0f85bc020000                 jne      0x77ce6d2
00000000077ce416: 8b7c240c                     mov      edi, dword ptr [rsp + 0xc]
00000000077ce41a: 85ff                         test     edi, edi
00000000077ce41c: 0f84be020000                 je       0x77ce6e0
00000000077ce422: bfe8030000                   mov      edi, 0x3e8
00000000077ce427: 4489e1                       mov      ecx, r12d
00000000077ce42a: d3e7                         shl      edi, cl
00000000077ce42c: e8afa23102                   call     0x9ae86e0
00000000077ce431: bf02000000                   mov      edi, 2
00000000077ce436: e855889401                   call     0x9116c90
00000000077ce43b: 448b7c240c                   mov      r15d, dword ptr [rsp + 0xc]
00000000077ce440: 41ffcf                       dec      r15d
00000000077ce443: 41b501                       mov      r13b, 1
00000000077ce446: 85c0                         test     eax, eax
00000000077ce448: 44897c240c                   mov      dword ptr [rsp + 0xc], r15d
00000000077ce44d: 0f8473020000                 je       0x77ce6c6
00000000077ce453: 488d7c2418                   lea      rdi, [rsp + 0x18]
00000000077ce458: e87345beff                   call     0x73b29d0
00000000077ce45d: 4c8da424b0000000             lea      r12, [rsp + 0xb0]
00000000077ce465: f644241801                   test     byte ptr [rsp + 0x18], 1
00000000077ce46a: 488d542419                   lea      rdx, [rsp + 0x19]
00000000077ce46f: 7405                         je       0x77ce476
00000000077ce471: 488b542428                   mov      rdx, qword ptr [rsp + 0x28]
00000000077ce476: 4c89e7                       mov      rdi, r12
00000000077ce479: be02000000                   mov      esi, 2
00000000077ce47e: 488d0d55466cf9               lea      rcx, [rip - 0x693b9ab]
00000000077ce485: 4c8d056a4366f9               lea      r8, [rip - 0x699bc96]
00000000077ce48c: 41b950010000                 mov      r9d, 0x150
00000000077ce492: 6a00                         push     0
00000000077ce494: 6a00                         push     0
00000000077ce496: e805319401                   call     0x91115a0
00000000077ce49b: 4883c410                     add      rsp, 0x10
00000000077ce49f: f644244801                   test     byte ptr [rsp + 0x48], 1
00000000077ce4a4: 488d442449                   lea      rax, [rsp + 0x49]
00000000077ce4a9: 7405                         je       0x77ce4b0
00000000077ce4ab: 488b442458                   mov      rax, qword ptr [rsp + 0x58]
00000000077ce4b0: 4889842468020000             mov      qword ptr [rsp + 0x268], rax
00000000077ce4b8: c684247002000000             mov      byte ptr [rsp + 0x270], 0
00000000077ce4c0: 8b0b                         mov      ecx, dword ptr [rbx]
00000000077ce4c2: 48c784249001000000000000     mov      qword ptr [rsp + 0x190], 0
00000000077ce4ce: b808000000                   mov      eax, 8
00000000077ce4d3: 89ca                         mov      edx, ecx
00000000077ce4d5: 66662e0f1f840000000000       nop      word ptr cs:[rax + rax]
00000000077ce4e0: 4863f2                       movsxd   rsi, edx
00000000077ce4e3: 4869d667666666               imul     rdx, rsi, 0x66666667
00000000077ce4ea: 4889d7                       mov      rdi, rdx
00000000077ce4ed: 48c1ef3f                     shr      rdi, 0x3f
00000000077ce4f1: 48c1fa22                     sar      rdx, 0x22
00000000077ce4f5: 01fa                         add      edx, edi
00000000077ce4f7: 8d3c12                       lea      edi, [rdx + rdx]
00000000077ce4fa: 8d3cbf                       lea      edi, [rdi + rdi*4]
00000000077ce4fd: 4189f0                       mov      r8d, esi
00000000077ce500: 4129f8                       sub      r8d, edi
00000000077ce503: 4963f8                       movsxd   rdi, r8d
00000000077ce506: 0fb67c2f23                   movzx    edi, byte ptr [rdi + rbp + 0x23]
00000000077ce50b: 4088bc0490010000             mov      byte ptr [rsp + rax + 0x190], dil
00000000077ce513: 48ffc0                       inc      rax
00000000077ce516: 83c609                       add      esi, 9
00000000077ce519: 83fe12                       cmp      esi, 0x12
00000000077ce51c: 77c2                         ja       0x77ce4e0
00000000077ce51e: 85c9                         test     ecx, ecx
00000000077ce520: 790b                         jns      0x77ce52d
00000000077ce522: c68404900100002d             mov      byte ptr [rsp + rax + 0x190], 0x2d
00000000077ce52a: 48ffc0                       inc      rax
00000000077ce52d: c684049001000000             mov      byte ptr [rsp + rax + 0x190], 0
00000000077ce535: 4883f80a                     cmp      rax, 0xa
00000000077ce539: 7c31                         jl       0x77ce56c
00000000077ce53b: 4801e0                       add      rax, rsp
00000000077ce53e: 480590010000                 add      rax, 0x190
00000000077ce544: 48ffc8                       dec      rax
00000000077ce547: 488d8c2499010000             lea      rcx, [rsp + 0x199]
00000000077ce54f: 90                           nop
00000000077ce550: 0fb610                       movzx    edx, byte ptr [rax]
00000000077ce553: 0fb671ff                     movzx    esi, byte ptr [rcx - 1]
00000000077ce557: 408830                       mov      byte ptr [rax], sil
00000000077ce55a: 8851ff                       mov      byte ptr [rcx - 1], dl
00000000077ce55d: 48ffc8                       dec      rax
00000000077ce560: 488d5101                     lea      rdx, [rcx + 1]
00000000077ce564: 4839c1                       cmp      rcx, rax
00000000077ce567: 4889d1                       mov      rcx, rdx
00000000077ce56a: 72e4                         jb       0x77ce550
00000000077ce56c: 488d842498010000             lea      rax, [rsp + 0x198]
00000000077ce574: 4889842490010000             mov      qword ptr [rsp + 0x190], rax
00000000077ce57c: 8b4b04                       mov      ecx, dword ptr [rbx + 4]
00000000077ce57f: 48c784244001000000000000     mov      qword ptr [rsp + 0x140], 0
00000000077ce58b: b808000000                   mov      eax, 8
00000000077ce590: 89ca                         mov      edx, ecx
00000000077ce592: 66666666662e0f1f840000000000 nop      word ptr cs:[rax + rax]
00000000077ce5a0: 4863f2                       movsxd   rsi, edx
00000000077ce5a3: 4869d667666666               imul     rdx, rsi, 0x66666667
00000000077ce5aa: 4889d7                       mov      rdi, rdx
00000000077ce5ad: 48c1ef3f                     shr      rdi, 0x3f
00000000077ce5b1: 48c1fa22                     sar      rdx, 0x22
00000000077ce5b5: 01fa                         add      edx, edi
00000000077ce5b7: 8d3c12                       lea      edi, [rdx + rdx]
00000000077ce5ba: 8d3cbf                       lea      edi, [rdi + rdi*4]
00000000077ce5bd: 4189f0                       mov      r8d, esi
00000000077ce5c0: 4129f8                       sub      r8d, edi
00000000077ce5c3: 4963f8                       movsxd   rdi, r8d
00000000077ce5c6: 0fb67c2f23                   movzx    edi, byte ptr [rdi + rbp + 0x23]
00000000077ce5cb: 4088bc0440010000             mov      byte ptr [rsp + rax + 0x140], dil
00000000077ce5d3: 48ffc0                       inc      rax
00000000077ce5d6: 83c609                       add      esi, 9
00000000077ce5d9: 83fe12                       cmp      esi, 0x12
00000000077ce5dc: 77c2                         ja       0x77ce5a0
00000000077ce5de: 85c9                         test     ecx, ecx
00000000077ce5e0: 790b                         jns      0x77ce5ed
00000000077ce5e2: c68404400100002d             mov      byte ptr [rsp + rax + 0x140], 0x2d
00000000077ce5ea: 48ffc0                       inc      rax
00000000077ce5ed: c684044001000000             mov      byte ptr [rsp + rax + 0x140], 0
00000000077ce5f5: 4883f80a                     cmp      rax, 0xa
00000000077ce5f9: 7c31                         jl       0x77ce62c
00000000077ce5fb: 4801e0                       add      rax, rsp
00000000077ce5fe: 480540010000                 add      rax, 0x140
00000000077ce604: 48ffc8                       dec      rax
00000000077ce607: 488d8c2449010000             lea      rcx, [rsp + 0x149]
00000000077ce60f: 90                           nop
00000000077ce610: 0fb610                       movzx    edx, byte ptr [rax]
00000000077ce613: 0fb671ff                     movzx    esi, byte ptr [rcx - 1]
00000000077ce617: 408830                       mov      byte ptr [rax], sil
00000000077ce61a: 8851ff                       mov      byte ptr [rcx - 1], dl
00000000077ce61d: 48ffc8                       dec      rax
00000000077ce620: 488d5101                     lea      rdx, [rcx + 1]
00000000077ce624: 4839c1                       cmp      rcx, rax
00000000077ce627: 4889d1                       mov      rcx, rdx
00000000077ce62a: 72e4                         jb       0x77ce610
00000000077ce62c: 488d842448010000             lea      rax, [rsp + 0x148]
00000000077ce634: 4889842440010000             mov      qword ptr [rsp + 0x140], rax
00000000077ce63c: 488d842468020000             lea      rax, [rsp + 0x268]
00000000077ce644: 48898424e0010000             mov      qword ptr [rsp + 0x1e0], rax
00000000077ce64c: 488d842490010000             lea      rax, [rsp + 0x190]
00000000077ce654: 48898424e8010000             mov      qword ptr [rsp + 0x1e8], rax
00000000077ce65c: 488d842440010000             lea      rax, [rsp + 0x140]
00000000077ce664: 48898424f0010000             mov      qword ptr [rsp + 0x1f0], rax
00000000077ce66c: 488d8424f8010000             lea      rax, [rsp + 0x1f8]
00000000077ce674: 0f57c0                       xorps    xmm0, xmm0
00000000077ce677: 0f114050                     movups   xmmword ptr [rax + 0x50], xmm0
00000000077ce67b: 0f114040                     movups   xmmword ptr [rax + 0x40], xmm0
00000000077ce67f: 0f114030                     movups   xmmword ptr [rax + 0x30], xmm0
00000000077ce683: 0f114020                     movups   xmmword ptr [rax + 0x20], xmm0
00000000077ce687: 0f114010                     movups   xmmword ptr [rax + 0x10], xmm0
00000000077ce68b: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077ce68e: 48c7406000000000             mov      qword ptr [rax + 0x60], 0
00000000077ce696: 4c89e7                       mov      rdi, r12
00000000077ce699: 488d35aa157ef9               lea      rsi, [rip - 0x681ea56]
00000000077ce6a0: 488d9424e0010000             lea      rdx, [rsp + 0x1e0]
00000000077ce6a8: e843329401                   call     0x91118f0
00000000077ce6ad: 4c89e7                       mov      rdi, r12
00000000077ce6b0: e87b2f9401                   call     0x9111630
00000000077ce6b5: f644241801                   test     byte ptr [rsp + 0x18], 1
00000000077ce6ba: 740a                         je       0x77ce6c6
00000000077ce6bc: 488b7c2428                   mov      rdi, qword ptr [rsp + 0x28]
00000000077ce6c1: e87abad3fc                   call     0x450a140
00000000077ce6c6: 4531ff                       xor      r15d, r15d
00000000077ce6c9: f644244801                   test     byte ptr [rsp + 0x48], 1
00000000077ce6ce: 7550                         jne      0x77ce720
00000000077ce6d0: eb58                         jmp      0x77ce72a
00000000077ce6d2: 8b7c240c                     mov      edi, dword ptr [rsp + 0xc]
00000000077ce6d6: 662e0f1f840000000000         nop      word ptr cs:[rax + rax]
00000000077ce6e0: 41b701                       mov      r15b, 1
00000000077ce6e3: 4139fd                       cmp      r13d, edi
00000000077ce6e6: 742e                         je       0x77ce716
00000000077ce6e8: 488b4320                     mov      rax, qword ptr [rbx + 0x20]
00000000077ce6ec: 488b4008                     mov      rax, qword ptr [rax + 8]
00000000077ce6f0: 4885c0                       test     rax, rax
00000000077ce6f3: 750e                         jne      0x77ce703
00000000077ce6f5: 488d05f4d65203               lea      rax, [rip + 0x352d6f4]
00000000077ce6fc: 488b00                       mov      rax, qword ptr [rax]
00000000077ce6ff: 488b4008                     mov      rax, qword ptr [rax + 8]
00000000077ce703: 8b5304                       mov      edx, dword ptr [rbx + 4]
00000000077ce706: 8b4810                       mov      ecx, dword ptr [rax + 0x10]
00000000077ce709: 488d7c2448                   lea      rdi, [rsp + 0x48]
00000000077ce70e: 4589e0                       mov      r8d, r12d
00000000077ce711: e8fabe2100                   call     0x79ea610
00000000077ce716: 4531ed                       xor      r13d, r13d
00000000077ce719: f644244801                   test     byte ptr [rsp + 0x48], 1
00000000077ce71e: 740a                         je       0x77ce72a
00000000077ce720: 488b7c2458                   mov      rdi, qword ptr [rsp + 0x58]
00000000077ce725: e816bad3fc                   call     0x450a140
00000000077ce72a: 4584ff                       test     r15b, r15b
00000000077ce72d: 4c8bbc24a0000000             mov      r15, qword ptr [rsp + 0xa0]
00000000077ce735: 752b                         jne      0x77ce762
00000000077ce737: 4c8b6328                     mov      r12, qword ptr [rbx + 0x28]
00000000077ce73b: 4d85e4                       test     r12, r12
00000000077ce73e: 7413                         je       0x77ce753
00000000077ce740: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000077ce747: f0490fc1442408               lock xadd qword ptr [r12 + 8], rax
00000000077ce74e: 4885c0                       test     rax, rax
00000000077ce751: 746c                         je       0x77ce7bf
00000000077ce753: f6430801                     test     byte ptr [rbx + 8], 1
00000000077ce757: 7409                         je       0x77ce762
00000000077ce759: 488b7b18                     mov      rdi, qword ptr [rbx + 0x18]
00000000077ce75d: e8deb9d3fc                   call     0x450a140
00000000077ce762: 4c8ba42498000000             mov      r12, qword ptr [rsp + 0x98]
00000000077ce76a: 4d85e4                       test     r12, r12
00000000077ce76d: 7413                         je       0x77ce782
00000000077ce76f: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000077ce776: f0490fc1442408               lock xadd qword ptr [r12 + 8], rax
00000000077ce77d: 4885c0                       test     rax, rax
00000000077ce780: 741e                         je       0x77ce7a0
00000000077ce782: f644247801                   test     byte ptr [rsp + 0x78], 1
00000000077ce787: 0f84d3f9ffff                 je       0x77ce160
00000000077ce78d: 488bbc2488000000             mov      rdi, qword ptr [rsp + 0x88]
00000000077ce795: e8a6b9d3fc                   call     0x450a140
00000000077ce79a: e9c1f9ffff                   jmp      0x77ce160
00000000077ce79f: 90                           nop
00000000077ce7a0: 498b0424                     mov      rax, qword ptr [r12]
00000000077ce7a4: 4c89e7                       mov      rdi, r12
00000000077ce7a7: ff5010                       call     qword ptr [rax + 0x10]
00000000077ce7aa: 4c89e7                       mov      rdi, r12
00000000077ce7ad: e81e8ad6fc                   call     0x45371d0
00000000077ce7b2: f644247801                   test     byte ptr [rsp + 0x78], 1
00000000077ce7b7: 0f84a3f9ffff                 je       0x77ce160
00000000077ce7bd: ebce                         jmp      0x77ce78d
00000000077ce7bf: 498b0424                     mov      rax, qword ptr [r12]
00000000077ce7c3: 4c89e7                       mov      rdi, r12
00000000077ce7c6: ff5010                       call     qword ptr [rax + 0x10]
00000000077ce7c9: 4c89e7                       mov      rdi, r12
00000000077ce7cc: e8ff89d6fc                   call     0x45371d0
00000000077ce7d1: f6430801                     test     byte ptr [rbx + 8], 1
00000000077ce7d5: 7582                         jne      0x77ce759
00000000077ce7d7: eb89                         jmp      0x77ce762
00000000077ce7d9: 4889d8                       mov      rax, rbx
00000000077ce7dc: 4881c4b8020000               add      rsp, 0x2b8
00000000077ce7e3: 5b                           pop      rbx
00000000077ce7e4: 415c                         pop      r12
00000000077ce7e6: 415d                         pop      r13
00000000077ce7e8: 415e                         pop      r14
00000000077ce7ea: 415f                         pop      r15
00000000077ce7ec: 5d                           pop      rbp
00000000077ce7ed: c3                           ret
00000000077ce7ee: 4989c6                       mov      r14, rax
00000000077ce7f1: 488dbc24b0000000             lea      rdi, [rsp + 0xb0]
00000000077ce7f9: e8322e9401                   call     0x9111630
00000000077ce7fe: eb03                         jmp      0x77ce803
00000000077ce800: 4989c6                       mov      r14, rax
00000000077ce803: f644241801                   test     byte ptr [rsp + 0x18], 1
00000000077ce808: 746f                         je       0x77ce879
00000000077ce80a: 488b7c2428                   mov      rdi, qword ptr [rsp + 0x28]
00000000077ce80f: e82cb9d3fc                   call     0x450a140
00000000077ce814: eb63                         jmp      0x77ce879
00000000077ce816: eb5e                         jmp      0x77ce876
00000000077ce818: 4989c6                       mov      r14, rax
00000000077ce81b: f68424d000000001             test     byte ptr [rsp + 0xd0], 1
00000000077ce823: 7412                         je       0x77ce837
00000000077ce825: 488bbc24e0000000             mov      rdi, qword ptr [rsp + 0xe0]
00000000077ce82d: e80eb9d3fc                   call     0x450a140
00000000077ce832: eb03                         jmp      0x77ce837
00000000077ce834: 4989c6                       mov      r14, rax
00000000077ce837: 488dbc24b0000000             lea      rdi, [rsp + 0xb0]
00000000077ce83f: e81ccf5000                   call     0x7cdb760
00000000077ce844: eb1c                         jmp      0x77ce862
00000000077ce846: eb2e                         jmp      0x77ce876
00000000077ce848: 4989c6                       mov      r14, rax
00000000077ce84b: eb45                         jmp      0x77ce892
00000000077ce84d: 4989c6                       mov      r14, rax
00000000077ce850: eb10                         jmp      0x77ce862
00000000077ce852: 4989c6                       mov      r14, rax
00000000077ce855: 488dbc24b0000000             lea      rdi, [rsp + 0xb0]
00000000077ce85d: e8de6f0200                   call     0x77f5840
00000000077ce862: 488dbc24e0010000             lea      rdi, [rsp + 0x1e0]
00000000077ce86a: e841ae87fe                   call     0x60496b0
00000000077ce86f: eb21                         jmp      0x77ce892
00000000077ce871: 4989c6                       mov      r14, rax
00000000077ce874: eb14                         jmp      0x77ce88a
00000000077ce876: 4989c6                       mov      r14, rax
00000000077ce879: f644244801                   test     byte ptr [rsp + 0x48], 1
00000000077ce87e: 740a                         je       0x77ce88a
00000000077ce880: 488b7c2458                   mov      rdi, qword ptr [rsp + 0x58]
00000000077ce885: e8b6b8d3fc                   call     0x450a140
00000000077ce88a: 4889df                       mov      rdi, rbx
00000000077ce88d: e8be130000                   call     0x77cfc50
00000000077ce892: 488d7c2470                   lea      rdi, [rsp + 0x70]
00000000077ce897: e8b4130000                   call     0x77cfc50
00000000077ce89c: 4c89f7                       mov      rdi, r14
00000000077ce89f: e87ce5d1fc                   call     0x44ece20
