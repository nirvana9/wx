000000000603f150: 4157                         push     r15
000000000603f152: 4156                         push     r14
000000000603f154: 4154                         push     r12
000000000603f156: 53                           push     rbx
000000000603f157: 4883ec28                     sub      rsp, 0x28
000000000603f15b: 4989f6                       mov      r14, rsi
000000000603f15e: 4889fb                       mov      rbx, rdi
000000000603f161: 488b35e803cb04               mov      rsi, qword ptr [rip + 0x4cb03e8]
000000000603f168: 488b06                       mov      rax, qword ptr [rsi]
000000000603f16b: 488d7c2418                   lea      rdi, [rsp + 0x18]
000000000603f170: ff5068                       call     qword ptr [rax + 0x68]
000000000603f173: 4c8b7c2418                   mov      r15, qword ptr [rsp + 0x18]
000000000603f178: 488b442420                   mov      rax, qword ptr [rsp + 0x20]
000000000603f17d: 4c897c2408                   mov      qword ptr [rsp + 8], r15
000000000603f182: 4889442410                   mov      qword ptr [rsp + 0x10], rax
000000000603f187: 4885c0                       test     rax, rax
000000000603f18a: 7437                         je       0x603f1c3
000000000603f18c: f048ff4008                   lock inc qword ptr [rax + 8]
000000000603f191: 4c8b7c2420                   mov      r15, qword ptr [rsp + 0x20]
000000000603f196: 4d85ff                       test     r15, r15
000000000603f199: 7423                         je       0x603f1be
000000000603f19b: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
000000000603f1a2: f0490fc14708                 lock xadd qword ptr [r15 + 8], rax
000000000603f1a8: 4885c0                       test     rax, rax
000000000603f1ab: 7511                         jne      0x603f1be
000000000603f1ad: 498b07                       mov      rax, qword ptr [r15]
000000000603f1b0: 4c89ff                       mov      rdi, r15
000000000603f1b3: ff5010                       call     qword ptr [rax + 0x10]
000000000603f1b6: 4c89ff                       mov      rdi, r15
000000000603f1b9: e812804ffe                   call     0x45371d0
000000000603f1be: 4c8b7c2408                   mov      r15, qword ptr [rsp + 8]
000000000603f1c3: 4d85ff                       test     r15, r15
000000000603f1c6: 742d                         je       0x603f1f5
000000000603f1c8: 4c89ff                       mov      rdi, r15
000000000603f1cb: e820b71500                   call     0x619a8f0
000000000603f1d0: f60001                       test     byte ptr [rax], 1
000000000603f1d3: 7510                         jne      0x603f1e5
000000000603f1d5: 488b4810                     mov      rcx, qword ptr [rax + 0x10]
000000000603f1d9: 48894b10                     mov      qword ptr [rbx + 0x10], rcx
000000000603f1dd: 0f1000                       movups   xmm0, xmmword ptr [rax]
000000000603f1e0: 0f1103                       movups   xmmword ptr [rbx], xmm0
000000000603f1e3: eb10                         jmp      0x603f1f5
000000000603f1e5: 488b5008                     mov      rdx, qword ptr [rax + 8]
000000000603f1e9: 488b7010                     mov      rsi, qword ptr [rax + 0x10]
000000000603f1ed: 4889df                       mov      rdi, rbx
000000000603f1f0: e8abd44cfe                   call     0x450c6a0
000000000603f1f5: 4c8b642410                   mov      r12, qword ptr [rsp + 0x10]
000000000603f1fa: 4d85e4                       test     r12, r12
000000000603f1fd: 7413                         je       0x603f212
000000000603f1ff: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
000000000603f206: f0490fc1442408               lock xadd qword ptr [r12 + 8], rax
000000000603f20d: 4885c0                       test     rax, rax
000000000603f210: 7427                         je       0x603f239
000000000603f212: 4d85ff                       test     r15, r15
000000000603f215: 7551                         jne      0x603f268
000000000603f217: 41f6867802000001             test     byte ptr [r14 + 0x278], 1
000000000603f21f: 7531                         jne      0x603f252
000000000603f221: 4981c678020000               add      r14, 0x278
000000000603f228: 498b4610                     mov      rax, qword ptr [r14 + 0x10]
000000000603f22c: 48894310                     mov      qword ptr [rbx + 0x10], rax
000000000603f230: 410f1006                     movups   xmm0, xmmword ptr [r14]
000000000603f234: 0f1103                       movups   xmmword ptr [rbx], xmm0
000000000603f237: eb2f                         jmp      0x603f268
000000000603f239: 498b0424                     mov      rax, qword ptr [r12]
000000000603f23d: 4c89e7                       mov      rdi, r12
000000000603f240: ff5010                       call     qword ptr [rax + 0x10]
000000000603f243: 4c89e7                       mov      rdi, r12
000000000603f246: e8857f4ffe                   call     0x45371d0
000000000603f24b: 4d85ff                       test     r15, r15
000000000603f24e: 7518                         jne      0x603f268
000000000603f250: ebc5                         jmp      0x603f217
000000000603f252: 498b9680020000               mov      rdx, qword ptr [r14 + 0x280]
000000000603f259: 498bb688020000               mov      rsi, qword ptr [r14 + 0x288]
000000000603f260: 4889df                       mov      rdi, rbx
000000000603f263: e838d44cfe                   call     0x450c6a0
000000000603f268: 4889d8                       mov      rax, rbx
000000000603f26b: 4883c428                     add      rsp, 0x28
000000000603f26f: 5b                           pop      rbx
000000000603f270: 415c                         pop      r12
000000000603f272: 415e                         pop      r14
000000000603f274: 415f                         pop      r15
000000000603f276: c3                           ret
000000000603f277: 4889c3                       mov      rbx, rax
000000000603f27a: 488d7c2408                   lea      rdi, [rsp + 8]
000000000603f27f: e88cdbffff                   call     0x603ce10
000000000603f284: 4889df                       mov      rdi, rbx
000000000603f287: e894db4afe                   call     0x44ece20
