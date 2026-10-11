00000000077ed0f0: 4157                         push     r15
00000000077ed0f2: 4156                         push     r14
00000000077ed0f4: 4154                         push     r12
00000000077ed0f6: 53                           push     rbx
00000000077ed0f7: 4883ec18                     sub      rsp, 0x18
00000000077ed0fb: 4889fb                       mov      rbx, rdi
00000000077ed0fe: c70601000000                 mov      dword ptr [rsi], 1
00000000077ed104: 808fe400000001               or       byte ptr [rdi + 0xe4], 1
00000000077ed10b: 4c8bb790000000               mov      r14, qword ptr [rdi + 0x90]
00000000077ed112: 4d85f6                       test     r14, r14
00000000077ed115: 7544                         jne      0x77ed15b
00000000077ed117: bf38000000                   mov      edi, 0x38
00000000077ed11c: e87f0ce802                   call     0xa66dda0
00000000077ed121: 4989c6                       mov      r14, rax
00000000077ed124: 4889c7                       mov      rdi, rax
00000000077ed127: e884632000                   call     0x79f34b0
00000000077ed12c: 4c89b390000000               mov      qword ptr [rbx + 0x90], r14
00000000077ed133: 808be400000001               or       byte ptr [rbx + 0xe4], 1
00000000077ed13a: 4d85f6                       test     r14, r14
00000000077ed13d: 751c                         jne      0x77ed15b
00000000077ed13f: bf38000000                   mov      edi, 0x38
00000000077ed144: e8570ce802                   call     0xa66dda0
00000000077ed149: 4989c6                       mov      r14, rax
00000000077ed14c: 4889c7                       mov      rdi, rax
00000000077ed14f: e85c632000                   call     0x79f34b0
00000000077ed154: 4c89b390000000               mov      qword ptr [rbx + 0x90], r14
00000000077ed15b: 41804e3401                   or       byte ptr [r14 + 0x34], 1
00000000077ed160: 498b7e08                     mov      rdi, qword ptr [r14 + 8]
00000000077ed164: 483b3d95633003               cmp      rdi, qword ptr [rip + 0x3306395]
00000000077ed16b: 751f                         jne      0x77ed18c
00000000077ed16d: bf18000000                   mov      edi, 0x18
00000000077ed172: e8290ce802                   call     0xa66dda0
00000000077ed177: 4889c7                       mov      rdi, rax
00000000077ed17a: 0f57c0                       xorps    xmm0, xmm0
00000000077ed17d: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077ed180: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077ed188: 49894608                     mov      qword ptr [r14 + 8], rax
00000000077ed18c: 488d35a57462f9               lea      rsi, [rip - 0x69d8b5b]
00000000077ed193: ba01000000                   mov      edx, 1
00000000077ed198: e863fdd1fc                   call     0x450cf00
00000000077ed19d: e83ef384fe                   call     0x603c4e0
00000000077ed1a2: 488b08                       mov      rcx, qword ptr [rax]
00000000077ed1a5: 4889c7                       mov      rdi, rax
00000000077ed1a8: ff5120                       call     qword ptr [rcx + 0x20]
00000000077ed1ab: 808be400000001               or       byte ptr [rbx + 0xe4], 1
00000000077ed1b2: 4c8bb390000000               mov      r14, qword ptr [rbx + 0x90]
00000000077ed1b9: 4885c0                       test     rax, rax
00000000077ed1bc: 7422                         je       0x77ed1e0
00000000077ed1be: 4d85f6                       test     r14, r14
00000000077ed1c1: 7544                         jne      0x77ed207
00000000077ed1c3: 4989c7                       mov      r15, rax
00000000077ed1c6: bf38000000                   mov      edi, 0x38
00000000077ed1cb: e8d00be802                   call     0xa66dda0
00000000077ed1d0: 4989c6                       mov      r14, rax
00000000077ed1d3: 4889c7                       mov      rdi, rax
00000000077ed1d6: e8d5622000                   call     0x79f34b0
00000000077ed1db: 4c89f8                       mov      rax, r15
00000000077ed1de: eb20                         jmp      0x77ed200
00000000077ed1e0: 4d85f6                       test     r14, r14
00000000077ed1e3: 7404                         je       0x77ed1e9
00000000077ed1e5: 31c0                         xor      eax, eax
00000000077ed1e7: eb1e                         jmp      0x77ed207
00000000077ed1e9: bf38000000                   mov      edi, 0x38
00000000077ed1ee: e8ad0be802                   call     0xa66dda0
00000000077ed1f3: 4989c6                       mov      r14, rax
00000000077ed1f6: 4889c7                       mov      rdi, rax
00000000077ed1f9: e8b2622000                   call     0x79f34b0
00000000077ed1fe: 31c0                         xor      eax, eax
00000000077ed200: 4c89b390000000               mov      qword ptr [rbx + 0x90], r14
00000000077ed207: 41804e3402                   or       byte ptr [r14 + 0x34], 2
00000000077ed20c: 49894610                     mov      qword ptr [r14 + 0x10], rax
00000000077ed210: 808be400000001               or       byte ptr [rbx + 0xe4], 1
00000000077ed217: 4d85f6                       test     r14, r14
00000000077ed21a: 751c                         jne      0x77ed238
00000000077ed21c: bf38000000                   mov      edi, 0x38
00000000077ed221: e87a0be802                   call     0xa66dda0
00000000077ed226: 4989c6                       mov      r14, rax
00000000077ed229: 4889c7                       mov      rdi, rax
00000000077ed22c: e87f622000                   call     0x79f34b0
00000000077ed231: 4c89b390000000               mov      qword ptr [rbx + 0x90], r14
00000000077ed238: e8a3f284fe                   call     0x603c4e0
00000000077ed23d: 488b08                       mov      rcx, qword ptr [rax]
00000000077ed240: 4889c7                       mov      rdi, rax
00000000077ed243: ff5110                       call     qword ptr [rcx + 0x10]
00000000077ed246: 4889e7                       mov      rdi, rsp
00000000077ed249: 4889c6                       mov      rsi, rax
00000000077ed24c: e81f5d85fe                   call     0x6042f70
00000000077ed251: f6042401                     test     byte ptr [rsp], 1
00000000077ed255: 7407                         je       0x77ed25e
00000000077ed257: 4c8b7c2410                   mov      r15, qword ptr [rsp + 0x10]
00000000077ed25c: eb05                         jmp      0x77ed263
00000000077ed25e: 4c8d7c2401                   lea      r15, [rsp + 1]
00000000077ed263: 41834e3404                   or       dword ptr [r14 + 0x34], 4
00000000077ed268: 498b7e18                     mov      rdi, qword ptr [r14 + 0x18]
00000000077ed26c: 483b3d8d623003               cmp      rdi, qword ptr [rip + 0x330628d]
00000000077ed273: 751f                         jne      0x77ed294
00000000077ed275: bf18000000                   mov      edi, 0x18
00000000077ed27a: e8210be802                   call     0xa66dda0
00000000077ed27f: 4889c7                       mov      rdi, rax
00000000077ed282: 0f57c0                       xorps    xmm0, xmm0
00000000077ed285: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077ed288: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077ed290: 49894618                     mov      qword ptr [r14 + 0x18], rax
00000000077ed294: ba10000000                   mov      edx, 0x10
00000000077ed299: 4c89fe                       mov      rsi, r15
00000000077ed29c: e85ffcd1fc                   call     0x450cf00
00000000077ed2a1: f6042401                     test     byte ptr [rsp], 1
00000000077ed2a5: 740a                         je       0x77ed2b1
00000000077ed2a7: 488b7c2410                   mov      rdi, qword ptr [rsp + 0x10]
00000000077ed2ac: e88fced1fc                   call     0x450a140
00000000077ed2b1: 808be400000001               or       byte ptr [rbx + 0xe4], 1
00000000077ed2b8: 4c8bb390000000               mov      r14, qword ptr [rbx + 0x90]
00000000077ed2bf: 4d85f6                       test     r14, r14
00000000077ed2c2: 751c                         jne      0x77ed2e0
00000000077ed2c4: bf38000000                   mov      edi, 0x38
00000000077ed2c9: e8d20ae802                   call     0xa66dda0
00000000077ed2ce: 4989c6                       mov      r14, rax
00000000077ed2d1: 4889c7                       mov      rdi, rax
00000000077ed2d4: e8d7612000                   call     0x79f34b0
00000000077ed2d9: 4c89b390000000               mov      qword ptr [rbx + 0x90], r14
00000000077ed2e0: e8fbf184fe                   call     0x603c4e0
00000000077ed2e5: 488b08                       mov      rcx, qword ptr [rax]
00000000077ed2e8: 4889c7                       mov      rdi, rax
00000000077ed2eb: ff5110                       call     qword ptr [rcx + 0x10]
00000000077ed2ee: 8b4060                       mov      eax, dword ptr [rax + 0x60]
00000000077ed2f1: 41834e3408                   or       dword ptr [r14 + 0x34], 8
00000000077ed2f6: 41894628                     mov      dword ptr [r14 + 0x28], eax
00000000077ed2fa: 808be400000001               or       byte ptr [rbx + 0xe4], 1
00000000077ed301: 4c8bb390000000               mov      r14, qword ptr [rbx + 0x90]
00000000077ed308: 4d85f6                       test     r14, r14
00000000077ed30b: 751c                         jne      0x77ed329
00000000077ed30d: bf38000000                   mov      edi, 0x38
00000000077ed312: e8890ae802                   call     0xa66dda0
00000000077ed317: 4989c6                       mov      r14, rax
00000000077ed31a: 4889c7                       mov      rdi, rax
00000000077ed31d: e88e612000                   call     0x79f34b0
00000000077ed322: 4c89b390000000               mov      qword ptr [rbx + 0x90], r14
00000000077ed329: e8b2f184fe                   call     0x603c4e0
00000000077ed32e: 488b08                       mov      rcx, qword ptr [rax]
00000000077ed331: 4889c7                       mov      rdi, rax
00000000077ed334: ff5110                       call     qword ptr [rcx + 0x10]
00000000077ed337: 4989c7                       mov      r15, rax
00000000077ed33a: f6808800000001               test     byte ptr [rax + 0x88], 1
00000000077ed341: 7409                         je       0x77ed34c
00000000077ed343: 4d8bbf98000000               mov      r15, qword ptr [r15 + 0x98]
00000000077ed34a: eb07                         jmp      0x77ed353
00000000077ed34c: 4981c789000000               add      r15, 0x89
00000000077ed353: e888f184fe                   call     0x603c4e0
00000000077ed358: 488b08                       mov      rcx, qword ptr [rax]
00000000077ed35b: 4889c7                       mov      rdi, rax
00000000077ed35e: ff5110                       call     qword ptr [rcx + 0x10]
00000000077ed361: 0fb69088000000               movzx    edx, byte ptr [rax + 0x88]
00000000077ed368: f6c201                       test     dl, 1
00000000077ed36b: 7409                         je       0x77ed376
00000000077ed36d: 488b9090000000               mov      rdx, qword ptr [rax + 0x90]
00000000077ed374: eb02                         jmp      0x77ed378
00000000077ed376: d1ea                         shr      edx, 1
00000000077ed378: 41834e3410                   or       dword ptr [r14 + 0x34], 0x10
00000000077ed37d: 498b7e20                     mov      rdi, qword ptr [r14 + 0x20]
00000000077ed381: 483b3d78613003               cmp      rdi, qword ptr [rip + 0x3306178]
00000000077ed388: 7525                         jne      0x77ed3af
00000000077ed38a: bf18000000                   mov      edi, 0x18
00000000077ed38f: 4989d4                       mov      r12, rdx
00000000077ed392: e8090ae802                   call     0xa66dda0
00000000077ed397: 4c89e2                       mov      rdx, r12
00000000077ed39a: 4889c7                       mov      rdi, rax
00000000077ed39d: 0f57c0                       xorps    xmm0, xmm0
00000000077ed3a0: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077ed3a3: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077ed3ab: 49894620                     mov      qword ptr [r14 + 0x20], rax
00000000077ed3af: 4c89fe                       mov      rsi, r15
00000000077ed3b2: e849fbd1fc                   call     0x450cf00
00000000077ed3b7: 808be400000001               or       byte ptr [rbx + 0xe4], 1
00000000077ed3be: 4c8bb390000000               mov      r14, qword ptr [rbx + 0x90]
00000000077ed3c5: 4d85f6                       test     r14, r14
00000000077ed3c8: 751c                         jne      0x77ed3e6
00000000077ed3ca: bf38000000                   mov      edi, 0x38
00000000077ed3cf: e8cc09e802                   call     0xa66dda0
00000000077ed3d4: 4989c6                       mov      r14, rax
00000000077ed3d7: 4889c7                       mov      rdi, rax
00000000077ed3da: e8d1602000                   call     0x79f34b0
00000000077ed3df: 4c89b390000000               mov      qword ptr [rbx + 0x90], r14
00000000077ed3e6: 8b4308                       mov      eax, dword ptr [rbx + 8]
00000000077ed3e9: 41834e3420                   or       dword ptr [r14 + 0x34], 0x20
00000000077ed3ee: 4189462c                     mov      dword ptr [r14 + 0x2c], eax
00000000077ed3f2: b001                         mov      al, 1
00000000077ed3f4: 4883c418                     add      rsp, 0x18
00000000077ed3f8: 5b                           pop      rbx
00000000077ed3f9: 415c                         pop      r12
00000000077ed3fb: 415e                         pop      r14
00000000077ed3fd: 415f                         pop      r15
00000000077ed3ff: c3                           ret
00000000077ed400: eb0c                         jmp      0x77ed40e
00000000077ed402: eb0a                         jmp      0x77ed40e
00000000077ed404: eb08                         jmp      0x77ed40e
00000000077ed406: eb06                         jmp      0x77ed40e
00000000077ed408: eb04                         jmp      0x77ed40e
00000000077ed40a: eb02                         jmp      0x77ed40e
00000000077ed40c: eb00                         jmp      0x77ed40e
00000000077ed40e: 4889c3                       mov      rbx, rax
00000000077ed411: 4c89f7                       mov      rdi, r14
00000000077ed414: eb0e                         jmp      0x77ed424
00000000077ed416: 4889c3                       mov      rbx, rax
00000000077ed419: f6042401                     test     byte ptr [rsp], 1
00000000077ed41d: 740a                         je       0x77ed429
00000000077ed41f: 488b7c2410                   mov      rdi, qword ptr [rsp + 0x10]
00000000077ed424: e817cdd1fc                   call     0x450a140
00000000077ed429: 4889df                       mov      rdi, rbx
00000000077ed42c: e8eff9cffc                   call     0x44ece20
