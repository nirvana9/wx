00000000077eb130: 55                           push     rbp
00000000077eb131: 4157                         push     r15
00000000077eb133: 4156                         push     r14
00000000077eb135: 4155                         push     r13
00000000077eb137: 4154                         push     r12
00000000077eb139: 53                           push     rbx
00000000077eb13a: 4881ec68010000               sub      rsp, 0x168
00000000077eb141: 4989d4                       mov      r12, rdx
00000000077eb144: 4989f6                       mov      r14, rsi
00000000077eb147: 4889fb                       mov      rbx, rdi
00000000077eb14a: bf48000000                   mov      edi, 0x48
00000000077eb14f: e84c2ce802                   call     0xa66dda0
00000000077eb154: 4989c7                       mov      r15, rax
00000000077eb157: 0f57c0                       xorps    xmm0, xmm0
00000000077eb15a: 0f114008                     movups   xmmword ptr [rax + 8], xmm0
00000000077eb15e: 488d052b0b1803               lea      rax, [rip + 0x3180b2b]
00000000077eb165: 4883c010                     add      rax, 0x10
00000000077eb169: 498907                       mov      qword ptr [r15], rax
00000000077eb16c: 498d6f18                     lea      rbp, [r15 + 0x18]
00000000077eb170: 4889ef                       mov      rdi, rbp
00000000077eb173: 31f6                         xor      esi, esi
00000000077eb175: 31d2                         xor      edx, edx
00000000077eb177: e8c4fdffff                   call     0x77eaf40
00000000077eb17c: 48896c2420                   mov      qword ptr [rsp + 0x20], rbp
00000000077eb181: 4c897c2428                   mov      qword ptr [rsp + 0x28], r15
00000000077eb186: bf20000000                   mov      edi, 0x20
00000000077eb18b: e8102ce802                   call     0xa66dda0
00000000077eb190: 0f57c0                       xorps    xmm0, xmm0
00000000077eb193: 0f114008                     movups   xmmword ptr [rax + 8], xmm0
00000000077eb197: 488d0d82b4f402               lea      rcx, [rip + 0x2f4b482]
00000000077eb19e: 4883c110                     add      rcx, 0x10
00000000077eb1a2: 488908                       mov      qword ptr [rax], rcx
00000000077eb1a5: 488d4818                     lea      rcx, [rax + 0x18]
00000000077eb1a9: c7401800000000               mov      dword ptr [rax + 0x18], 0
00000000077eb1b0: 48894c2410                   mov      qword ptr [rsp + 0x10], rcx
00000000077eb1b5: 4889442418                   mov      qword ptr [rsp + 0x18], rax
00000000077eb1ba: 0f2805dfe456f9               movaps   xmm0, xmmword ptr [rip - 0x6a91b21]
00000000077eb1c1: 0f290424                     movaps   xmmword ptr [rsp], xmm0
00000000077eb1c5: 4d8b2e                       mov      r13, qword ptr [r14]
00000000077eb1c8: 4889ac24a8000000             mov      qword ptr [rsp + 0xa8], rbp
00000000077eb1d0: 4c89bc24b0000000             mov      qword ptr [rsp + 0xb0], r15
00000000077eb1d8: 4d85ff                       test     r15, r15
00000000077eb1db: 7408                         je       0x77eb1e5
00000000077eb1dd: 4983c708                     add      r15, 8
00000000077eb1e1: f049ff07                     lock inc qword ptr [r15]
00000000077eb1e5: 48898c24b8000000             mov      qword ptr [rsp + 0xb8], rcx
00000000077eb1ed: 48898424c0000000             mov      qword ptr [rsp + 0xc0], rax
00000000077eb1f5: 4885c0                       test     rax, rax
00000000077eb1f8: 7408                         je       0x77eb202
00000000077eb1fa: 4883c008                     add      rax, 8
00000000077eb1fe: f048ff00                     lock inc qword ptr [rax]
00000000077eb202: 4c8dbc24c8000000             lea      r15, [rsp + 0xc8]
00000000077eb20a: 4c89ff                       mov      rdi, r15
00000000077eb20d: 4c89e6                       mov      rsi, r12
00000000077eb210: e8eb9d4d00                   call     0x7cc5000
00000000077eb215: 488dbc2428010000             lea      rdi, [rsp + 0x128]
00000000077eb21d: 41f644246001                 test     byte ptr [r12 + 0x60], 1
00000000077eb223: 7515                         jne      0x77eb23a
00000000077eb225: 498d442460                   lea      rax, [r12 + 0x60]
00000000077eb22a: 488b4810                     mov      rcx, qword ptr [rax + 0x10]
00000000077eb22e: 48894f10                     mov      qword ptr [rdi + 0x10], rcx
00000000077eb232: 0f1000                       movups   xmm0, xmmword ptr [rax]
00000000077eb235: 0f1107                       movups   xmmword ptr [rdi], xmm0
00000000077eb238: eb0f                         jmp      0x77eb249
00000000077eb23a: 498b542468                   mov      rdx, qword ptr [r12 + 0x68]
00000000077eb23f: 498b742470                   mov      rsi, qword ptr [r12 + 0x70]
00000000077eb244: e85714d2fc                   call     0x450c6a0
00000000077eb249: 498b442478                   mov      rax, qword ptr [r12 + 0x78]
00000000077eb24e: 4889842440010000             mov      qword ptr [rsp + 0x140], rax
00000000077eb256: 488dbc2448010000             lea      rdi, [rsp + 0x148]
00000000077eb25e: 41f684248000000001           test     byte ptr [r12 + 0x80], 1
00000000077eb267: 7518                         jne      0x77eb281
00000000077eb269: 498d842480000000             lea      rax, [r12 + 0x80]
00000000077eb271: 488b4810                     mov      rcx, qword ptr [rax + 0x10]
00000000077eb275: 48894f10                     mov      qword ptr [rdi + 0x10], rcx
00000000077eb279: 0f1000                       movups   xmm0, xmmword ptr [rax]
00000000077eb27c: 0f1107                       movups   xmmword ptr [rdi], xmm0
00000000077eb27f: eb15                         jmp      0x77eb296
00000000077eb281: 498b942488000000             mov      rdx, qword ptr [r12 + 0x88]
00000000077eb289: 498bb42490000000             mov      rsi, qword ptr [r12 + 0x90]
00000000077eb291: e80a14d2fc                   call     0x450c6a0
00000000077eb296: 498b842498000000             mov      rax, qword ptr [r12 + 0x98]
00000000077eb29e: 4889842460010000             mov      qword ptr [rsp + 0x160], rax
00000000077eb2a6: 48c784248000000000000000     mov      qword ptr [rsp + 0x80], 0
00000000077eb2b2: bfc8000000                   mov      edi, 0xc8
00000000077eb2b7: e8e42ae802                   call     0xa66dda0
00000000077eb2bc: 4989c4                       mov      r12, rax
00000000077eb2bf: 488d051a0a1803               lea      rax, [rip + 0x3180a1a]
00000000077eb2c6: 4883c010                     add      rax, 0x10
00000000077eb2ca: 49890424                     mov      qword ptr [r12], rax
00000000077eb2ce: 498d7c2408                   lea      rdi, [r12 + 8]
00000000077eb2d3: 488db424a8000000             lea      rsi, [rsp + 0xa8]
00000000077eb2db: e8f00a0000                   call     0x77ebdd0
00000000077eb2e0: 498d5608                     lea      rdx, [r14 + 8]
00000000077eb2e4: 4c89a42480000000             mov      qword ptr [rsp + 0x80], r12
00000000077eb2ec: 4889e7                       mov      rdi, rsp
00000000077eb2ef: 4c8d642460                   lea      r12, [rsp + 0x60]
00000000077eb2f4: 4c89ee                       mov      rsi, r13
00000000077eb2f7: 4c89e1                       mov      rcx, r12
00000000077eb2fa: e8d1c82f02                   call     0x9ae7bd0
00000000077eb2ff: 488b8c2480000000             mov      rcx, qword ptr [rsp + 0x80]
00000000077eb307: 4c39e1                       cmp      rcx, r12
00000000077eb30a: 7411                         je       0x77eb31d
00000000077eb30c: 4885c9                       test     rcx, rcx
00000000077eb30f: 741a                         je       0x77eb32b
00000000077eb311: 488b01                       mov      rax, qword ptr [rcx]
00000000077eb314: 4883c028                     add      rax, 0x28
00000000077eb318: 4989cc                       mov      r12, rcx
00000000077eb31b: eb09                         jmp      0x77eb326
00000000077eb31d: 488b442460                   mov      rax, qword ptr [rsp + 0x60]
00000000077eb322: 4883c020                     add      rax, 0x20
00000000077eb326: 4c89e7                       mov      rdi, r12
00000000077eb329: ff10                         call     qword ptr [rax]
00000000077eb32b: f684244801000001             test     byte ptr [rsp + 0x148], 1
00000000077eb333: 740d                         je       0x77eb342
00000000077eb335: 488bbc2458010000             mov      rdi, qword ptr [rsp + 0x158]
00000000077eb33d: e8feedd1fc                   call     0x450a140
00000000077eb342: f684242801000001             test     byte ptr [rsp + 0x128], 1
00000000077eb34a: 740d                         je       0x77eb359
00000000077eb34c: 488bbc2438010000             mov      rdi, qword ptr [rsp + 0x138]
00000000077eb354: e8e7edd1fc                   call     0x450a140
00000000077eb359: 4c89ff                       mov      rdi, r15
00000000077eb35c: e8cfa04d00                   call     0x7cc5430
00000000077eb361: 4c8bbc24c0000000             mov      r15, qword ptr [rsp + 0xc0]
00000000077eb369: 4d85ff                       test     r15, r15
00000000077eb36c: 7423                         je       0x77eb391
00000000077eb36e: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000077eb375: f0490fc14708                 lock xadd qword ptr [r15 + 8], rax
00000000077eb37b: 4885c0                       test     rax, rax
00000000077eb37e: 7511                         jne      0x77eb391
00000000077eb380: 498b07                       mov      rax, qword ptr [r15]
00000000077eb383: 4c89ff                       mov      rdi, r15
00000000077eb386: ff5010                       call     qword ptr [rax + 0x10]
00000000077eb389: 4c89ff                       mov      rdi, r15
00000000077eb38c: e83fbed4fc                   call     0x45371d0
00000000077eb391: 4c8bbc24b0000000             mov      r15, qword ptr [rsp + 0xb0]
00000000077eb399: 4d85ff                       test     r15, r15
00000000077eb39c: 7423                         je       0x77eb3c1
00000000077eb39e: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000077eb3a5: f0490fc14708                 lock xadd qword ptr [r15 + 8], rax
00000000077eb3ab: 4885c0                       test     rax, rax
00000000077eb3ae: 7511                         jne      0x77eb3c1
00000000077eb3b0: 498b07                       mov      rax, qword ptr [r15]
00000000077eb3b3: 4c89ff                       mov      rdi, r15
00000000077eb3b6: ff5010                       call     qword ptr [rax + 0x10]
00000000077eb3b9: 4c89ff                       mov      rdi, r15
00000000077eb3bc: e80fbed4fc                   call     0x45371d0
00000000077eb3c1: 498b7e20                     mov      rdi, qword ptr [r14 + 0x20]
00000000077eb3c5: 418b7640                     mov      esi, dword ptr [r14 + 0x40]
00000000077eb3c9: 488b0424                     mov      rax, qword ptr [rsp]
00000000077eb3cd: 488b4c2408                   mov      rcx, qword ptr [rsp + 8]
00000000077eb3d2: 4885c9                       test     rcx, rcx
00000000077eb3d5: 7405                         je       0x77eb3dc
00000000077eb3d7: f048ff4108                   lock inc qword ptr [rcx + 8]
00000000077eb3dc: 488d15c50b1803               lea      rdx, [rip + 0x3180bc5]
00000000077eb3e3: 4883c210                     add      rdx, 0x10
00000000077eb3e7: 4889542430                   mov      qword ptr [rsp + 0x30], rdx
00000000077eb3ec: 4889442438                   mov      qword ptr [rsp + 0x38], rax
00000000077eb3f1: 48894c2440                   mov      qword ptr [rsp + 0x40], rcx
00000000077eb3f6: 0f57c0                       xorps    xmm0, xmm0
00000000077eb3f9: 0f29842490000000             movaps   xmmword ptr [rsp + 0x90], xmm0
00000000077eb401: 4c8d642430                   lea      r12, [rsp + 0x30]
00000000077eb406: 4c89642450                   mov      qword ptr [rsp + 0x50], r12
00000000077eb40b: 488b07                       mov      rax, qword ptr [rdi]
00000000077eb40e: 4c89e2                       mov      rdx, r12
00000000077eb411: ff5018                       call     qword ptr [rax + 0x18]
00000000077eb414: 4989c7                       mov      r15, rax
00000000077eb417: 488b4c2450                   mov      rcx, qword ptr [rsp + 0x50]
00000000077eb41c: 488d7c2430                   lea      rdi, [rsp + 0x30]
00000000077eb421: 4839f9                       cmp      rcx, rdi
00000000077eb424: 7411                         je       0x77eb437
00000000077eb426: 4885c9                       test     rcx, rcx
00000000077eb429: 7417                         je       0x77eb442
00000000077eb42b: 488b01                       mov      rax, qword ptr [rcx]
00000000077eb42e: 4883c028                     add      rax, 0x28
00000000077eb432: 4889cf                       mov      rdi, rcx
00000000077eb435: eb09                         jmp      0x77eb440
00000000077eb437: 488b442430                   mov      rax, qword ptr [rsp + 0x30]
00000000077eb43c: 4883c020                     add      rax, 0x20
00000000077eb440: ff10                         call     qword ptr [rax]
00000000077eb442: 488b3c24                     mov      rdi, qword ptr [rsp]
00000000077eb446: 488b07                       mov      rax, qword ptr [rdi]
00000000077eb449: ff5020                       call     qword ptr [rax + 0x20]
00000000077eb44c: 488b442410                   mov      rax, qword ptr [rsp + 0x10]
00000000077eb451: 833800                       cmp      dword ptr [rax], 0
00000000077eb454: 742d                         je       0x77eb483
00000000077eb456: 4c8b642420                   mov      r12, qword ptr [rsp + 0x20]
00000000077eb45b: 498b0424                     mov      rax, qword ptr [r12]
00000000077eb45f: 488903                       mov      qword ptr [rbx], rax
00000000077eb462: 488d7b08                     lea      rdi, [rbx + 8]
00000000077eb466: 41f644240801                 test     byte ptr [r12 + 8], 1
00000000077eb46c: 7526                         jne      0x77eb494
00000000077eb46e: 498d442408                   lea      rax, [r12 + 8]
00000000077eb473: 488b4810                     mov      rcx, qword ptr [rax + 0x10]
00000000077eb477: 48894f10                     mov      qword ptr [rdi + 0x10], rcx
00000000077eb47b: 0f1000                       movups   xmm0, xmmword ptr [rax]
00000000077eb47e: 0f1107                       movups   xmmword ptr [rdi], xmm0
00000000077eb481: eb20                         jmp      0x77eb4a3
00000000077eb483: 498b7e48                     mov      rdi, qword ptr [r14 + 0x48]
00000000077eb487: 4885ff                       test     rdi, rdi
00000000077eb48a: 7427                         je       0x77eb4b3
00000000077eb48c: 488b07                       mov      rax, qword ptr [rdi]
00000000077eb48f: ff5018                       call     qword ptr [rax + 0x18]
00000000077eb492: eb26                         jmp      0x77eb4ba
00000000077eb494: 498b542410                   mov      rdx, qword ptr [r12 + 0x10]
00000000077eb499: 498b742418                   mov      rsi, qword ptr [r12 + 0x18]
00000000077eb49e: e8fd11d2fc                   call     0x450c6a0
00000000077eb4a3: 498b442420                   mov      rax, qword ptr [r12 + 0x20]
00000000077eb4a8: 48894320                     mov      qword ptr [rbx + 0x20], rax
00000000077eb4ac: 498b442428                   mov      rax, qword ptr [r12 + 0x28]
00000000077eb4b1: eb73                         jmp      0x77eb526
00000000077eb4b3: 488d052ec9e802               lea      rax, [rip + 0x2e8c92e]
00000000077eb4ba: 488b7808                     mov      rdi, qword ptr [rax + 8]
00000000077eb4be: 488d355ae87cfa               lea      rsi, [rip - 0x58317a6]
00000000077eb4c5: e8d62ee802                   call     0xa66e3a0
00000000077eb4ca: 85c0                         test     eax, eax
00000000077eb4cc: 0f850b010000                 jne      0x77eb5dd
00000000077eb4d2: 4d8b6648                     mov      r12, qword ptr [r14 + 0x48]
00000000077eb4d6: 4983fcf8                     cmp      r12, -8
00000000077eb4da: 0f84fd000000                 je       0x77eb5dd
00000000077eb4e0: 498b442408                   mov      rax, qword ptr [r12 + 8]
00000000077eb4e5: 488903                       mov      qword ptr [rbx], rax
00000000077eb4e8: 488d7b08                     lea      rdi, [rbx + 8]
00000000077eb4ec: 41f644241001                 test     byte ptr [r12 + 0x10], 1
00000000077eb4f2: 7515                         jne      0x77eb509
00000000077eb4f4: 498d442410                   lea      rax, [r12 + 0x10]
00000000077eb4f9: 488b4810                     mov      rcx, qword ptr [rax + 0x10]
00000000077eb4fd: 48894f10                     mov      qword ptr [rdi + 0x10], rcx
00000000077eb501: 0f1000                       movups   xmm0, xmmword ptr [rax]
00000000077eb504: 0f1107                       movups   xmmword ptr [rdi], xmm0
00000000077eb507: eb0f                         jmp      0x77eb518
00000000077eb509: 498b542418                   mov      rdx, qword ptr [r12 + 0x18]
00000000077eb50e: 498b742420                   mov      rsi, qword ptr [r12 + 0x20]
00000000077eb513: e88811d2fc                   call     0x450c6a0
00000000077eb518: 498b442428                   mov      rax, qword ptr [r12 + 0x28]
00000000077eb51d: 48894320                     mov      qword ptr [rbx + 0x20], rax
00000000077eb521: 498b442430                   mov      rax, qword ptr [r12 + 0x30]
00000000077eb526: 48894328                     mov      qword ptr [rbx + 0x28], rax
00000000077eb52a: 4885c0                       test     rax, rax
00000000077eb52d: 7405                         je       0x77eb534
00000000077eb52f: f048ff4008                   lock inc qword ptr [rax + 8]
00000000077eb534: 498b7e20                     mov      rdi, qword ptr [r14 + 0x20]
00000000077eb538: 488b07                       mov      rax, qword ptr [rdi]
00000000077eb53b: 4c89fe                       mov      rsi, r15
00000000077eb53e: ff5020                       call     qword ptr [rax + 0x20]
00000000077eb541: 4c8b742408                   mov      r14, qword ptr [rsp + 8]
00000000077eb546: 4d85f6                       test     r14, r14
00000000077eb549: 7423                         je       0x77eb56e
00000000077eb54b: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000077eb552: f0490fc14608                 lock xadd qword ptr [r14 + 8], rax
00000000077eb558: 4885c0                       test     rax, rax
00000000077eb55b: 7511                         jne      0x77eb56e
00000000077eb55d: 498b06                       mov      rax, qword ptr [r14]
00000000077eb560: 4c89f7                       mov      rdi, r14
00000000077eb563: ff5010                       call     qword ptr [rax + 0x10]
00000000077eb566: 4c89f7                       mov      rdi, r14
00000000077eb569: e862bcd4fc                   call     0x45371d0
00000000077eb56e: 4c8b742418                   mov      r14, qword ptr [rsp + 0x18]
00000000077eb573: 4d85f6                       test     r14, r14
00000000077eb576: 7423                         je       0x77eb59b
00000000077eb578: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000077eb57f: f0490fc14608                 lock xadd qword ptr [r14 + 8], rax
00000000077eb585: 4885c0                       test     rax, rax
00000000077eb588: 7511                         jne      0x77eb59b
00000000077eb58a: 498b06                       mov      rax, qword ptr [r14]
00000000077eb58d: 4c89f7                       mov      rdi, r14
00000000077eb590: ff5010                       call     qword ptr [rax + 0x10]
00000000077eb593: 4c89f7                       mov      rdi, r14
00000000077eb596: e835bcd4fc                   call     0x45371d0
00000000077eb59b: 4c8b742428                   mov      r14, qword ptr [rsp + 0x28]
00000000077eb5a0: 4d85f6                       test     r14, r14
00000000077eb5a3: 7423                         je       0x77eb5c8
00000000077eb5a5: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000077eb5ac: f0490fc14608                 lock xadd qword ptr [r14 + 8], rax
00000000077eb5b2: 4885c0                       test     rax, rax
00000000077eb5b5: 7511                         jne      0x77eb5c8
00000000077eb5b7: 498b06                       mov      rax, qword ptr [r14]
00000000077eb5ba: 4c89f7                       mov      rdi, r14
00000000077eb5bd: ff5010                       call     qword ptr [rax + 0x10]
00000000077eb5c0: 4c89f7                       mov      rdi, r14
00000000077eb5c3: e808bcd4fc                   call     0x45371d0
00000000077eb5c8: 4889d8                       mov      rax, rbx
00000000077eb5cb: 4881c468010000               add      rsp, 0x168
00000000077eb5d2: 5b                           pop      rbx
00000000077eb5d3: 415c                         pop      r12
00000000077eb5d5: 415d                         pop      r13
00000000077eb5d7: 415e                         pop      r14
00000000077eb5d9: 415f                         pop      r15
00000000077eb5db: 5d                           pop      rbp
00000000077eb5dc: c3                           ret
00000000077eb5dd: bf08000000                   mov      edi, 8
00000000077eb5e2: e8a966d0fc                   call     0x44f1c90
00000000077eb5e7: 4889c3                       mov      rbx, rax
00000000077eb5ea: 48c70000000000               mov      qword ptr [rax], 0
00000000077eb5f1: 4889c7                       mov      rdi, rax
00000000077eb5f4: e8c7ffd1fc                   call     0x450b5c0
00000000077eb5f9: 488d0588352c03               lea      rax, [rip + 0x32c3588]
00000000077eb600: 4883c010                     add      rax, 0x10
00000000077eb604: 488903                       mov      qword ptr [rbx], rax
00000000077eb607: 488d35a2352c03               lea      rsi, [rip + 0x32c35a2]
00000000077eb60e: 488d15bbffd1fc               lea      rdx, [rip - 0x32e0045]
00000000077eb615: 4889df                       mov      rdi, rbx
00000000077eb618: e81368d0fc                   call     0x44f1e30
00000000077eb61d: 4889c7                       mov      rdi, rax
00000000077eb620: e81b10d0fc                   call     0x44ec640
00000000077eb625: 4889c3                       mov      rbx, rax
00000000077eb628: f684242801000001             test     byte ptr [rsp + 0x128], 1
00000000077eb630: 7412                         je       0x77eb644
00000000077eb632: 488bbc2438010000             mov      rdi, qword ptr [rsp + 0x138]
00000000077eb63a: e801ebd1fc                   call     0x450a140
00000000077eb63f: eb03                         jmp      0x77eb644
00000000077eb641: 4889c3                       mov      rbx, rax
00000000077eb644: 4c89ff                       mov      rdi, r15
00000000077eb647: e8e49d4d00                   call     0x7cc5430
00000000077eb64c: e999000000                   jmp      0x77eb6ea
00000000077eb651: 4889c7                       mov      rdi, rax
00000000077eb654: e8e70fd0fc                   call     0x44ec640
00000000077eb659: 4889c3                       mov      rbx, rax
00000000077eb65c: 488b4c2450                   mov      rcx, qword ptr [rsp + 0x50]
00000000077eb661: 4c39e1                       cmp      rcx, r12
00000000077eb664: 750b                         jne      0x77eb671
00000000077eb666: 488b442430                   mov      rax, qword ptr [rsp + 0x30]
00000000077eb66b: 4883c020                     add      rax, 0x20
00000000077eb66f: eb0f                         jmp      0x77eb680
00000000077eb671: 4885c9                       test     rcx, rcx
00000000077eb674: 740f                         je       0x77eb685
00000000077eb676: 488b01                       mov      rax, qword ptr [rcx]
00000000077eb679: 4883c028                     add      rax, 0x28
00000000077eb67d: 4989cc                       mov      r12, rcx
00000000077eb680: 4c89e7                       mov      rdi, r12
00000000077eb683: ff10                         call     qword ptr [rax]
00000000077eb685: 488dbc2490000000             lea      rdi, [rsp + 0x90]
00000000077eb68d: e8ee030000                   call     0x77eba80
00000000077eb692: e9a4000000                   jmp      0x77eb73b
00000000077eb697: 4889c3                       mov      rbx, rax
00000000077eb69a: 488bbc2480000000             mov      rdi, qword ptr [rsp + 0x80]
00000000077eb6a2: 4c39e7                       cmp      rdi, r12
00000000077eb6a5: 750f                         jne      0x77eb6b6
00000000077eb6a7: 488b442460                   mov      rax, qword ptr [rsp + 0x60]
00000000077eb6ac: 488d7c2460                   lea      rdi, [rsp + 0x60]
00000000077eb6b1: ff5020                       call     qword ptr [rax + 0x20]
00000000077eb6b4: eb22                         jmp      0x77eb6d8
00000000077eb6b6: 4885ff                       test     rdi, rdi
00000000077eb6b9: 741d                         je       0x77eb6d8
00000000077eb6bb: 488b07                       mov      rax, qword ptr [rdi]
00000000077eb6be: ff5028                       call     qword ptr [rax + 0x28]
00000000077eb6c1: eb15                         jmp      0x77eb6d8
00000000077eb6c3: 4889c3                       mov      rbx, rax
00000000077eb6c6: 4d85e4                       test     r12, r12
00000000077eb6c9: 740d                         je       0x77eb6d8
00000000077eb6cb: 4c89e7                       mov      rdi, r12
00000000077eb6ce: e86dead1fc                   call     0x450a140
00000000077eb6d3: eb03                         jmp      0x77eb6d8
00000000077eb6d5: 4889c3                       mov      rbx, rax
00000000077eb6d8: 488dbc24a8000000             lea      rdi, [rsp + 0xa8]
00000000077eb6e0: e8eb020000                   call     0x77eb9d0
00000000077eb6e5: eb5c                         jmp      0x77eb743
00000000077eb6e7: 4889c3                       mov      rbx, rax
00000000077eb6ea: 488dbc24b8000000             lea      rdi, [rsp + 0xb8]
00000000077eb6f2: e8694405fd                   call     0x483fb60
00000000077eb6f7: 488dbc24a8000000             lea      rdi, [rsp + 0xa8]
00000000077eb6ff: e89c020000                   call     0x77eb9a0
00000000077eb704: eb3d                         jmp      0x77eb743
00000000077eb706: 4889c3                       mov      rbx, rax
00000000077eb709: eb42                         jmp      0x77eb74d
00000000077eb70b: 4889c3                       mov      rbx, rax
00000000077eb70e: 4c89ff                       mov      rdi, r15
00000000077eb711: e8aabad4fc                   call     0x45371c0
00000000077eb716: 4d85ff                       test     r15, r15
00000000077eb719: 7408                         je       0x77eb723
00000000077eb71b: 4c89ff                       mov      rdi, r15
00000000077eb71e: e81dead1fc                   call     0x450a140
00000000077eb723: 4889df                       mov      rdi, rbx
00000000077eb726: e8f516d0fc                   call     0x44ece20
00000000077eb72b: 4889c3                       mov      rbx, rax
00000000077eb72e: 498b7e20                     mov      rdi, qword ptr [r14 + 0x20]
00000000077eb732: 488b07                       mov      rax, qword ptr [rdi]
00000000077eb735: 4c89fe                       mov      rsi, r15
00000000077eb738: ff5020                       call     qword ptr [rax + 0x20]
00000000077eb73b: 4889e7                       mov      rdi, rsp
00000000077eb73e: e8ddf584fe                   call     0x603ad20
00000000077eb743: 488d7c2410                   lea      rdi, [rsp + 0x10]
00000000077eb748: e8134405fd                   call     0x483fb60
00000000077eb74d: 488d7c2420                   lea      rdi, [rsp + 0x20]
00000000077eb752: e849020000                   call     0x77eb9a0
00000000077eb757: 4889df                       mov      rdi, rbx
00000000077eb75a: e8c116d0fc                   call     0x44ece20
00000000077eb75f: 4889c7                       mov      rdi, rax
00000000077eb762: e8d90ed0fc                   call     0x44ec640
