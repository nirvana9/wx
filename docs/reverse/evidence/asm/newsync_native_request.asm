00000000061e0460: 55                           push     rbp
00000000061e0461: 4157                         push     r15
00000000061e0463: 4156                         push     r14
00000000061e0465: 4155                         push     r13
00000000061e0467: 4154                         push     r12
00000000061e0469: 53                           push     rbx
00000000061e046a: 4881ecb8020000               sub      rsp, 0x2b8
00000000061e0471: 4d89c6                       mov      r14, r8
00000000061e0474: 4989cf                       mov      r15, rcx
00000000061e0477: 48899424a8000000             mov      qword ptr [rsp + 0xa8], rdx
00000000061e047f: 4889fb                       mov      rbx, rdi
00000000061e0482: 418b00                       mov      eax, dword ptr [r8]
00000000061e0485: 8944240c                     mov      dword ptr [rsp + 0xc], eax
00000000061e0489: 498d4008                     lea      rax, [r8 + 8]
00000000061e048d: 4889442410                   mov      qword ptr [rsp + 0x10], rax
00000000061e0492: 4c8d642470                   lea      r12, [rsp + 0x70]
00000000061e0497: 4c8dac24b0000000             lea      r13, [rsp + 0xb0]
00000000061e049f: 488d2d66efd4fa               lea      rbp, [rip - 0x52b109a] ; 'ZYXWVUTSRQPONMLKJIHGFEDCBA9876543210123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'
00000000061e04a6: 48898c24a0000000             mov      qword ptr [rsp + 0xa0], rcx
00000000061e04ae: eb16                         jmp      0x61e04c6
00000000061e04b0: 4584ed                       test     r13b, r13b
00000000061e04b3: 4c8d642470                   lea      r12, [rsp + 0x70]
00000000061e04b8: 4c8dac24b0000000             lea      r13, [rsp + 0xb0]
00000000061e04c0: 0f8446060000                 je       0x61e0b0c
00000000061e04c6: 0f2805d391b7fa               movaps   xmm0, xmmword ptr [rip - 0x5486e2d]
00000000061e04cd: 0f29842490000000             movaps   xmmword ptr [rsp + 0x90], xmm0
00000000061e04d5: 0f29842480000000             movaps   xmmword ptr [rsp + 0x80], xmm0
00000000061e04dd: 0f29442470                   movaps   xmmword ptr [rsp + 0x70], xmm0
00000000061e04e2: 4c89e7                       mov      rdi, r12
00000000061e04e5: 31f6                         xor      esi, esi
00000000061e04e7: 31d2                         xor      edx, edx
00000000061e04e9: e8a29cffff                   call     0x61da190
00000000061e04ee: c744247092ffffff             mov      dword ptr [rsp + 0x70], 0xffffff92
00000000061e04f6: 837c247400                   cmp      dword ptr [rsp + 0x74], 0
00000000061e04fb: 7508                         jne      0x61e0505
00000000061e04fd: c7442474aafbffff             mov      dword ptr [rsp + 0x74], 0xfffffbaa
00000000061e0505: 0f28059491b7fa               movaps   xmm0, xmmword ptr [rip - 0x5486e6c]
00000000061e050c: 0f114320                     movups   xmmword ptr [rbx + 0x20], xmm0
00000000061e0510: 0f114310                     movups   xmmword ptr [rbx + 0x10], xmm0
00000000061e0514: 0f1103                       movups   xmmword ptr [rbx], xmm0
00000000061e0517: 458b4e04                     mov      r9d, dword ptr [r14 + 4]
00000000061e051b: 4883ec08                     sub      rsp, 8
00000000061e051f: 488dbc24e8010000             lea      rdi, [rsp + 0x1e8]
00000000061e0527: 488d35fa63d1fa               lea      rsi, [rip - 0x52e9c06] ; 'CoCgiSendRequest'
00000000061e052e: 488d15cbf7e2fa               lea      rdx, [rip - 0x51d0835] ; 'mm_cgi.h'
00000000061e0535: b93e010000                   mov      ecx, 0x13e
00000000061e053a: 4531c0                       xor      r8d, r8d
00000000061e053d: 4154                         push     r12
00000000061e053f: e81c9dffff                   call     0x61da260
00000000061e0544: 4883c410                     add      rsp, 0x10
00000000061e0548: 4c89ef                       mov      rdi, r13
00000000061e054b: 488bb424a8000000             mov      rsi, qword ptr [rsp + 0xa8]
00000000061e0553: e8b8bdc001                   call     0x7dec310
00000000061e0558: 41f60701                     test     byte ptr [r15], 1
00000000061e055c: 7522                         jne      0x61e0580
00000000061e055e: 498b4710                     mov      rax, qword ptr [r15 + 0x10]
00000000061e0562: 488d8c2400010000             lea      rcx, [rsp + 0x100]
00000000061e056a: 48894110                     mov      qword ptr [rcx + 0x10], rax
00000000061e056e: 410f1007                     movups   xmm0, xmmword ptr [r15]
00000000061e0572: 0f1101                       movups   xmmword ptr [rcx], xmm0
00000000061e0575: eb1e                         jmp      0x61e0595
00000000061e0577: 660f1f840000000000           nop      word ptr [rax + rax]
00000000061e0580: 498b5708                     mov      rdx, qword ptr [r15 + 8]
00000000061e0584: 498b7710                     mov      rsi, qword ptr [r15 + 0x10]
00000000061e0588: 488dbc2400010000             lea      rdi, [rsp + 0x100]
00000000061e0590: e80bc132fe                   call     0x450c6a0
00000000061e0595: 498b06                       mov      rax, qword ptr [r14]
00000000061e0598: 4889842418010000             mov      qword ptr [rsp + 0x118], rax
00000000061e05a0: 41f6460801                   test     byte ptr [r14 + 8], 1
00000000061e05a5: 7529                         jne      0x61e05d0
00000000061e05a7: 488b542410                   mov      rdx, qword ptr [rsp + 0x10]
00000000061e05ac: 488b4210                     mov      rax, qword ptr [rdx + 0x10]
00000000061e05b0: 488d8c2420010000             lea      rcx, [rsp + 0x120]
00000000061e05b8: 48894110                     mov      qword ptr [rcx + 0x10], rax
00000000061e05bc: 0f1002                       movups   xmm0, xmmword ptr [rdx]
00000000061e05bf: 0f1101                       movups   xmmword ptr [rcx], xmm0
00000000061e05c2: eb21                         jmp      0x61e05e5
00000000061e05c4: 6666662e0f1f840000000000     nop      word ptr cs:[rax + rax]
00000000061e05d0: 498b5610                     mov      rdx, qword ptr [r14 + 0x10]
00000000061e05d4: 498b7618                     mov      rsi, qword ptr [r14 + 0x18]
00000000061e05d8: 488dbc2420010000             lea      rdi, [rsp + 0x120]
00000000061e05e0: e8bbc032fe                   call     0x450c6a0
00000000061e05e5: 498b4620                     mov      rax, qword ptr [r14 + 0x20]
00000000061e05e9: 4889842438010000             mov      qword ptr [rsp + 0x138], rax
00000000061e05f1: 4889df                       mov      rdi, rbx
00000000061e05f4: 488db424e0010000             lea      rsi, [rsp + 0x1e0]
00000000061e05fc: 4c89ea                       mov      rdx, r13
00000000061e05ff: e8dc050000                   call     0x61e0be0
00000000061e0604: f684242001000001             test     byte ptr [rsp + 0x120], 1
00000000061e060c: 740d                         je       0x61e061b
00000000061e060e: 488bbc2430010000             mov      rdi, qword ptr [rsp + 0x130]
00000000061e0616: e8259b32fe                   call     0x450a140
00000000061e061b: f684240001000001             test     byte ptr [rsp + 0x100], 1
00000000061e0623: 740d                         je       0x61e0632
00000000061e0625: 488bbc2410010000             mov      rdi, qword ptr [rsp + 0x110]
00000000061e062d: e80e9b32fe                   call     0x450a140
00000000061e0632: 4c89ef                       mov      rdi, r13
00000000061e0635: e8a6bfc001                   call     0x7dec5e0
00000000061e063a: 488bbc2428020000             mov      rdi, qword ptr [rsp + 0x228]
00000000061e0642: 4885ff                       test     rdi, rdi
00000000061e0645: 7412                         je       0x61e0659
00000000061e0647: 488b07                       mov      rax, qword ptr [rdi]
00000000061e064a: ff5008                       call     qword ptr [rax + 8]
00000000061e064d: 48c784242802000000000000     mov      qword ptr [rsp + 0x228], 0
00000000061e0659: f68424e801000001             test     byte ptr [rsp + 0x1e8], 1
00000000061e0661: 740d                         je       0x61e0670
00000000061e0663: 488bbc24f8010000             mov      rdi, qword ptr [rsp + 0x1f8]
00000000061e066b: e8d09a32fe                   call     0x450a140
00000000061e0670: 48b8aaaaaaaaaaaaaaaa         movabs   rax, 0xaaaaaaaaaaaaaaaa
00000000061e067a: 4889442460                   mov      qword ptr [rsp + 0x60], rax
00000000061e067f: 0f28050a11b7fa               movaps   xmm0, xmmword ptr [rip - 0x548eef6]
00000000061e0686: 0f29442430                   movaps   xmmword ptr [rsp + 0x30], xmm0
00000000061e068b: 48c74424408a000000           mov      qword ptr [rsp + 0x40], 0x8a
00000000061e0694: bf20000000                   mov      edi, 0x20
00000000061e0699: e802d74804                   call     0xa66dda0
00000000061e069e: 4889442458                   mov      qword ptr [rsp + 0x58], rax
00000000061e06a3: 48c744244821000000           mov      qword ptr [rsp + 0x48], 0x21
00000000061e06ac: 48c74424501d000000           mov      qword ptr [rsp + 0x50], 0x1d
00000000061e06b5: 0f1005e5cfd6fa               movups   xmm0, xmmword ptr [rip - 0x529301b] ; 'omsg-bin/newsync'
00000000061e06bc: 0f11400d                     movups   xmmword ptr [rax + 0xd], xmm0
00000000061e06c0: 0f1005cdcfd6fa               movups   xmm0, xmmword ptr [rip - 0x5293033] ; '/cgi-bin/micromsg-bin/newsync'
00000000061e06c7: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000061e06ca: c6401d00                     mov      byte ptr [rax + 0x1d], 0
00000000061e06ce: c644246001                   mov      byte ptr [rsp + 0x60], 1
00000000061e06d3: 410fb64608                   movzx    eax, byte ptr [r14 + 8]
00000000061e06d8: a801                         test     al, 1
00000000061e06da: 7414                         je       0x61e06f0
00000000061e06dc: 498b4610                     mov      rax, qword ptr [r14 + 0x10]
00000000061e06e0: 4885c0                       test     rax, rax
00000000061e06e3: 7512                         jne      0x61e06f7
00000000061e06e5: eb1f                         jmp      0x61e0706
00000000061e06e7: 660f1f840000000000           nop      word ptr [rax + rax]
00000000061e06f0: d1e8                         shr      eax, 1
00000000061e06f2: 4885c0                       test     rax, rax
00000000061e06f5: 740f                         je       0x61e0706
00000000061e06f7: 488d7c2448                   lea      rdi, [rsp + 0x48]
00000000061e06fc: 488b742410                   mov      rsi, qword ptr [rsp + 0x10]
00000000061e0701: e8aad632fe                   call     0x450ddb0
00000000061e0706: 458b2e                       mov      r13d, dword ptr [r14]
00000000061e0709: 4589ec                       mov      r12d, r13d
00000000061e070c: 8b7c240c                     mov      edi, dword ptr [rsp + 0xc]
00000000061e0710: 4129fc                       sub      r12d, edi
00000000061e0713: 8b03                         mov      eax, dword ptr [rbx]
00000000061e0715: 8b5304                       mov      edx, dword ptr [rbx + 4]
00000000061e0718: 31f6                         xor      esi, esi
00000000061e071a: 89c1                         mov      ecx, eax
00000000061e071c: 09d1                         or       ecx, edx
00000000061e071e: 0f84ec020000                 je       0x61e0a10
00000000061e0724: 488d7c2448                   lea      rdi, [rsp + 0x48]
00000000061e0729: 89c6                         mov      esi, eax
00000000061e072b: 31c9                         xor      ecx, ecx
00000000061e072d: 4589e0                       mov      r8d, r12d
00000000061e0730: e8db9e8001                   call     0x79ea610
00000000061e0735: 8b33                         mov      esi, dword ptr [rbx]
00000000061e0737: 85f6                         test     esi, esi
00000000061e0739: 0f95c0                       setne    al
00000000061e073c: 83fe92                       cmp      esi, -0x6e
00000000061e073f: 0f95c1                       setne    cl
00000000061e0742: 84c8                         test     al, cl
00000000061e0744: 0f85c0020000                 jne      0x61e0a0a
00000000061e074a: 8b7c240c                     mov      edi, dword ptr [rsp + 0xc]
00000000061e074e: 85ff                         test     edi, edi
00000000061e0750: 0f84ba020000                 je       0x61e0a10
00000000061e0756: bfe8030000                   mov      edi, 0x3e8
00000000061e075b: 4489e1                       mov      ecx, r12d
00000000061e075e: d3e7                         shl      edi, cl
00000000061e0760: e87b7f9003                   call     0x9ae86e0
00000000061e0765: bf02000000                   mov      edi, 2
00000000061e076a: e82165f302                   call     0x9116c90
00000000061e076f: 448b7c240c                   mov      r15d, dword ptr [rsp + 0xc]
00000000061e0774: 41ffcf                       dec      r15d
00000000061e0777: 41b501                       mov      r13b, 1
00000000061e077a: 85c0                         test     eax, eax
00000000061e077c: 44897c240c                   mov      dword ptr [rsp + 0xc], r15d
00000000061e0781: 0f8477020000                 je       0x61e09fe
00000000061e0787: 488d7c2418                   lea      rdi, [rsp + 0x18]
00000000061e078c: e83f221d01                   call     0x73b29d0
00000000061e0791: f644241801                   test     byte ptr [rsp + 0x18], 1
00000000061e0796: 488d542419                   lea      rdx, [rsp + 0x19]
00000000061e079b: 7405                         je       0x61e07a2
00000000061e079d: 488b542428                   mov      rdx, qword ptr [rsp + 0x28]
00000000061e07a2: 488dbc24b0000000             lea      rdi, [rsp + 0xb0]
00000000061e07aa: be02000000                   mov      esi, 2
00000000061e07af: 488d0d2423cbfa               lea      rcx, [rip - 0x534dcdc]
00000000061e07b6: 4c8d053920c5fa               lea      r8, [rip - 0x53adfc7]
00000000061e07bd: 41b950010000                 mov      r9d, 0x150
00000000061e07c3: 6a00                         push     0
00000000061e07c5: 6a00                         push     0
00000000061e07c7: e8d40df302                   call     0x91115a0
00000000061e07cc: 4883c410                     add      rsp, 0x10
00000000061e07d0: f644244801                   test     byte ptr [rsp + 0x48], 1
00000000061e07d5: 488d442449                   lea      rax, [rsp + 0x49]
00000000061e07da: 7405                         je       0x61e07e1
00000000061e07dc: 488b442458                   mov      rax, qword ptr [rsp + 0x58]
00000000061e07e1: 4889842468020000             mov      qword ptr [rsp + 0x268], rax
00000000061e07e9: c684247002000000             mov      byte ptr [rsp + 0x270], 0
00000000061e07f1: 8b0b                         mov      ecx, dword ptr [rbx]
00000000061e07f3: 48c784249001000000000000     mov      qword ptr [rsp + 0x190], 0
00000000061e07ff: b808000000                   mov      eax, 8
00000000061e0804: 89ca                         mov      edx, ecx
00000000061e0806: 662e0f1f840000000000         nop      word ptr cs:[rax + rax]
00000000061e0810: 4863f2                       movsxd   rsi, edx
00000000061e0813: 4869d667666666               imul     rdx, rsi, 0x66666667
00000000061e081a: 4889d7                       mov      rdi, rdx
00000000061e081d: 48c1ef3f                     shr      rdi, 0x3f
00000000061e0821: 48c1fa22                     sar      rdx, 0x22
00000000061e0825: 01fa                         add      edx, edi
00000000061e0827: 8d3c12                       lea      edi, [rdx + rdx]
00000000061e082a: 8d3cbf                       lea      edi, [rdi + rdi*4]
00000000061e082d: 4189f0                       mov      r8d, esi
00000000061e0830: 4129f8                       sub      r8d, edi
00000000061e0833: 4963f8                       movsxd   rdi, r8d
00000000061e0836: 0fb67c2f23                   movzx    edi, byte ptr [rdi + rbp + 0x23]
00000000061e083b: 4088bc0490010000             mov      byte ptr [rsp + rax + 0x190], dil
00000000061e0843: 48ffc0                       inc      rax
00000000061e0846: 83c609                       add      esi, 9
00000000061e0849: 83fe12                       cmp      esi, 0x12
00000000061e084c: 77c2                         ja       0x61e0810
00000000061e084e: 85c9                         test     ecx, ecx
00000000061e0850: 790b                         jns      0x61e085d
00000000061e0852: c68404900100002d             mov      byte ptr [rsp + rax + 0x190], 0x2d
00000000061e085a: 48ffc0                       inc      rax
00000000061e085d: c684049001000000             mov      byte ptr [rsp + rax + 0x190], 0
00000000061e0865: 4883f80a                     cmp      rax, 0xa
00000000061e0869: 7c31                         jl       0x61e089c
00000000061e086b: 4801e0                       add      rax, rsp
00000000061e086e: 480590010000                 add      rax, 0x190
00000000061e0874: 48ffc8                       dec      rax
00000000061e0877: 488d8c2499010000             lea      rcx, [rsp + 0x199]
00000000061e087f: 90                           nop
00000000061e0880: 0fb610                       movzx    edx, byte ptr [rax]
00000000061e0883: 0fb671ff                     movzx    esi, byte ptr [rcx - 1]
00000000061e0887: 408830                       mov      byte ptr [rax], sil
00000000061e088a: 8851ff                       mov      byte ptr [rcx - 1], dl
00000000061e088d: 48ffc8                       dec      rax
00000000061e0890: 488d5101                     lea      rdx, [rcx + 1]
00000000061e0894: 4839c1                       cmp      rcx, rax
00000000061e0897: 4889d1                       mov      rcx, rdx
00000000061e089a: 72e4                         jb       0x61e0880
00000000061e089c: 488d842498010000             lea      rax, [rsp + 0x198]
00000000061e08a4: 4889842490010000             mov      qword ptr [rsp + 0x190], rax
00000000061e08ac: 8b4b04                       mov      ecx, dword ptr [rbx + 4]
00000000061e08af: 48c784244001000000000000     mov      qword ptr [rsp + 0x140], 0
00000000061e08bb: b808000000                   mov      eax, 8
00000000061e08c0: 89ca                         mov      edx, ecx
00000000061e08c2: 66666666662e0f1f840000000000 nop      word ptr cs:[rax + rax]
00000000061e08d0: 4863f2                       movsxd   rsi, edx
00000000061e08d3: 4869d667666666               imul     rdx, rsi, 0x66666667
00000000061e08da: 4889d7                       mov      rdi, rdx
00000000061e08dd: 48c1ef3f                     shr      rdi, 0x3f
00000000061e08e1: 48c1fa22                     sar      rdx, 0x22
00000000061e08e5: 01fa                         add      edx, edi
00000000061e08e7: 8d3c12                       lea      edi, [rdx + rdx]
00000000061e08ea: 8d3cbf                       lea      edi, [rdi + rdi*4]
00000000061e08ed: 4189f0                       mov      r8d, esi
00000000061e08f0: 4129f8                       sub      r8d, edi
00000000061e08f3: 4963f8                       movsxd   rdi, r8d
00000000061e08f6: 0fb67c2f23                   movzx    edi, byte ptr [rdi + rbp + 0x23]
00000000061e08fb: 4088bc0440010000             mov      byte ptr [rsp + rax + 0x140], dil
00000000061e0903: 48ffc0                       inc      rax
00000000061e0906: 83c609                       add      esi, 9
00000000061e0909: 83fe12                       cmp      esi, 0x12
00000000061e090c: 77c2                         ja       0x61e08d0
00000000061e090e: 85c9                         test     ecx, ecx
00000000061e0910: 790b                         jns      0x61e091d
00000000061e0912: c68404400100002d             mov      byte ptr [rsp + rax + 0x140], 0x2d
00000000061e091a: 48ffc0                       inc      rax
00000000061e091d: c684044001000000             mov      byte ptr [rsp + rax + 0x140], 0
00000000061e0925: 4883f80a                     cmp      rax, 0xa
00000000061e0929: 7c31                         jl       0x61e095c
00000000061e092b: 4801e0                       add      rax, rsp
00000000061e092e: 480540010000                 add      rax, 0x140
00000000061e0934: 48ffc8                       dec      rax
00000000061e0937: 488d8c2449010000             lea      rcx, [rsp + 0x149]
00000000061e093f: 90                           nop
00000000061e0940: 0fb610                       movzx    edx, byte ptr [rax]
00000000061e0943: 0fb671ff                     movzx    esi, byte ptr [rcx - 1]
00000000061e0947: 408830                       mov      byte ptr [rax], sil
00000000061e094a: 8851ff                       mov      byte ptr [rcx - 1], dl
00000000061e094d: 48ffc8                       dec      rax
00000000061e0950: 488d5101                     lea      rdx, [rcx + 1]
00000000061e0954: 4839c1                       cmp      rcx, rax
00000000061e0957: 4889d1                       mov      rcx, rdx
00000000061e095a: 72e4                         jb       0x61e0940
00000000061e095c: 488d842448010000             lea      rax, [rsp + 0x148]
00000000061e0964: 4889842440010000             mov      qword ptr [rsp + 0x140], rax
00000000061e096c: 488d842468020000             lea      rax, [rsp + 0x268]
00000000061e0974: 48898424e0010000             mov      qword ptr [rsp + 0x1e0], rax
00000000061e097c: 488d842490010000             lea      rax, [rsp + 0x190]
00000000061e0984: 48898424e8010000             mov      qword ptr [rsp + 0x1e8], rax
00000000061e098c: 488d842440010000             lea      rax, [rsp + 0x140]
00000000061e0994: 48898424f0010000             mov      qword ptr [rsp + 0x1f0], rax
00000000061e099c: 488d8424f8010000             lea      rax, [rsp + 0x1f8]
00000000061e09a4: 0f57c0                       xorps    xmm0, xmm0
00000000061e09a7: 0f114050                     movups   xmmword ptr [rax + 0x50], xmm0
00000000061e09ab: 0f114040                     movups   xmmword ptr [rax + 0x40], xmm0
00000000061e09af: 0f114030                     movups   xmmword ptr [rax + 0x30], xmm0
00000000061e09b3: 0f114020                     movups   xmmword ptr [rax + 0x20], xmm0
00000000061e09b7: 0f114010                     movups   xmmword ptr [rax + 0x10], xmm0
00000000061e09bb: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000061e09be: 48c7406000000000             mov      qword ptr [rax + 0x60], 0
00000000061e09c6: 4c8da424b0000000             lea      r12, [rsp + 0xb0]
00000000061e09ce: 4c89e7                       mov      rdi, r12
00000000061e09d1: 488d3572f2dcfa               lea      rsi, [rip - 0x5230d8e]
00000000061e09d8: 488d9424e0010000             lea      rdx, [rsp + 0x1e0]
00000000061e09e0: e80b0ff302                   call     0x91118f0
00000000061e09e5: 4c89e7                       mov      rdi, r12
00000000061e09e8: e8430cf302                   call     0x9111630
00000000061e09ed: f644241801                   test     byte ptr [rsp + 0x18], 1
00000000061e09f2: 740a                         je       0x61e09fe
00000000061e09f4: 488b7c2428                   mov      rdi, qword ptr [rsp + 0x28]
00000000061e09f9: e8429732fe                   call     0x450a140
00000000061e09fe: 4531ff                       xor      r15d, r15d
00000000061e0a01: f644244801                   test     byte ptr [rsp + 0x48], 1
00000000061e0a06: 7544                         jne      0x61e0a4c
00000000061e0a08: eb4c                         jmp      0x61e0a56
00000000061e0a0a: 8b7c240c                     mov      edi, dword ptr [rsp + 0xc]
00000000061e0a0e: 6690                         nop
00000000061e0a10: 41b701                       mov      r15b, 1
00000000061e0a13: 4139fd                       cmp      r13d, edi
00000000061e0a16: 7518                         jne      0x61e0a30
00000000061e0a18: 4531ed                       xor      r13d, r13d
00000000061e0a1b: f644244801                   test     byte ptr [rsp + 0x48], 1
00000000061e0a20: 752a                         jne      0x61e0a4c
00000000061e0a22: eb32                         jmp      0x61e0a56
00000000061e0a24: 6666662e0f1f840000000000     nop      word ptr cs:[rax + rax]
00000000061e0a30: 8b5304                       mov      edx, dword ptr [rbx + 4]
00000000061e0a33: 4531ed                       xor      r13d, r13d
00000000061e0a36: 488d7c2448                   lea      rdi, [rsp + 0x48]
00000000061e0a3b: 31c9                         xor      ecx, ecx
00000000061e0a3d: 4589e0                       mov      r8d, r12d
00000000061e0a40: e8cb9b8001                   call     0x79ea610
00000000061e0a45: f644244801                   test     byte ptr [rsp + 0x48], 1
00000000061e0a4a: 740a                         je       0x61e0a56
00000000061e0a4c: 488b7c2458                   mov      rdi, qword ptr [rsp + 0x58]
00000000061e0a51: e8ea9632fe                   call     0x450a140
00000000061e0a56: 4584ff                       test     r15b, r15b
00000000061e0a59: 4c8bbc24a0000000             mov      r15, qword ptr [rsp + 0xa0]
00000000061e0a61: 752b                         jne      0x61e0a8e
00000000061e0a63: 4c8b6328                     mov      r12, qword ptr [rbx + 0x28]
00000000061e0a67: 4d85e4                       test     r12, r12
00000000061e0a6a: 7413                         je       0x61e0a7f
00000000061e0a6c: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000061e0a73: f0490fc1442408               lock xadd qword ptr [r12 + 8], rax
00000000061e0a7a: 4885c0                       test     rax, rax
00000000061e0a7d: 746f                         je       0x61e0aee
00000000061e0a7f: f6430801                     test     byte ptr [rbx + 8], 1
00000000061e0a83: 7409                         je       0x61e0a8e
00000000061e0a85: 488b7b18                     mov      rdi, qword ptr [rbx + 0x18]
00000000061e0a89: e8b29632fe                   call     0x450a140
00000000061e0a8e: 4c8ba42498000000             mov      r12, qword ptr [rsp + 0x98]
00000000061e0a96: 4d85e4                       test     r12, r12
00000000061e0a99: 7413                         je       0x61e0aae
00000000061e0a9b: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000061e0aa2: f0490fc1442408               lock xadd qword ptr [r12 + 8], rax
00000000061e0aa9: 4885c0                       test     rax, rax
00000000061e0aac: 7422                         je       0x61e0ad0
00000000061e0aae: f644247801                   test     byte ptr [rsp + 0x78], 1
00000000061e0ab3: 0f84f7f9ffff                 je       0x61e04b0
00000000061e0ab9: 488bbc2488000000             mov      rdi, qword ptr [rsp + 0x88]
00000000061e0ac1: e87a9632fe                   call     0x450a140
00000000061e0ac6: e9e5f9ffff                   jmp      0x61e04b0
00000000061e0acb: 0f1f440000                   nop      dword ptr [rax + rax]
00000000061e0ad0: 498b0424                     mov      rax, qword ptr [r12]
00000000061e0ad4: 4c89e7                       mov      rdi, r12
00000000061e0ad7: ff5010                       call     qword ptr [rax + 0x10]
00000000061e0ada: 4c89e7                       mov      rdi, r12
00000000061e0add: e8ee6635fe                   call     0x45371d0
00000000061e0ae2: f644247801                   test     byte ptr [rsp + 0x78], 1
00000000061e0ae7: 75d0                         jne      0x61e0ab9
00000000061e0ae9: e9c2f9ffff                   jmp      0x61e04b0
00000000061e0aee: 498b0424                     mov      rax, qword ptr [r12]
00000000061e0af2: 4c89e7                       mov      rdi, r12
00000000061e0af5: ff5010                       call     qword ptr [rax + 0x10]
00000000061e0af8: 4c89e7                       mov      rdi, r12
00000000061e0afb: e8d06635fe                   call     0x45371d0
00000000061e0b00: f6430801                     test     byte ptr [rbx + 8], 1
00000000061e0b04: 0f857bffffff                 jne      0x61e0a85
00000000061e0b0a: eb82                         jmp      0x61e0a8e
00000000061e0b0c: 4889d8                       mov      rax, rbx
00000000061e0b0f: 4881c4b8020000               add      rsp, 0x2b8
00000000061e0b16: 5b                           pop      rbx
00000000061e0b17: 415c                         pop      r12
00000000061e0b19: 415d                         pop      r13
00000000061e0b1b: 415e                         pop      r14
00000000061e0b1d: 415f                         pop      r15
00000000061e0b1f: 5d                           pop      rbp
00000000061e0b20: c3                           ret
00000000061e0b21: 4989c6                       mov      r14, rax
00000000061e0b24: 488dbc24b0000000             lea      rdi, [rsp + 0xb0]
00000000061e0b2c: e8ff0af302                   call     0x9111630
00000000061e0b31: eb03                         jmp      0x61e0b36
00000000061e0b33: 4989c6                       mov      r14, rax
00000000061e0b36: f644241801                   test     byte ptr [rsp + 0x18], 1
00000000061e0b3b: 746f                         je       0x61e0bac
00000000061e0b3d: 488b7c2428                   mov      rdi, qword ptr [rsp + 0x28]
00000000061e0b42: e8f99532fe                   call     0x450a140
00000000061e0b47: eb63                         jmp      0x61e0bac
00000000061e0b49: eb5e                         jmp      0x61e0ba9
00000000061e0b4b: 4989c6                       mov      r14, rax
00000000061e0b4e: f684240001000001             test     byte ptr [rsp + 0x100], 1
00000000061e0b56: 7412                         je       0x61e0b6a
00000000061e0b58: 488bbc2410010000             mov      rdi, qword ptr [rsp + 0x110]
00000000061e0b60: e8db9532fe                   call     0x450a140
00000000061e0b65: eb03                         jmp      0x61e0b6a
00000000061e0b67: 4989c6                       mov      r14, rax
00000000061e0b6a: 488dbc24b0000000             lea      rdi, [rsp + 0xb0]
00000000061e0b72: e869bac001                   call     0x7dec5e0
00000000061e0b77: eb1c                         jmp      0x61e0b95
00000000061e0b79: eb2e                         jmp      0x61e0ba9
00000000061e0b7b: 4989c6                       mov      r14, rax
00000000061e0b7e: eb45                         jmp      0x61e0bc5
00000000061e0b80: 4989c6                       mov      r14, rax
00000000061e0b83: eb10                         jmp      0x61e0b95
00000000061e0b85: 4989c6                       mov      r14, rax
00000000061e0b88: 488dbc24b0000000             lea      rdi, [rsp + 0xb0]
00000000061e0b90: e87b060000                   call     0x61e1210
00000000061e0b95: 488dbc24e0010000             lea      rdi, [rsp + 0x1e0]
00000000061e0b9d: e80e8be6ff                   call     0x60496b0
00000000061e0ba2: eb21                         jmp      0x61e0bc5
00000000061e0ba4: 4989c6                       mov      r14, rax
00000000061e0ba7: eb14                         jmp      0x61e0bbd
00000000061e0ba9: 4989c6                       mov      r14, rax
00000000061e0bac: f644244801                   test     byte ptr [rsp + 0x48], 1
00000000061e0bb1: 740a                         je       0x61e0bbd
00000000061e0bb3: 488b7c2458                   mov      rdi, qword ptr [rsp + 0x58]
00000000061e0bb8: e8839532fe                   call     0x450a140
00000000061e0bbd: 4889df                       mov      rdi, rbx
00000000061e0bc0: e8bbbbffff                   call     0x61dc780
00000000061e0bc5: 488d7c2470                   lea      rdi, [rsp + 0x70]
00000000061e0bca: e8b1bbffff                   call     0x61dc780
00000000061e0bcf: 4c89f7                       mov      rdi, r14
00000000061e0bd2: e849c230fe                   call     0x44ece20
