0000000006958540: 55                           push     rbp
0000000006958541: 4157                         push     r15
0000000006958543: 4156                         push     r14
0000000006958545: 4155                         push     r13
0000000006958547: 4154                         push     r12
0000000006958549: 53                           push     rbx
000000000695854a: 4881ecb8020000               sub      rsp, 0x2b8
0000000006958551: 4d89c6                       mov      r14, r8
0000000006958554: 4989cf                       mov      r15, rcx
0000000006958557: 48899424a8000000             mov      qword ptr [rsp + 0xa8], rdx
000000000695855f: 4889fb                       mov      rbx, rdi
0000000006958562: 418b00                       mov      eax, dword ptr [r8]
0000000006958565: 8944240c                     mov      dword ptr [rsp + 0xc], eax
0000000006958569: 498d4008                     lea      rax, [r8 + 8]
000000000695856d: 4889442410                   mov      qword ptr [rsp + 0x10], rax
0000000006958572: 4c8d642470                   lea      r12, [rsp + 0x70]
0000000006958577: 488d2d8e6e5dfa               lea      rbp, [rip - 0x5a29172] ; 'ZYXWVUTSRQPONMLKJIHGFEDCBA9876543210123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'
000000000695857e: 48898c24a0000000             mov      qword ptr [rsp + 0xa0], rcx
0000000006958586: eb16                         jmp      0x695859e
0000000006958588: 0f1f840000000000             nop      dword ptr [rax + rax]
0000000006958590: 4584ed                       test     r13b, r13b
0000000006958593: 4c8d642470                   lea      r12, [rsp + 0x70]
0000000006958598: 0f846b060000                 je       0x6958c09
000000000695859e: 0f2805fb1040fa               movaps   xmm0, xmmword ptr [rip - 0x5bfef05]
00000000069585a5: 0f29842490000000             movaps   xmmword ptr [rsp + 0x90], xmm0
00000000069585ad: 0f29842480000000             movaps   xmmword ptr [rsp + 0x80], xmm0
00000000069585b5: 0f29442470                   movaps   xmmword ptr [rsp + 0x70], xmm0
00000000069585ba: 4c89e7                       mov      rdi, r12
00000000069585bd: 31f6                         xor      esi, esi
00000000069585bf: 31d2                         xor      edx, edx
00000000069585c1: e87a1d0000                   call     0x695a340
00000000069585c6: c744247092ffffff             mov      dword ptr [rsp + 0x70], 0xffffff92
00000000069585ce: 837c247400                   cmp      dword ptr [rsp + 0x74], 0
00000000069585d3: 7508                         jne      0x69585dd
00000000069585d5: c7442474aafbffff             mov      dword ptr [rsp + 0x74], 0xfffffbaa
00000000069585dd: 0f2805bc1040fa               movaps   xmm0, xmmword ptr [rip - 0x5bfef44]
00000000069585e4: 0f114320                     movups   xmmword ptr [rbx + 0x20], xmm0
00000000069585e8: 0f114310                     movups   xmmword ptr [rbx + 0x10], xmm0
00000000069585ec: 0f1103                       movups   xmmword ptr [rbx], xmm0
00000000069585ef: 458b4e04                     mov      r9d, dword ptr [r14 + 4]
00000000069585f3: 4883ec08                     sub      rsp, 8
00000000069585f7: 488dbc24e8010000             lea      rdi, [rsp + 0x1e8]
00000000069585ff: 488d3522e359fa               lea      rsi, [rip - 0x5a61cde] ; 'CoCgiSendRequest'
0000000006958606: 488d15f3766bfa               lea      rdx, [rip - 0x594890d] ; 'mm_cgi.h'
000000000695860d: b93e010000                   mov      ecx, 0x13e
0000000006958612: 4531c0                       xor      r8d, r8d
0000000006958615: 4154                         push     r12
0000000006958617: e8f41d0000                   call     0x695a410
000000000695861c: 4883c410                     add      rsp, 0x10
0000000006958620: 4c8da424b0000000             lea      r12, [rsp + 0xb0]
0000000006958628: 4c89e7                       mov      rdi, r12
000000000695862b: 488bb424a8000000             mov      rsi, qword ptr [rsp + 0xa8]
0000000006958633: e8284f0901                   call     0x79ed560
0000000006958638: 41f60701                     test     byte ptr [r15], 1
000000000695863c: 7522                         jne      0x6958660
000000000695863e: 498b4710                     mov      rax, qword ptr [r15 + 0x10]
0000000006958642: 488d8c24e0000000             lea      rcx, [rsp + 0xe0]
000000000695864a: 48894110                     mov      qword ptr [rcx + 0x10], rax
000000000695864e: 410f1007                     movups   xmm0, xmmword ptr [r15]
0000000006958652: 0f1101                       movups   xmmword ptr [rcx], xmm0
0000000006958655: eb1e                         jmp      0x6958675
0000000006958657: 660f1f840000000000           nop      word ptr [rax + rax]
0000000006958660: 498b5708                     mov      rdx, qword ptr [r15 + 8]
0000000006958664: 498b7710                     mov      rsi, qword ptr [r15 + 0x10]
0000000006958668: 488dbc24e0000000             lea      rdi, [rsp + 0xe0]
0000000006958670: e82b40bbfd                   call     0x450c6a0
0000000006958675: 498b06                       mov      rax, qword ptr [r14]
0000000006958678: 48898424f8000000             mov      qword ptr [rsp + 0xf8], rax
0000000006958680: 41f6460801                   test     byte ptr [r14 + 8], 1
0000000006958685: 7529                         jne      0x69586b0
0000000006958687: 488b542410                   mov      rdx, qword ptr [rsp + 0x10]
000000000695868c: 488b4210                     mov      rax, qword ptr [rdx + 0x10]
0000000006958690: 488d8c2400010000             lea      rcx, [rsp + 0x100]
0000000006958698: 48894110                     mov      qword ptr [rcx + 0x10], rax
000000000695869c: 0f1002                       movups   xmm0, xmmword ptr [rdx]
000000000695869f: 0f1101                       movups   xmmword ptr [rcx], xmm0
00000000069586a2: eb21                         jmp      0x69586c5
00000000069586a4: 6666662e0f1f840000000000     nop      word ptr cs:[rax + rax]
00000000069586b0: 498b5610                     mov      rdx, qword ptr [r14 + 0x10]
00000000069586b4: 498b7618                     mov      rsi, qword ptr [r14 + 0x18]
00000000069586b8: 488dbc2400010000             lea      rdi, [rsp + 0x100]
00000000069586c0: e8db3fbbfd                   call     0x450c6a0
00000000069586c5: 498b4620                     mov      rax, qword ptr [r14 + 0x20]
00000000069586c9: 4889842418010000             mov      qword ptr [rsp + 0x118], rax
00000000069586d1: 4889df                       mov      rdi, rbx
00000000069586d4: 488db424e0010000             lea      rsi, [rsp + 0x1e0]
00000000069586dc: 4c89e2                       mov      rdx, r12
00000000069586df: e84c1e0000                   call     0x695a530
00000000069586e4: f684240001000001             test     byte ptr [rsp + 0x100], 1
00000000069586ec: 740d                         je       0x69586fb
00000000069586ee: 488bbc2410010000             mov      rdi, qword ptr [rsp + 0x110]
00000000069586f6: e8451abbfd                   call     0x450a140
00000000069586fb: f68424e000000001             test     byte ptr [rsp + 0xe0], 1
0000000006958703: 740d                         je       0x6958712
0000000006958705: 488bbc24f0000000             mov      rdi, qword ptr [rsp + 0xf0]
000000000695870d: e82e1abbfd                   call     0x450a140
0000000006958712: 4c89e7                       mov      rdi, r12
0000000006958715: e8464f0901                   call     0x79ed660
000000000695871a: 488bbc2428020000             mov      rdi, qword ptr [rsp + 0x228]
0000000006958722: 4885ff                       test     rdi, rdi
0000000006958725: 7412                         je       0x6958739
0000000006958727: 488b07                       mov      rax, qword ptr [rdi]
000000000695872a: ff5008                       call     qword ptr [rax + 8]
000000000695872d: 48c784242802000000000000     mov      qword ptr [rsp + 0x228], 0
0000000006958739: f68424e801000001             test     byte ptr [rsp + 0x1e8], 1
0000000006958741: 740d                         je       0x6958750
0000000006958743: 488bbc24f8010000             mov      rdi, qword ptr [rsp + 0x1f8]
000000000695874b: e8f019bbfd                   call     0x450a140
0000000006958750: 48b8aaaaaaaaaaaaaaaa         movabs   rax, 0xaaaaaaaaaaaaaaaa
000000000695875a: 4889442460                   mov      qword ptr [rsp + 0x60], rax
000000000695875f: 0f28058a813ffa               movaps   xmm0, xmmword ptr [rip - 0x5c07e76]
0000000006958766: 0f29442430                   movaps   xmmword ptr [rsp + 0x30], xmm0
000000000695876b: 48c74424400a020000           mov      qword ptr [rsp + 0x40], 0x20a
0000000006958774: bf28000000                   mov      edi, 0x28
0000000006958779: e82256d103                   call     0xa66dda0
000000000695877e: 4889442458                   mov      qword ptr [rsp + 0x58], rax
0000000006958783: 48c744244829000000           mov      qword ptr [rsp + 0x48], 0x29
000000000695878c: 48c744245020000000           mov      qword ptr [rsp + 0x50], 0x20
0000000006958795: 0f1005e29e70fa               movups   xmm0, xmmword ptr [rip - 0x58f611e] ; 'g-bin/newsendmsg'
000000000695879c: 0f114010                     movups   xmmword ptr [rax + 0x10], xmm0
00000000069587a0: 0f1005c79e70fa               movups   xmm0, xmmword ptr [rip - 0x58f6139] ; '/cgi-bin/micromsg-bin/newsendmsg'
00000000069587a7: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000069587aa: c6402000                     mov      byte ptr [rax + 0x20], 0
00000000069587ae: c644246001                   mov      byte ptr [rsp + 0x60], 1
00000000069587b3: 410fb64608                   movzx    eax, byte ptr [r14 + 8]
00000000069587b8: a801                         test     al, 1
00000000069587ba: 7414                         je       0x69587d0
00000000069587bc: 498b4610                     mov      rax, qword ptr [r14 + 0x10]
00000000069587c0: 4885c0                       test     rax, rax
00000000069587c3: 7512                         jne      0x69587d7
00000000069587c5: eb1f                         jmp      0x69587e6
00000000069587c7: 660f1f840000000000           nop      word ptr [rax + rax]
00000000069587d0: d1e8                         shr      eax, 1
00000000069587d2: 4885c0                       test     rax, rax
00000000069587d5: 740f                         je       0x69587e6
00000000069587d7: 488d7c2448                   lea      rdi, [rsp + 0x48]
00000000069587dc: 488b742410                   mov      rsi, qword ptr [rsp + 0x10]
00000000069587e1: e8ca55bbfd                   call     0x450ddb0
00000000069587e6: 458b2e                       mov      r13d, dword ptr [r14]
00000000069587e9: 4589ec                       mov      r12d, r13d
00000000069587ec: 8b7c240c                     mov      edi, dword ptr [rsp + 0xc]
00000000069587f0: 4129fc                       sub      r12d, edi
00000000069587f3: 8b03                         mov      eax, dword ptr [rbx]
00000000069587f5: 8b5304                       mov      edx, dword ptr [rbx + 4]
00000000069587f8: 31f6                         xor      esi, esi
00000000069587fa: 89c1                         mov      ecx, eax
00000000069587fc: 09d1                         or       ecx, edx
00000000069587fe: 0f840c030000                 je       0x6958b10
0000000006958804: 488b4b20                     mov      rcx, qword ptr [rbx + 0x20]
0000000006958808: 488b4908                     mov      rcx, qword ptr [rcx + 8]
000000000695880c: 4885c9                       test     rcx, rcx
000000000695880f: 750e                         jne      0x695881f
0000000006958811: 488d0dd0183a04               lea      rcx, [rip + 0x43a18d0]
0000000006958818: 488b09                       mov      rcx, qword ptr [rcx]
000000000695881b: 488b4908                     mov      rcx, qword ptr [rcx + 8]
000000000695881f: 8b4910                       mov      ecx, dword ptr [rcx + 0x10]
0000000006958822: 488d7c2448                   lea      rdi, [rsp + 0x48]
0000000006958827: 89c6                         mov      esi, eax
0000000006958829: 4589e0                       mov      r8d, r12d
000000000695882c: e8df1d0901                   call     0x79ea610
0000000006958831: 8b33                         mov      esi, dword ptr [rbx]
0000000006958833: 85f6                         test     esi, esi
0000000006958835: 0f95c0                       setne    al
0000000006958838: 83fe92                       cmp      esi, -0x6e
000000000695883b: 0f95c1                       setne    cl
000000000695883e: 84c8                         test     al, cl
0000000006958840: 0f85bc020000                 jne      0x6958b02
0000000006958846: 8b7c240c                     mov      edi, dword ptr [rsp + 0xc]
000000000695884a: 85ff                         test     edi, edi
000000000695884c: 0f84be020000                 je       0x6958b10
0000000006958852: bfe8030000                   mov      edi, 0x3e8
0000000006958857: 4489e1                       mov      ecx, r12d
000000000695885a: d3e7                         shl      edi, cl
000000000695885c: e87ffe1803                   call     0x9ae86e0
0000000006958861: bf02000000                   mov      edi, 2
0000000006958866: e825e47b02                   call     0x9116c90
000000000695886b: 448b7c240c                   mov      r15d, dword ptr [rsp + 0xc]
0000000006958870: 41ffcf                       dec      r15d
0000000006958873: 41b501                       mov      r13b, 1
0000000006958876: 85c0                         test     eax, eax
0000000006958878: 44897c240c                   mov      dword ptr [rsp + 0xc], r15d
000000000695887d: 0f8473020000                 je       0x6958af6
0000000006958883: 488d7c2418                   lea      rdi, [rsp + 0x18]
0000000006958888: e843a1a500                   call     0x73b29d0
000000000695888d: 4c8da424b0000000             lea      r12, [rsp + 0xb0]
0000000006958895: f644241801                   test     byte ptr [rsp + 0x18], 1
000000000695889a: 488d542419                   lea      rdx, [rsp + 0x19]
000000000695889f: 7405                         je       0x69588a6
00000000069588a1: 488b542428                   mov      rdx, qword ptr [rsp + 0x28]
00000000069588a6: 4c89e7                       mov      rdi, r12
00000000069588a9: be02000000                   mov      esi, 2
00000000069588ae: 488d0d25a253fa               lea      rcx, [rip - 0x5ac5ddb]
00000000069588b5: 4c8d053a9f4dfa               lea      r8, [rip - 0x5b260c6]
00000000069588bc: 41b950010000                 mov      r9d, 0x150
00000000069588c2: 6a00                         push     0
00000000069588c4: 6a00                         push     0
00000000069588c6: e8d58c7b02                   call     0x91115a0
00000000069588cb: 4883c410                     add      rsp, 0x10
00000000069588cf: f644244801                   test     byte ptr [rsp + 0x48], 1
00000000069588d4: 488d442449                   lea      rax, [rsp + 0x49]
00000000069588d9: 7405                         je       0x69588e0
00000000069588db: 488b442458                   mov      rax, qword ptr [rsp + 0x58]
00000000069588e0: 4889842468020000             mov      qword ptr [rsp + 0x268], rax
00000000069588e8: c684247002000000             mov      byte ptr [rsp + 0x270], 0
00000000069588f0: 8b0b                         mov      ecx, dword ptr [rbx]
00000000069588f2: 48c784249001000000000000     mov      qword ptr [rsp + 0x190], 0
00000000069588fe: b808000000                   mov      eax, 8
0000000006958903: 89ca                         mov      edx, ecx
0000000006958905: 66662e0f1f840000000000       nop      word ptr cs:[rax + rax]
0000000006958910: 4863f2                       movsxd   rsi, edx
0000000006958913: 4869d667666666               imul     rdx, rsi, 0x66666667
000000000695891a: 4889d7                       mov      rdi, rdx
000000000695891d: 48c1ef3f                     shr      rdi, 0x3f
0000000006958921: 48c1fa22                     sar      rdx, 0x22
0000000006958925: 01fa                         add      edx, edi
0000000006958927: 8d3c12                       lea      edi, [rdx + rdx]
000000000695892a: 8d3cbf                       lea      edi, [rdi + rdi*4]
000000000695892d: 4189f0                       mov      r8d, esi
0000000006958930: 4129f8                       sub      r8d, edi
0000000006958933: 4963f8                       movsxd   rdi, r8d
0000000006958936: 0fb67c2f23                   movzx    edi, byte ptr [rdi + rbp + 0x23]
000000000695893b: 4088bc0490010000             mov      byte ptr [rsp + rax + 0x190], dil
0000000006958943: 48ffc0                       inc      rax
0000000006958946: 83c609                       add      esi, 9
0000000006958949: 83fe12                       cmp      esi, 0x12
000000000695894c: 77c2                         ja       0x6958910
000000000695894e: 85c9                         test     ecx, ecx
0000000006958950: 790b                         jns      0x695895d
0000000006958952: c68404900100002d             mov      byte ptr [rsp + rax + 0x190], 0x2d
000000000695895a: 48ffc0                       inc      rax
000000000695895d: c684049001000000             mov      byte ptr [rsp + rax + 0x190], 0
0000000006958965: 4883f80a                     cmp      rax, 0xa
0000000006958969: 7c31                         jl       0x695899c
000000000695896b: 4801e0                       add      rax, rsp
000000000695896e: 480590010000                 add      rax, 0x190
0000000006958974: 48ffc8                       dec      rax
0000000006958977: 488d8c2499010000             lea      rcx, [rsp + 0x199]
000000000695897f: 90                           nop
0000000006958980: 0fb610                       movzx    edx, byte ptr [rax]
0000000006958983: 0fb671ff                     movzx    esi, byte ptr [rcx - 1]
0000000006958987: 408830                       mov      byte ptr [rax], sil
000000000695898a: 8851ff                       mov      byte ptr [rcx - 1], dl
000000000695898d: 48ffc8                       dec      rax
0000000006958990: 488d5101                     lea      rdx, [rcx + 1]
0000000006958994: 4839c1                       cmp      rcx, rax
0000000006958997: 4889d1                       mov      rcx, rdx
000000000695899a: 72e4                         jb       0x6958980
000000000695899c: 488d842498010000             lea      rax, [rsp + 0x198]
00000000069589a4: 4889842490010000             mov      qword ptr [rsp + 0x190], rax
00000000069589ac: 8b4b04                       mov      ecx, dword ptr [rbx + 4]
00000000069589af: 48c784244001000000000000     mov      qword ptr [rsp + 0x140], 0
00000000069589bb: b808000000                   mov      eax, 8
00000000069589c0: 89ca                         mov      edx, ecx
00000000069589c2: 66666666662e0f1f840000000000 nop      word ptr cs:[rax + rax]
00000000069589d0: 4863f2                       movsxd   rsi, edx
00000000069589d3: 4869d667666666               imul     rdx, rsi, 0x66666667
00000000069589da: 4889d7                       mov      rdi, rdx
00000000069589dd: 48c1ef3f                     shr      rdi, 0x3f
00000000069589e1: 48c1fa22                     sar      rdx, 0x22
00000000069589e5: 01fa                         add      edx, edi
00000000069589e7: 8d3c12                       lea      edi, [rdx + rdx]
00000000069589ea: 8d3cbf                       lea      edi, [rdi + rdi*4]
00000000069589ed: 4189f0                       mov      r8d, esi
00000000069589f0: 4129f8                       sub      r8d, edi
00000000069589f3: 4963f8                       movsxd   rdi, r8d
00000000069589f6: 0fb67c2f23                   movzx    edi, byte ptr [rdi + rbp + 0x23]
00000000069589fb: 4088bc0440010000             mov      byte ptr [rsp + rax + 0x140], dil
0000000006958a03: 48ffc0                       inc      rax
0000000006958a06: 83c609                       add      esi, 9
0000000006958a09: 83fe12                       cmp      esi, 0x12
0000000006958a0c: 77c2                         ja       0x69589d0
0000000006958a0e: 85c9                         test     ecx, ecx
0000000006958a10: 790b                         jns      0x6958a1d
0000000006958a12: c68404400100002d             mov      byte ptr [rsp + rax + 0x140], 0x2d
0000000006958a1a: 48ffc0                       inc      rax
0000000006958a1d: c684044001000000             mov      byte ptr [rsp + rax + 0x140], 0
0000000006958a25: 4883f80a                     cmp      rax, 0xa
0000000006958a29: 7c31                         jl       0x6958a5c
0000000006958a2b: 4801e0                       add      rax, rsp
0000000006958a2e: 480540010000                 add      rax, 0x140
0000000006958a34: 48ffc8                       dec      rax
0000000006958a37: 488d8c2449010000             lea      rcx, [rsp + 0x149]
0000000006958a3f: 90                           nop
0000000006958a40: 0fb610                       movzx    edx, byte ptr [rax]
0000000006958a43: 0fb671ff                     movzx    esi, byte ptr [rcx - 1]
0000000006958a47: 408830                       mov      byte ptr [rax], sil
0000000006958a4a: 8851ff                       mov      byte ptr [rcx - 1], dl
0000000006958a4d: 48ffc8                       dec      rax
0000000006958a50: 488d5101                     lea      rdx, [rcx + 1]
0000000006958a54: 4839c1                       cmp      rcx, rax
0000000006958a57: 4889d1                       mov      rcx, rdx
0000000006958a5a: 72e4                         jb       0x6958a40
0000000006958a5c: 488d842448010000             lea      rax, [rsp + 0x148]
0000000006958a64: 4889842440010000             mov      qword ptr [rsp + 0x140], rax
0000000006958a6c: 488d842468020000             lea      rax, [rsp + 0x268]
0000000006958a74: 48898424e0010000             mov      qword ptr [rsp + 0x1e0], rax
0000000006958a7c: 488d842490010000             lea      rax, [rsp + 0x190]
0000000006958a84: 48898424e8010000             mov      qword ptr [rsp + 0x1e8], rax
0000000006958a8c: 488d842440010000             lea      rax, [rsp + 0x140]
0000000006958a94: 48898424f0010000             mov      qword ptr [rsp + 0x1f0], rax
0000000006958a9c: 488d8424f8010000             lea      rax, [rsp + 0x1f8]
0000000006958aa4: 0f57c0                       xorps    xmm0, xmm0
0000000006958aa7: 0f114050                     movups   xmmword ptr [rax + 0x50], xmm0
0000000006958aab: 0f114040                     movups   xmmword ptr [rax + 0x40], xmm0
0000000006958aaf: 0f114030                     movups   xmmword ptr [rax + 0x30], xmm0
0000000006958ab3: 0f114020                     movups   xmmword ptr [rax + 0x20], xmm0
0000000006958ab7: 0f114010                     movups   xmmword ptr [rax + 0x10], xmm0
0000000006958abb: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000006958abe: 48c7406000000000             mov      qword ptr [rax + 0x60], 0
0000000006958ac6: 4c89e7                       mov      rdi, r12
0000000006958ac9: 488d357a7165fa               lea      rsi, [rip - 0x59a8e86]
0000000006958ad0: 488d9424e0010000             lea      rdx, [rsp + 0x1e0]
0000000006958ad8: e8138e7b02                   call     0x91118f0
0000000006958add: 4c89e7                       mov      rdi, r12
0000000006958ae0: e84b8b7b02                   call     0x9111630
0000000006958ae5: f644241801                   test     byte ptr [rsp + 0x18], 1
0000000006958aea: 740a                         je       0x6958af6
0000000006958aec: 488b7c2428                   mov      rdi, qword ptr [rsp + 0x28]
0000000006958af1: e84a16bbfd                   call     0x450a140
0000000006958af6: 4531ff                       xor      r15d, r15d
0000000006958af9: f644244801                   test     byte ptr [rsp + 0x48], 1
0000000006958afe: 7550                         jne      0x6958b50
0000000006958b00: eb58                         jmp      0x6958b5a
0000000006958b02: 8b7c240c                     mov      edi, dword ptr [rsp + 0xc]
0000000006958b06: 662e0f1f840000000000         nop      word ptr cs:[rax + rax]
0000000006958b10: 41b701                       mov      r15b, 1
0000000006958b13: 4139fd                       cmp      r13d, edi
0000000006958b16: 742e                         je       0x6958b46
0000000006958b18: 488b4320                     mov      rax, qword ptr [rbx + 0x20]
0000000006958b1c: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000006958b20: 4885c0                       test     rax, rax
0000000006958b23: 750e                         jne      0x6958b33
0000000006958b25: 488d05bc153a04               lea      rax, [rip + 0x43a15bc]
0000000006958b2c: 488b00                       mov      rax, qword ptr [rax]
0000000006958b2f: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000006958b33: 8b5304                       mov      edx, dword ptr [rbx + 4]
0000000006958b36: 8b4810                       mov      ecx, dword ptr [rax + 0x10]
0000000006958b39: 488d7c2448                   lea      rdi, [rsp + 0x48]
0000000006958b3e: 4589e0                       mov      r8d, r12d
0000000006958b41: e8ca1a0901                   call     0x79ea610
0000000006958b46: 4531ed                       xor      r13d, r13d
0000000006958b49: f644244801                   test     byte ptr [rsp + 0x48], 1
0000000006958b4e: 740a                         je       0x6958b5a
0000000006958b50: 488b7c2458                   mov      rdi, qword ptr [rsp + 0x58]
0000000006958b55: e8e615bbfd                   call     0x450a140
0000000006958b5a: 4584ff                       test     r15b, r15b
0000000006958b5d: 4c8bbc24a0000000             mov      r15, qword ptr [rsp + 0xa0]
0000000006958b65: 752b                         jne      0x6958b92
0000000006958b67: 4c8b6328                     mov      r12, qword ptr [rbx + 0x28]
0000000006958b6b: 4d85e4                       test     r12, r12
0000000006958b6e: 7413                         je       0x6958b83
0000000006958b70: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
0000000006958b77: f0490fc1442408               lock xadd qword ptr [r12 + 8], rax
0000000006958b7e: 4885c0                       test     rax, rax
0000000006958b81: 746c                         je       0x6958bef
0000000006958b83: f6430801                     test     byte ptr [rbx + 8], 1
0000000006958b87: 7409                         je       0x6958b92
0000000006958b89: 488b7b18                     mov      rdi, qword ptr [rbx + 0x18]
0000000006958b8d: e8ae15bbfd                   call     0x450a140
0000000006958b92: 4c8ba42498000000             mov      r12, qword ptr [rsp + 0x98]
0000000006958b9a: 4d85e4                       test     r12, r12
0000000006958b9d: 7413                         je       0x6958bb2
0000000006958b9f: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
0000000006958ba6: f0490fc1442408               lock xadd qword ptr [r12 + 8], rax
0000000006958bad: 4885c0                       test     rax, rax
0000000006958bb0: 741e                         je       0x6958bd0
0000000006958bb2: f644247801                   test     byte ptr [rsp + 0x78], 1
0000000006958bb7: 0f84d3f9ffff                 je       0x6958590
0000000006958bbd: 488bbc2488000000             mov      rdi, qword ptr [rsp + 0x88]
0000000006958bc5: e87615bbfd                   call     0x450a140
0000000006958bca: e9c1f9ffff                   jmp      0x6958590
0000000006958bcf: 90                           nop
0000000006958bd0: 498b0424                     mov      rax, qword ptr [r12]
0000000006958bd4: 4c89e7                       mov      rdi, r12
0000000006958bd7: ff5010                       call     qword ptr [rax + 0x10]
0000000006958bda: 4c89e7                       mov      rdi, r12
0000000006958bdd: e8eee5bdfd                   call     0x45371d0
0000000006958be2: f644247801                   test     byte ptr [rsp + 0x78], 1
0000000006958be7: 0f84a3f9ffff                 je       0x6958590
0000000006958bed: ebce                         jmp      0x6958bbd
0000000006958bef: 498b0424                     mov      rax, qword ptr [r12]
0000000006958bf3: 4c89e7                       mov      rdi, r12
0000000006958bf6: ff5010                       call     qword ptr [rax + 0x10]
0000000006958bf9: 4c89e7                       mov      rdi, r12
0000000006958bfc: e8cfe5bdfd                   call     0x45371d0
0000000006958c01: f6430801                     test     byte ptr [rbx + 8], 1
0000000006958c05: 7582                         jne      0x6958b89
0000000006958c07: eb89                         jmp      0x6958b92
0000000006958c09: 4889d8                       mov      rax, rbx
0000000006958c0c: 4881c4b8020000               add      rsp, 0x2b8
0000000006958c13: 5b                           pop      rbx
0000000006958c14: 415c                         pop      r12
0000000006958c16: 415d                         pop      r13
0000000006958c18: 415e                         pop      r14
0000000006958c1a: 415f                         pop      r15
0000000006958c1c: 5d                           pop      rbp
0000000006958c1d: c3                           ret
0000000006958c1e: 4989c6                       mov      r14, rax
0000000006958c21: 488dbc24b0000000             lea      rdi, [rsp + 0xb0]
0000000006958c29: e8028a7b02                   call     0x9111630
0000000006958c2e: eb03                         jmp      0x6958c33
0000000006958c30: 4989c6                       mov      r14, rax
0000000006958c33: f644241801                   test     byte ptr [rsp + 0x18], 1
0000000006958c38: 746f                         je       0x6958ca9
0000000006958c3a: 488b7c2428                   mov      rdi, qword ptr [rsp + 0x28]
0000000006958c3f: e8fc14bbfd                   call     0x450a140
0000000006958c44: eb63                         jmp      0x6958ca9
0000000006958c46: eb5e                         jmp      0x6958ca6
0000000006958c48: 4989c6                       mov      r14, rax
0000000006958c4b: f68424e000000001             test     byte ptr [rsp + 0xe0], 1
0000000006958c53: 7412                         je       0x6958c67
0000000006958c55: 488bbc24f0000000             mov      rdi, qword ptr [rsp + 0xf0]
0000000006958c5d: e8de14bbfd                   call     0x450a140
0000000006958c62: eb03                         jmp      0x6958c67
0000000006958c64: 4989c6                       mov      r14, rax
0000000006958c67: 488dbc24b0000000             lea      rdi, [rsp + 0xb0]
0000000006958c6f: e8ec490901                   call     0x79ed660
0000000006958c74: eb1c                         jmp      0x6958c92
0000000006958c76: eb2e                         jmp      0x6958ca6
0000000006958c78: 4989c6                       mov      r14, rax
0000000006958c7b: eb45                         jmp      0x6958cc2
0000000006958c7d: 4989c6                       mov      r14, rax
0000000006958c80: eb10                         jmp      0x6958c92
0000000006958c82: 4989c6                       mov      r14, rax
0000000006958c85: 488dbc24b0000000             lea      rdi, [rsp + 0xb0]
0000000006958c8d: e8ce1e0000                   call     0x695ab60
0000000006958c92: 488dbc24e0010000             lea      rdi, [rsp + 0x1e0]
0000000006958c9a: e8110a6fff                   call     0x60496b0
0000000006958c9f: eb21                         jmp      0x6958cc2
0000000006958ca1: 4989c6                       mov      r14, rax
0000000006958ca4: eb14                         jmp      0x6958cba
0000000006958ca6: 4989c6                       mov      r14, rax
0000000006958ca9: f644244801                   test     byte ptr [rsp + 0x48], 1
0000000006958cae: 740a                         je       0x6958cba
0000000006958cb0: 488b7c2458                   mov      rdi, qword ptr [rsp + 0x58]
0000000006958cb5: e88614bbfd                   call     0x450a140
0000000006958cba: 4889df                       mov      rdi, rbx
0000000006958cbd: e81e000000                   call     0x6958ce0
0000000006958cc2: 488d7c2470                   lea      rdi, [rsp + 0x70]
0000000006958cc7: e814000000                   call     0x6958ce0
0000000006958ccc: 4c89f7                       mov      rdi, r14
0000000006958ccf: e84c41b9fd                   call     0x44ece20
