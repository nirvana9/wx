00000000077c0540: 55                           push     rbp
00000000077c0541: 4157                         push     r15
00000000077c0543: 4156                         push     r14
00000000077c0545: 4155                         push     r13
00000000077c0547: 4154                         push     r12
00000000077c0549: 53                           push     rbx
00000000077c054a: 4881ecc8020000               sub      rsp, 0x2c8
00000000077c0551: 4d89c6                       mov      r14, r8
00000000077c0554: 4989cf                       mov      r15, rcx
00000000077c0557: 48899424a8000000             mov      qword ptr [rsp + 0xa8], rdx
00000000077c055f: 4889fb                       mov      rbx, rdi
00000000077c0562: 418b00                       mov      eax, dword ptr [r8]
00000000077c0565: 8944240c                     mov      dword ptr [rsp + 0xc], eax
00000000077c0569: 498d4008                     lea      rax, [r8 + 8]
00000000077c056d: 4889442410                   mov      qword ptr [rsp + 0x10], rax
00000000077c0572: 4c8d642470                   lea      r12, [rsp + 0x70]
00000000077c0577: 488d2d8eee76f9               lea      rbp, [rip - 0x6891172] ; 'ZYXWVUTSRQPONMLKJIHGFEDCBA9876543210123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'
00000000077c057e: 48898c24a0000000             mov      qword ptr [rsp + 0xa0], rcx
00000000077c0586: eb16                         jmp      0x77c059e
00000000077c0588: 0f1f840000000000             nop      dword ptr [rax + rax]
00000000077c0590: 4584ed                       test     r13b, r13b
00000000077c0593: 4c8d642470                   lea      r12, [rsp + 0x70]
00000000077c0598: 0f846b060000                 je       0x77c0c09
00000000077c059e: 0f2805fb9059f9               movaps   xmm0, xmmword ptr [rip - 0x6a66f05]
00000000077c05a5: 0f29842490000000             movaps   xmmword ptr [rsp + 0x90], xmm0
00000000077c05ad: 0f29842480000000             movaps   xmmword ptr [rsp + 0x80], xmm0
00000000077c05b5: 0f29442470                   movaps   xmmword ptr [rsp + 0x70], xmm0
00000000077c05ba: 4c89e7                       mov      rdi, r12
00000000077c05bd: 31f6                         xor      esi, esi
00000000077c05bf: 31d2                         xor      edx, edx
00000000077c05c1: e87aa90200                   call     0x77eaf40
00000000077c05c6: c744247092ffffff             mov      dword ptr [rsp + 0x70], 0xffffff92
00000000077c05ce: 837c247400                   cmp      dword ptr [rsp + 0x74], 0
00000000077c05d3: 7508                         jne      0x77c05dd
00000000077c05d5: c7442474aafbffff             mov      dword ptr [rsp + 0x74], 0xfffffbaa
00000000077c05dd: 0f2805bc9059f9               movaps   xmm0, xmmword ptr [rip - 0x6a66f44]
00000000077c05e4: 0f114320                     movups   xmmword ptr [rbx + 0x20], xmm0
00000000077c05e8: 0f114310                     movups   xmmword ptr [rbx + 0x10], xmm0
00000000077c05ec: 0f1103                       movups   xmmword ptr [rbx], xmm0
00000000077c05ef: 458b4e04                     mov      r9d, dword ptr [r14 + 4]
00000000077c05f3: 4883ec08                     sub      rsp, 8
00000000077c05f7: 488dbc24f8010000             lea      rdi, [rsp + 0x1f8]
00000000077c05ff: 488d35226373f9               lea      rsi, [rip - 0x68c9cde] ; 'CoCgiSendRequest'
00000000077c0606: 488d15f3f684f9               lea      rdx, [rip - 0x67b090d] ; 'mm_cgi.h'
00000000077c060d: b93e010000                   mov      ecx, 0x13e
00000000077c0612: 4531c0                       xor      r8d, r8d
00000000077c0615: 4154                         push     r12
00000000077c0617: e8f4a90200                   call     0x77eb010
00000000077c061c: 4883c410                     add      rsp, 0x10
00000000077c0620: 4c8da42450010000             lea      r12, [rsp + 0x150]
00000000077c0628: 4c89e7                       mov      rdi, r12
00000000077c062b: 488bb424a8000000             mov      rsi, qword ptr [rsp + 0xa8]
00000000077c0633: e8c8495000                   call     0x7cc5000
00000000077c0638: 41f60701                     test     byte ptr [r15], 1
00000000077c063c: 7522                         jne      0x77c0660
00000000077c063e: 498b4710                     mov      rax, qword ptr [r15 + 0x10]
00000000077c0642: 488d8c24b0010000             lea      rcx, [rsp + 0x1b0]
00000000077c064a: 48894110                     mov      qword ptr [rcx + 0x10], rax
00000000077c064e: 410f1007                     movups   xmm0, xmmword ptr [r15]
00000000077c0652: 0f1101                       movups   xmmword ptr [rcx], xmm0
00000000077c0655: eb1e                         jmp      0x77c0675
00000000077c0657: 660f1f840000000000           nop      word ptr [rax + rax]
00000000077c0660: 498b5708                     mov      rdx, qword ptr [r15 + 8]
00000000077c0664: 498b7710                     mov      rsi, qword ptr [r15 + 0x10]
00000000077c0668: 488dbc24b0010000             lea      rdi, [rsp + 0x1b0]
00000000077c0670: e82bc0d4fc                   call     0x450c6a0
00000000077c0675: 498b06                       mov      rax, qword ptr [r14]
00000000077c0678: 48898424c8010000             mov      qword ptr [rsp + 0x1c8], rax
00000000077c0680: 41f6460801                   test     byte ptr [r14 + 8], 1
00000000077c0685: 7529                         jne      0x77c06b0
00000000077c0687: 488b542410                   mov      rdx, qword ptr [rsp + 0x10]
00000000077c068c: 488b4210                     mov      rax, qword ptr [rdx + 0x10]
00000000077c0690: 488d8c24d0010000             lea      rcx, [rsp + 0x1d0]
00000000077c0698: 48894110                     mov      qword ptr [rcx + 0x10], rax
00000000077c069c: 0f1002                       movups   xmm0, xmmword ptr [rdx]
00000000077c069f: 0f1101                       movups   xmmword ptr [rcx], xmm0
00000000077c06a2: eb21                         jmp      0x77c06c5
00000000077c06a4: 6666662e0f1f840000000000     nop      word ptr cs:[rax + rax]
00000000077c06b0: 498b5610                     mov      rdx, qword ptr [r14 + 0x10]
00000000077c06b4: 498b7618                     mov      rsi, qword ptr [r14 + 0x18]
00000000077c06b8: 488dbc24d0010000             lea      rdi, [rsp + 0x1d0]
00000000077c06c0: e8dbbfd4fc                   call     0x450c6a0
00000000077c06c5: 498b4620                     mov      rax, qword ptr [r14 + 0x20]
00000000077c06c9: 48898424e8010000             mov      qword ptr [rsp + 0x1e8], rax
00000000077c06d1: 4889df                       mov      rdi, rbx
00000000077c06d4: 488db424f0010000             lea      rsi, [rsp + 0x1f0]
00000000077c06dc: 4c89e2                       mov      rdx, r12
00000000077c06df: e84caa0200                   call     0x77eb130
00000000077c06e4: f68424d001000001             test     byte ptr [rsp + 0x1d0], 1
00000000077c06ec: 740d                         je       0x77c06fb
00000000077c06ee: 488bbc24e0010000             mov      rdi, qword ptr [rsp + 0x1e0]
00000000077c06f6: e8459ad4fc                   call     0x450a140
00000000077c06fb: f68424b001000001             test     byte ptr [rsp + 0x1b0], 1
00000000077c0703: 740d                         je       0x77c0712
00000000077c0705: 488bbc24c0010000             mov      rdi, qword ptr [rsp + 0x1c0]
00000000077c070d: e82e9ad4fc                   call     0x450a140
00000000077c0712: 4c89e7                       mov      rdi, r12
00000000077c0715: e8164d5000                   call     0x7cc5430
00000000077c071a: 488bbc2438020000             mov      rdi, qword ptr [rsp + 0x238]
00000000077c0722: 4885ff                       test     rdi, rdi
00000000077c0725: 7412                         je       0x77c0739
00000000077c0727: 488b07                       mov      rax, qword ptr [rdi]
00000000077c072a: ff5008                       call     qword ptr [rax + 8]
00000000077c072d: 48c784243802000000000000     mov      qword ptr [rsp + 0x238], 0
00000000077c0739: f68424f801000001             test     byte ptr [rsp + 0x1f8], 1
00000000077c0741: 740d                         je       0x77c0750
00000000077c0743: 488bbc2408020000             mov      rdi, qword ptr [rsp + 0x208]
00000000077c074b: e8f099d4fc                   call     0x450a140
00000000077c0750: 48b8aaaaaaaaaaaaaaaa         movabs   rax, 0xaaaaaaaaaaaaaaaa
00000000077c075a: 4889442460                   mov      qword ptr [rsp + 0x60], rax
00000000077c075f: 0f28059a1759f9               movaps   xmm0, xmmword ptr [rip - 0x6a6e866]
00000000077c0766: 0f29442430                   movaps   xmmword ptr [rsp + 0x30], xmm0
00000000077c076b: 48c7442440f6010000           mov      qword ptr [rsp + 0x40], 0x1f6
00000000077c0774: bf28000000                   mov      edi, 0x28
00000000077c0779: e822d6ea02                   call     0xa66dda0
00000000077c077e: 4889442458                   mov      qword ptr [rsp + 0x58], rax
00000000077c0783: 48c744244829000000           mov      qword ptr [rsp + 0x48], 0x29
00000000077c078c: 48c744245024000000           mov      qword ptr [rsp + 0x50], 0x24
00000000077c0795: 0f1005ad8a67f9               movups   xmm0, xmmword ptr [rip - 0x6987553] ; 'g-bin/getloginqrcode'
00000000077c079c: 0f114010                     movups   xmmword ptr [rax + 0x10], xmm0
00000000077c07a0: 0f1005928a67f9               movups   xmm0, xmmword ptr [rip - 0x698756e] ; '/cgi-bin/micromsg-bin/getloginqrcode'
00000000077c07a7: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077c07aa: c74020636f6465               mov      dword ptr [rax + 0x20], 0x65646f63
00000000077c07b1: c6402400                     mov      byte ptr [rax + 0x24], 0
00000000077c07b5: c644246001                   mov      byte ptr [rsp + 0x60], 1
00000000077c07ba: 410fb64608                   movzx    eax, byte ptr [r14 + 8]
00000000077c07bf: a801                         test     al, 1
00000000077c07c1: 740d                         je       0x77c07d0
00000000077c07c3: 498b4610                     mov      rax, qword ptr [r14 + 0x10]
00000000077c07c7: 4885c0                       test     rax, rax
00000000077c07ca: 750b                         jne      0x77c07d7
00000000077c07cc: eb18                         jmp      0x77c07e6
00000000077c07ce: 6690                         nop
00000000077c07d0: d1e8                         shr      eax, 1
00000000077c07d2: 4885c0                       test     rax, rax
00000000077c07d5: 740f                         je       0x77c07e6
00000000077c07d7: 488d7c2448                   lea      rdi, [rsp + 0x48]
00000000077c07dc: 488b742410                   mov      rsi, qword ptr [rsp + 0x10]
00000000077c07e1: e8cad5d4fc                   call     0x450ddb0
00000000077c07e6: 458b2e                       mov      r13d, dword ptr [r14]
00000000077c07e9: 4589ec                       mov      r12d, r13d
00000000077c07ec: 8b7c240c                     mov      edi, dword ptr [rsp + 0xc]
00000000077c07f0: 4129fc                       sub      r12d, edi
00000000077c07f3: 8b03                         mov      eax, dword ptr [rbx]
00000000077c07f5: 8b5304                       mov      edx, dword ptr [rbx + 4]
00000000077c07f8: 31f6                         xor      esi, esi
00000000077c07fa: 89c1                         mov      ecx, eax
00000000077c07fc: 09d1                         or       ecx, edx
00000000077c07fe: 0f840c030000                 je       0x77c0b10
00000000077c0804: 488b4b20                     mov      rcx, qword ptr [rbx + 0x20]
00000000077c0808: 488b4908                     mov      rcx, qword ptr [rcx + 8]
00000000077c080c: 4885c9                       test     rcx, rcx
00000000077c080f: 750e                         jne      0x77c081f
00000000077c0811: 488d0d80b45303               lea      rcx, [rip + 0x353b480]
00000000077c0818: 488b09                       mov      rcx, qword ptr [rcx]
00000000077c081b: 488b4908                     mov      rcx, qword ptr [rcx + 8]
00000000077c081f: 8b4910                       mov      ecx, dword ptr [rcx + 0x10]
00000000077c0822: 488d7c2448                   lea      rdi, [rsp + 0x48]
00000000077c0827: 89c6                         mov      esi, eax
00000000077c0829: 4589e0                       mov      r8d, r12d
00000000077c082c: e8df9d2200                   call     0x79ea610
00000000077c0831: 8b33                         mov      esi, dword ptr [rbx]
00000000077c0833: 85f6                         test     esi, esi
00000000077c0835: 0f95c0                       setne    al
00000000077c0838: 83fe92                       cmp      esi, -0x6e
00000000077c083b: 0f95c1                       setne    cl
00000000077c083e: 84c8                         test     al, cl
00000000077c0840: 0f85bc020000                 jne      0x77c0b02
00000000077c0846: 8b7c240c                     mov      edi, dword ptr [rsp + 0xc]
00000000077c084a: 85ff                         test     edi, edi
00000000077c084c: 0f84be020000                 je       0x77c0b10
00000000077c0852: bfe8030000                   mov      edi, 0x3e8
00000000077c0857: 4489e1                       mov      ecx, r12d
00000000077c085a: d3e7                         shl      edi, cl
00000000077c085c: e87f7e3202                   call     0x9ae86e0
00000000077c0861: bf02000000                   mov      edi, 2
00000000077c0866: e825649501                   call     0x9116c90
00000000077c086b: 448b7c240c                   mov      r15d, dword ptr [rsp + 0xc]
00000000077c0870: 41ffcf                       dec      r15d
00000000077c0873: 41b501                       mov      r13b, 1
00000000077c0876: 85c0                         test     eax, eax
00000000077c0878: 44897c240c                   mov      dword ptr [rsp + 0xc], r15d
00000000077c087d: 0f8473020000                 je       0x77c0af6
00000000077c0883: 488d7c2418                   lea      rdi, [rsp + 0x18]
00000000077c0888: e84321bfff                   call     0x73b29d0
00000000077c088d: 4c8da42450010000             lea      r12, [rsp + 0x150]
00000000077c0895: f644241801                   test     byte ptr [rsp + 0x18], 1
00000000077c089a: 488d542419                   lea      rdx, [rsp + 0x19]
00000000077c089f: 7405                         je       0x77c08a6
00000000077c08a1: 488b542428                   mov      rdx, qword ptr [rsp + 0x28]
00000000077c08a6: 4c89e7                       mov      rdi, r12
00000000077c08a9: be02000000                   mov      esi, 2
00000000077c08ae: 488d0d25226df9               lea      rcx, [rip - 0x692dddb]
00000000077c08b5: 4c8d053a1f67f9               lea      r8, [rip - 0x698e0c6]
00000000077c08bc: 41b950010000                 mov      r9d, 0x150
00000000077c08c2: 6a00                         push     0
00000000077c08c4: 6a00                         push     0
00000000077c08c6: e8d50c9501                   call     0x91115a0
00000000077c08cb: 4883c410                     add      rsp, 0x10
00000000077c08cf: f644244801                   test     byte ptr [rsp + 0x48], 1
00000000077c08d4: 488d442449                   lea      rax, [rsp + 0x49]
00000000077c08d9: 7405                         je       0x77c08e0
00000000077c08db: 488b442458                   mov      rax, qword ptr [rsp + 0x58]
00000000077c08e0: 4889842478020000             mov      qword ptr [rsp + 0x278], rax
00000000077c08e8: c684248002000000             mov      byte ptr [rsp + 0x280], 0
00000000077c08f0: 8b0b                         mov      ecx, dword ptr [rbx]
00000000077c08f2: 48c784240001000000000000     mov      qword ptr [rsp + 0x100], 0
00000000077c08fe: b808000000                   mov      eax, 8
00000000077c0903: 89ca                         mov      edx, ecx
00000000077c0905: 66662e0f1f840000000000       nop      word ptr cs:[rax + rax]
00000000077c0910: 4863f2                       movsxd   rsi, edx
00000000077c0913: 4869d667666666               imul     rdx, rsi, 0x66666667
00000000077c091a: 4889d7                       mov      rdi, rdx
00000000077c091d: 48c1ef3f                     shr      rdi, 0x3f
00000000077c0921: 48c1fa22                     sar      rdx, 0x22
00000000077c0925: 01fa                         add      edx, edi
00000000077c0927: 8d3c12                       lea      edi, [rdx + rdx]
00000000077c092a: 8d3cbf                       lea      edi, [rdi + rdi*4]
00000000077c092d: 4189f0                       mov      r8d, esi
00000000077c0930: 4129f8                       sub      r8d, edi
00000000077c0933: 4963f8                       movsxd   rdi, r8d
00000000077c0936: 0fb67c2f23                   movzx    edi, byte ptr [rdi + rbp + 0x23]
00000000077c093b: 4088bc0400010000             mov      byte ptr [rsp + rax + 0x100], dil
00000000077c0943: 48ffc0                       inc      rax
00000000077c0946: 83c609                       add      esi, 9
00000000077c0949: 83fe12                       cmp      esi, 0x12
00000000077c094c: 77c2                         ja       0x77c0910
00000000077c094e: 85c9                         test     ecx, ecx
00000000077c0950: 790b                         jns      0x77c095d
00000000077c0952: c68404000100002d             mov      byte ptr [rsp + rax + 0x100], 0x2d
00000000077c095a: 48ffc0                       inc      rax
00000000077c095d: c684040001000000             mov      byte ptr [rsp + rax + 0x100], 0
00000000077c0965: 4883f80a                     cmp      rax, 0xa
00000000077c0969: 7c31                         jl       0x77c099c
00000000077c096b: 4801e0                       add      rax, rsp
00000000077c096e: 480500010000                 add      rax, 0x100
00000000077c0974: 48ffc8                       dec      rax
00000000077c0977: 488d8c2409010000             lea      rcx, [rsp + 0x109]
00000000077c097f: 90                           nop
00000000077c0980: 0fb610                       movzx    edx, byte ptr [rax]
00000000077c0983: 0fb671ff                     movzx    esi, byte ptr [rcx - 1]
00000000077c0987: 408830                       mov      byte ptr [rax], sil
00000000077c098a: 8851ff                       mov      byte ptr [rcx - 1], dl
00000000077c098d: 48ffc8                       dec      rax
00000000077c0990: 488d5101                     lea      rdx, [rcx + 1]
00000000077c0994: 4839c1                       cmp      rcx, rax
00000000077c0997: 4889d1                       mov      rcx, rdx
00000000077c099a: 72e4                         jb       0x77c0980
00000000077c099c: 488d842408010000             lea      rax, [rsp + 0x108]
00000000077c09a4: 4889842400010000             mov      qword ptr [rsp + 0x100], rax
00000000077c09ac: 8b4b04                       mov      ecx, dword ptr [rbx + 4]
00000000077c09af: 48c78424b000000000000000     mov      qword ptr [rsp + 0xb0], 0
00000000077c09bb: b808000000                   mov      eax, 8
00000000077c09c0: 89ca                         mov      edx, ecx
00000000077c09c2: 66666666662e0f1f840000000000 nop      word ptr cs:[rax + rax]
00000000077c09d0: 4863f2                       movsxd   rsi, edx
00000000077c09d3: 4869d667666666               imul     rdx, rsi, 0x66666667
00000000077c09da: 4889d7                       mov      rdi, rdx
00000000077c09dd: 48c1ef3f                     shr      rdi, 0x3f
00000000077c09e1: 48c1fa22                     sar      rdx, 0x22
00000000077c09e5: 01fa                         add      edx, edi
00000000077c09e7: 8d3c12                       lea      edi, [rdx + rdx]
00000000077c09ea: 8d3cbf                       lea      edi, [rdi + rdi*4]
00000000077c09ed: 4189f0                       mov      r8d, esi
00000000077c09f0: 4129f8                       sub      r8d, edi
00000000077c09f3: 4963f8                       movsxd   rdi, r8d
00000000077c09f6: 0fb67c2f23                   movzx    edi, byte ptr [rdi + rbp + 0x23]
00000000077c09fb: 4088bc04b0000000             mov      byte ptr [rsp + rax + 0xb0], dil
00000000077c0a03: 48ffc0                       inc      rax
00000000077c0a06: 83c609                       add      esi, 9
00000000077c0a09: 83fe12                       cmp      esi, 0x12
00000000077c0a0c: 77c2                         ja       0x77c09d0
00000000077c0a0e: 85c9                         test     ecx, ecx
00000000077c0a10: 790b                         jns      0x77c0a1d
00000000077c0a12: c68404b00000002d             mov      byte ptr [rsp + rax + 0xb0], 0x2d
00000000077c0a1a: 48ffc0                       inc      rax
00000000077c0a1d: c68404b000000000             mov      byte ptr [rsp + rax + 0xb0], 0
00000000077c0a25: 4883f80a                     cmp      rax, 0xa
00000000077c0a29: 7c31                         jl       0x77c0a5c
00000000077c0a2b: 4801e0                       add      rax, rsp
00000000077c0a2e: 4805b0000000                 add      rax, 0xb0
00000000077c0a34: 48ffc8                       dec      rax
00000000077c0a37: 488d8c24b9000000             lea      rcx, [rsp + 0xb9]
00000000077c0a3f: 90                           nop
00000000077c0a40: 0fb610                       movzx    edx, byte ptr [rax]
00000000077c0a43: 0fb671ff                     movzx    esi, byte ptr [rcx - 1]
00000000077c0a47: 408830                       mov      byte ptr [rax], sil
00000000077c0a4a: 8851ff                       mov      byte ptr [rcx - 1], dl
00000000077c0a4d: 48ffc8                       dec      rax
00000000077c0a50: 488d5101                     lea      rdx, [rcx + 1]
00000000077c0a54: 4839c1                       cmp      rcx, rax
00000000077c0a57: 4889d1                       mov      rcx, rdx
00000000077c0a5a: 72e4                         jb       0x77c0a40
00000000077c0a5c: 488d8424b8000000             lea      rax, [rsp + 0xb8]
00000000077c0a64: 48898424b0000000             mov      qword ptr [rsp + 0xb0], rax
00000000077c0a6c: 488d842478020000             lea      rax, [rsp + 0x278]
00000000077c0a74: 48898424f0010000             mov      qword ptr [rsp + 0x1f0], rax
00000000077c0a7c: 488d842400010000             lea      rax, [rsp + 0x100]
00000000077c0a84: 48898424f8010000             mov      qword ptr [rsp + 0x1f8], rax
00000000077c0a8c: 488d8424b0000000             lea      rax, [rsp + 0xb0]
00000000077c0a94: 4889842400020000             mov      qword ptr [rsp + 0x200], rax
00000000077c0a9c: 488d842408020000             lea      rax, [rsp + 0x208]
00000000077c0aa4: 0f57c0                       xorps    xmm0, xmm0
00000000077c0aa7: 0f114050                     movups   xmmword ptr [rax + 0x50], xmm0
00000000077c0aab: 0f114040                     movups   xmmword ptr [rax + 0x40], xmm0
00000000077c0aaf: 0f114030                     movups   xmmword ptr [rax + 0x30], xmm0
00000000077c0ab3: 0f114020                     movups   xmmword ptr [rax + 0x20], xmm0
00000000077c0ab7: 0f114010                     movups   xmmword ptr [rax + 0x10], xmm0
00000000077c0abb: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077c0abe: 48c7406000000000             mov      qword ptr [rax + 0x60], 0
00000000077c0ac6: 4c89e7                       mov      rdi, r12
00000000077c0ac9: 488d357af17ef9               lea      rsi, [rip - 0x6810e86]
00000000077c0ad0: 488d9424f0010000             lea      rdx, [rsp + 0x1f0]
00000000077c0ad8: e8130e9501                   call     0x91118f0
00000000077c0add: 4c89e7                       mov      rdi, r12
00000000077c0ae0: e84b0b9501                   call     0x9111630
00000000077c0ae5: f644241801                   test     byte ptr [rsp + 0x18], 1
00000000077c0aea: 740a                         je       0x77c0af6
00000000077c0aec: 488b7c2428                   mov      rdi, qword ptr [rsp + 0x28]
00000000077c0af1: e84a96d4fc                   call     0x450a140
00000000077c0af6: 4531ff                       xor      r15d, r15d
00000000077c0af9: f644244801                   test     byte ptr [rsp + 0x48], 1
00000000077c0afe: 7550                         jne      0x77c0b50
00000000077c0b00: eb58                         jmp      0x77c0b5a
00000000077c0b02: 8b7c240c                     mov      edi, dword ptr [rsp + 0xc]
00000000077c0b06: 662e0f1f840000000000         nop      word ptr cs:[rax + rax]
00000000077c0b10: 41b701                       mov      r15b, 1
00000000077c0b13: 4139fd                       cmp      r13d, edi
00000000077c0b16: 742e                         je       0x77c0b46
00000000077c0b18: 488b4320                     mov      rax, qword ptr [rbx + 0x20]
00000000077c0b1c: 488b4008                     mov      rax, qword ptr [rax + 8]
00000000077c0b20: 4885c0                       test     rax, rax
00000000077c0b23: 750e                         jne      0x77c0b33
00000000077c0b25: 488d056cb15303               lea      rax, [rip + 0x353b16c]
00000000077c0b2c: 488b00                       mov      rax, qword ptr [rax]
00000000077c0b2f: 488b4008                     mov      rax, qword ptr [rax + 8]
00000000077c0b33: 8b5304                       mov      edx, dword ptr [rbx + 4]
00000000077c0b36: 8b4810                       mov      ecx, dword ptr [rax + 0x10]
00000000077c0b39: 488d7c2448                   lea      rdi, [rsp + 0x48]
00000000077c0b3e: 4589e0                       mov      r8d, r12d
00000000077c0b41: e8ca9a2200                   call     0x79ea610
00000000077c0b46: 4531ed                       xor      r13d, r13d
00000000077c0b49: f644244801                   test     byte ptr [rsp + 0x48], 1
00000000077c0b4e: 740a                         je       0x77c0b5a
00000000077c0b50: 488b7c2458                   mov      rdi, qword ptr [rsp + 0x58]
00000000077c0b55: e8e695d4fc                   call     0x450a140
00000000077c0b5a: 4584ff                       test     r15b, r15b
00000000077c0b5d: 4c8bbc24a0000000             mov      r15, qword ptr [rsp + 0xa0]
00000000077c0b65: 752b                         jne      0x77c0b92
00000000077c0b67: 4c8b6328                     mov      r12, qword ptr [rbx + 0x28]
00000000077c0b6b: 4d85e4                       test     r12, r12
00000000077c0b6e: 7413                         je       0x77c0b83
00000000077c0b70: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000077c0b77: f0490fc1442408               lock xadd qword ptr [r12 + 8], rax
00000000077c0b7e: 4885c0                       test     rax, rax
00000000077c0b81: 746c                         je       0x77c0bef
00000000077c0b83: f6430801                     test     byte ptr [rbx + 8], 1
00000000077c0b87: 7409                         je       0x77c0b92
00000000077c0b89: 488b7b18                     mov      rdi, qword ptr [rbx + 0x18]
00000000077c0b8d: e8ae95d4fc                   call     0x450a140
00000000077c0b92: 4c8ba42498000000             mov      r12, qword ptr [rsp + 0x98]
00000000077c0b9a: 4d85e4                       test     r12, r12
00000000077c0b9d: 7413                         je       0x77c0bb2
00000000077c0b9f: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000077c0ba6: f0490fc1442408               lock xadd qword ptr [r12 + 8], rax
00000000077c0bad: 4885c0                       test     rax, rax
00000000077c0bb0: 741e                         je       0x77c0bd0
00000000077c0bb2: f644247801                   test     byte ptr [rsp + 0x78], 1
00000000077c0bb7: 0f84d3f9ffff                 je       0x77c0590
00000000077c0bbd: 488bbc2488000000             mov      rdi, qword ptr [rsp + 0x88]
00000000077c0bc5: e87695d4fc                   call     0x450a140
00000000077c0bca: e9c1f9ffff                   jmp      0x77c0590
00000000077c0bcf: 90                           nop
00000000077c0bd0: 498b0424                     mov      rax, qword ptr [r12]
00000000077c0bd4: 4c89e7                       mov      rdi, r12
00000000077c0bd7: ff5010                       call     qword ptr [rax + 0x10]
00000000077c0bda: 4c89e7                       mov      rdi, r12
00000000077c0bdd: e8ee65d7fc                   call     0x45371d0
00000000077c0be2: f644247801                   test     byte ptr [rsp + 0x78], 1
00000000077c0be7: 0f84a3f9ffff                 je       0x77c0590
00000000077c0bed: ebce                         jmp      0x77c0bbd
00000000077c0bef: 498b0424                     mov      rax, qword ptr [r12]
00000000077c0bf3: 4c89e7                       mov      rdi, r12
00000000077c0bf6: ff5010                       call     qword ptr [rax + 0x10]
00000000077c0bf9: 4c89e7                       mov      rdi, r12
00000000077c0bfc: e8cf65d7fc                   call     0x45371d0
00000000077c0c01: f6430801                     test     byte ptr [rbx + 8], 1
00000000077c0c05: 7582                         jne      0x77c0b89
00000000077c0c07: eb89                         jmp      0x77c0b92
00000000077c0c09: 4889d8                       mov      rax, rbx
00000000077c0c0c: 4881c4c8020000               add      rsp, 0x2c8
00000000077c0c13: 5b                           pop      rbx
00000000077c0c14: 415c                         pop      r12
00000000077c0c16: 415d                         pop      r13
00000000077c0c18: 415e                         pop      r14
00000000077c0c1a: 415f                         pop      r15
00000000077c0c1c: 5d                           pop      rbp
00000000077c0c1d: c3                           ret
00000000077c0c1e: 4989c6                       mov      r14, rax
00000000077c0c21: 488dbc2450010000             lea      rdi, [rsp + 0x150]
00000000077c0c29: e8020a9501                   call     0x9111630
00000000077c0c2e: eb03                         jmp      0x77c0c33
00000000077c0c30: 4989c6                       mov      r14, rax
00000000077c0c33: f644241801                   test     byte ptr [rsp + 0x18], 1
00000000077c0c38: 746f                         je       0x77c0ca9
00000000077c0c3a: 488b7c2428                   mov      rdi, qword ptr [rsp + 0x28]
00000000077c0c3f: e8fc94d4fc                   call     0x450a140
00000000077c0c44: eb63                         jmp      0x77c0ca9
00000000077c0c46: eb5e                         jmp      0x77c0ca6
00000000077c0c48: 4989c6                       mov      r14, rax
00000000077c0c4b: f68424b001000001             test     byte ptr [rsp + 0x1b0], 1
00000000077c0c53: 7412                         je       0x77c0c67
00000000077c0c55: 488bbc24c0010000             mov      rdi, qword ptr [rsp + 0x1c0]
00000000077c0c5d: e8de94d4fc                   call     0x450a140
00000000077c0c62: eb03                         jmp      0x77c0c67
00000000077c0c64: 4989c6                       mov      r14, rax
00000000077c0c67: 488dbc2450010000             lea      rdi, [rsp + 0x150]
00000000077c0c6f: e8bc475000                   call     0x7cc5430
00000000077c0c74: eb1c                         jmp      0x77c0c92
00000000077c0c76: eb2e                         jmp      0x77c0ca6
00000000077c0c78: 4989c6                       mov      r14, rax
00000000077c0c7b: eb45                         jmp      0x77c0cc2
00000000077c0c7d: 4989c6                       mov      r14, rax
00000000077c0c80: eb10                         jmp      0x77c0c92
00000000077c0c82: 4989c6                       mov      r14, rax
00000000077c0c85: 488dbc2450010000             lea      rdi, [rsp + 0x150]
00000000077c0c8d: e8deaa0200                   call     0x77eb770
00000000077c0c92: 488dbc24f0010000             lea      rdi, [rsp + 0x1f0]
00000000077c0c9a: e8118a88fe                   call     0x60496b0
00000000077c0c9f: eb21                         jmp      0x77c0cc2
00000000077c0ca1: 4989c6                       mov      r14, rax
00000000077c0ca4: eb14                         jmp      0x77c0cba
00000000077c0ca6: 4989c6                       mov      r14, rax
00000000077c0ca9: f644244801                   test     byte ptr [rsp + 0x48], 1
00000000077c0cae: 740a                         je       0x77c0cba
00000000077c0cb0: 488b7c2458                   mov      rdi, qword ptr [rsp + 0x58]
00000000077c0cb5: e88694d4fc                   call     0x450a140
00000000077c0cba: 4889df                       mov      rdi, rbx
00000000077c0cbd: e81e000000                   call     0x77c0ce0
00000000077c0cc2: 488d7c2470                   lea      rdi, [rsp + 0x70]
00000000077c0cc7: e814000000                   call     0x77c0ce0
00000000077c0ccc: 4c89f7                       mov      rdi, r14
00000000077c0ccf: e84cc1d2fc                   call     0x44ece20
