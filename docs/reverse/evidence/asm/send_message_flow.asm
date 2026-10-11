0000000006957340: 55                           push     rbp
0000000006957341: 4157                         push     r15
0000000006957343: 4156                         push     r14
0000000006957345: 4155                         push     r13
0000000006957347: 4154                         push     r12
0000000006957349: 53                           push     rbx
000000000695734a: 4881ec68030000               sub      rsp, 0x368
0000000006957351: 4989d4                       mov      r12, rdx
0000000006957354: 4889b42470020000             mov      qword ptr [rsp + 0x270], rsi
000000000695735c: 4889fb                       mov      rbx, rdi
000000000695735f: 488b02                       mov      rax, qword ptr [rdx]
0000000006957362: 4c8b7818                     mov      r15, qword ptr [rax + 0x18]
0000000006957366: 4c897c2420                   mov      qword ptr [rsp + 0x20], r15
000000000695736b: 488b4020                     mov      rax, qword ptr [rax + 0x20]
000000000695736f: 4889442428                   mov      qword ptr [rsp + 0x28], rax
0000000006957374: 4885c0                       test     rax, rax
0000000006957377: 7405                         je       0x695737e
0000000006957379: f048ff4008                   lock inc qword ptr [rax + 8]
000000000695737e: 0f28051b2340fa               movaps   xmm0, xmmword ptr [rip - 0x5bfdce5]
0000000006957385: 0f114320                     movups   xmmword ptr [rbx + 0x20], xmm0
0000000006957389: 0f114310                     movups   xmmword ptr [rbx + 0x10], xmm0
000000000695738d: 0f1103                       movups   xmmword ptr [rbx], xmm0
0000000006957390: 4889df                       mov      rdi, rbx
0000000006957393: 31f6                         xor      esi, esi
0000000006957395: 31d2                         xor      edx, edx
0000000006957397: e864d9b7ff                   call     0x64d4d00
000000000695739c: 498d6f30                     lea      rbp, [r15 + 0x30]
00000000069573a0: 4889ef                       mov      rdi, rbp
00000000069573a3: e89897a300                   call     0x7390b40
00000000069573a8: 84c0                         test     al, al
00000000069573aa: 7410                         je       0x69573bc
00000000069573ac: 4c89ff                       mov      rdi, r15
00000000069573af: e84c90fbff                   call     0x6910400
00000000069573b4: 84c0                         test     al, al
00000000069573b6: 0f840f030000                 je       0x69576cb
00000000069573bc: 0f2805dd2240fa               movaps   xmm0, xmmword ptr [rip - 0x5bfdd23]
00000000069573c3: 0f29442450                   movaps   xmmword ptr [rsp + 0x50], xmm0
00000000069573c8: 0f29442440                   movaps   xmmword ptr [rsp + 0x40], xmm0
00000000069573cd: 0f29442430                   movaps   xmmword ptr [rsp + 0x30], xmm0
00000000069573d2: 488d7c2430                   lea      rdi, [rsp + 0x30]
00000000069573d7: e8f4600901                   call     0x79ed4d0
00000000069573dc: 804c245801                   or       byte ptr [rsp + 0x58], 1
00000000069573e1: c744245001000000             mov      dword ptr [rsp + 0x50], 1
00000000069573e9: 4863442440                   movsxd   rax, dword ptr [rsp + 0x40]
00000000069573ee: 8b742444                     mov      esi, dword ptr [rsp + 0x44]
00000000069573f2: 39f0                         cmp      eax, esi
00000000069573f4: 7d12                         jge      0x6957408
00000000069573f6: 488b4c2438                   mov      rcx, qword ptr [rsp + 0x38]
00000000069573fb: 8d5001                       lea      edx, [rax + 1]
00000000069573fe: 89542440                     mov      dword ptr [rsp + 0x40], edx
0000000006957402: 4c8b2cc1                     mov      r13, qword ptr [rcx + rax*8]
0000000006957406: eb46                         jmp      0x695744e
0000000006957408: 3b742448                     cmp      esi, dword ptr [rsp + 0x48]
000000000695740c: 7510                         jne      0x695741e
000000000695740e: 488d7c2438                   lea      rdi, [rsp + 0x38]
0000000006957413: ffc6                         inc      esi
0000000006957415: e8267d5f02                   call     0x8f4f140
000000000695741a: 8b742444                     mov      esi, dword ptr [rsp + 0x44]
000000000695741e: ffc6                         inc      esi
0000000006957420: 89742444                     mov      dword ptr [rsp + 0x44], esi
0000000006957424: bf38000000                   mov      edi, 0x38
0000000006957429: e87269d103                   call     0xa66dda0
000000000695742e: 4989c5                       mov      r13, rax
0000000006957431: 4889c7                       mov      rdi, rax
0000000006957434: e8b7540901                   call     0x79ec8f0
0000000006957439: 488b442438                   mov      rax, qword ptr [rsp + 0x38]
000000000695743e: 48634c2440                   movsxd   rcx, dword ptr [rsp + 0x40]
0000000006957443: 8d5101                       lea      edx, [rcx + 1]
0000000006957446: 89542440                     mov      dword ptr [rsp + 0x40], edx
000000000695744a: 4c892cc8                     mov      qword ptr [rax + rcx*8], r13
000000000695744e: 41804d3402                   or       byte ptr [r13 + 0x34], 2
0000000006957453: 498b7d10                     mov      rdi, qword ptr [r13 + 0x10]
0000000006957457: 483b3da2c01904               cmp      rdi, qword ptr [rip + 0x419c0a2] ; reloc 0xad176f0
000000000695745e: 751f                         jne      0x695747f
0000000006957460: bf18000000                   mov      edi, 0x18
0000000006957465: e83669d103                   call     0xa66dda0
000000000695746a: 4889c7                       mov      rdi, rax
000000000695746d: 0f57c0                       xorps    xmm0, xmm0
0000000006957470: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000006957473: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
000000000695747b: 49894510                     mov      qword ptr [r13 + 0x10], rax
000000000695747f: 498db730010000               lea      rsi, [r15 + 0x130]
0000000006957486: e82569bbfd                   call     0x450ddb0
000000000695748b: 41804d3401                   or       byte ptr [r13 + 0x34], 1
0000000006957490: 4d8b7508                     mov      r14, qword ptr [r13 + 8]
0000000006957494: 4d85f6                       test     r14, r14
0000000006957497: 7519                         jne      0x69574b2
0000000006957499: bf18000000                   mov      edi, 0x18
000000000695749e: e8fd68d103                   call     0xa66dda0
00000000069574a3: 4989c6                       mov      r14, rax
00000000069574a6: 4889c7                       mov      rdi, rax
00000000069574a9: e842952401                   call     0x7ba09f0
00000000069574ae: 4d897508                     mov      qword ptr [r13 + 8], r14
00000000069574b2: 41804e1401                   or       byte ptr [r14 + 0x14], 1
00000000069574b7: 498b7e08                     mov      rdi, qword ptr [r14 + 8]
00000000069574bb: 483b3d3ec01904               cmp      rdi, qword ptr [rip + 0x419c03e] ; reloc 0xad176f0
00000000069574c2: 751f                         jne      0x69574e3
00000000069574c4: bf18000000                   mov      edi, 0x18
00000000069574c9: e8d268d103                   call     0xa66dda0
00000000069574ce: 4889c7                       mov      rdi, rax
00000000069574d1: 0f57c0                       xorps    xmm0, xmm0
00000000069574d4: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000069574d7: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000069574df: 49894608                     mov      qword ptr [r14 + 8], rax
00000000069574e3: 4889ee                       mov      rsi, rbp
00000000069574e6: e8c568bbfd                   call     0x450ddb0
00000000069574eb: 418b470c                     mov      eax, dword ptr [r15 + 0xc]
00000000069574ef: 418b4d34                     mov      ecx, dword ptr [r13 + 0x34]
00000000069574f3: 89ca                         mov      edx, ecx
00000000069574f5: 83ca04                       or       edx, 4
00000000069574f8: 41895534                     mov      dword ptr [r13 + 0x34], edx
00000000069574fc: 41894518                     mov      dword ptr [r13 + 0x18], eax
0000000006957500: 418b8714010000               mov      eax, dword ptr [r15 + 0x114]
0000000006957507: 83c90c                       or       ecx, 0xc
000000000695750a: 41894d34                     mov      dword ptr [r13 + 0x34], ecx
000000000695750e: 4189451c                     mov      dword ptr [r13 + 0x1c], eax
0000000006957512: 498b3424                     mov      rsi, qword ptr [r12]
0000000006957516: 488dbc24c0000000             lea      rdi, [rsp + 0xc0]
000000000695751e: e87de00600                   call     0x69c55a0
0000000006957523: 488dbc24c0000000             lea      rdi, [rsp + 0xc0]
000000000695752b: e8708f62fe                   call     0x4f804a0
0000000006957530: 41804d3410                   or       byte ptr [r13 + 0x34], 0x10
0000000006957535: 41894528                     mov      dword ptr [r13 + 0x28], eax
0000000006957539: f68424c000000001             test     byte ptr [rsp + 0xc0], 1
0000000006957541: 740d                         je       0x6957550
0000000006957543: 488bbc24d0000000             mov      rdi, qword ptr [rsp + 0xd0]
000000000695754b: e8f02bbbfd                   call     0x450a140
0000000006957550: 410fb68760010000             movzx    eax, byte ptr [r15 + 0x160]
0000000006957558: a801                         test     al, 1
000000000695755a: 7509                         jne      0x6957565
000000000695755c: d1e8                         shr      eax, 1
000000000695755e: 4885c0                       test     rax, rax
0000000006957561: 750e                         jne      0x6957571
0000000006957563: eb49                         jmp      0x69575ae
0000000006957565: 498b8768010000               mov      rax, qword ptr [r15 + 0x168]
000000000695756c: 4885c0                       test     rax, rax
000000000695756f: 743d                         je       0x69575ae
0000000006957571: 41804d3420                   or       byte ptr [r13 + 0x34], 0x20
0000000006957576: 498b7d20                     mov      rdi, qword ptr [r13 + 0x20]
000000000695757a: 483b3d7fbf1904               cmp      rdi, qword ptr [rip + 0x419bf7f] ; reloc 0xad176f0
0000000006957581: 751f                         jne      0x69575a2
0000000006957583: bf18000000                   mov      edi, 0x18
0000000006957588: e81368d103                   call     0xa66dda0
000000000695758d: 4889c7                       mov      rdi, rax
0000000006957590: 0f57c0                       xorps    xmm0, xmm0
0000000006957593: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000006957596: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
000000000695759e: 49894520                     mov      qword ptr [r13 + 0x20], rax
00000000069575a2: 498db760010000               lea      rsi, [r15 + 0x160]
00000000069575a9: e80268bbfd                   call     0x450ddb0
00000000069575ae: 0f2805eb2040fa               movaps   xmm0, xmmword ptr [rip - 0x5bfdf15]
00000000069575b5: 0f29842480000000             movaps   xmmword ptr [rsp + 0x80], xmm0
00000000069575bd: 0f29442470                   movaps   xmmword ptr [rsp + 0x70], xmm0
00000000069575c2: 0f29442460                   movaps   xmmword ptr [rsp + 0x60], xmm0
00000000069575c7: e8144f6eff                   call     0x603c4e0
00000000069575cc: 488b08                       mov      rcx, qword ptr [rax]
00000000069575cf: 4889c7                       mov      rdi, rax
00000000069575d2: ff5118                       call     qword ptr [rcx + 0x18]
00000000069575d5: 66c78424500100000000         mov      word ptr [rsp + 0x150], 0
00000000069575df: 48b900000000c0d40100         movabs   rcx, 0x1d4c000000000
00000000069575e9: 48898c24c0000000             mov      qword ptr [rsp + 0xc0], rcx
00000000069575f1: c78424e400000000000000       mov      dword ptr [rsp + 0xe4], 0
00000000069575fc: 0f57c0                       xorps    xmm0, xmm0
00000000069575ff: 0f118424c8000000             movups   xmmword ptr [rsp + 0xc8], xmm0
0000000006957607: 0f118424d1000000             movups   xmmword ptr [rsp + 0xd1], xmm0
000000000695760f: 488d7c2460                   lea      rdi, [rsp + 0x60]
0000000006957614: 488d542430                   lea      rdx, [rsp + 0x30]
0000000006957619: 488d8c2450010000             lea      rcx, [rsp + 0x150]
0000000006957621: 4c8d8424c0000000             lea      r8, [rsp + 0xc0]
0000000006957629: 4889c6                       mov      rsi, rax
000000000695762c: e80f0f0000                   call     0x6958540
0000000006957631: f68424c800000001             test     byte ptr [rsp + 0xc8], 1
0000000006957639: 740d                         je       0x6957648
000000000695763b: 488bbc24d8000000             mov      rdi, qword ptr [rsp + 0xd8]
0000000006957643: e8f82abbfd                   call     0x450a140
0000000006957648: f684245001000001             test     byte ptr [rsp + 0x150], 1
0000000006957650: 740d                         je       0x695765f
0000000006957652: 488bbc2460010000             mov      rdi, qword ptr [rsp + 0x160]
000000000695765a: e8e12abbfd                   call     0x450a140
000000000695765f: 8b442460                     mov      eax, dword ptr [rsp + 0x60]
0000000006957663: 0b442464                     or       eax, dword ptr [rsp + 0x64]
0000000006957667: 0f8550070000                 jne      0x6957dbd
000000000695766d: 488b842480000000             mov      rax, qword ptr [rsp + 0x80]
0000000006957675: 83782800                     cmp      dword ptr [rax + 0x28], 0
0000000006957679: 0f843e070000                 je       0x6957dbd
000000000695767f: 488b4010                     mov      rax, qword ptr [rax + 0x10]
0000000006957683: 4c8b30                       mov      r14, qword ptr [rax]
0000000006957686: 41837e1000                   cmp      dword ptr [r14 + 0x10], 0
000000000695768b: 0f841c010000                 je       0x69577ad
0000000006957691: bf04000000                   mov      edi, 4
0000000006957696: e8f5f57b02                   call     0x9116c90
000000000695769b: 85c0                         test     eax, eax
000000000695769d: 0f841a070000                 je       0x6957dbd
00000000069576a3: 488dbc2420020000             lea      rdi, [rsp + 0x220]
00000000069576ab: e820b3a500                   call     0x73b29d0
00000000069576b0: f684242002000001             test     byte ptr [rsp + 0x220], 1
00000000069576b8: 0f8436010000                 je       0x69577f4
00000000069576be: 488b942430020000             mov      rdx, qword ptr [rsp + 0x230]
00000000069576c6: e931010000                   jmp      0x69577fc
00000000069576cb: 41c7871801000005000000       mov      dword ptr [r15 + 0x118], 5
00000000069576d6: 8b0b                         mov      ecx, dword ptr [rbx]
00000000069576d8: 448b4304                     mov      r8d, dword ptr [rbx + 4]
00000000069576dc: 488dbc24c0000000             lea      rdi, [rsp + 0xc0]
00000000069576e4: be01000000                   mov      esi, 1
00000000069576e9: ba01000000                   mov      edx, 1
00000000069576ee: e8bdf80600                   call     0x69c6fb0
00000000069576f3: 488b8424c0000000             mov      rax, qword ptr [rsp + 0xc0]
00000000069576fb: 488903                       mov      qword ptr [rbx], rax
00000000069576fe: 488d7b08                     lea      rdi, [rbx + 8]
0000000006957702: 488db424c8000000             lea      rsi, [rsp + 0xc8]
000000000695770a: e8a166bbfd                   call     0x450ddb0
000000000695770f: 488b8c24e0000000             mov      rcx, qword ptr [rsp + 0xe0]
0000000006957717: 488b8424e8000000             mov      rax, qword ptr [rsp + 0xe8]
000000000695771f: 4885c0                       test     rax, rax
0000000006957722: 7405                         je       0x6957729
0000000006957724: f048ff4008                   lock inc qword ptr [rax + 8]
0000000006957729: 48894b20                     mov      qword ptr [rbx + 0x20], rcx
000000000695772d: 4c8b7328                     mov      r14, qword ptr [rbx + 0x28]
0000000006957731: 48894328                     mov      qword ptr [rbx + 0x28], rax
0000000006957735: 4d85f6                       test     r14, r14
0000000006957738: 7423                         je       0x695775d
000000000695773a: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
0000000006957741: f0490fc14608                 lock xadd qword ptr [r14 + 8], rax
0000000006957747: 4885c0                       test     rax, rax
000000000695774a: 7511                         jne      0x695775d
000000000695774c: 498b06                       mov      rax, qword ptr [r14]
000000000695774f: 4c89f7                       mov      rdi, r14
0000000006957752: ff5010                       call     qword ptr [rax + 0x10]
0000000006957755: 4c89f7                       mov      rdi, r14
0000000006957758: e873fabdfd                   call     0x45371d0
000000000695775d: 4c8bb424e8000000             mov      r14, qword ptr [rsp + 0xe8]
0000000006957765: 4d85f6                       test     r14, r14
0000000006957768: 7423                         je       0x695778d
000000000695776a: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
0000000006957771: f0490fc14608                 lock xadd qword ptr [r14 + 8], rax
0000000006957777: 4885c0                       test     rax, rax
000000000695777a: 7511                         jne      0x695778d
000000000695777c: 498b06                       mov      rax, qword ptr [r14]
000000000695777f: 4c89f7                       mov      rdi, r14
0000000006957782: ff5010                       call     qword ptr [rax + 0x10]
0000000006957785: 4c89f7                       mov      rdi, r14
0000000006957788: e843fabdfd                   call     0x45371d0
000000000695778d: f68424c800000001             test     byte ptr [rsp + 0xc8], 1
0000000006957795: 0f84580b0000                 je       0x69582f3
000000000695779b: 488bbc24d8000000             mov      rdi, qword ptr [rsp + 0xd8]
00000000069577a3: e89829bbfd                   call     0x450a140
00000000069577a8: e9460b0000                   jmp      0x69582f3
00000000069577ad: 41c7871801000002000000       mov      dword ptr [r15 + 0x118], 2
00000000069577b8: 498b4628                     mov      rax, qword ptr [r14 + 0x28]
00000000069577bc: 498987f8000000               mov      qword ptr [r15 + 0xf8], rax
00000000069577c3: bf02000000                   mov      edi, 2
00000000069577c8: e8c3f47b02                   call     0x9116c90
00000000069577cd: 85c0                         test     eax, eax
00000000069577cf: 0f84e8050000                 je       0x6957dbd
00000000069577d5: 488d7c2408                   lea      rdi, [rsp + 8]
00000000069577da: e8f1b1a500                   call     0x73b29d0
00000000069577df: f644240801                   test     byte ptr [rsp + 8], 1
00000000069577e4: 0f8401020000                 je       0x69579eb
00000000069577ea: 488b542418                   mov      rdx, qword ptr [rsp + 0x18]
00000000069577ef: e9fc010000                   jmp      0x69579f0
00000000069577f4: 488d942421020000             lea      rdx, [rsp + 0x221]
00000000069577fc: 488d0d5f386dfa               lea      rcx, [rip - 0x592c7a1]
0000000006957803: 4c8d0550d64dfa               lea      r8, [rip - 0x5b229b0]
000000000695780a: 488dbc24c0000000             lea      rdi, [rsp + 0xc0]
0000000006957812: be04000000                   mov      esi, 4
0000000006957817: 41b96c000000                 mov      r9d, 0x6c
000000000695781d: 6a00                         push     0
000000000695781f: 6a00                         push     0
0000000006957821: e87a9d7b02                   call     0x91115a0
0000000006957826: 4883c410                     add      rsp, 0x10
000000000695782a: 4c8b7c2420                   mov      r15, qword ptr [rsp + 0x20]
000000000695782f: 488dbc2478020000             lea      rdi, [rsp + 0x278]
0000000006957837: 4c89fe                       mov      rsi, r15
000000000695783a: e8210070ff                   call     0x6057860
000000000695783f: f684247802000001             test     byte ptr [rsp + 0x278], 1
0000000006957847: 740a                         je       0x6957853
0000000006957849: 488b842488020000             mov      rax, qword ptr [rsp + 0x288]
0000000006957851: eb08                         jmp      0x695785b
0000000006957853: 488d842479020000             lea      rax, [rsp + 0x279]
000000000695785b: 4889842418030000             mov      qword ptr [rsp + 0x318], rax
0000000006957863: c684242003000000             mov      byte ptr [rsp + 0x320], 0
000000000695786b: 418b4e10                     mov      ecx, dword ptr [r14 + 0x10]
000000000695786f: 48c78424d001000000000000     mov      qword ptr [rsp + 0x1d0], 0
000000000695787b: b808000000                   mov      eax, 8
0000000006957880: 488d15857b5dfa               lea      rdx, [rip - 0x5a2847b] ; 'ZYXWVUTSRQPONMLKJIHGFEDCBA9876543210123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'
0000000006957887: 89ce                         mov      esi, ecx
0000000006957889: 0f1f8000000000               nop      dword ptr [rax]
0000000006957890: 4863fe                       movsxd   rdi, esi
0000000006957893: 4869f767666666               imul     rsi, rdi, 0x66666667
000000000695789a: 4989f0                       mov      r8, rsi
000000000695789d: 49c1e83f                     shr      r8, 0x3f
00000000069578a1: 48c1fe22                     sar      rsi, 0x22
00000000069578a5: 4401c6                       add      esi, r8d
00000000069578a8: 448d0436                     lea      r8d, [rsi + rsi]
00000000069578ac: 478d0480                     lea      r8d, [r8 + r8*4]
00000000069578b0: 4189f9                       mov      r9d, edi
00000000069578b3: 4529c1                       sub      r9d, r8d
00000000069578b6: 4d63c1                       movsxd   r8, r9d
00000000069578b9: 450fb6441023                 movzx    r8d, byte ptr [r8 + rdx + 0x23]
00000000069578bf: 44888404d0010000             mov      byte ptr [rsp + rax + 0x1d0], r8b
00000000069578c7: 48ffc0                       inc      rax
00000000069578ca: 83c709                       add      edi, 9
00000000069578cd: 83ff12                       cmp      edi, 0x12
00000000069578d0: 77be                         ja       0x6957890
00000000069578d2: 85c9                         test     ecx, ecx
00000000069578d4: 790b                         jns      0x69578e1
00000000069578d6: c68404d00100002d             mov      byte ptr [rsp + rax + 0x1d0], 0x2d
00000000069578de: 48ffc0                       inc      rax
00000000069578e1: 488d8c24d8010000             lea      rcx, [rsp + 0x1d8]
00000000069578e9: c68404d001000000             mov      byte ptr [rsp + rax + 0x1d0], 0
00000000069578f1: 4883f80a                     cmp      rax, 0xa
00000000069578f5: 7c36                         jl       0x695792d
00000000069578f7: 4801e0                       add      rax, rsp
00000000069578fa: 4805d0010000                 add      rax, 0x1d0
0000000006957900: 48ffc8                       dec      rax
0000000006957903: 488d9424d9010000             lea      rdx, [rsp + 0x1d9]
000000000695790b: 0f1f440000                   nop      dword ptr [rax + rax]
0000000006957910: 0fb630                       movzx    esi, byte ptr [rax]
0000000006957913: 0fb67aff                     movzx    edi, byte ptr [rdx - 1]
0000000006957917: 408838                       mov      byte ptr [rax], dil
000000000695791a: 408872ff                     mov      byte ptr [rdx - 1], sil
000000000695791e: 48ffc8                       dec      rax
0000000006957921: 488d7201                     lea      rsi, [rdx + 1]
0000000006957925: 4839c2                       cmp      rdx, rax
0000000006957928: 4889f2                       mov      rdx, rsi
000000000695792b: 72e3                         jb       0x6957910
000000000695792d: 48898c24d0010000             mov      qword ptr [rsp + 0x1d0], rcx
0000000006957935: 488d842418030000             lea      rax, [rsp + 0x318]
000000000695793d: 4889842450010000             mov      qword ptr [rsp + 0x150], rax
0000000006957945: 488d8424d0010000             lea      rax, [rsp + 0x1d0]
000000000695794d: 4889842458010000             mov      qword ptr [rsp + 0x158], rax
0000000006957955: 0f57c0                       xorps    xmm0, xmm0
0000000006957958: 0f29842460010000             movaps   xmmword ptr [rsp + 0x160], xmm0
0000000006957960: 0f29842470010000             movaps   xmmword ptr [rsp + 0x170], xmm0
0000000006957968: 0f29842480010000             movaps   xmmword ptr [rsp + 0x180], xmm0
0000000006957970: 0f29842490010000             movaps   xmmword ptr [rsp + 0x190], xmm0
0000000006957978: 0f298424a0010000             movaps   xmmword ptr [rsp + 0x1a0], xmm0
0000000006957980: 0f298424b0010000             movaps   xmmword ptr [rsp + 0x1b0], xmm0
0000000006957988: 0f298424c0010000             movaps   xmmword ptr [rsp + 0x1c0], xmm0
0000000006957990: 488d354c6e55fa               lea      rsi, [rip - 0x5aa91b4]
0000000006957997: 488dbc24c0000000             lea      rdi, [rsp + 0xc0]
000000000695799f: 488d942450010000             lea      rdx, [rsp + 0x150]
00000000069579a7: e8449f7b02                   call     0x91118f0
00000000069579ac: f684247802000001             test     byte ptr [rsp + 0x278], 1
00000000069579b4: 740d                         je       0x69579c3
00000000069579b6: 488bbc2488020000             mov      rdi, qword ptr [rsp + 0x288]
00000000069579be: e87d27bbfd                   call     0x450a140
00000000069579c3: 488dbc24c0000000             lea      rdi, [rsp + 0xc0]
00000000069579cb: e8609c7b02                   call     0x9111630
00000000069579d0: f684242002000001             test     byte ptr [rsp + 0x220], 1
00000000069579d8: 0f84df030000                 je       0x6957dbd
00000000069579de: 488bbc2430020000             mov      rdi, qword ptr [rsp + 0x230]
00000000069579e6: e9cd030000                   jmp      0x6957db8
00000000069579eb: 488d542409                   lea      rdx, [rsp + 9]
00000000069579f0: 488d0d6b366dfa               lea      rcx, [rip - 0x592c995]
00000000069579f7: 4c8d055cd44dfa               lea      r8, [rip - 0x5b22ba4]
00000000069579fe: 488dbc24c0000000             lea      rdi, [rsp + 0xc0]
0000000006957a06: be02000000                   mov      esi, 2
0000000006957a0b: 41b96a000000                 mov      r9d, 0x6a
0000000006957a11: 6a00                         push     0
0000000006957a13: 6a00                         push     0
0000000006957a15: e8869b7b02                   call     0x91115a0
0000000006957a1a: 4883c410                     add      rsp, 0x10
0000000006957a1e: 4c8b7c2420                   mov      r15, qword ptr [rsp + 0x20]
0000000006957a23: 488dbc2498000000             lea      rdi, [rsp + 0x98]
0000000006957a2b: 4c89fe                       mov      rsi, r15
0000000006957a2e: e82dfe6fff                   call     0x6057860
0000000006957a33: f684249800000001             test     byte ptr [rsp + 0x98], 1
0000000006957a3b: 740a                         je       0x6957a47
0000000006957a3d: 488b8424a8000000             mov      rax, qword ptr [rsp + 0xa8]
0000000006957a45: eb08                         jmp      0x6957a4f
0000000006957a47: 488d842499000000             lea      rax, [rsp + 0x99]
0000000006957a4f: 4889842418030000             mov      qword ptr [rsp + 0x318], rax
0000000006957a57: c684242003000000             mov      byte ptr [rsp + 0x320], 0
0000000006957a5f: 498b4e28                     mov      rcx, qword ptr [r14 + 0x28]
0000000006957a63: 48c78424d001000000000000     mov      qword ptr [rsp + 0x1d0], 0
0000000006957a6f: 41b807000000                 mov      r8d, 7
0000000006957a75: 488dbc24d7010000             lea      rdi, [rsp + 0x1d7]
0000000006957a7d: 49b9cdcccccccccccccc         movabs   r9, 0xcccccccccccccccd
0000000006957a87: 488d357e795dfa               lea      rsi, [rip - 0x5a28682] ; 'ZYXWVUTSRQPONMLKJIHGFEDCBA9876543210123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'
0000000006957a8e: 6690                         nop
0000000006957a90: 4889c8                       mov      rax, rcx
0000000006957a93: 49f7e1                       mul      r9
0000000006957a96: 48c1ea03                     shr      rdx, 3
0000000006957a9a: 488d0412                     lea      rax, [rdx + rdx]
0000000006957a9e: 488d0480                     lea      rax, [rax + rax*4]
0000000006957aa2: 4989f2                       mov      r10, rsi
0000000006957aa5: 4929c2                       sub      r10, rax
0000000006957aa8: 410fb6440a23                 movzx    eax, byte ptr [r10 + rcx + 0x23]
0000000006957aae: 884701                       mov      byte ptr [rdi + 1], al
0000000006957ab1: 48ffc7                       inc      rdi
0000000006957ab4: 49ffc0                       inc      r8
0000000006957ab7: 4883f909                     cmp      rcx, 9
0000000006957abb: 4889d1                       mov      rcx, rdx
0000000006957abe: 77d0                         ja       0x6957a90
0000000006957ac0: 488d8424d8010000             lea      rax, [rsp + 0x1d8]
0000000006957ac8: c6470100                     mov      byte ptr [rdi + 1], 0
0000000006957acc: 4983f809                     cmp      r8, 9
0000000006957ad0: 722b                         jb       0x6957afd
0000000006957ad2: 488d8c24d9010000             lea      rcx, [rsp + 0x1d9]
0000000006957ada: 660f1f440000                 nop      word ptr [rax + rax]
0000000006957ae0: 0fb617                       movzx    edx, byte ptr [rdi]
0000000006957ae3: 440fb641ff                   movzx    r8d, byte ptr [rcx - 1]
0000000006957ae8: 448807                       mov      byte ptr [rdi], r8b
0000000006957aeb: 48ffcf                       dec      rdi
0000000006957aee: 8851ff                       mov      byte ptr [rcx - 1], dl
0000000006957af1: 488d5101                     lea      rdx, [rcx + 1]
0000000006957af5: 4839f9                       cmp      rcx, rdi
0000000006957af8: 4889d1                       mov      rcx, rdx
0000000006957afb: 72e3                         jb       0x6957ae0
0000000006957afd: 48898424d0010000             mov      qword ptr [rsp + 0x1d0], rax
0000000006957b05: 418b9714010000               mov      edx, dword ptr [r15 + 0x114]
0000000006957b0c: 48c784242002000000000000     mov      qword ptr [rsp + 0x220], 0
0000000006957b18: b807000000                   mov      eax, 7
0000000006957b1d: 488d8c2427020000             lea      rcx, [rsp + 0x227]
0000000006957b25: bfcdcccccc                   mov      edi, 0xcccccccd
0000000006957b2a: 660f1f440000                 nop      word ptr [rax + rax]
0000000006957b30: 4189d0                       mov      r8d, edx
0000000006957b33: 4c0fafc7                     imul     r8, rdi
0000000006957b37: 49c1e823                     shr      r8, 0x23
0000000006957b3b: 478d0c00                     lea      r9d, [r8 + r8]
0000000006957b3f: 478d0c89                     lea      r9d, [r9 + r9*4]
0000000006957b43: 41f7d9                       neg      r9d
0000000006957b46: 4101d1                       add      r9d, edx
0000000006957b49: 4183c123                     add      r9d, 0x23
0000000006957b4d: 450fb60c31                   movzx    r9d, byte ptr [r9 + rsi]
0000000006957b52: 44884901                     mov      byte ptr [rcx + 1], r9b
0000000006957b56: 48ffc1                       inc      rcx
0000000006957b59: 48ffc0                       inc      rax
0000000006957b5c: 83fa09                       cmp      edx, 9
0000000006957b5f: 4489c2                       mov      edx, r8d
0000000006957b62: 77cc                         ja       0x6957b30
0000000006957b64: 488d942428020000             lea      rdx, [rsp + 0x228]
0000000006957b6c: c6410100                     mov      byte ptr [rcx + 1], 0
0000000006957b70: 4883f809                     cmp      rax, 9
0000000006957b74: 7228                         jb       0x6957b9e
0000000006957b76: 488d842429020000             lea      rax, [rsp + 0x229]
0000000006957b7e: 6690                         nop
0000000006957b80: 0fb639                       movzx    edi, byte ptr [rcx]
0000000006957b83: 440fb640ff                   movzx    r8d, byte ptr [rax - 1]
0000000006957b88: 448801                       mov      byte ptr [rcx], r8b
0000000006957b8b: 48ffc9                       dec      rcx
0000000006957b8e: 408878ff                     mov      byte ptr [rax - 1], dil
0000000006957b92: 488d7801                     lea      rdi, [rax + 1]
0000000006957b96: 4839c8                       cmp      rax, rcx
0000000006957b99: 4889f8                       mov      rax, rdi
0000000006957b9c: 72e2                         jb       0x6957b80
0000000006957b9e: 4889942420020000             mov      qword ptr [rsp + 0x220], rdx
0000000006957ba6: 418b561c                     mov      edx, dword ptr [r14 + 0x1c]
0000000006957baa: 48c784247802000000000000     mov      qword ptr [rsp + 0x278], 0
0000000006957bb6: b807000000                   mov      eax, 7
0000000006957bbb: 488d8c247f020000             lea      rcx, [rsp + 0x27f]
0000000006957bc3: bfcdcccccc                   mov      edi, 0xcccccccd
0000000006957bc8: 0f1f840000000000             nop      dword ptr [rax + rax]
0000000006957bd0: 4189d0                       mov      r8d, edx
0000000006957bd3: 4c0fafc7                     imul     r8, rdi
0000000006957bd7: 49c1e823                     shr      r8, 0x23
0000000006957bdb: 478d0c00                     lea      r9d, [r8 + r8]
0000000006957bdf: 478d0c89                     lea      r9d, [r9 + r9*4]
0000000006957be3: 41f7d9                       neg      r9d
0000000006957be6: 4101d1                       add      r9d, edx
0000000006957be9: 4183c123                     add      r9d, 0x23
0000000006957bed: 450fb60c31                   movzx    r9d, byte ptr [r9 + rsi]
0000000006957bf2: 44884901                     mov      byte ptr [rcx + 1], r9b
0000000006957bf6: 48ffc1                       inc      rcx
0000000006957bf9: 48ffc0                       inc      rax
0000000006957bfc: 83fa09                       cmp      edx, 9
0000000006957bff: 4489c2                       mov      edx, r8d
0000000006957c02: 77cc                         ja       0x6957bd0
0000000006957c04: 488d942480020000             lea      rdx, [rsp + 0x280]
0000000006957c0c: c6410100                     mov      byte ptr [rcx + 1], 0
0000000006957c10: 4883f809                     cmp      rax, 9
0000000006957c14: 7228                         jb       0x6957c3e
0000000006957c16: 488d842481020000             lea      rax, [rsp + 0x281]
0000000006957c1e: 6690                         nop
0000000006957c20: 0fb639                       movzx    edi, byte ptr [rcx]
0000000006957c23: 440fb640ff                   movzx    r8d, byte ptr [rax - 1]
0000000006957c28: 448801                       mov      byte ptr [rcx], r8b
0000000006957c2b: 48ffc9                       dec      rcx
0000000006957c2e: 408878ff                     mov      byte ptr [rax - 1], dil
0000000006957c32: 488d7801                     lea      rdi, [rax + 1]
0000000006957c36: 4839c8                       cmp      rax, rcx
0000000006957c39: 4889f8                       mov      rax, rdi
0000000006957c3c: 72e2                         jb       0x6957c20
0000000006957c3e: 4889942478020000             mov      qword ptr [rsp + 0x278], rdx
0000000006957c46: 418b5620                     mov      edx, dword ptr [r14 + 0x20]
0000000006957c4a: 48c78424c802000000000000     mov      qword ptr [rsp + 0x2c8], 0
0000000006957c56: b807000000                   mov      eax, 7
0000000006957c5b: 488d8c24cf020000             lea      rcx, [rsp + 0x2cf]
0000000006957c63: bfcdcccccc                   mov      edi, 0xcccccccd
0000000006957c68: 0f1f840000000000             nop      dword ptr [rax + rax]
0000000006957c70: 4189d0                       mov      r8d, edx
0000000006957c73: 4c0fafc7                     imul     r8, rdi
0000000006957c77: 49c1e823                     shr      r8, 0x23
0000000006957c7b: 478d0c00                     lea      r9d, [r8 + r8]
0000000006957c7f: 478d0c89                     lea      r9d, [r9 + r9*4]
0000000006957c83: 41f7d9                       neg      r9d
0000000006957c86: 4101d1                       add      r9d, edx
0000000006957c89: 4183c123                     add      r9d, 0x23
0000000006957c8d: 450fb60c31                   movzx    r9d, byte ptr [r9 + rsi]
0000000006957c92: 44884901                     mov      byte ptr [rcx + 1], r9b
0000000006957c96: 48ffc1                       inc      rcx
0000000006957c99: 48ffc0                       inc      rax
0000000006957c9c: 83fa09                       cmp      edx, 9
0000000006957c9f: 4489c2                       mov      edx, r8d
0000000006957ca2: 77cc                         ja       0x6957c70
0000000006957ca4: 488d9424d0020000             lea      rdx, [rsp + 0x2d0]
0000000006957cac: c6410100                     mov      byte ptr [rcx + 1], 0
0000000006957cb0: 4883f809                     cmp      rax, 9
0000000006957cb4: 7227                         jb       0x6957cdd
0000000006957cb6: 488d8424d1020000             lea      rax, [rsp + 0x2d1]
0000000006957cbe: 6690                         nop
0000000006957cc0: 0fb631                       movzx    esi, byte ptr [rcx]
0000000006957cc3: 0fb678ff                     movzx    edi, byte ptr [rax - 1]
0000000006957cc7: 408839                       mov      byte ptr [rcx], dil
0000000006957cca: 48ffc9                       dec      rcx
0000000006957ccd: 408870ff                     mov      byte ptr [rax - 1], sil
0000000006957cd1: 488d7001                     lea      rsi, [rax + 1]
0000000006957cd5: 4839c8                       cmp      rax, rcx
0000000006957cd8: 4889f0                       mov      rax, rsi
0000000006957cdb: 72e3                         jb       0x6957cc0
0000000006957cdd: 48899424c8020000             mov      qword ptr [rsp + 0x2c8], rdx
0000000006957ce5: 488d842418030000             lea      rax, [rsp + 0x318]
0000000006957ced: 4889842450010000             mov      qword ptr [rsp + 0x150], rax
0000000006957cf5: 488d8424d0010000             lea      rax, [rsp + 0x1d0]
0000000006957cfd: 4889842458010000             mov      qword ptr [rsp + 0x158], rax
0000000006957d05: 488d842420020000             lea      rax, [rsp + 0x220]
0000000006957d0d: 4889842460010000             mov      qword ptr [rsp + 0x160], rax
0000000006957d15: 488d842478020000             lea      rax, [rsp + 0x278]
0000000006957d1d: 4889842468010000             mov      qword ptr [rsp + 0x168], rax
0000000006957d25: 488d8424c8020000             lea      rax, [rsp + 0x2c8]
0000000006957d2d: 4889842470010000             mov      qword ptr [rsp + 0x170], rax
0000000006957d35: 0f57c0                       xorps    xmm0, xmm0
0000000006957d38: 0f11842478010000             movups   xmmword ptr [rsp + 0x178], xmm0
0000000006957d40: 0f11842488010000             movups   xmmword ptr [rsp + 0x188], xmm0
0000000006957d48: 0f11842498010000             movups   xmmword ptr [rsp + 0x198], xmm0
0000000006957d50: 0f118424a8010000             movups   xmmword ptr [rsp + 0x1a8], xmm0
0000000006957d58: 0f118424b8010000             movups   xmmword ptr [rsp + 0x1b8], xmm0
0000000006957d60: 48c78424c801000000000000     mov      qword ptr [rsp + 0x1c8], 0
0000000006957d6c: 488d3534f85dfa               lea      rsi, [rip - 0x5a207cc]
0000000006957d73: 488dbc24c0000000             lea      rdi, [rsp + 0xc0]
0000000006957d7b: 488d942450010000             lea      rdx, [rsp + 0x150]
0000000006957d83: e8689b7b02                   call     0x91118f0
0000000006957d88: f684249800000001             test     byte ptr [rsp + 0x98], 1
0000000006957d90: 740d                         je       0x6957d9f
0000000006957d92: 488bbc24a8000000             mov      rdi, qword ptr [rsp + 0xa8]
0000000006957d9a: e8a123bbfd                   call     0x450a140
0000000006957d9f: 488dbc24c0000000             lea      rdi, [rsp + 0xc0]
0000000006957da7: e884987b02                   call     0x9111630
0000000006957dac: f644240801                   test     byte ptr [rsp + 8], 1
0000000006957db1: 740a                         je       0x6957dbd
0000000006957db3: 488b7c2418                   mov      rdi, qword ptr [rsp + 0x18]
0000000006957db8: e88323bbfd                   call     0x450a140
0000000006957dbd: 488b442460                   mov      rax, qword ptr [rsp + 0x60]
0000000006957dc2: 488903                       mov      qword ptr [rbx], rax
0000000006957dc5: 4c8d6308                     lea      r12, [rbx + 8]
0000000006957dc9: 488d742468                   lea      rsi, [rsp + 0x68]
0000000006957dce: 4c89e7                       mov      rdi, r12
0000000006957dd1: e8da5fbbfd                   call     0x450ddb0
0000000006957dd6: 4183bf1801000002             cmp      dword ptr [r15 + 0x118], 2
0000000006957dde: 0f8467040000                 je       0x695824b
0000000006957de4: 41c7871801000005000000       mov      dword ptr [r15 + 0x118], 5
0000000006957def: bf04000000                   mov      edi, 4
0000000006957df4: e897ee7b02                   call     0x9116c90
0000000006957df9: 85c0                         test     eax, eax
0000000006957dfb: 0f8478030000                 je       0x6958179
0000000006957e01: 488dbc24c8020000             lea      rdi, [rsp + 0x2c8]
0000000006957e09: e8c2aba500                   call     0x73b29d0
0000000006957e0e: f68424c802000001             test     byte ptr [rsp + 0x2c8], 1
0000000006957e16: 740a                         je       0x6957e22
0000000006957e18: 488b9424d8020000             mov      rdx, qword ptr [rsp + 0x2d8]
0000000006957e20: eb08                         jmp      0x6957e2a
0000000006957e22: 488d9424c9020000             lea      rdx, [rsp + 0x2c9]
0000000006957e2a: 488d0d31326dfa               lea      rcx, [rip - 0x592cdcf]
0000000006957e31: 4c8d0522d04dfa               lea      r8, [rip - 0x5b22fde]
0000000006957e38: 488dbc24c0000000             lea      rdi, [rsp + 0xc0]
0000000006957e40: be04000000                   mov      esi, 4
0000000006957e45: 41b977000000                 mov      r9d, 0x77
0000000006957e4b: 6a00                         push     0
0000000006957e4d: 6a00                         push     0
0000000006957e4f: e84c977b02                   call     0x91115a0
0000000006957e54: 4883c410                     add      rsp, 0x10
0000000006957e58: 488b742420                   mov      rsi, qword ptr [rsp + 0x20]
0000000006957e5d: 488d7c2408                   lea      rdi, [rsp + 8]
0000000006957e62: e8f9f96fff                   call     0x6057860
0000000006957e67: f644240801                   test     byte ptr [rsp + 8], 1
0000000006957e6c: 7407                         je       0x6957e75
0000000006957e6e: 488b442418                   mov      rax, qword ptr [rsp + 0x18]
0000000006957e73: eb05                         jmp      0x6957e7a
0000000006957e75: 488d442409                   lea      rax, [rsp + 9]
0000000006957e7a: 4889842418030000             mov      qword ptr [rsp + 0x318], rax
0000000006957e82: c684242003000000             mov      byte ptr [rsp + 0x320], 0
0000000006957e8a: 8b542460                     mov      edx, dword ptr [rsp + 0x60]
0000000006957e8e: 48c78424d001000000000000     mov      qword ptr [rsp + 0x1d0], 0
0000000006957e9a: b908000000                   mov      ecx, 8
0000000006957e9f: 488d0566755dfa               lea      rax, [rip - 0x5a28a9a] ; 'ZYXWVUTSRQPONMLKJIHGFEDCBA9876543210123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'
0000000006957ea6: 89d6                         mov      esi, edx
0000000006957ea8: 0f1f840000000000             nop      dword ptr [rax + rax]
0000000006957eb0: 4863fe                       movsxd   rdi, esi
0000000006957eb3: 4869f767666666               imul     rsi, rdi, 0x66666667
0000000006957eba: 4989f0                       mov      r8, rsi
0000000006957ebd: 49c1e83f                     shr      r8, 0x3f
0000000006957ec1: 48c1fe22                     sar      rsi, 0x22
0000000006957ec5: 4401c6                       add      esi, r8d
0000000006957ec8: 448d0436                     lea      r8d, [rsi + rsi]
0000000006957ecc: 478d0480                     lea      r8d, [r8 + r8*4]
0000000006957ed0: 4189f9                       mov      r9d, edi
0000000006957ed3: 4529c1                       sub      r9d, r8d
0000000006957ed6: 4d63c1                       movsxd   r8, r9d
0000000006957ed9: 450fb6440023                 movzx    r8d, byte ptr [r8 + rax + 0x23]
0000000006957edf: 4488840cd0010000             mov      byte ptr [rsp + rcx + 0x1d0], r8b
0000000006957ee7: 48ffc1                       inc      rcx
0000000006957eea: 83c709                       add      edi, 9
0000000006957eed: 83ff12                       cmp      edi, 0x12
0000000006957ef0: 77be                         ja       0x6957eb0
0000000006957ef2: 85d2                         test     edx, edx
0000000006957ef4: 790b                         jns      0x6957f01
0000000006957ef6: c6840cd00100002d             mov      byte ptr [rsp + rcx + 0x1d0], 0x2d
0000000006957efe: 48ffc1                       inc      rcx
0000000006957f01: 488d9424d8010000             lea      rdx, [rsp + 0x1d8]
0000000006957f09: c6840cd001000000             mov      byte ptr [rsp + rcx + 0x1d0], 0
0000000006957f11: 4883f90a                     cmp      rcx, 0xa
0000000006957f15: 7c37                         jl       0x6957f4e
0000000006957f17: 4801e1                       add      rcx, rsp
0000000006957f1a: 4881c1d0010000               add      rcx, 0x1d0
0000000006957f21: 48ffc9                       dec      rcx
0000000006957f24: 488db424d9010000             lea      rsi, [rsp + 0x1d9]
0000000006957f2c: 0f1f4000                     nop      dword ptr [rax]
0000000006957f30: 0fb639                       movzx    edi, byte ptr [rcx]
0000000006957f33: 440fb646ff                   movzx    r8d, byte ptr [rsi - 1]
0000000006957f38: 448801                       mov      byte ptr [rcx], r8b
0000000006957f3b: 40887eff                     mov      byte ptr [rsi - 1], dil
0000000006957f3f: 48ffc9                       dec      rcx
0000000006957f42: 488d7e01                     lea      rdi, [rsi + 1]
0000000006957f46: 4839ce                       cmp      rsi, rcx
0000000006957f49: 4889fe                       mov      rsi, rdi
0000000006957f4c: 72e2                         jb       0x6957f30
0000000006957f4e: 48899424d0010000             mov      qword ptr [rsp + 0x1d0], rdx
0000000006957f56: 8b542464                     mov      edx, dword ptr [rsp + 0x64]
0000000006957f5a: 48c784242002000000000000     mov      qword ptr [rsp + 0x220], 0
0000000006957f66: b908000000                   mov      ecx, 8
0000000006957f6b: 89d6                         mov      esi, edx
0000000006957f6d: 0f1f00                       nop      dword ptr [rax]
0000000006957f70: 4863fe                       movsxd   rdi, esi
0000000006957f73: 4869f767666666               imul     rsi, rdi, 0x66666667
0000000006957f7a: 4989f0                       mov      r8, rsi
0000000006957f7d: 49c1e83f                     shr      r8, 0x3f
0000000006957f81: 48c1fe22                     sar      rsi, 0x22
0000000006957f85: 4401c6                       add      esi, r8d
0000000006957f88: 448d0436                     lea      r8d, [rsi + rsi]
0000000006957f8c: 478d0480                     lea      r8d, [r8 + r8*4]
0000000006957f90: 4189f9                       mov      r9d, edi
0000000006957f93: 4529c1                       sub      r9d, r8d
0000000006957f96: 4d63c1                       movsxd   r8, r9d
0000000006957f99: 450fb6440023                 movzx    r8d, byte ptr [r8 + rax + 0x23]
0000000006957f9f: 4488840c20020000             mov      byte ptr [rsp + rcx + 0x220], r8b
0000000006957fa7: 48ffc1                       inc      rcx
0000000006957faa: 83c709                       add      edi, 9
0000000006957fad: 83ff12                       cmp      edi, 0x12
0000000006957fb0: 77be                         ja       0x6957f70
0000000006957fb2: 85d2                         test     edx, edx
0000000006957fb4: 790b                         jns      0x6957fc1
0000000006957fb6: c6840c200200002d             mov      byte ptr [rsp + rcx + 0x220], 0x2d
0000000006957fbe: 48ffc1                       inc      rcx
0000000006957fc1: 488d942428020000             lea      rdx, [rsp + 0x228]
0000000006957fc9: c6840c2002000000             mov      byte ptr [rsp + rcx + 0x220], 0
0000000006957fd1: 4883f90a                     cmp      rcx, 0xa
0000000006957fd5: 7c37                         jl       0x695800e
0000000006957fd7: 4801e1                       add      rcx, rsp
0000000006957fda: 4881c120020000               add      rcx, 0x220
0000000006957fe1: 48ffc9                       dec      rcx
0000000006957fe4: 488db42429020000             lea      rsi, [rsp + 0x229]
0000000006957fec: 0f1f4000                     nop      dword ptr [rax]
0000000006957ff0: 0fb639                       movzx    edi, byte ptr [rcx]
0000000006957ff3: 440fb646ff                   movzx    r8d, byte ptr [rsi - 1]
0000000006957ff8: 448801                       mov      byte ptr [rcx], r8b
0000000006957ffb: 40887eff                     mov      byte ptr [rsi - 1], dil
0000000006957fff: 48ffc9                       dec      rcx
0000000006958002: 488d7e01                     lea      rdi, [rsi + 1]
0000000006958006: 4839ce                       cmp      rsi, rcx
0000000006958009: 4889fe                       mov      rsi, rdi
000000000695800c: 72e2                         jb       0x6957ff0
000000000695800e: 4889942420020000             mov      qword ptr [rsp + 0x220], rdx
0000000006958016: 488b8c2480000000             mov      rcx, qword ptr [rsp + 0x80]
000000000695801e: 8b7128                       mov      esi, dword ptr [rcx + 0x28]
0000000006958021: 48c784247802000000000000     mov      qword ptr [rsp + 0x278], 0
000000000695802d: b907000000                   mov      ecx, 7
0000000006958032: 488d94247f020000             lea      rdx, [rsp + 0x27f]
000000000695803a: bfcdcccccc                   mov      edi, 0xcccccccd
000000000695803f: 90                           nop
0000000006958040: 4189f0                       mov      r8d, esi
0000000006958043: 4c0fafc7                     imul     r8, rdi
0000000006958047: 49c1e823                     shr      r8, 0x23
000000000695804b: 478d0c00                     lea      r9d, [r8 + r8]
000000000695804f: 478d0c89                     lea      r9d, [r9 + r9*4]
0000000006958053: 41f7d9                       neg      r9d
0000000006958056: 4101f1                       add      r9d, esi
0000000006958059: 4183c123                     add      r9d, 0x23
000000000695805d: 450fb60c01                   movzx    r9d, byte ptr [r9 + rax]
0000000006958062: 44884a01                     mov      byte ptr [rdx + 1], r9b
0000000006958066: 48ffc2                       inc      rdx
0000000006958069: 48ffc1                       inc      rcx
000000000695806c: 83fe09                       cmp      esi, 9
000000000695806f: 4489c6                       mov      esi, r8d
0000000006958072: 77cc                         ja       0x6958040
0000000006958074: 488d842480020000             lea      rax, [rsp + 0x280]
000000000695807c: c6420100                     mov      byte ptr [rdx + 1], 0
0000000006958080: 4883f909                     cmp      rcx, 9
0000000006958084: 7227                         jb       0x69580ad
0000000006958086: 488d8c2481020000             lea      rcx, [rsp + 0x281]
000000000695808e: 6690                         nop
0000000006958090: 0fb632                       movzx    esi, byte ptr [rdx]
0000000006958093: 0fb679ff                     movzx    edi, byte ptr [rcx - 1]
0000000006958097: 40883a                       mov      byte ptr [rdx], dil
000000000695809a: 48ffca                       dec      rdx
000000000695809d: 408871ff                     mov      byte ptr [rcx - 1], sil
00000000069580a1: 488d7101                     lea      rsi, [rcx + 1]
00000000069580a5: 4839d1                       cmp      rcx, rdx
00000000069580a8: 4889f1                       mov      rcx, rsi
00000000069580ab: 72e3                         jb       0x6958090
00000000069580ad: 4889842478020000             mov      qword ptr [rsp + 0x278], rax
00000000069580b5: 488d842418030000             lea      rax, [rsp + 0x318]
00000000069580bd: 4889842450010000             mov      qword ptr [rsp + 0x150], rax
00000000069580c5: 488d8424d0010000             lea      rax, [rsp + 0x1d0]
00000000069580cd: 4889842458010000             mov      qword ptr [rsp + 0x158], rax
00000000069580d5: 488d842420020000             lea      rax, [rsp + 0x220]
00000000069580dd: 4889842460010000             mov      qword ptr [rsp + 0x160], rax
00000000069580e5: 488d842478020000             lea      rax, [rsp + 0x278]
00000000069580ed: 4889842468010000             mov      qword ptr [rsp + 0x168], rax
00000000069580f5: 0f57c0                       xorps    xmm0, xmm0
00000000069580f8: 0f29842470010000             movaps   xmmword ptr [rsp + 0x170], xmm0
0000000006958100: 0f29842480010000             movaps   xmmword ptr [rsp + 0x180], xmm0
0000000006958108: 0f29842490010000             movaps   xmmword ptr [rsp + 0x190], xmm0
0000000006958110: 0f298424a0010000             movaps   xmmword ptr [rsp + 0x1a0], xmm0
0000000006958118: 0f298424b0010000             movaps   xmmword ptr [rsp + 0x1b0], xmm0
0000000006958120: 0f298424c0010000             movaps   xmmword ptr [rsp + 0x1c0], xmm0
0000000006958128: 488d357ecc4dfa               lea      rsi, [rip - 0x5b23382]
000000000695812f: 488dbc24c0000000             lea      rdi, [rsp + 0xc0]
0000000006958137: 488d942450010000             lea      rdx, [rsp + 0x150]
000000000695813f: e8ac977b02                   call     0x91118f0
0000000006958144: f644240801                   test     byte ptr [rsp + 8], 1
0000000006958149: 740a                         je       0x6958155
000000000695814b: 488b7c2418                   mov      rdi, qword ptr [rsp + 0x18]
0000000006958150: e8eb1fbbfd                   call     0x450a140
0000000006958155: 488dbc24c0000000             lea      rdi, [rsp + 0xc0]
000000000695815d: e8ce947b02                   call     0x9111630
0000000006958162: f68424c802000001             test     byte ptr [rsp + 0x2c8], 1
000000000695816a: 740d                         je       0x6958179
000000000695816c: 488bbc24d8020000             mov      rdi, qword ptr [rsp + 0x2d8]
0000000006958174: e8c71fbbfd                   call     0x450a140
0000000006958179: 8b0b                         mov      ecx, dword ptr [rbx]
000000000695817b: 448b4304                     mov      r8d, dword ptr [rbx + 4]
000000000695817f: 488dbc24c0000000             lea      rdi, [rsp + 0xc0]
0000000006958187: be03000000                   mov      esi, 3
000000000695818c: ba0c000000                   mov      edx, 0xc
0000000006958191: e81aee0600                   call     0x69c6fb0
0000000006958196: 488b8424c0000000             mov      rax, qword ptr [rsp + 0xc0]
000000000695819e: 488903                       mov      qword ptr [rbx], rax
00000000069581a1: 488db424c8000000             lea      rsi, [rsp + 0xc8]
00000000069581a9: 4c89e7                       mov      rdi, r12
00000000069581ac: e8ff5bbbfd                   call     0x450ddb0
00000000069581b1: 488b8c24e0000000             mov      rcx, qword ptr [rsp + 0xe0]
00000000069581b9: 488b8424e8000000             mov      rax, qword ptr [rsp + 0xe8]
00000000069581c1: 4885c0                       test     rax, rax
00000000069581c4: 7405                         je       0x69581cb
00000000069581c6: f048ff4008                   lock inc qword ptr [rax + 8]
00000000069581cb: 48894b20                     mov      qword ptr [rbx + 0x20], rcx
00000000069581cf: 4c8b7328                     mov      r14, qword ptr [rbx + 0x28]
00000000069581d3: 48894328                     mov      qword ptr [rbx + 0x28], rax
00000000069581d7: 4d85f6                       test     r14, r14
00000000069581da: 7423                         je       0x69581ff
00000000069581dc: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000069581e3: f0490fc14608                 lock xadd qword ptr [r14 + 8], rax
00000000069581e9: 4885c0                       test     rax, rax
00000000069581ec: 7511                         jne      0x69581ff
00000000069581ee: 498b06                       mov      rax, qword ptr [r14]
00000000069581f1: 4c89f7                       mov      rdi, r14
00000000069581f4: ff5010                       call     qword ptr [rax + 0x10]
00000000069581f7: 4c89f7                       mov      rdi, r14
00000000069581fa: e8d1efbdfd                   call     0x45371d0
00000000069581ff: 4c8bb424e8000000             mov      r14, qword ptr [rsp + 0xe8]
0000000006958207: 4d85f6                       test     r14, r14
000000000695820a: 7423                         je       0x695822f
000000000695820c: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
0000000006958213: f0490fc14608                 lock xadd qword ptr [r14 + 8], rax
0000000006958219: 4885c0                       test     rax, rax
000000000695821c: 7511                         jne      0x695822f
000000000695821e: 498b06                       mov      rax, qword ptr [r14]
0000000006958221: 4c89f7                       mov      rdi, r14
0000000006958224: ff5010                       call     qword ptr [rax + 0x10]
0000000006958227: 4c89f7                       mov      rdi, r14
000000000695822a: e8a1efbdfd                   call     0x45371d0
000000000695822f: f68424c800000001             test     byte ptr [rsp + 0xc8], 1
0000000006958237: 740d                         je       0x6958246
0000000006958239: 488bbc24d8000000             mov      rdi, qword ptr [rsp + 0xd8]
0000000006958241: e8fa1ebbfd                   call     0x450a140
0000000006958246: 4c8b7c2420                   mov      r15, qword ptr [rsp + 0x20]
000000000695824b: 4c89bc24b0000000             mov      qword ptr [rsp + 0xb0], r15
0000000006958253: 488b442428                   mov      rax, qword ptr [rsp + 0x28]
0000000006958258: 48898424b8000000             mov      qword ptr [rsp + 0xb8], rax
0000000006958260: 4885c0                       test     rax, rax
0000000006958263: 7405                         je       0x695826a
0000000006958265: f048ff4008                   lock inc qword ptr [rax + 8]
000000000695826a: 488db424b0000000             lea      rsi, [rsp + 0xb0]
0000000006958272: 488bbc2470020000             mov      rdi, qword ptr [rsp + 0x270]
000000000695827a: ba01000000                   mov      edx, 1
000000000695827f: b901000000                   mov      ecx, 1
0000000006958284: e8f7d20000                   call     0x6965580
0000000006958289: 4c8bb424b8000000             mov      r14, qword ptr [rsp + 0xb8]
0000000006958291: 4d85f6                       test     r14, r14
0000000006958294: 7423                         je       0x69582b9
0000000006958296: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
000000000695829d: f0490fc14608                 lock xadd qword ptr [r14 + 8], rax
00000000069582a3: 4885c0                       test     rax, rax
00000000069582a6: 7511                         jne      0x69582b9
00000000069582a8: 498b06                       mov      rax, qword ptr [r14]
00000000069582ab: 4c89f7                       mov      rdi, r14
00000000069582ae: ff5010                       call     qword ptr [rax + 0x10]
00000000069582b1: 4c89f7                       mov      rdi, r14
00000000069582b4: e817efbdfd                   call     0x45371d0
00000000069582b9: 4c8bb42488000000             mov      r14, qword ptr [rsp + 0x88]
00000000069582c1: 4d85f6                       test     r14, r14
00000000069582c4: 7412                         je       0x69582d8
00000000069582c6: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000069582cd: f0490fc14608                 lock xadd qword ptr [r14 + 8], rax
00000000069582d3: 4885c0                       test     rax, rax
00000000069582d6: 745d                         je       0x6958335
00000000069582d8: f644246801                   test     byte ptr [rsp + 0x68], 1
00000000069582dd: 740a                         je       0x69582e9
00000000069582df: 488b7c2478                   mov      rdi, qword ptr [rsp + 0x78]
00000000069582e4: e8571ebbfd                   call     0x450a140
00000000069582e9: 488d7c2430                   lea      rdi, [rsp + 0x30]
00000000069582ee: e86d530901                   call     0x79ed660
00000000069582f3: 4c8b742428                   mov      r14, qword ptr [rsp + 0x28]
00000000069582f8: 4d85f6                       test     r14, r14
00000000069582fb: 7423                         je       0x6958320
00000000069582fd: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
0000000006958304: f0490fc14608                 lock xadd qword ptr [r14 + 8], rax
000000000695830a: 4885c0                       test     rax, rax
000000000695830d: 7511                         jne      0x6958320
000000000695830f: 498b06                       mov      rax, qword ptr [r14]
0000000006958312: 4c89f7                       mov      rdi, r14
0000000006958315: ff5010                       call     qword ptr [rax + 0x10]
0000000006958318: 4c89f7                       mov      rdi, r14
000000000695831b: e8b0eebdfd                   call     0x45371d0
0000000006958320: 4889d8                       mov      rax, rbx
0000000006958323: 4881c468030000               add      rsp, 0x368
000000000695832a: 5b                           pop      rbx
000000000695832b: 415c                         pop      r12
000000000695832d: 415d                         pop      r13
000000000695832f: 415e                         pop      r14
0000000006958331: 415f                         pop      r15
0000000006958333: 5d                           pop      rbp
0000000006958334: c3                           ret
0000000006958335: 498b06                       mov      rax, qword ptr [r14]
0000000006958338: 4c89f7                       mov      rdi, r14
000000000695833b: ff5010                       call     qword ptr [rax + 0x10]
000000000695833e: 4c89f7                       mov      rdi, r14
0000000006958341: e88aeebdfd                   call     0x45371d0
0000000006958346: f644246801                   test     byte ptr [rsp + 0x68], 1
000000000695834b: 7592                         jne      0x69582df
000000000695834d: eb9a                         jmp      0x69582e9
000000000695834f: 4989c7                       mov      r15, rax
0000000006958352: f684249800000001             test     byte ptr [rsp + 0x98], 1
000000000695835a: 7412                         je       0x695836e
000000000695835c: 488bbc24a8000000             mov      rdi, qword ptr [rsp + 0xa8]
0000000006958364: e8d71dbbfd                   call     0x450a140
0000000006958369: eb03                         jmp      0x695836e
000000000695836b: 4989c7                       mov      r15, rax
000000000695836e: 488dbc24c0000000             lea      rdi, [rsp + 0xc0]
0000000006958376: e8b5927b02                   call     0x9111630
000000000695837b: eb03                         jmp      0x6958380
000000000695837d: 4989c7                       mov      r15, rax
0000000006958380: f644240801                   test     byte ptr [rsp + 8], 1
0000000006958385: 0f847a010000                 je       0x6958505
000000000695838b: 488b7c2418                   mov      rdi, qword ptr [rsp + 0x18]
0000000006958390: e8ab1dbbfd                   call     0x450a140
0000000006958395: e96b010000                   jmp      0x6958505
000000000695839a: e963010000                   jmp      0x6958502
000000000695839f: 4989c7                       mov      r15, rax
00000000069583a2: f684247802000001             test     byte ptr [rsp + 0x278], 1
00000000069583aa: 7412                         je       0x69583be
00000000069583ac: 488bbc2488020000             mov      rdi, qword ptr [rsp + 0x288]
00000000069583b4: e8871dbbfd                   call     0x450a140
00000000069583b9: eb03                         jmp      0x69583be
00000000069583bb: 4989c7                       mov      r15, rax
00000000069583be: 488dbc24c0000000             lea      rdi, [rsp + 0xc0]
00000000069583c6: e865927b02                   call     0x9111630
00000000069583cb: eb03                         jmp      0x69583d0
00000000069583cd: 4989c7                       mov      r15, rax
00000000069583d0: f684242002000001             test     byte ptr [rsp + 0x220], 1
00000000069583d8: 0f8427010000                 je       0x6958505
00000000069583de: 488bbc2430020000             mov      rdi, qword ptr [rsp + 0x230]
00000000069583e6: e8551dbbfd                   call     0x450a140
00000000069583eb: e915010000                   jmp      0x6958505
00000000069583f0: e90d010000                   jmp      0x6958502
00000000069583f5: 4989c7                       mov      r15, rax
00000000069583f8: f644240801                   test     byte ptr [rsp + 8], 1
00000000069583fd: 740f                         je       0x695840e
00000000069583ff: 488b7c2418                   mov      rdi, qword ptr [rsp + 0x18]
0000000006958404: e8371dbbfd                   call     0x450a140
0000000006958409: eb03                         jmp      0x695840e
000000000695840b: 4989c7                       mov      r15, rax
000000000695840e: 488dbc24c0000000             lea      rdi, [rsp + 0xc0]
0000000006958416: e815927b02                   call     0x9111630
000000000695841b: eb03                         jmp      0x6958420
000000000695841d: 4989c7                       mov      r15, rax
0000000006958420: f68424c802000001             test     byte ptr [rsp + 0x2c8], 1
0000000006958428: 0f84d7000000                 je       0x6958505
000000000695842e: 488bbc24d8020000             mov      rdi, qword ptr [rsp + 0x2d8]
0000000006958436: e8051dbbfd                   call     0x450a140
000000000695843b: e9c5000000                   jmp      0x6958505
0000000006958440: e9bd000000                   jmp      0x6958502
0000000006958445: e9b8000000                   jmp      0x6958502
000000000695844a: 4989c7                       mov      r15, rax
000000000695844d: 488dbc24c0000000             lea      rdi, [rsp + 0xc0]
0000000006958455: e8e604b7ff                   call     0x64c8940
000000000695845a: e9c6000000                   jmp      0x6958525
000000000695845f: e9af000000                   jmp      0x6958513
0000000006958464: 4989c7                       mov      r15, rax
0000000006958467: 4c89f7                       mov      rdi, r14
000000000695846a: e8d11cbbfd                   call     0x450a140
000000000695846f: e9a7000000                   jmp      0x695851b
0000000006958474: 4989c7                       mov      r15, rax
0000000006958477: 488dbc24c0000000             lea      rdi, [rsp + 0xc0]
000000000695847f: e8bc04b7ff                   call     0x64c8940
0000000006958484: eb7f                         jmp      0x6958505
0000000006958486: eb7a                         jmp      0x6958502
0000000006958488: 4989c7                       mov      r15, rax
000000000695848b: 4c89ef                       mov      rdi, r13
000000000695848e: e8ad1cbbfd                   call     0x450a140
0000000006958493: e983000000                   jmp      0x695851b
0000000006958498: 4989c7                       mov      r15, rax
000000000695849b: 488dbc24b0000000             lea      rdi, [rsp + 0xb0]
00000000069584a3: e84852ddfd                   call     0x472d6f0
00000000069584a8: eb5b                         jmp      0x6958505
00000000069584aa: 4989c7                       mov      r15, rax
00000000069584ad: f68424c800000001             test     byte ptr [rsp + 0xc8], 1
00000000069584b5: 740d                         je       0x69584c4
00000000069584b7: 488bbc24d8000000             mov      rdi, qword ptr [rsp + 0xd8]
00000000069584bf: e87c1cbbfd                   call     0x450a140
00000000069584c4: f684245001000001             test     byte ptr [rsp + 0x150], 1
00000000069584cc: 744d                         je       0x695851b
00000000069584ce: 488bbc2460010000             mov      rdi, qword ptr [rsp + 0x160]
00000000069584d6: e8651cbbfd                   call     0x450a140
00000000069584db: eb3e                         jmp      0x695851b
00000000069584dd: 4989c7                       mov      r15, rax
00000000069584e0: f68424c000000001             test     byte ptr [rsp + 0xc0], 1
00000000069584e8: 7431                         je       0x695851b
00000000069584ea: 488bbc24d0000000             mov      rdi, qword ptr [rsp + 0xd0]
00000000069584f2: e8491cbbfd                   call     0x450a140
00000000069584f7: eb22                         jmp      0x695851b
00000000069584f9: eb1d                         jmp      0x6958518
00000000069584fb: eb16                         jmp      0x6958513
00000000069584fd: 4989c7                       mov      r15, rax
0000000006958500: eb2b                         jmp      0x695852d
0000000006958502: 4989c7                       mov      r15, rax
0000000006958505: 488d7c2460                   lea      rdi, [rsp + 0x60]
000000000695850a: e8d1070000                   call     0x6958ce0
000000000695850f: eb0a                         jmp      0x695851b
0000000006958511: eb05                         jmp      0x6958518
0000000006958513: 4989c7                       mov      r15, rax
0000000006958516: eb0d                         jmp      0x6958525
0000000006958518: 4989c7                       mov      r15, rax
000000000695851b: 488d7c2430                   lea      rdi, [rsp + 0x30]
0000000006958520: e83b510901                   call     0x79ed660
0000000006958525: 4889df                       mov      rdi, rbx
0000000006958528: e81304b7ff                   call     0x64c8940
000000000695852d: 488d7c2420                   lea      rdi, [rsp + 0x20]
0000000006958532: e8b951ddfd                   call     0x472d6f0
0000000006958537: 4c89ff                       mov      rdi, r15
000000000695853a: e8e148b9fd                   call     0x44ece20
