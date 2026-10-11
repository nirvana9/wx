0000000008e035a0: 55                           push     rbp
0000000008e035a1: 4157                         push     r15
0000000008e035a3: 4156                         push     r14
0000000008e035a5: 4155                         push     r13
0000000008e035a7: 4154                         push     r12
0000000008e035a9: 53                           push     rbx
0000000008e035aa: 4881ec38070000               sub      rsp, 0x738
0000000008e035b1: 4c89cb                       mov      rbx, r9
0000000008e035b4: 4c89442418                   mov      qword ptr [rsp + 0x18], r8
0000000008e035b9: 48894c2420                   mov      qword ptr [rsp + 0x20], rcx
0000000008e035be: 4889942440010000             mov      qword ptr [rsp + 0x140], rdx
0000000008e035c6: 4189f4                       mov      r12d, esi
0000000008e035c9: 48897c2430                   mov      qword ptr [rsp + 0x30], rdi
0000000008e035ce: 458b7918                     mov      r15d, dword ptr [r9 + 0x18]
0000000008e035d2: 410fb76938                   movzx    ebp, word ptr [r9 + 0x38]
0000000008e035d7: bf28000000                   mov      edi, 0x28
0000000008e035dc: e8bfa78601                   call     0xa66dda0
0000000008e035e1: 4889842448010000             mov      qword ptr [rsp + 0x148], rax
0000000008e035e9: 4889c7                       mov      rdi, rax
0000000008e035ec: e8ef3d0100                   call     0x8e173e0
0000000008e035f1: bf18000000                   mov      edi, 0x18
0000000008e035f6: e8a5a78601                   call     0xa66dda0
0000000008e035fb: 48898424c8000000             mov      qword ptr [rsp + 0xc8], rax
0000000008e03603: 4889c7                       mov      rdi, rax
0000000008e03606: e8a5140100                   call     0x8e14ab0
0000000008e0360b: bf20000000                   mov      edi, 0x20
0000000008e03610: e88ba78601                   call     0xa66dda0
0000000008e03615: 48898424d0000000             mov      qword ptr [rsp + 0xd0], rax
0000000008e0361d: 4889c7                       mov      rdi, rax
0000000008e03620: e86b1c0100                   call     0x8e15290
0000000008e03625: bf80000000                   mov      edi, 0x80
0000000008e0362a: e871a78601                   call     0xa66dda0
0000000008e0362f: 4989c5                       mov      r13, rax
0000000008e03632: 4889c7                       mov      rdi, rax
0000000008e03635: e846bc0000                   call     0x8e0f280
0000000008e0363a: 4c8db42418060000             lea      r14, [rsp + 0x618]
0000000008e03642: 4c89f7                       mov      rdi, r14
0000000008e03645: e8d6860100                   call     0x8e1bd20
0000000008e0364a: 488bb3e8000000               mov      rsi, qword ptr [rbx + 0xe8]
0000000008e03651: 4c89f7                       mov      rdi, r14
0000000008e03654: e897870100                   call     0x8e1bdf0
0000000008e03659: 8b7310                       mov      esi, dword ptr [rbx + 0x10]
0000000008e0365c: 4c89f7                       mov      rdi, r14
0000000008e0365f: e8ac870100                   call     0x8e1be10
0000000008e03664: 4c89f7                       mov      rdi, r14
0000000008e03667: 896c2438                     mov      dword ptr [rsp + 0x38], ebp
0000000008e0366b: 89ee                         mov      esi, ebp
0000000008e0366d: e80e880100                   call     0x8e1be80
0000000008e03672: 0fb7733a                     movzx    esi, word ptr [rbx + 0x3a]
0000000008e03676: 4c89f7                       mov      rdi, r14
0000000008e03679: e8f2870100                   call     0x8e1be70
0000000008e0367e: 31c0                         xor      eax, eax
0000000008e03680: 80bbf100000000               cmp      byte ptr [rbx + 0xf1], 0
0000000008e03687: 0f94c0                       sete     al
0000000008e0368a: c1e003                       shl      eax, 3
0000000008e0368d: 31ed                         xor      ebp, ebp
0000000008e0368f: 80bbf000000001               cmp      byte ptr [rbx + 0xf0], 1
0000000008e03696: 19ed                         sbb      ebp, ebp
0000000008e03698: 09c5                         or       ebp, eax
0000000008e0369a: 83cdf6                       or       ebp, 0xfffffff6
0000000008e0369d: 4c89f7                       mov      rdi, r14
0000000008e036a0: 89ee                         mov      esi, ebp
0000000008e036a2: e819880100                   call     0x8e1bec0
0000000008e036a7: 0fb77348                     movzx    esi, word ptr [rbx + 0x48]
0000000008e036ab: 4c89f7                       mov      rdi, r14
0000000008e036ae: e82d870100                   call     0x8e1bde0
0000000008e036b3: 0fbf7308                     movsx    esi, word ptr [rbx + 8]
0000000008e036b7: 4c89f7                       mov      rdi, r14
0000000008e036ba: e861880100                   call     0x8e1bf20
0000000008e036bf: 0fb683b8000000               movzx    eax, byte ptr [rbx + 0xb8]
0000000008e036c6: 488d8bb9000000               lea      rcx, [rbx + 0xb9]
0000000008e036cd: 89c2                         mov      edx, eax
0000000008e036cf: d1ea                         shr      edx, 1
0000000008e036d1: a801                         test     al, 1
0000000008e036d3: 480f458bc8000000             cmovne   rcx, qword ptr [rbx + 0xc8]
0000000008e036db: 480f4593c0000000             cmovne   rdx, qword ptr [rbx + 0xc0]
0000000008e036e3: 4885c9                       test     rcx, rcx
0000000008e036e6: 488d354b0f01f8               lea      rsi, [rip - 0x7fef0b5]
0000000008e036ed: 480f45f1                     cmovne   rsi, rcx
0000000008e036f1: 4c89f7                       mov      rdi, r14
0000000008e036f4: e807880100                   call     0x8e1bf00
0000000008e036f9: 0fb77346                     movzx    esi, word ptr [rbx + 0x46]
0000000008e036fd: 4c89f7                       mov      rdi, r14
0000000008e03700: 4c8b742430                   mov      r14, qword ptr [rsp + 0x30]
0000000008e03705: e886870100                   call     0x8e1be90
0000000008e0370a: 807b5800                     cmp      byte ptr [rbx + 0x58], 0
0000000008e0370e: 7426                         je       0x8e03736
0000000008e03710: 498b3e                       mov      rdi, qword ptr [r14]
0000000008e03713: e89863ffff                   call     0x8df9ab0
0000000008e03718: 4889c7                       mov      rdi, rax
0000000008e0371b: 4489fe                       mov      esi, r15d
0000000008e0371e: 488b542420                   mov      rdx, qword ptr [rsp + 0x20]
0000000008e03723: 488b4c2418                   mov      rcx, qword ptr [rsp + 0x18]
0000000008e03728: e8c3f8feff                   call     0x8df2ff0
0000000008e0372d: 41804d7820                   or       byte ptr [r13 + 0x78], 0x20
0000000008e03732: 41894520                     mov      dword ptr [r13 + 0x20], eax
0000000008e03736: 44897c243c                   mov      dword ptr [rsp + 0x3c], r15d
0000000008e0373b: 4c896c2410                   mov      qword ptr [rsp + 0x10], r13
0000000008e03740: 4c8db42450020000             lea      r14, [rsp + 0x250]
0000000008e03748: 4c89f7                       mov      rdi, r14
0000000008e0374b: e890820100                   call     0x8e1b9e0
0000000008e03750: 660fefc0                     pxor     xmm0, xmm0
0000000008e03754: 660f7f842430010000           movdqa   xmmword ptr [rsp + 0x130], xmm0
0000000008e0375d: 4c8d8c2430010000             lea      r9, [rsp + 0x130]
0000000008e03765: 4489e6                       mov      esi, r12d
0000000008e03768: 488b542420                   mov      rdx, qword ptr [rsp + 0x20]
0000000008e0376d: 488b4c2418                   mov      rcx, qword ptr [rsp + 0x18]
0000000008e03772: 4d89f0                       mov      r8, r14
0000000008e03775: 488b842470070000             mov      rax, qword ptr [rsp + 0x770]
0000000008e0377d: 50                           push     rax
0000000008e0377e: 53                           push     rbx
0000000008e0377f: e84ca3ffff                   call     0x8dfdad0
0000000008e03784: 4883c410                     add      rsp, 0x10
0000000008e03788: 84c0                         test     al, al
0000000008e0378a: 0f84f1060000                 je       0x8e03e81
0000000008e03790: 4c8b7c2410                   mov      r15, qword ptr [rsp + 0x10]
0000000008e03795: 488b442418                   mov      rax, qword ptr [rsp + 0x18]
0000000008e0379a: 41894748                     mov      dword ptr [r15 + 0x48], eax
0000000008e0379e: 4c8bb42438010000             mov      r14, qword ptr [rsp + 0x138]
0000000008e037a6: 4589774c                     mov      dword ptr [r15 + 0x4c], r14d
0000000008e037aa: 0fbf03                       movsx    eax, word ptr [rbx]
0000000008e037ad: 41894734                     mov      dword ptr [r15 + 0x34], eax
0000000008e037b1: 8b4304                       mov      eax, dword ptr [rbx + 4]
0000000008e037b4: 41814f7800c40100             or       dword ptr [r15 + 0x78], 0x1c400
0000000008e037bc: 41894758                     mov      dword ptr [r15 + 0x58], eax
0000000008e037c0: bf08000000                   mov      edi, 8
0000000008e037c5: e8d6a58601                   call     0xa66dda0
0000000008e037ca: 4989c5                       mov      r13, rax
0000000008e037cd: 4889c7                       mov      rdi, rax
0000000008e037d0: e81b4c0100                   call     0x8e183f0
0000000008e037d5: 488b942430010000             mov      rdx, qword ptr [rsp + 0x130]
0000000008e037dd: 4883ec08                     sub      rsp, 8
0000000008e037e1: 488b7c2438                   mov      rdi, qword ptr [rsp + 0x38]
0000000008e037e6: 4489e6                       mov      esi, r12d
0000000008e037e9: 4c89f1                       mov      rcx, r14
0000000008e037ec: 4989d8                       mov      r8, rbx
0000000008e037ef: 4c896c2420                   mov      qword ptr [rsp + 0x20], r13
0000000008e037f4: 4d89e9                       mov      r9, r13
0000000008e037f7: ffb42478070000               push     qword ptr [rsp + 0x778]
0000000008e037fe: e8bdaaffff                   call     0x8dfe2c0
0000000008e03803: 4883c410                     add      rsp, 0x10
0000000008e03807: 4c8b7328                     mov      r14, qword ptr [rbx + 0x28]
0000000008e0380b: 448b6b0c                     mov      r13d, dword ptr [rbx + 0xc]
0000000008e0380f: 41834f7802                   or       dword ptr [r15 + 0x78], 2
0000000008e03814: 498b7f08                     mov      rdi, qword ptr [r15 + 8]
0000000008e03818: 483b3de1fcce01               cmp      rdi, qword ptr [rip + 0x1cefce1]
0000000008e0381f: 7521                         jne      0x8e03842
0000000008e03821: bf18000000                   mov      edi, 0x18
0000000008e03826: e875a58601                   call     0xa66dda0
0000000008e0382b: 4889c7                       mov      rdi, rax
0000000008e0382e: 660fefc0                     pxor     xmm0, xmm0
0000000008e03832: f30f7f00                     movdqu   xmmword ptr [rax], xmm0
0000000008e03836: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
0000000008e0383e: 49894708                     mov      qword ptr [r15 + 8], rax
0000000008e03842: 4c89f6                       mov      rsi, r14
0000000008e03845: 4c89ea                       mov      rdx, r13
0000000008e03848: e8b39670fb                   call     0x450cf00
0000000008e0384d: f30f7e4338                   movq     xmm0, qword ptr [rbx + 0x38]
0000000008e03852: 660fefc9                     pxor     xmm1, xmm1
0000000008e03856: 660f61c1                     punpcklwd xmm0, xmm1
0000000008e0385a: 66410fd64714                 movq     qword ptr [r15 + 0x14], xmm0
0000000008e03860: 8b4310                       mov      eax, dword ptr [rbx + 0x10]
0000000008e03863: 4189471c                     mov      dword ptr [r15 + 0x1c], eax
0000000008e03867: 8b433c                       mov      eax, dword ptr [rbx + 0x3c]
0000000008e0386a: 41894720                     mov      dword ptr [r15 + 0x20], eax
0000000008e0386e: 41896f24                     mov      dword ptr [r15 + 0x24], ebp
0000000008e03872: 8b4340                       mov      eax, dword ptr [rbx + 0x40]
0000000008e03875: 41894728                     mov      dword ptr [r15 + 0x28], eax
0000000008e03879: 0fb64344                     movzx    eax, byte ptr [rbx + 0x44]
0000000008e0387d: 4189472c                     mov      dword ptr [r15 + 0x2c], eax
0000000008e03881: 0fb64345                     movzx    eax, byte ptr [rbx + 0x45]
0000000008e03885: 41894730                     mov      dword ptr [r15 + 0x30], eax
0000000008e03889: 0fbf4308                     movsx    eax, word ptr [rbx + 8]
0000000008e0388d: 41894738                     mov      dword ptr [r15 + 0x38], eax
0000000008e03891: 4c8b7350                     mov      r14, qword ptr [rbx + 0x50]
0000000008e03895: 41814f78fc2b0000             or       dword ptr [r15 + 0x78], 0x2bfc
0000000008e0389d: 498b7f40                     mov      rdi, qword ptr [r15 + 0x40]
0000000008e038a1: 483b3d58fcce01               cmp      rdi, qword ptr [rip + 0x1cefc58]
0000000008e038a8: 7521                         jne      0x8e038cb
0000000008e038aa: bf18000000                   mov      edi, 0x18
0000000008e038af: e8eca48601                   call     0xa66dda0
0000000008e038b4: 4889c7                       mov      rdi, rax
0000000008e038b7: 660fefc0                     pxor     xmm0, xmm0
0000000008e038bb: f30f7f00                     movdqu   xmmword ptr [rax], xmm0
0000000008e038bf: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
0000000008e038c7: 49894740                     mov      qword ptr [r15 + 0x40], rax
0000000008e038cb: 4c89f6                       mov      rsi, r14
0000000008e038ce: e81da370fb                   call     0x450dbf0
0000000008e038d3: 0fb74b48                     movzx    ecx, word ptr [rbx + 0x48]
0000000008e038d7: 418b4778                     mov      eax, dword ptr [r15 + 0x78]
0000000008e038db: 49894f60                     mov      qword ptr [r15 + 0x60], rcx
0000000008e038df: 0fb74b46                     movzx    ecx, word ptr [rbx + 0x46]
0000000008e038e3: 41894f5c                     mov      dword ptr [r15 + 0x5c], ecx
0000000008e038e7: 8b4b4c                       mov      ecx, dword ptr [rbx + 0x4c]
0000000008e038ea: 41894f70                     mov      dword ptr [r15 + 0x70], ecx
0000000008e038ee: 0fb68bd0000000               movzx    ecx, byte ptr [rbx + 0xd0]
0000000008e038f5: f6c101                       test     cl, 1
0000000008e038f8: 488bac24d0000000             mov      rbp, qword ptr [rsp + 0xd0]
0000000008e03900: 0f84da060000                 je       0x8e03fe0
0000000008e03906: 488b8bd8000000               mov      rcx, qword ptr [rbx + 0xd8]
0000000008e0390d: 4c8bb424c8000000             mov      r14, qword ptr [rsp + 0xc8]
0000000008e03915: 4c8dabd0000000               lea      r13, [rbx + 0xd0]
0000000008e0391c: 4885c9                       test     rcx, rcx
0000000008e0391f: 0f84d5060000                 je       0x8e03ffa
0000000008e03925: 0d00003c00                   or       eax, 0x3c0000
0000000008e0392a: 41894778                     mov      dword ptr [r15 + 0x78], eax
0000000008e0392e: 498b7f68                     mov      rdi, qword ptr [r15 + 0x68]
0000000008e03932: 483b3dc7fbce01               cmp      rdi, qword ptr [rip + 0x1cefbc7]
0000000008e03939: 7521                         jne      0x8e0395c
0000000008e0393b: bf18000000                   mov      edi, 0x18
0000000008e03940: e85ba48601                   call     0xa66dda0
0000000008e03945: 4889c7                       mov      rdi, rax
0000000008e03948: 660fefc0                     pxor     xmm0, xmm0
0000000008e0394c: f30f7f00                     movdqu   xmmword ptr [rax], xmm0
0000000008e03950: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
0000000008e03958: 49894768                     mov      qword ptr [r15 + 0x68], rax
0000000008e0395c: 4c89ee                       mov      rsi, r13
0000000008e0395f: e84ca470fb                   call     0x450ddb0
0000000008e03964: 498b7e08                     mov      rdi, qword ptr [r14 + 8]
0000000008e03968: 4885ff                       test     rdi, rdi
0000000008e0396b: 7406                         je       0x8e03973
0000000008e0396d: 488b07                       mov      rax, qword ptr [rdi]
0000000008e03970: ff5008                       call     qword ptr [rax + 8]
0000000008e03973: 4d897e08                     mov      qword ptr [r14 + 8], r15
0000000008e03977: 41804e1401                   or       byte ptr [r14 + 0x14], 1
0000000008e0397c: 488b7d08                     mov      rdi, qword ptr [rbp + 8]
0000000008e03980: 4885ff                       test     rdi, rdi
0000000008e03983: 7406                         je       0x8e0398b
0000000008e03985: 488b07                       mov      rax, qword ptr [rdi]
0000000008e03988: ff5008                       call     qword ptr [rax + 8]
0000000008e0398b: 4c897508                     mov      qword ptr [rbp + 8], r14
0000000008e0398f: 804d1c01                     or       byte ptr [rbp + 0x1c], 1
0000000008e03993: 4c8b7c2418                   mov      r15, qword ptr [rsp + 0x18]
0000000008e03998: 4c89ff                       mov      rdi, r15
0000000008e0399b: e8604c0100                   call     0x8e18600
0000000008e039a0: 4989c6                       mov      r14, rax
0000000008e039a3: 4c89ff                       mov      rdi, r15
0000000008e039a6: e8454c0100                   call     0x8e185f0
0000000008e039ab: 804d1c02                     or       byte ptr [rbp + 0x1c], 2
0000000008e039af: 4c63f8                       movsxd   r15, eax
0000000008e039b2: 488b7d10                     mov      rdi, qword ptr [rbp + 0x10]
0000000008e039b6: 483b3d43fbce01               cmp      rdi, qword ptr [rip + 0x1cefb43]
0000000008e039bd: 7521                         jne      0x8e039e0
0000000008e039bf: bf18000000                   mov      edi, 0x18
0000000008e039c4: e8d7a38601                   call     0xa66dda0
0000000008e039c9: 4889c7                       mov      rdi, rax
0000000008e039cc: 660fefc0                     pxor     xmm0, xmm0
0000000008e039d0: f30f7f00                     movdqu   xmmword ptr [rax], xmm0
0000000008e039d4: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
0000000008e039dc: 48894510                     mov      qword ptr [rbp + 0x10], rax
0000000008e039e0: 4c89f6                       mov      rsi, r14
0000000008e039e3: 4c89fa                       mov      rdx, r15
0000000008e039e6: e8159570fb                   call     0x450cf00
0000000008e039eb: 488bac2448010000             mov      rbp, qword ptr [rsp + 0x148]
0000000008e039f3: 8b4520                       mov      eax, dword ptr [rbp + 0x20]
0000000008e039f6: 83c801                       or       eax, 1
0000000008e039f9: 894520                       mov      dword ptr [rbp + 0x20], eax
0000000008e039fc: c7451801000000               mov      dword ptr [rbp + 0x18], 1
0000000008e03a03: 488b7d08                     mov      rdi, qword ptr [rbp + 8]
0000000008e03a07: 4885ff                       test     rdi, rdi
0000000008e03a0a: 7409                         je       0x8e03a15
0000000008e03a0c: 488b07                       mov      rax, qword ptr [rdi]
0000000008e03a0f: ff5008                       call     qword ptr [rax + 8]
0000000008e03a12: 8b4520                       mov      eax, dword ptr [rbp + 0x20]
0000000008e03a15: 488b8c24d0000000             mov      rcx, qword ptr [rsp + 0xd0]
0000000008e03a1d: 48894d08                     mov      qword ptr [rbp + 8], rcx
0000000008e03a21: 83c802                       or       eax, 2
0000000008e03a24: 894520                       mov      dword ptr [rbp + 0x20], eax
0000000008e03a27: 4c8db42470060000             lea      r14, [rsp + 0x670]
0000000008e03a2f: be80000000                   mov      esi, 0x80
0000000008e03a34: 4c89f7                       mov      rdi, r14
0000000008e03a37: e8b4dd3100                   call     0x91217f0
0000000008e03a3c: 488b4500                     mov      rax, qword ptr [rbp]
0000000008e03a40: 4889ef                       mov      rdi, rbp
0000000008e03a43: ff5048                       call     qword ptr [rax + 0x48]
0000000008e03a46: 4863f0                       movsxd   rsi, eax
0000000008e03a49: 4c89f7                       mov      rdi, r14
0000000008e03a4c: ba01000000                   mov      edx, 1
0000000008e03a51: e8aadf3100                   call     0x9121a00
0000000008e03a56: 4c89f7                       mov      rdi, r14
0000000008e03a59: 31f6                         xor      esi, esi
0000000008e03a5b: e8b0e33100                   call     0x9121e10
0000000008e03a60: 4989c7                       mov      r15, rax
0000000008e03a63: 488b4500                     mov      rax, qword ptr [rbp]
0000000008e03a67: 4889ef                       mov      rdi, rbp
0000000008e03a6a: ff5048                       call     qword ptr [rax + 0x48]
0000000008e03a6d: 4889ef                       mov      rdi, rbp
0000000008e03a70: 4c89fe                       mov      rsi, r15
0000000008e03a73: 89c2                         mov      edx, eax
0000000008e03a75: e806cc1400                   call     0x8f50680
0000000008e03a7a: c644240f00                   mov      byte ptr [rsp + 0xf], 0
0000000008e03a7f: 4c8dbc2418060000             lea      r15, [rsp + 0x618]
0000000008e03a87: 4c89ff                       mov      rdi, r15
0000000008e03a8a: e821830100                   call     0x8e1bdb0
0000000008e03a8f: 488d74240f                   lea      rsi, [rsp + 0xf]
0000000008e03a94: 4889c7                       mov      rdi, rax
0000000008e03a97: ba01000000                   mov      edx, 1
0000000008e03a9c: e8ef4a0100                   call     0x8e18590
0000000008e03aa1: 4c89ff                       mov      rdi, r15
0000000008e03aa4: e807830100                   call     0x8e1bdb0
0000000008e03aa9: 4989c7                       mov      r15, rax
0000000008e03aac: 4c89f7                       mov      rdi, r14
0000000008e03aaf: 31f6                         xor      esi, esi
0000000008e03ab1: e85ae33100                   call     0x9121e10
0000000008e03ab6: 4989c6                       mov      r14, rax
0000000008e03ab9: 488b4500                     mov      rax, qword ptr [rbp]
0000000008e03abd: 4889ef                       mov      rdi, rbp
0000000008e03ac0: ff5048                       call     qword ptr [rax + 0x48]
0000000008e03ac3: 4c89ff                       mov      rdi, r15
0000000008e03ac6: 4c89f6                       mov      rsi, r14
0000000008e03ac9: 89c2                         mov      edx, eax
0000000008e03acb: e8c04a0100                   call     0x8e18590
0000000008e03ad0: 488b6c2418                   mov      rbp, qword ptr [rsp + 0x18]
0000000008e03ad5: 4889ef                       mov      rdi, rbp
0000000008e03ad8: e8134b0100                   call     0x8e185f0
0000000008e03add: 85c0                         test     eax, eax
0000000008e03adf: 0f8438050000                 je       0x8e0401d
0000000008e03ae5: 4c896c2420                   mov      qword ptr [rsp + 0x20], r13
0000000008e03aea: 0fbf7308                     movsx    esi, word ptr [rbx + 8]
0000000008e03aee: 4c8db42418060000             lea      r14, [rsp + 0x618]
0000000008e03af6: 4c89f7                       mov      rdi, r14
0000000008e03af9: e822840100                   call     0x8e1bf20
0000000008e03afe: 488b442430                   mov      rax, qword ptr [rsp + 0x30]
0000000008e03b03: 488b38                       mov      rdi, qword ptr [rax]
0000000008e03b06: e8a55fffff                   call     0x8df9ab0
0000000008e03b0b: 4989c7                       mov      r15, rax
0000000008e03b0e: 4889ef                       mov      rdi, rbp
0000000008e03b11: e8ea4a0100                   call     0x8e18600
0000000008e03b16: 4989c5                       mov      r13, rax
0000000008e03b19: 4889ef                       mov      rdi, rbp
0000000008e03b1c: e8cf4a0100                   call     0x8e185f0
0000000008e03b21: 4863d0                       movsxd   rdx, eax
0000000008e03b24: 4c89ff                       mov      rdi, r15
0000000008e03b27: 4c89ee                       mov      rsi, r13
0000000008e03b2a: 8b4c2438                     mov      ecx, dword ptr [rsp + 0x38]
0000000008e03b2e: 448b44243c                   mov      r8d, dword ptr [rsp + 0x3c]
0000000008e03b33: e8f8f3feff                   call     0x8df2f30
0000000008e03b38: 4c89f7                       mov      rdi, r14
0000000008e03b3b: 89c6                         mov      esi, eax
0000000008e03b3d: e8ae830100                   call     0x8e1bef0
0000000008e03b42: 4c8dbc24d8000000             lea      r15, [rsp + 0xd8]
0000000008e03b4a: 4c89ff                       mov      rdi, r15
0000000008e03b4d: e89e480100                   call     0x8e183f0
0000000008e03b52: 4c89f7                       mov      rdi, r14
0000000008e03b55: 4c89fe                       mov      rsi, r15
0000000008e03b58: e8e3830100                   call     0x8e1bf40
0000000008e03b5d: 85c0                         test     eax, eax
0000000008e03b5f: 400f94c5                     sete     bpl
0000000008e03b63: 0f841e060000                 je       0x8e04187
0000000008e03b69: 4189c6                       mov      r14d, eax
0000000008e03b6c: bf04000000                   mov      edi, 4
0000000008e03b71: e81a313100                   call     0x9116c90
0000000008e03b76: 85c0                         test     eax, eax
0000000008e03b78: 0f84ef020000                 je       0x8e03e6d
0000000008e03b7e: 4589f7                       mov      r15d, r14d
0000000008e03b81: 488d15d66415f8               lea      rdx, [rip - 0x7ea9b2a]
0000000008e03b88: 488d0d64500bf8               lea      rcx, [rip - 0x7f4af9c]
0000000008e03b8f: 4c8d0513971bf8               lea      r8, [rip - 0x7e468ed]
0000000008e03b96: 488dbc2488050000             lea      rdi, [rsp + 0x588]
0000000008e03b9e: be04000000                   mov      esi, 4
0000000008e03ba3: 41b9ab010000                 mov      r9d, 0x1ab
0000000008e03ba9: 6a00                         push     0
0000000008e03bab: 6a00                         push     0
0000000008e03bad: e8eed93000                   call     0x91115a0
0000000008e03bb2: 4883c410                     add      rsp, 0x10
0000000008e03bb6: 48c78424e000000000000000     mov      qword ptr [rsp + 0xe0], 0
0000000008e03bc2: b807000000                   mov      eax, 7
0000000008e03bc7: 488d8c24e7000000             lea      rcx, [rsp + 0xe7]
0000000008e03bcf: bacdcccccc                   mov      edx, 0xcccccccd
0000000008e03bd4: 488d1d31b812f8               lea      rbx, [rip - 0x7ed47cf]
0000000008e03bdb: 0f1f440000                   nop      dword ptr [rax + rax]
0000000008e03be0: 4489e6                       mov      esi, r12d
0000000008e03be3: 480faff2                     imul     rsi, rdx
0000000008e03be7: 48c1ee23                     shr      rsi, 0x23
0000000008e03beb: 8d3c36                       lea      edi, [rsi + rsi]
0000000008e03bee: 8d3cbf                       lea      edi, [rdi + rdi*4]
0000000008e03bf1: f7df                         neg      edi
0000000008e03bf3: 4401e7                       add      edi, r12d
0000000008e03bf6: 83c723                       add      edi, 0x23
0000000008e03bf9: 0fb63c1f                     movzx    edi, byte ptr [rdi + rbx]
0000000008e03bfd: 40887901                     mov      byte ptr [rcx + 1], dil
0000000008e03c01: 48ffc1                       inc      rcx
0000000008e03c04: 48ffc0                       inc      rax
0000000008e03c07: 4183fc09                     cmp      r12d, 9
0000000008e03c0b: 4189f4                       mov      r12d, esi
0000000008e03c0e: 77d0                         ja       0x8e03be0
0000000008e03c10: 488d9424e8000000             lea      rdx, [rsp + 0xe8]
0000000008e03c18: c6410100                     mov      byte ptr [rcx + 1], 0
0000000008e03c1c: 4883f809                     cmp      rax, 9
0000000008e03c20: 722b                         jb       0x8e03c4d
0000000008e03c22: 488d8424e9000000             lea      rax, [rsp + 0xe9]
0000000008e03c2a: 660f1f440000                 nop      word ptr [rax + rax]
0000000008e03c30: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008e03c33: 0fb678ff                     movzx    edi, byte ptr [rax - 1]
0000000008e03c37: 408839                       mov      byte ptr [rcx], dil
0000000008e03c3a: 48ffc9                       dec      rcx
0000000008e03c3d: 408870ff                     mov      byte ptr [rax - 1], sil
0000000008e03c41: 488d7001                     lea      rsi, [rax + 1]
0000000008e03c45: 4839c8                       cmp      rax, rcx
0000000008e03c48: 4889f0                       mov      rax, rsi
0000000008e03c4b: 72e3                         jb       0x8e03c30
0000000008e03c4d: 48899424e0000000             mov      qword ptr [rsp + 0xe0], rdx
0000000008e03c55: 48c78424d001000000000000     mov      qword ptr [rsp + 0x1d0], 0
0000000008e03c61: b808000000                   mov      eax, 8
0000000008e03c66: 662e0f1f840000000000         nop      word ptr cs:[rax + rax]
0000000008e03c70: 4963cf                       movsxd   rcx, r15d
0000000008e03c73: 4c69f967666666               imul     r15, rcx, 0x66666667
0000000008e03c7a: 4c89fa                       mov      rdx, r15
0000000008e03c7d: 48c1ea3f                     shr      rdx, 0x3f
0000000008e03c81: 49c1ff22                     sar      r15, 0x22
0000000008e03c85: 4101d7                       add      r15d, edx
0000000008e03c88: 438d143f                     lea      edx, [r15 + r15]
0000000008e03c8c: 8d1492                       lea      edx, [rdx + rdx*4]
0000000008e03c8f: 89ce                         mov      esi, ecx
0000000008e03c91: 29d6                         sub      esi, edx
0000000008e03c93: 4863d6                       movsxd   rdx, esi
0000000008e03c96: 0fb6541a23                   movzx    edx, byte ptr [rdx + rbx + 0x23]
0000000008e03c9b: 889404d0010000               mov      byte ptr [rsp + rax + 0x1d0], dl
0000000008e03ca2: 48ffc0                       inc      rax
0000000008e03ca5: 83c109                       add      ecx, 9
0000000008e03ca8: 83f912                       cmp      ecx, 0x12
0000000008e03cab: 77c3                         ja       0x8e03c70
0000000008e03cad: 4585f6                       test     r14d, r14d
0000000008e03cb0: 790b                         jns      0x8e03cbd
0000000008e03cb2: c68404d00100002d             mov      byte ptr [rsp + rax + 0x1d0], 0x2d
0000000008e03cba: 48ffc0                       inc      rax
0000000008e03cbd: 488d8c24d8010000             lea      rcx, [rsp + 0x1d8]
0000000008e03cc5: c68404d001000000             mov      byte ptr [rsp + rax + 0x1d0], 0
0000000008e03ccd: 4883f80a                     cmp      rax, 0xa
0000000008e03cd1: 7c3a                         jl       0x8e03d0d
0000000008e03cd3: 4801e0                       add      rax, rsp
0000000008e03cd6: 4805d0010000                 add      rax, 0x1d0
0000000008e03cdc: 48ffc8                       dec      rax
0000000008e03cdf: 488d9424d9010000             lea      rdx, [rsp + 0x1d9]
0000000008e03ce7: 660f1f840000000000           nop      word ptr [rax + rax]
0000000008e03cf0: 0fb630                       movzx    esi, byte ptr [rax]
0000000008e03cf3: 0fb67aff                     movzx    edi, byte ptr [rdx - 1]
0000000008e03cf7: 408838                       mov      byte ptr [rax], dil
0000000008e03cfa: 408872ff                     mov      byte ptr [rdx - 1], sil
0000000008e03cfe: 48ffc8                       dec      rax
0000000008e03d01: 488d7201                     lea      rsi, [rdx + 1]
0000000008e03d05: 4839c2                       cmp      rdx, rax
0000000008e03d08: 4889f2                       mov      rdx, rsi
0000000008e03d0b: 72e3                         jb       0x8e03cf0
0000000008e03d0d: 48898c24d0010000             mov      qword ptr [rsp + 0x1d0], rcx
0000000008e03d15: 488dbc2418060000             lea      rdi, [rsp + 0x618]
0000000008e03d1d: e80e810100                   call     0x8e1be30
0000000008e03d22: 48c784248001000000000000     mov      qword ptr [rsp + 0x180], 0
0000000008e03d2e: b908000000                   mov      ecx, 8
0000000008e03d33: 89c2                         mov      edx, eax
0000000008e03d35: 66662e0f1f840000000000       nop      word ptr cs:[rax + rax]
0000000008e03d40: 4863f2                       movsxd   rsi, edx
0000000008e03d43: 4869d667666666               imul     rdx, rsi, 0x66666667
0000000008e03d4a: 4889d7                       mov      rdi, rdx
0000000008e03d4d: 48c1ef3f                     shr      rdi, 0x3f
0000000008e03d51: 48c1fa22                     sar      rdx, 0x22
0000000008e03d55: 01fa                         add      edx, edi
0000000008e03d57: 8d3c12                       lea      edi, [rdx + rdx]
0000000008e03d5a: 8d3cbf                       lea      edi, [rdi + rdi*4]
0000000008e03d5d: 4189f0                       mov      r8d, esi
0000000008e03d60: 4129f8                       sub      r8d, edi
0000000008e03d63: 4963f8                       movsxd   rdi, r8d
0000000008e03d66: 0fb67c1f23                   movzx    edi, byte ptr [rdi + rbx + 0x23]
0000000008e03d6b: 4088bc0c80010000             mov      byte ptr [rsp + rcx + 0x180], dil
0000000008e03d73: 48ffc1                       inc      rcx
0000000008e03d76: 83c609                       add      esi, 9
0000000008e03d79: 83fe12                       cmp      esi, 0x12
0000000008e03d7c: 77c2                         ja       0x8e03d40
0000000008e03d7e: 85c0                         test     eax, eax
0000000008e03d80: 790b                         jns      0x8e03d8d
0000000008e03d82: c6840c800100002d             mov      byte ptr [rsp + rcx + 0x180], 0x2d
0000000008e03d8a: 48ffc1                       inc      rcx
0000000008e03d8d: 488d842488010000             lea      rax, [rsp + 0x188]
0000000008e03d95: c6840c8001000000             mov      byte ptr [rsp + rcx + 0x180], 0
0000000008e03d9d: 4883f90a                     cmp      rcx, 0xa
0000000008e03da1: 7c3a                         jl       0x8e03ddd
0000000008e03da3: 4801e1                       add      rcx, rsp
0000000008e03da6: 4881c180010000               add      rcx, 0x180
0000000008e03dad: 48ffc9                       dec      rcx
0000000008e03db0: 488d942489010000             lea      rdx, [rsp + 0x189]
0000000008e03db8: 0f1f840000000000             nop      dword ptr [rax + rax]
0000000008e03dc0: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008e03dc3: 0fb67aff                     movzx    edi, byte ptr [rdx - 1]
0000000008e03dc7: 408839                       mov      byte ptr [rcx], dil
0000000008e03dca: 408872ff                     mov      byte ptr [rdx - 1], sil
0000000008e03dce: 48ffc9                       dec      rcx
0000000008e03dd1: 488d7201                     lea      rsi, [rdx + 1]
0000000008e03dd5: 4839ca                       cmp      rdx, rcx
0000000008e03dd8: 4889f2                       mov      rdx, rsi
0000000008e03ddb: 72e3                         jb       0x8e03dc0
0000000008e03ddd: 4889842480010000             mov      qword ptr [rsp + 0x180], rax
0000000008e03de5: 488d8424e0000000             lea      rax, [rsp + 0xe0]
0000000008e03ded: 4889442440                   mov      qword ptr [rsp + 0x40], rax
0000000008e03df2: 488d8424d0010000             lea      rax, [rsp + 0x1d0]
0000000008e03dfa: 4889442448                   mov      qword ptr [rsp + 0x48], rax
0000000008e03dff: 488d842480010000             lea      rax, [rsp + 0x180]
0000000008e03e07: 4889442450                   mov      qword ptr [rsp + 0x50], rax
0000000008e03e0c: 660fefc0                     pxor     xmm0, xmm0
0000000008e03e10: f30f7f442458                 movdqu   xmmword ptr [rsp + 0x58], xmm0
0000000008e03e16: f30f7f442468                 movdqu   xmmword ptr [rsp + 0x68], xmm0
0000000008e03e1c: f30f7f442478                 movdqu   xmmword ptr [rsp + 0x78], xmm0
0000000008e03e22: f30f7f842488000000           movdqu   xmmword ptr [rsp + 0x88], xmm0
0000000008e03e2b: f30f7f842498000000           movdqu   xmmword ptr [rsp + 0x98], xmm0
0000000008e03e34: f30f7f8424a8000000           movdqu   xmmword ptr [rsp + 0xa8], xmm0
0000000008e03e3d: 48c78424b800000000000000     mov      qword ptr [rsp + 0xb8], 0
0000000008e03e49: 488d3558b003f8               lea      rsi, [rip - 0x7fc4fa8]
0000000008e03e50: 488d9c2488050000             lea      rbx, [rsp + 0x588]
0000000008e03e58: 488d542440                   lea      rdx, [rsp + 0x40]
0000000008e03e5d: 4889df                       mov      rdi, rbx
0000000008e03e60: e88bda3000                   call     0x91118f0
0000000008e03e65: 4889df                       mov      rdi, rbx
0000000008e03e68: e8c3d73000                   call     0x9111630
0000000008e03e6d: 488b842470070000             mov      rax, qword ptr [rsp + 0x770]
0000000008e03e75: c7402807000000               mov      dword ptr [rax + 0x28], 7
0000000008e03e7c: e99e0d0000                   jmp      0x8e04c1f
0000000008e03e81: bf04000000                   mov      edi, 4
0000000008e03e86: e8052e3100                   call     0x9116c90
0000000008e03e8b: 85c0                         test     eax, eax
0000000008e03e8d: 0f84ed020000                 je       0x8e04180
0000000008e03e93: 488d15c46115f8               lea      rdx, [rip - 0x7ea9e3c]
0000000008e03e9a: 488d0d524d0bf8               lea      rcx, [rip - 0x7f4b2ae]
0000000008e03ea1: 4c8d0501941bf8               lea      r8, [rip - 0x7e46bff]
0000000008e03ea8: 488dbc2488050000             lea      rdi, [rsp + 0x588]
0000000008e03eb0: be04000000                   mov      esi, 4
0000000008e03eb5: 41b961010000                 mov      r9d, 0x161
0000000008e03ebb: 6a00                         push     0
0000000008e03ebd: 6a00                         push     0
0000000008e03ebf: e8dcd63000                   call     0x91115a0
0000000008e03ec4: 4883c410                     add      rsp, 0x10
0000000008e03ec8: 48c78424e000000000000000     mov      qword ptr [rsp + 0xe0], 0
0000000008e03ed4: b807000000                   mov      eax, 7
0000000008e03ed9: 488d8c24e7000000             lea      rcx, [rsp + 0xe7]
0000000008e03ee1: bacdcccccc                   mov      edx, 0xcccccccd
0000000008e03ee6: 488d351fb512f8               lea      rsi, [rip - 0x7ed4ae1]
0000000008e03eed: 0f1f00                       nop      dword ptr [rax]
0000000008e03ef0: 4489e7                       mov      edi, r12d
0000000008e03ef3: 480faffa                     imul     rdi, rdx
0000000008e03ef7: 48c1ef23                     shr      rdi, 0x23
0000000008e03efb: 448d043f                     lea      r8d, [rdi + rdi]
0000000008e03eff: 478d0480                     lea      r8d, [r8 + r8*4]
0000000008e03f03: 41f7d8                       neg      r8d
0000000008e03f06: 4501e0                       add      r8d, r12d
0000000008e03f09: 4183c023                     add      r8d, 0x23
0000000008e03f0d: 450fb60430                   movzx    r8d, byte ptr [r8 + rsi]
0000000008e03f12: 44884101                     mov      byte ptr [rcx + 1], r8b
0000000008e03f16: 48ffc1                       inc      rcx
0000000008e03f19: 48ffc0                       inc      rax
0000000008e03f1c: 4183fc09                     cmp      r12d, 9
0000000008e03f20: 4189fc                       mov      r12d, edi
0000000008e03f23: 77cb                         ja       0x8e03ef0
0000000008e03f25: 488d9424e8000000             lea      rdx, [rsp + 0xe8]
0000000008e03f2d: c6410100                     mov      byte ptr [rcx + 1], 0
0000000008e03f31: 4883f809                     cmp      rax, 9
0000000008e03f35: 7226                         jb       0x8e03f5d
0000000008e03f37: 488d8424e9000000             lea      rax, [rsp + 0xe9]
0000000008e03f3f: 90                           nop
0000000008e03f40: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008e03f43: 0fb678ff                     movzx    edi, byte ptr [rax - 1]
0000000008e03f47: 408839                       mov      byte ptr [rcx], dil
0000000008e03f4a: 48ffc9                       dec      rcx
0000000008e03f4d: 408870ff                     mov      byte ptr [rax - 1], sil
0000000008e03f51: 488d7001                     lea      rsi, [rax + 1]
0000000008e03f55: 4839c8                       cmp      rax, rcx
0000000008e03f58: 4889f0                       mov      rax, rsi
0000000008e03f5b: 72e3                         jb       0x8e03f40
0000000008e03f5d: 48899424e0000000             mov      qword ptr [rsp + 0xe0], rdx
0000000008e03f65: 488d8424e0000000             lea      rax, [rsp + 0xe0]
0000000008e03f6d: 4889442440                   mov      qword ptr [rsp + 0x40], rax
0000000008e03f72: 660fefc0                     pxor     xmm0, xmm0
0000000008e03f76: f30f7f442448                 movdqu   xmmword ptr [rsp + 0x48], xmm0
0000000008e03f7c: f30f7f442458                 movdqu   xmmword ptr [rsp + 0x58], xmm0
0000000008e03f82: f30f7f442468                 movdqu   xmmword ptr [rsp + 0x68], xmm0
0000000008e03f88: f30f7f442478                 movdqu   xmmword ptr [rsp + 0x78], xmm0
0000000008e03f8e: f30f7f842488000000           movdqu   xmmword ptr [rsp + 0x88], xmm0
0000000008e03f97: f30f7f842498000000           movdqu   xmmword ptr [rsp + 0x98], xmm0
0000000008e03fa0: f30f7f8424a8000000           movdqu   xmmword ptr [rsp + 0xa8], xmm0
0000000008e03fa9: 48c78424b800000000000000     mov      qword ptr [rsp + 0xb8], 0
0000000008e03fb5: 488d35750925f8               lea      rsi, [rip - 0x7daf68b]
0000000008e03fbc: 488d9c2488050000             lea      rbx, [rsp + 0x588]
0000000008e03fc4: 488d542440                   lea      rdx, [rsp + 0x40]
0000000008e03fc9: 4889df                       mov      rdi, rbx
0000000008e03fcc: e81fd93000                   call     0x91118f0
0000000008e03fd1: 4889df                       mov      rdi, rbx
0000000008e03fd4: e857d63000                   call     0x9111630
0000000008e03fd9: 31ed                         xor      ebp, ebp
0000000008e03fdb: e9590c0000                   jmp      0x8e04c39
0000000008e03fe0: d1e9                         shr      ecx, 1
0000000008e03fe2: 4c8bb424c8000000             mov      r14, qword ptr [rsp + 0xc8]
0000000008e03fea: 4c8dabd0000000               lea      r13, [rbx + 0xd0]
0000000008e03ff1: 4885c9                       test     rcx, rcx
0000000008e03ff4: 0f852bf9ffff                 jne      0x8e03925
0000000008e03ffa: 488b4b20                     mov      rcx, qword ptr [rbx + 0x20]
0000000008e03ffe: 0d00001e00                   or       eax, 0x1e0000
0000000008e04003: 41894778                     mov      dword ptr [r15 + 0x78], eax
0000000008e04007: 49894f50                     mov      qword ptr [r15 + 0x50], rcx
0000000008e0400b: 498b7e08                     mov      rdi, qword ptr [r14 + 8]
0000000008e0400f: 4885ff                       test     rdi, rdi
0000000008e04012: 0f8555f9ffff                 jne      0x8e0396d
0000000008e04018: e956f9ffff                   jmp      0x8e03973
0000000008e0401d: bf04000000                   mov      edi, 4
0000000008e04022: e8692c3100                   call     0x9116c90
0000000008e04027: 85c0                         test     eax, eax
0000000008e04029: 0f849c090000                 je       0x8e049cb
0000000008e0402f: 488d15286015f8               lea      rdx, [rip - 0x7ea9fd8]
0000000008e04036: 488d0db64b0bf8               lea      rcx, [rip - 0x7f4b44a]
0000000008e0403d: 4c8d0565921bf8               lea      r8, [rip - 0x7e46d9b]
0000000008e04044: 488dbc2488050000             lea      rdi, [rsp + 0x588]
0000000008e0404c: be04000000                   mov      esi, 4
0000000008e04051: 41b999010000                 mov      r9d, 0x199
0000000008e04057: 6a00                         push     0
0000000008e04059: 6a00                         push     0
0000000008e0405b: e840d53000                   call     0x91115a0
0000000008e04060: 4883c410                     add      rsp, 0x10
0000000008e04064: 48c78424e000000000000000     mov      qword ptr [rsp + 0xe0], 0
0000000008e04070: b807000000                   mov      eax, 7
0000000008e04075: 488d8c24e7000000             lea      rcx, [rsp + 0xe7]
0000000008e0407d: bacdcccccc                   mov      edx, 0xcccccccd
0000000008e04082: 488d3583b312f8               lea      rsi, [rip - 0x7ed4c7d]
0000000008e04089: 0f1f8000000000               nop      dword ptr [rax]
0000000008e04090: 4489e7                       mov      edi, r12d
0000000008e04093: 480faffa                     imul     rdi, rdx
0000000008e04097: 48c1ef23                     shr      rdi, 0x23
0000000008e0409b: 448d043f                     lea      r8d, [rdi + rdi]
0000000008e0409f: 478d0480                     lea      r8d, [r8 + r8*4]
0000000008e040a3: 41f7d8                       neg      r8d
0000000008e040a6: 4501e0                       add      r8d, r12d
0000000008e040a9: 4183c023                     add      r8d, 0x23
0000000008e040ad: 450fb60430                   movzx    r8d, byte ptr [r8 + rsi]
0000000008e040b2: 44884101                     mov      byte ptr [rcx + 1], r8b
0000000008e040b6: 48ffc1                       inc      rcx
0000000008e040b9: 48ffc0                       inc      rax
0000000008e040bc: 4183fc09                     cmp      r12d, 9
0000000008e040c0: 4189fc                       mov      r12d, edi
0000000008e040c3: 77cb                         ja       0x8e04090
0000000008e040c5: 488d9424e8000000             lea      rdx, [rsp + 0xe8]
0000000008e040cd: c6410100                     mov      byte ptr [rcx + 1], 0
0000000008e040d1: 4883f809                     cmp      rax, 9
0000000008e040d5: 7226                         jb       0x8e040fd
0000000008e040d7: 488d8424e9000000             lea      rax, [rsp + 0xe9]
0000000008e040df: 90                           nop
0000000008e040e0: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008e040e3: 0fb678ff                     movzx    edi, byte ptr [rax - 1]
0000000008e040e7: 408839                       mov      byte ptr [rcx], dil
0000000008e040ea: 48ffc9                       dec      rcx
0000000008e040ed: 408870ff                     mov      byte ptr [rax - 1], sil
0000000008e040f1: 488d7001                     lea      rsi, [rax + 1]
0000000008e040f5: 4839c8                       cmp      rax, rcx
0000000008e040f8: 4889f0                       mov      rax, rsi
0000000008e040fb: 72e3                         jb       0x8e040e0
0000000008e040fd: 48899424e0000000             mov      qword ptr [rsp + 0xe0], rdx
0000000008e04105: 488d8424e0000000             lea      rax, [rsp + 0xe0]
0000000008e0410d: 4889442440                   mov      qword ptr [rsp + 0x40], rax
0000000008e04112: 660fefc0                     pxor     xmm0, xmm0
0000000008e04116: f30f7f442448                 movdqu   xmmword ptr [rsp + 0x48], xmm0
0000000008e0411c: f30f7f442458                 movdqu   xmmword ptr [rsp + 0x58], xmm0
0000000008e04122: f30f7f442468                 movdqu   xmmword ptr [rsp + 0x68], xmm0
0000000008e04128: f30f7f442478                 movdqu   xmmword ptr [rsp + 0x78], xmm0
0000000008e0412e: f30f7f842488000000           movdqu   xmmword ptr [rsp + 0x88], xmm0
0000000008e04137: f30f7f842498000000           movdqu   xmmword ptr [rsp + 0x98], xmm0
0000000008e04140: f30f7f8424a8000000           movdqu   xmmword ptr [rsp + 0xa8], xmm0
0000000008e04149: 48c78424b800000000000000     mov      qword ptr [rsp + 0xb8], 0
0000000008e04155: 488d35d61ef8f7               lea      rsi, [rip - 0x807e12a]
0000000008e0415c: 488d9c2488050000             lea      rbx, [rsp + 0x588]
0000000008e04164: 488d542440                   lea      rdx, [rsp + 0x40]
0000000008e04169: 4889df                       mov      rdi, rbx
0000000008e0416c: e87fd73000                   call     0x91118f0
0000000008e04171: 4889df                       mov      rdi, rbx
0000000008e04174: e8b7d43000                   call     0x9111630
0000000008e04179: 31ed                         xor      ebp, ebp
0000000008e0417b: e9ac0a0000                   jmp      0x8e04c2c
0000000008e04180: 31ed                         xor      ebp, ebp
0000000008e04182: e9b20a0000                   jmp      0x8e04c39
0000000008e04187: c744242c00000000             mov      dword ptr [rsp + 0x2c], 0
0000000008e0418f: 488dbc24d8000000             lea      rdi, [rsp + 0xd8]
0000000008e04197: 488d74242c                   lea      rsi, [rsp + 0x2c]
0000000008e0419c: e88f440100                   call     0x8e18630
0000000008e041a1: 486354242c                   movsxd   rdx, dword ptr [rsp + 0x2c]
0000000008e041a6: 488bbc2440010000             mov      rdi, qword ptr [rsp + 0x140]
0000000008e041ae: 4889c6                       mov      rsi, rax
0000000008e041b1: e86ad63100                   call     0x9121820
0000000008e041b6: bf02000000                   mov      edi, 2
0000000008e041bb: e8d02a3100                   call     0x9116c90
0000000008e041c0: 85c0                         test     eax, eax
0000000008e041c2: 0f84570a0000                 je       0x8e04c1f
0000000008e041c8: 4c8dabb8000000               lea      r13, [rbx + 0xb8]
0000000008e041cf: 488d15885e15f8               lea      rdx, [rip - 0x7eaa178]
0000000008e041d6: 488d0d164a0bf8               lea      rcx, [rip - 0x7f4b5ea]
0000000008e041dd: 4c8d05c5901bf8               lea      r8, [rip - 0x7e46f3b]
0000000008e041e4: 488dbc2488050000             lea      rdi, [rsp + 0x588]
0000000008e041ec: be02000000                   mov      esi, 2
0000000008e041f1: 41b9c7010000                 mov      r9d, 0x1c7
0000000008e041f7: 6a00                         push     0
0000000008e041f9: 6a00                         push     0
0000000008e041fb: e8a0d33000                   call     0x91115a0
0000000008e04200: 4883c410                     add      rsp, 0x10
0000000008e04204: 48c78424e000000000000000     mov      qword ptr [rsp + 0xe0], 0
0000000008e04210: b807000000                   mov      eax, 7
0000000008e04215: 488d8c24e7000000             lea      rcx, [rsp + 0xe7]
0000000008e0421d: bacdcccccc                   mov      edx, 0xcccccccd
0000000008e04222: 4c8d3de3b112f8               lea      r15, [rip - 0x7ed4e1d]
0000000008e04229: 0f1f8000000000               nop      dword ptr [rax]
0000000008e04230: 4489e6                       mov      esi, r12d
0000000008e04233: 480faff2                     imul     rsi, rdx
0000000008e04237: 48c1ee23                     shr      rsi, 0x23
0000000008e0423b: 8d3c36                       lea      edi, [rsi + rsi]
0000000008e0423e: 8d3cbf                       lea      edi, [rdi + rdi*4]
0000000008e04241: f7df                         neg      edi
0000000008e04243: 4401e7                       add      edi, r12d
0000000008e04246: 83c723                       add      edi, 0x23
0000000008e04249: 420fb63c3f                   movzx    edi, byte ptr [rdi + r15]
0000000008e0424e: 40887901                     mov      byte ptr [rcx + 1], dil
0000000008e04252: 48ffc1                       inc      rcx
0000000008e04255: 48ffc0                       inc      rax
0000000008e04258: 4183fc09                     cmp      r12d, 9
0000000008e0425c: 4189f4                       mov      r12d, esi
0000000008e0425f: 77cf                         ja       0x8e04230
0000000008e04261: 488d9424e8000000             lea      rdx, [rsp + 0xe8]
0000000008e04269: c6410100                     mov      byte ptr [rcx + 1], 0
0000000008e0426d: 4883f809                     cmp      rax, 9
0000000008e04271: 722a                         jb       0x8e0429d
0000000008e04273: 488d8424e9000000             lea      rax, [rsp + 0xe9]
0000000008e0427b: 0f1f440000                   nop      dword ptr [rax + rax]
0000000008e04280: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008e04283: 0fb678ff                     movzx    edi, byte ptr [rax - 1]
0000000008e04287: 408839                       mov      byte ptr [rcx], dil
0000000008e0428a: 48ffc9                       dec      rcx
0000000008e0428d: 408870ff                     mov      byte ptr [rax - 1], sil
0000000008e04291: 488d7001                     lea      rsi, [rax + 1]
0000000008e04295: 4839c8                       cmp      rax, rcx
0000000008e04298: 4889f0                       mov      rax, rsi
0000000008e0429b: 72e3                         jb       0x8e04280
0000000008e0429d: 48899424e0000000             mov      qword ptr [rsp + 0xe0], rdx
0000000008e042a5: 488b442410                   mov      rax, qword ptr [rsp + 0x10]
0000000008e042aa: 8b5070                       mov      edx, dword ptr [rax + 0x70]
0000000008e042ad: 48c78424d001000000000000     mov      qword ptr [rsp + 0x1d0], 0
0000000008e042b9: b807000000                   mov      eax, 7
0000000008e042be: 488d8c24d7010000             lea      rcx, [rsp + 0x1d7]
0000000008e042c6: becdcccccc                   mov      esi, 0xcccccccd
0000000008e042cb: 0f1f440000                   nop      dword ptr [rax + rax]
0000000008e042d0: 89d7                         mov      edi, edx
0000000008e042d2: 480faffe                     imul     rdi, rsi
0000000008e042d6: 48c1ef23                     shr      rdi, 0x23
0000000008e042da: 448d043f                     lea      r8d, [rdi + rdi]
0000000008e042de: 478d0480                     lea      r8d, [r8 + r8*4]
0000000008e042e2: 41f7d8                       neg      r8d
0000000008e042e5: 4101d0                       add      r8d, edx
0000000008e042e8: 4183c023                     add      r8d, 0x23
0000000008e042ec: 470fb60438                   movzx    r8d, byte ptr [r8 + r15]
0000000008e042f1: 44884101                     mov      byte ptr [rcx + 1], r8b
0000000008e042f5: 48ffc1                       inc      rcx
0000000008e042f8: 48ffc0                       inc      rax
0000000008e042fb: 83fa09                       cmp      edx, 9
0000000008e042fe: 89fa                         mov      edx, edi
0000000008e04300: 77ce                         ja       0x8e042d0
0000000008e04302: 488d9424d8010000             lea      rdx, [rsp + 0x1d8]
0000000008e0430a: c6410100                     mov      byte ptr [rcx + 1], 0
0000000008e0430e: 4883f809                     cmp      rax, 9
0000000008e04312: 7229                         jb       0x8e0433d
0000000008e04314: 488d8424d9010000             lea      rax, [rsp + 0x1d9]
0000000008e0431c: 0f1f4000                     nop      dword ptr [rax]
0000000008e04320: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008e04323: 0fb678ff                     movzx    edi, byte ptr [rax - 1]
0000000008e04327: 408839                       mov      byte ptr [rcx], dil
0000000008e0432a: 48ffc9                       dec      rcx
0000000008e0432d: 408870ff                     mov      byte ptr [rax - 1], sil
0000000008e04331: 488d7001                     lea      rsi, [rax + 1]
0000000008e04335: 4839c8                       cmp      rax, rcx
0000000008e04338: 4889f0                       mov      rax, rsi
0000000008e0433b: 72e3                         jb       0x8e04320
0000000008e0433d: 48899424d0010000             mov      qword ptr [rsp + 0x1d0], rdx
0000000008e04345: 488b442410                   mov      rax, qword ptr [rsp + 0x10]
0000000008e0434a: 8b5024                       mov      edx, dword ptr [rax + 0x24]
0000000008e0434d: 48c784248001000000000000     mov      qword ptr [rsp + 0x180], 0
0000000008e04359: b807000000                   mov      eax, 7
0000000008e0435e: 488d8c2487010000             lea      rcx, [rsp + 0x187]
0000000008e04366: becdcccccc                   mov      esi, 0xcccccccd
0000000008e0436b: 0f1f440000                   nop      dword ptr [rax + rax]
0000000008e04370: 89d7                         mov      edi, edx
0000000008e04372: 480faffe                     imul     rdi, rsi
0000000008e04376: 48c1ef23                     shr      rdi, 0x23
0000000008e0437a: 448d043f                     lea      r8d, [rdi + rdi]
0000000008e0437e: 478d0480                     lea      r8d, [r8 + r8*4]
0000000008e04382: 41f7d8                       neg      r8d
0000000008e04385: 4101d0                       add      r8d, edx
0000000008e04388: 4183c023                     add      r8d, 0x23
0000000008e0438c: 470fb60438                   movzx    r8d, byte ptr [r8 + r15]
0000000008e04391: 44884101                     mov      byte ptr [rcx + 1], r8b
0000000008e04395: 48ffc1                       inc      rcx
0000000008e04398: 48ffc0                       inc      rax
0000000008e0439b: 83fa09                       cmp      edx, 9
0000000008e0439e: 89fa                         mov      edx, edi
0000000008e043a0: 77ce                         ja       0x8e04370
0000000008e043a2: 488d942488010000             lea      rdx, [rsp + 0x188]
0000000008e043aa: c6410100                     mov      byte ptr [rcx + 1], 0
0000000008e043ae: 4883f809                     cmp      rax, 9
0000000008e043b2: 7229                         jb       0x8e043dd
0000000008e043b4: 488d842489010000             lea      rax, [rsp + 0x189]
0000000008e043bc: 0f1f4000                     nop      dword ptr [rax]
0000000008e043c0: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008e043c3: 0fb678ff                     movzx    edi, byte ptr [rax - 1]
0000000008e043c7: 408839                       mov      byte ptr [rcx], dil
0000000008e043ca: 48ffc9                       dec      rcx
0000000008e043cd: 408870ff                     mov      byte ptr [rax - 1], sil
0000000008e043d1: 488d7001                     lea      rsi, [rax + 1]
0000000008e043d5: 4839c8                       cmp      rax, rcx
0000000008e043d8: 4889f0                       mov      rax, rsi
0000000008e043db: 72e3                         jb       0x8e043c0
0000000008e043dd: 4889942480010000             mov      qword ptr [rsp + 0x180], rdx
0000000008e043e5: 488b442410                   mov      rax, qword ptr [rsp + 0x10]
0000000008e043ea: 8b5030                       mov      edx, dword ptr [rax + 0x30]
0000000008e043ed: 48c784243805000000000000     mov      qword ptr [rsp + 0x538], 0
0000000008e043f9: b807000000                   mov      eax, 7
0000000008e043fe: 488d8c243f050000             lea      rcx, [rsp + 0x53f]
0000000008e04406: becdcccccc                   mov      esi, 0xcccccccd
0000000008e0440b: 0f1f440000                   nop      dword ptr [rax + rax]
0000000008e04410: 89d7                         mov      edi, edx
0000000008e04412: 480faffe                     imul     rdi, rsi
0000000008e04416: 48c1ef23                     shr      rdi, 0x23
0000000008e0441a: 448d043f                     lea      r8d, [rdi + rdi]
0000000008e0441e: 478d0480                     lea      r8d, [r8 + r8*4]
0000000008e04422: 41f7d8                       neg      r8d
0000000008e04425: 4101d0                       add      r8d, edx
0000000008e04428: 4183c023                     add      r8d, 0x23
0000000008e0442c: 470fb60438                   movzx    r8d, byte ptr [r8 + r15]
0000000008e04431: 44884101                     mov      byte ptr [rcx + 1], r8b
0000000008e04435: 48ffc1                       inc      rcx
0000000008e04438: 48ffc0                       inc      rax
0000000008e0443b: 83fa09                       cmp      edx, 9
0000000008e0443e: 89fa                         mov      edx, edi
0000000008e04440: 77ce                         ja       0x8e04410
0000000008e04442: 488d942440050000             lea      rdx, [rsp + 0x540]
0000000008e0444a: c6410100                     mov      byte ptr [rcx + 1], 0
0000000008e0444e: 4883f809                     cmp      rax, 9
0000000008e04452: 7229                         jb       0x8e0447d
0000000008e04454: 488d842441050000             lea      rax, [rsp + 0x541]
0000000008e0445c: 0f1f4000                     nop      dword ptr [rax]
0000000008e04460: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008e04463: 0fb678ff                     movzx    edi, byte ptr [rax - 1]
0000000008e04467: 408839                       mov      byte ptr [rcx], dil
0000000008e0446a: 48ffc9                       dec      rcx
0000000008e0446d: 408870ff                     mov      byte ptr [rax - 1], sil
0000000008e04471: 488d7001                     lea      rsi, [rax + 1]
0000000008e04475: 4839c8                       cmp      rax, rcx
0000000008e04478: 4889f0                       mov      rax, rsi
0000000008e0447b: 72e3                         jb       0x8e04460
0000000008e0447d: 4889942438050000             mov      qword ptr [rsp + 0x538], rdx
0000000008e04485: 488b442410                   mov      rax, qword ptr [rsp + 0x10]
0000000008e0448a: 8b5034                       mov      edx, dword ptr [rax + 0x34]
0000000008e0448d: 48c78424e804000000000000     mov      qword ptr [rsp + 0x4e8], 0
0000000008e04499: b807000000                   mov      eax, 7
0000000008e0449e: 488d8c24ef040000             lea      rcx, [rsp + 0x4ef]
0000000008e044a6: becdcccccc                   mov      esi, 0xcccccccd
0000000008e044ab: 0f1f440000                   nop      dword ptr [rax + rax]
0000000008e044b0: 89d7                         mov      edi, edx
0000000008e044b2: 480faffe                     imul     rdi, rsi
0000000008e044b6: 48c1ef23                     shr      rdi, 0x23
0000000008e044ba: 448d043f                     lea      r8d, [rdi + rdi]
0000000008e044be: 478d0480                     lea      r8d, [r8 + r8*4]
0000000008e044c2: 41f7d8                       neg      r8d
0000000008e044c5: 4101d0                       add      r8d, edx
0000000008e044c8: 4183c023                     add      r8d, 0x23
0000000008e044cc: 470fb60438                   movzx    r8d, byte ptr [r8 + r15]
0000000008e044d1: 44884101                     mov      byte ptr [rcx + 1], r8b
0000000008e044d5: 48ffc1                       inc      rcx
0000000008e044d8: 48ffc0                       inc      rax
0000000008e044db: 83fa09                       cmp      edx, 9
0000000008e044de: 89fa                         mov      edx, edi
0000000008e044e0: 77ce                         ja       0x8e044b0
0000000008e044e2: 488d9424f0040000             lea      rdx, [rsp + 0x4f0]
0000000008e044ea: c6410100                     mov      byte ptr [rcx + 1], 0
0000000008e044ee: 4883f809                     cmp      rax, 9
0000000008e044f2: 7229                         jb       0x8e0451d
0000000008e044f4: 488d8424f1040000             lea      rax, [rsp + 0x4f1]
0000000008e044fc: 0f1f4000                     nop      dword ptr [rax]
0000000008e04500: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008e04503: 0fb678ff                     movzx    edi, byte ptr [rax - 1]
0000000008e04507: 408839                       mov      byte ptr [rcx], dil
0000000008e0450a: 48ffc9                       dec      rcx
0000000008e0450d: 408870ff                     mov      byte ptr [rax - 1], sil
0000000008e04511: 488d7001                     lea      rsi, [rax + 1]
0000000008e04515: 4839c8                       cmp      rax, rcx
0000000008e04518: 4889f0                       mov      rax, rsi
0000000008e0451b: 72e3                         jb       0x8e04500
0000000008e0451d: 48899424e8040000             mov      qword ptr [rsp + 0x4e8], rdx
0000000008e04525: 488b442410                   mov      rax, qword ptr [rsp + 0x10]
0000000008e0452a: 8b5048                       mov      edx, dword ptr [rax + 0x48]
0000000008e0452d: 48c784249804000000000000     mov      qword ptr [rsp + 0x498], 0
0000000008e04539: b807000000                   mov      eax, 7
0000000008e0453e: 488d8c249f040000             lea      rcx, [rsp + 0x49f]
0000000008e04546: becdcccccc                   mov      esi, 0xcccccccd
0000000008e0454b: 0f1f440000                   nop      dword ptr [rax + rax]
0000000008e04550: 89d7                         mov      edi, edx
0000000008e04552: 480faffe                     imul     rdi, rsi
0000000008e04556: 48c1ef23                     shr      rdi, 0x23
0000000008e0455a: 448d043f                     lea      r8d, [rdi + rdi]
0000000008e0455e: 478d0480                     lea      r8d, [r8 + r8*4]
0000000008e04562: 41f7d8                       neg      r8d
0000000008e04565: 4101d0                       add      r8d, edx
0000000008e04568: 4183c023                     add      r8d, 0x23
0000000008e0456c: 470fb60438                   movzx    r8d, byte ptr [r8 + r15]
0000000008e04571: 44884101                     mov      byte ptr [rcx + 1], r8b
0000000008e04575: 48ffc1                       inc      rcx
0000000008e04578: 48ffc0                       inc      rax
0000000008e0457b: 83fa09                       cmp      edx, 9
0000000008e0457e: 89fa                         mov      edx, edi
0000000008e04580: 77ce                         ja       0x8e04550
0000000008e04582: 488d9424a0040000             lea      rdx, [rsp + 0x4a0]
0000000008e0458a: c6410100                     mov      byte ptr [rcx + 1], 0
0000000008e0458e: 4883f809                     cmp      rax, 9
0000000008e04592: 7229                         jb       0x8e045bd
0000000008e04594: 488d8424a1040000             lea      rax, [rsp + 0x4a1]
0000000008e0459c: 0f1f4000                     nop      dword ptr [rax]
0000000008e045a0: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008e045a3: 0fb678ff                     movzx    edi, byte ptr [rax - 1]
0000000008e045a7: 408839                       mov      byte ptr [rcx], dil
0000000008e045aa: 48ffc9                       dec      rcx
0000000008e045ad: 408870ff                     mov      byte ptr [rax - 1], sil
0000000008e045b1: 488d7001                     lea      rsi, [rax + 1]
0000000008e045b5: 4839c8                       cmp      rax, rcx
0000000008e045b8: 4889f0                       mov      rax, rsi
0000000008e045bb: 72e3                         jb       0x8e045a0
0000000008e045bd: 4889942498040000             mov      qword ptr [rsp + 0x498], rdx
0000000008e045c5: 488b442410                   mov      rax, qword ptr [rsp + 0x10]
0000000008e045ca: 8b504c                       mov      edx, dword ptr [rax + 0x4c]
0000000008e045cd: 48c784244804000000000000     mov      qword ptr [rsp + 0x448], 0
0000000008e045d9: b807000000                   mov      eax, 7
0000000008e045de: 488d8c244f040000             lea      rcx, [rsp + 0x44f]
0000000008e045e6: becdcccccc                   mov      esi, 0xcccccccd
0000000008e045eb: 0f1f440000                   nop      dword ptr [rax + rax]
0000000008e045f0: 89d7                         mov      edi, edx
0000000008e045f2: 480faffe                     imul     rdi, rsi
0000000008e045f6: 48c1ef23                     shr      rdi, 0x23
0000000008e045fa: 448d043f                     lea      r8d, [rdi + rdi]
0000000008e045fe: 478d0480                     lea      r8d, [r8 + r8*4]
0000000008e04602: 41f7d8                       neg      r8d
0000000008e04605: 4101d0                       add      r8d, edx
0000000008e04608: 4183c023                     add      r8d, 0x23
0000000008e0460c: 470fb60438                   movzx    r8d, byte ptr [r8 + r15]
0000000008e04611: 44884101                     mov      byte ptr [rcx + 1], r8b
0000000008e04615: 48ffc1                       inc      rcx
0000000008e04618: 48ffc0                       inc      rax
0000000008e0461b: 83fa09                       cmp      edx, 9
0000000008e0461e: 89fa                         mov      edx, edi
0000000008e04620: 77ce                         ja       0x8e045f0
0000000008e04622: 488d942450040000             lea      rdx, [rsp + 0x450]
0000000008e0462a: c6410100                     mov      byte ptr [rcx + 1], 0
0000000008e0462e: 4883f809                     cmp      rax, 9
0000000008e04632: 7229                         jb       0x8e0465d
0000000008e04634: 488d842451040000             lea      rax, [rsp + 0x451]
0000000008e0463c: 0f1f4000                     nop      dword ptr [rax]
0000000008e04640: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008e04643: 0fb678ff                     movzx    edi, byte ptr [rax - 1]
0000000008e04647: 408839                       mov      byte ptr [rcx], dil
0000000008e0464a: 48ffc9                       dec      rcx
0000000008e0464d: 408870ff                     mov      byte ptr [rax - 1], sil
0000000008e04651: 488d7001                     lea      rsi, [rax + 1]
0000000008e04655: 4839c8                       cmp      rax, rcx
0000000008e04658: 4889f0                       mov      rax, rsi
0000000008e0465b: 72e3                         jb       0x8e04640
0000000008e0465d: 4889942448040000             mov      qword ptr [rsp + 0x448], rdx
0000000008e04665: 488b442410                   mov      rax, qword ptr [rsp + 0x10]
0000000008e0466a: 8b5038                       mov      edx, dword ptr [rax + 0x38]
0000000008e0466d: 48c78424f803000000000000     mov      qword ptr [rsp + 0x3f8], 0
0000000008e04679: b807000000                   mov      eax, 7
0000000008e0467e: 488d8c24ff030000             lea      rcx, [rsp + 0x3ff]
0000000008e04686: becdcccccc                   mov      esi, 0xcccccccd
0000000008e0468b: 0f1f440000                   nop      dword ptr [rax + rax]
0000000008e04690: 89d7                         mov      edi, edx
0000000008e04692: 480faffe                     imul     rdi, rsi
0000000008e04696: 48c1ef23                     shr      rdi, 0x23
0000000008e0469a: 448d043f                     lea      r8d, [rdi + rdi]
0000000008e0469e: 478d0480                     lea      r8d, [r8 + r8*4]
0000000008e046a2: 41f7d8                       neg      r8d
0000000008e046a5: 4101d0                       add      r8d, edx
0000000008e046a8: 4183c023                     add      r8d, 0x23
0000000008e046ac: 470fb60438                   movzx    r8d, byte ptr [r8 + r15]
0000000008e046b1: 44884101                     mov      byte ptr [rcx + 1], r8b
0000000008e046b5: 48ffc1                       inc      rcx
0000000008e046b8: 48ffc0                       inc      rax
0000000008e046bb: 83fa09                       cmp      edx, 9
0000000008e046be: 89fa                         mov      edx, edi
0000000008e046c0: 77ce                         ja       0x8e04690
0000000008e046c2: 488d942400040000             lea      rdx, [rsp + 0x400]
0000000008e046ca: c6410100                     mov      byte ptr [rcx + 1], 0
0000000008e046ce: 4883f809                     cmp      rax, 9
0000000008e046d2: 7229                         jb       0x8e046fd
0000000008e046d4: 488d842401040000             lea      rax, [rsp + 0x401]
0000000008e046dc: 0f1f4000                     nop      dword ptr [rax]
0000000008e046e0: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008e046e3: 0fb678ff                     movzx    edi, byte ptr [rax - 1]
0000000008e046e7: 408839                       mov      byte ptr [rcx], dil
0000000008e046ea: 48ffc9                       dec      rcx
0000000008e046ed: 408870ff                     mov      byte ptr [rax - 1], sil
0000000008e046f1: 488d7001                     lea      rsi, [rax + 1]
0000000008e046f5: 4839c8                       cmp      rax, rcx
0000000008e046f8: 4889f0                       mov      rax, rsi
0000000008e046fb: 72e3                         jb       0x8e046e0
0000000008e046fd: 48899424f8030000             mov      qword ptr [rsp + 0x3f8], rdx
0000000008e04705: 488b442410                   mov      rax, qword ptr [rsp + 0x10]
0000000008e0470a: 8b502c                       mov      edx, dword ptr [rax + 0x2c]
0000000008e0470d: 48c78424a803000000000000     mov      qword ptr [rsp + 0x3a8], 0
0000000008e04719: b807000000                   mov      eax, 7
0000000008e0471e: 488d8c24af030000             lea      rcx, [rsp + 0x3af]
0000000008e04726: becdcccccc                   mov      esi, 0xcccccccd
0000000008e0472b: 0f1f440000                   nop      dword ptr [rax + rax]
0000000008e04730: 89d7                         mov      edi, edx
0000000008e04732: 480faffe                     imul     rdi, rsi
0000000008e04736: 48c1ef23                     shr      rdi, 0x23
0000000008e0473a: 448d043f                     lea      r8d, [rdi + rdi]
0000000008e0473e: 478d0480                     lea      r8d, [r8 + r8*4]
0000000008e04742: 41f7d8                       neg      r8d
0000000008e04745: 4101d0                       add      r8d, edx
0000000008e04748: 4183c023                     add      r8d, 0x23
0000000008e0474c: 470fb60438                   movzx    r8d, byte ptr [r8 + r15]
0000000008e04751: 44884101                     mov      byte ptr [rcx + 1], r8b
0000000008e04755: 48ffc1                       inc      rcx
0000000008e04758: 48ffc0                       inc      rax
0000000008e0475b: 83fa09                       cmp      edx, 9
0000000008e0475e: 89fa                         mov      edx, edi
0000000008e04760: 77ce                         ja       0x8e04730
0000000008e04762: 488d9424b0030000             lea      rdx, [rsp + 0x3b0]
0000000008e0476a: c6410100                     mov      byte ptr [rcx + 1], 0
0000000008e0476e: 4883f809                     cmp      rax, 9
0000000008e04772: 7229                         jb       0x8e0479d
0000000008e04774: 488d8424b1030000             lea      rax, [rsp + 0x3b1]
0000000008e0477c: 0f1f4000                     nop      dword ptr [rax]
0000000008e04780: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008e04783: 0fb678ff                     movzx    edi, byte ptr [rax - 1]
0000000008e04787: 408839                       mov      byte ptr [rcx], dil
0000000008e0478a: 48ffc9                       dec      rcx
0000000008e0478d: 408870ff                     mov      byte ptr [rax - 1], sil
0000000008e04791: 488d7001                     lea      rsi, [rax + 1]
0000000008e04795: 4839c8                       cmp      rax, rcx
0000000008e04798: 4889f0                       mov      rax, rsi
0000000008e0479b: 72e3                         jb       0x8e04780
0000000008e0479d: 48899424a8030000             mov      qword ptr [rsp + 0x3a8], rdx
0000000008e047a5: 488b442410                   mov      rax, qword ptr [rsp + 0x10]
0000000008e047aa: 8b505c                       mov      edx, dword ptr [rax + 0x5c]
0000000008e047ad: 48c784245803000000000000     mov      qword ptr [rsp + 0x358], 0
0000000008e047b9: b807000000                   mov      eax, 7
0000000008e047be: 488d8c245f030000             lea      rcx, [rsp + 0x35f]
0000000008e047c6: becdcccccc                   mov      esi, 0xcccccccd
0000000008e047cb: 0f1f440000                   nop      dword ptr [rax + rax]
0000000008e047d0: 89d7                         mov      edi, edx
0000000008e047d2: 480faffe                     imul     rdi, rsi
0000000008e047d6: 48c1ef23                     shr      rdi, 0x23
0000000008e047da: 448d043f                     lea      r8d, [rdi + rdi]
0000000008e047de: 478d0480                     lea      r8d, [r8 + r8*4]
0000000008e047e2: 41f7d8                       neg      r8d
0000000008e047e5: 4101d0                       add      r8d, edx
0000000008e047e8: 4183c023                     add      r8d, 0x23
0000000008e047ec: 470fb60438                   movzx    r8d, byte ptr [r8 + r15]
0000000008e047f1: 44884101                     mov      byte ptr [rcx + 1], r8b
0000000008e047f5: 48ffc1                       inc      rcx
0000000008e047f8: 48ffc0                       inc      rax
0000000008e047fb: 83fa09                       cmp      edx, 9
0000000008e047fe: 89fa                         mov      edx, edi
0000000008e04800: 77ce                         ja       0x8e047d0
0000000008e04802: 488d942460030000             lea      rdx, [rsp + 0x360]
0000000008e0480a: c6410100                     mov      byte ptr [rcx + 1], 0
0000000008e0480e: 4883f809                     cmp      rax, 9
0000000008e04812: 7229                         jb       0x8e0483d
0000000008e04814: 488d842461030000             lea      rax, [rsp + 0x361]
0000000008e0481c: 0f1f4000                     nop      dword ptr [rax]
0000000008e04820: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008e04823: 0fb678ff                     movzx    edi, byte ptr [rax - 1]
0000000008e04827: 408839                       mov      byte ptr [rcx], dil
0000000008e0482a: 48ffc9                       dec      rcx
0000000008e0482d: 408870ff                     mov      byte ptr [rax - 1], sil
0000000008e04831: 488d7001                     lea      rsi, [rax + 1]
0000000008e04835: 4839c8                       cmp      rax, rcx
0000000008e04838: 4889f0                       mov      rax, rsi
0000000008e0483b: 72e3                         jb       0x8e04820
0000000008e0483d: 4889942458030000             mov      qword ptr [rsp + 0x358], rdx
0000000008e04845: 488b442410                   mov      rax, qword ptr [rsp + 0x10]
0000000008e0484a: 8b5020                       mov      edx, dword ptr [rax + 0x20]
0000000008e0484d: 48c784240803000000000000     mov      qword ptr [rsp + 0x308], 0
0000000008e04859: b807000000                   mov      eax, 7
0000000008e0485e: 488d8c240f030000             lea      rcx, [rsp + 0x30f]
0000000008e04866: becdcccccc                   mov      esi, 0xcccccccd
0000000008e0486b: 0f1f440000                   nop      dword ptr [rax + rax]
0000000008e04870: 89d7                         mov      edi, edx
0000000008e04872: 480faffe                     imul     rdi, rsi
0000000008e04876: 48c1ef23                     shr      rdi, 0x23
0000000008e0487a: 448d043f                     lea      r8d, [rdi + rdi]
0000000008e0487e: 478d0480                     lea      r8d, [r8 + r8*4]
0000000008e04882: 41f7d8                       neg      r8d
0000000008e04885: 4101d0                       add      r8d, edx
0000000008e04888: 4183c023                     add      r8d, 0x23
0000000008e0488c: 470fb60438                   movzx    r8d, byte ptr [r8 + r15]
0000000008e04891: 44884101                     mov      byte ptr [rcx + 1], r8b
0000000008e04895: 48ffc1                       inc      rcx
0000000008e04898: 48ffc0                       inc      rax
0000000008e0489b: 83fa09                       cmp      edx, 9
0000000008e0489e: 89fa                         mov      edx, edi
0000000008e048a0: 77ce                         ja       0x8e04870
0000000008e048a2: 488d942410030000             lea      rdx, [rsp + 0x310]
0000000008e048aa: c6410100                     mov      byte ptr [rcx + 1], 0
0000000008e048ae: 4883f809                     cmp      rax, 9
0000000008e048b2: 7229                         jb       0x8e048dd
0000000008e048b4: 488d842411030000             lea      rax, [rsp + 0x311]
0000000008e048bc: 0f1f4000                     nop      dword ptr [rax]
0000000008e048c0: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008e048c3: 0fb678ff                     movzx    edi, byte ptr [rax - 1]
0000000008e048c7: 408839                       mov      byte ptr [rcx], dil
0000000008e048ca: 48ffc9                       dec      rcx
0000000008e048cd: 408870ff                     mov      byte ptr [rax - 1], sil
0000000008e048d1: 488d7001                     lea      rsi, [rax + 1]
0000000008e048d5: 4839c8                       cmp      rax, rcx
0000000008e048d8: 4889f0                       mov      rax, rsi
0000000008e048db: 72e3                         jb       0x8e048c0
0000000008e048dd: 4889942408030000             mov      qword ptr [rsp + 0x308], rdx
0000000008e048e5: 488b442410                   mov      rax, qword ptr [rsp + 0x10]
0000000008e048ea: 488b4860                     mov      rcx, qword ptr [rax + 0x60]
0000000008e048ee: 48c78424b802000000000000     mov      qword ptr [rsp + 0x2b8], 0
0000000008e048fa: bf07000000                   mov      edi, 7
0000000008e048ff: 488db424bf020000             lea      rsi, [rsp + 0x2bf]
0000000008e04907: 49bccdcccccccccccccc         movabs   r12, 0xcccccccccccccccd
0000000008e04911: 6666666666662e0f1f840000000000 nop      word ptr cs:[rax + rax]
0000000008e04920: 4889c8                       mov      rax, rcx
0000000008e04923: 49f7e4                       mul      r12
0000000008e04926: 48c1ea03                     shr      rdx, 3
0000000008e0492a: 488d0412                     lea      rax, [rdx + rdx]
0000000008e0492e: 488d0480                     lea      rax, [rax + rax*4]
0000000008e04932: 4d89f8                       mov      r8, r15
0000000008e04935: 4929c0                       sub      r8, rax
0000000008e04938: 410fb6440823                 movzx    eax, byte ptr [r8 + rcx + 0x23]
0000000008e0493e: 884601                       mov      byte ptr [rsi + 1], al
0000000008e04941: 48ffc6                       inc      rsi
0000000008e04944: 48ffc7                       inc      rdi
0000000008e04947: 4883f909                     cmp      rcx, 9
0000000008e0494b: 4889d1                       mov      rcx, rdx
0000000008e0494e: 77d0                         ja       0x8e04920
0000000008e04950: 488d8424c0020000             lea      rax, [rsp + 0x2c0]
0000000008e04958: c6460100                     mov      byte ptr [rsi + 1], 0
0000000008e0495c: 4883ff09                     cmp      rdi, 9
0000000008e04960: 722a                         jb       0x8e0498c
0000000008e04962: 488d8c24c1020000             lea      rcx, [rsp + 0x2c1]
0000000008e0496a: 660f1f440000                 nop      word ptr [rax + rax]
0000000008e04970: 0fb616                       movzx    edx, byte ptr [rsi]
0000000008e04973: 0fb679ff                     movzx    edi, byte ptr [rcx - 1]
0000000008e04977: 40883e                       mov      byte ptr [rsi], dil
0000000008e0497a: 48ffce                       dec      rsi
0000000008e0497d: 8851ff                       mov      byte ptr [rcx - 1], dl
0000000008e04980: 488d5101                     lea      rdx, [rcx + 1]
0000000008e04984: 4839f1                       cmp      rcx, rsi
0000000008e04987: 4889d1                       mov      rcx, rdx
0000000008e0498a: 72e4                         jb       0x8e04970
0000000008e0498c: 48898424b8020000             mov      qword ptr [rsp + 0x2b8], rax
0000000008e04994: 4c8db42438020000             lea      r14, [rsp + 0x238]
0000000008e0499c: 4c89f7                       mov      rdi, r14
0000000008e0499f: 4c89ee                       mov      rsi, r13
0000000008e049a2: e8a9713100                   call     0x911bb50
0000000008e049a7: 488dbc2468010000             lea      rdi, [rsp + 0x168]
0000000008e049af: 4c89f6                       mov      rsi, r14
0000000008e049b2: e8896d0100                   call     0x8e1b740
0000000008e049b7: f684246801000001             test     byte ptr [rsp + 0x168], 1
0000000008e049bf: 7411                         je       0x8e049d2
0000000008e049c1: 488b842478010000             mov      rax, qword ptr [rsp + 0x178]
0000000008e049c9: eb0f                         jmp      0x8e049da
0000000008e049cb: 31ed                         xor      ebp, ebp
0000000008e049cd: e95a020000                   jmp      0x8e04c2c
0000000008e049d2: 488d842469010000             lea      rax, [rsp + 0x169]
0000000008e049da: 488b742420                   mov      rsi, qword ptr [rsp + 0x20]
0000000008e049df: 48898424e8060000             mov      qword ptr [rsp + 0x6e8], rax
0000000008e049e7: c68424f006000000             mov      byte ptr [rsp + 0x6f0], 0
0000000008e049ef: 4c8db42420020000             lea      r14, [rsp + 0x220]
0000000008e049f7: 4c89f7                       mov      rdi, r14
0000000008e049fa: e851713100                   call     0x911bb50
0000000008e049ff: 488dbc2450010000             lea      rdi, [rsp + 0x150]
0000000008e04a07: 4c89f6                       mov      rsi, r14
0000000008e04a0a: e8316d0100                   call     0x8e1b740
0000000008e04a0f: f684245001000001             test     byte ptr [rsp + 0x150], 1
0000000008e04a17: 740a                         je       0x8e04a23
0000000008e04a19: 488b842460010000             mov      rax, qword ptr [rsp + 0x160]
0000000008e04a21: eb08                         jmp      0x8e04a2b
0000000008e04a23: 488d842451010000             lea      rax, [rsp + 0x151]
0000000008e04a2b: 4889842498060000             mov      qword ptr [rsp + 0x698], rax
0000000008e04a33: c68424a006000000             mov      byte ptr [rsp + 0x6a0], 0
0000000008e04a3b: 488b8be8000000               mov      rcx, qword ptr [rbx + 0xe8]
0000000008e04a42: 48c784246802000000000000     mov      qword ptr [rsp + 0x268], 0
0000000008e04a4e: bf07000000                   mov      edi, 7
0000000008e04a53: 488db4246f020000             lea      rsi, [rsp + 0x26f]
0000000008e04a5b: 0f1f440000                   nop      dword ptr [rax + rax]
0000000008e04a60: 4889c8                       mov      rax, rcx
0000000008e04a63: 49f7e4                       mul      r12
0000000008e04a66: 48c1ea03                     shr      rdx, 3
0000000008e04a6a: 488d0412                     lea      rax, [rdx + rdx]
0000000008e04a6e: 488d0480                     lea      rax, [rax + rax*4]
0000000008e04a72: 4d89f8                       mov      r8, r15
0000000008e04a75: 4929c0                       sub      r8, rax
0000000008e04a78: 410fb6440823                 movzx    eax, byte ptr [r8 + rcx + 0x23]
0000000008e04a7e: 884601                       mov      byte ptr [rsi + 1], al
0000000008e04a81: 48ffc6                       inc      rsi
0000000008e04a84: 48ffc7                       inc      rdi
0000000008e04a87: 4883f909                     cmp      rcx, 9
0000000008e04a8b: 4889d1                       mov      rcx, rdx
0000000008e04a8e: 77d0                         ja       0x8e04a60
0000000008e04a90: 488d842470020000             lea      rax, [rsp + 0x270]
0000000008e04a98: c6460100                     mov      byte ptr [rsi + 1], 0
0000000008e04a9c: 4883ff09                     cmp      rdi, 9
0000000008e04aa0: 722a                         jb       0x8e04acc
0000000008e04aa2: 488d8c2471020000             lea      rcx, [rsp + 0x271]
0000000008e04aaa: 660f1f440000                 nop      word ptr [rax + rax]
0000000008e04ab0: 0fb616                       movzx    edx, byte ptr [rsi]
0000000008e04ab3: 0fb679ff                     movzx    edi, byte ptr [rcx - 1]
0000000008e04ab7: 40883e                       mov      byte ptr [rsi], dil
0000000008e04aba: 48ffce                       dec      rsi
0000000008e04abd: 8851ff                       mov      byte ptr [rcx - 1], dl
0000000008e04ac0: 488d5101                     lea      rdx, [rcx + 1]
0000000008e04ac4: 4839f1                       cmp      rcx, rsi
0000000008e04ac7: 4889d1                       mov      rcx, rdx
0000000008e04aca: 72e4                         jb       0x8e04ab0
0000000008e04acc: 4889842468020000             mov      qword ptr [rsp + 0x268], rax
0000000008e04ad4: 488d8424e0000000             lea      rax, [rsp + 0xe0]
0000000008e04adc: 4889442440                   mov      qword ptr [rsp + 0x40], rax
0000000008e04ae1: 488d8424d0010000             lea      rax, [rsp + 0x1d0]
0000000008e04ae9: 4889442448                   mov      qword ptr [rsp + 0x48], rax
0000000008e04aee: 488d842480010000             lea      rax, [rsp + 0x180]
0000000008e04af6: 4889442450                   mov      qword ptr [rsp + 0x50], rax
0000000008e04afb: 488d842438050000             lea      rax, [rsp + 0x538]
0000000008e04b03: 4889442458                   mov      qword ptr [rsp + 0x58], rax
0000000008e04b08: 488d8424e8040000             lea      rax, [rsp + 0x4e8]
0000000008e04b10: 4889442460                   mov      qword ptr [rsp + 0x60], rax
0000000008e04b15: 488d842498040000             lea      rax, [rsp + 0x498]
0000000008e04b1d: 4889442468                   mov      qword ptr [rsp + 0x68], rax
0000000008e04b22: 488d842448040000             lea      rax, [rsp + 0x448]
0000000008e04b2a: 4889442470                   mov      qword ptr [rsp + 0x70], rax
0000000008e04b2f: 488d8424f8030000             lea      rax, [rsp + 0x3f8]
0000000008e04b37: 4889442478                   mov      qword ptr [rsp + 0x78], rax
0000000008e04b3c: 488d8424a8030000             lea      rax, [rsp + 0x3a8]
0000000008e04b44: 4889842480000000             mov      qword ptr [rsp + 0x80], rax
0000000008e04b4c: 488d842458030000             lea      rax, [rsp + 0x358]
0000000008e04b54: 4889842488000000             mov      qword ptr [rsp + 0x88], rax
0000000008e04b5c: 488d842408030000             lea      rax, [rsp + 0x308]
0000000008e04b64: 4889842490000000             mov      qword ptr [rsp + 0x90], rax
0000000008e04b6c: 488d8424b8020000             lea      rax, [rsp + 0x2b8]
0000000008e04b74: 4889842498000000             mov      qword ptr [rsp + 0x98], rax
0000000008e04b7c: 488d8424e8060000             lea      rax, [rsp + 0x6e8]
0000000008e04b84: 48898424a0000000             mov      qword ptr [rsp + 0xa0], rax
0000000008e04b8c: 488d842498060000             lea      rax, [rsp + 0x698]
0000000008e04b94: 48898424a8000000             mov      qword ptr [rsp + 0xa8], rax
0000000008e04b9c: 488d842468020000             lea      rax, [rsp + 0x268]
0000000008e04ba4: 48898424b0000000             mov      qword ptr [rsp + 0xb0], rax
0000000008e04bac: 48c78424b800000000000000     mov      qword ptr [rsp + 0xb8], 0
0000000008e04bb8: 488d35a8ca13f8               lea      rsi, [rip - 0x7ec3558]
0000000008e04bbf: 488dbc2488050000             lea      rdi, [rsp + 0x588]
0000000008e04bc7: 488d542440                   lea      rdx, [rsp + 0x40]
0000000008e04bcc: e81fcd3000                   call     0x91118f0
0000000008e04bd1: f684245001000001             test     byte ptr [rsp + 0x150], 1
0000000008e04bd9: 0f8588000000                 jne      0x8e04c67
0000000008e04bdf: f684242002000001             test     byte ptr [rsp + 0x220], 1
0000000008e04be7: 0f8595000000                 jne      0x8e04c82
0000000008e04bed: f684246801000001             test     byte ptr [rsp + 0x168], 1
0000000008e04bf5: 0f85a2000000                 jne      0x8e04c9d
0000000008e04bfb: f684243802000001             test     byte ptr [rsp + 0x238], 1
0000000008e04c03: 740d                         je       0x8e04c12
0000000008e04c05: 488bbc2448020000             mov      rdi, qword ptr [rsp + 0x248]
0000000008e04c0d: e82e5570fb                   call     0x450a140
0000000008e04c12: 488dbc2488050000             lea      rdi, [rsp + 0x588]
0000000008e04c1a: e811ca3000                   call     0x9111630
0000000008e04c1f: 488dbc24d8000000             lea      rdi, [rsp + 0xd8]
0000000008e04c27: e8f4370100                   call     0x8e18420
0000000008e04c2c: 488dbc2470060000             lea      rdi, [rsp + 0x670]
0000000008e04c34: e887cd3100                   call     0x91219c0
0000000008e04c39: 488dbc2450020000             lea      rdi, [rsp + 0x250]
0000000008e04c41: e85a6e0100                   call     0x8e1baa0
0000000008e04c46: 488dbc2418060000             lea      rdi, [rsp + 0x618]
0000000008e04c4e: e81d710100                   call     0x8e1bd70
0000000008e04c53: 89e8                         mov      eax, ebp
0000000008e04c55: 4881c438070000               add      rsp, 0x738
0000000008e04c5c: 5b                           pop      rbx
0000000008e04c5d: 415c                         pop      r12
0000000008e04c5f: 415d                         pop      r13
0000000008e04c61: 415e                         pop      r14
0000000008e04c63: 415f                         pop      r15
0000000008e04c65: 5d                           pop      rbp
0000000008e04c66: c3                           ret
0000000008e04c67: 488bbc2460010000             mov      rdi, qword ptr [rsp + 0x160]
0000000008e04c6f: e8cc5470fb                   call     0x450a140
0000000008e04c74: f684242002000001             test     byte ptr [rsp + 0x220], 1
0000000008e04c7c: 0f846bffffff                 je       0x8e04bed
0000000008e04c82: 488bbc2430020000             mov      rdi, qword ptr [rsp + 0x230]
0000000008e04c8a: e8b15470fb                   call     0x450a140
0000000008e04c8f: f684246801000001             test     byte ptr [rsp + 0x168], 1
0000000008e04c97: 0f845effffff                 je       0x8e04bfb
0000000008e04c9d: 488bbc2478010000             mov      rdi, qword ptr [rsp + 0x178]
0000000008e04ca5: e8965470fb                   call     0x450a140
0000000008e04caa: f684243802000001             test     byte ptr [rsp + 0x238], 1
0000000008e04cb2: 0f854dffffff                 jne      0x8e04c05
0000000008e04cb8: e955ffffff                   jmp      0x8e04c12
