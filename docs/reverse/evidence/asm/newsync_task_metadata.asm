00000000061e2350: 55                           push     rbp
00000000061e2351: 4157                         push     r15
00000000061e2353: 4156                         push     r14
00000000061e2355: 4155                         push     r13
00000000061e2357: 4154                         push     r12
00000000061e2359: 53                           push     rbx
00000000061e235a: 4883ec38                     sub      rsp, 0x38
00000000061e235e: 4d89c5                       mov      r13, r8
00000000061e2361: 4989ce                       mov      r14, rcx
00000000061e2364: 4989d7                       mov      r15, rdx
00000000061e2367: 4889f5                       mov      rbp, rsi
00000000061e236a: 4889fb                       mov      rbx, rdi
00000000061e236d: 48b8aaaaaaaaaaaaaaaa         movabs   rax, 0xaaaaaaaaaaaaaaaa
00000000061e2377: 4889442430                   mov      qword ptr [rsp + 0x30], rax
00000000061e237c: 0f28050df4b6fa               movaps   xmm0, xmmword ptr [rip - 0x5490bf3]
00000000061e2383: 0f290424                     movaps   xmmword ptr [rsp], xmm0
00000000061e2387: 48c74424108a000000           mov      qword ptr [rsp + 0x10], 0x8a
00000000061e2390: bf20000000                   mov      edi, 0x20
00000000061e2395: e806ba4804                   call     0xa66dda0
00000000061e239a: 4889442428                   mov      qword ptr [rsp + 0x28], rax
00000000061e239f: 48c744241821000000           mov      qword ptr [rsp + 0x18], 0x21
00000000061e23a8: 48c74424201d000000           mov      qword ptr [rsp + 0x20], 0x1d
00000000061e23b1: 0f1005e9b2d6fa               movups   xmm0, xmmword ptr [rip - 0x5294d17]
00000000061e23b8: 0f11400d                     movups   xmmword ptr [rax + 0xd], xmm0
00000000061e23bc: 0f1005d1b2d6fa               movups   xmm0, xmmword ptr [rip - 0x5294d2f]
00000000061e23c3: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000061e23c6: c6401d00                     mov      byte ptr [rax + 0x1d], 0
00000000061e23ca: c644243001                   mov      byte ptr [rsp + 0x30], 1
00000000061e23cf: 410fb64608                   movzx    eax, byte ptr [r14 + 8]
00000000061e23d4: a801                         test     al, 1
00000000061e23d6: 740b                         je       0x61e23e3
00000000061e23d8: 498b4610                     mov      rax, qword ptr [r14 + 0x10]
00000000061e23dc: 4885c0                       test     rax, rax
00000000061e23df: 7509                         jne      0x61e23ea
00000000061e23e1: eb15                         jmp      0x61e23f8
00000000061e23e3: d1e8                         shr      eax, 1
00000000061e23e5: 4885c0                       test     rax, rax
00000000061e23e8: 740e                         je       0x61e23f8
00000000061e23ea: 488d7c2418                   lea      rdi, [rsp + 0x18]
00000000061e23ef: 498d7608                     lea      rsi, [r14 + 8]
00000000061e23f3: e8b8b932fe                   call     0x450ddb0
00000000061e23f8: bf10010000                   mov      edi, 0x110
00000000061e23fd: e89eb94804                   call     0xa66dda0
00000000061e2402: 4989c4                       mov      r12, rax
00000000061e2405: 4889e6                       mov      rsi, rsp
00000000061e2408: 4889c7                       mov      rdi, rax
00000000061e240b: e8a0010000                   call     0x61e25b0
00000000061e2410: 498b0424                     mov      rax, qword ptr [r12]
00000000061e2414: 4c89e7                       mov      rdi, r12
00000000061e2417: ff5020                       call     qword ptr [rax + 0x20]
00000000061e241a: 4889c7                       mov      rdi, rax
00000000061e241d: 4889ee                       mov      rsi, rbp
00000000061e2420: e8ebadc001                   call     0x7ded210
00000000061e2425: 498d6c2450                   lea      rbp, [r12 + 0x50]
00000000061e242a: 498b7c2470                   mov      rdi, qword ptr [r12 + 0x70]
00000000061e242f: 49c744247000000000           mov      qword ptr [r12 + 0x70], 0
00000000061e2438: 4839ef                       cmp      rdi, rbp
00000000061e243b: 740d                         je       0x61e244a
00000000061e243d: 4885ff                       test     rdi, rdi
00000000061e2440: 7412                         je       0x61e2454
00000000061e2442: 488b07                       mov      rax, qword ptr [rdi]
00000000061e2445: ff5028                       call     qword ptr [rax + 0x28]
00000000061e2448: eb0a                         jmp      0x61e2454
00000000061e244a: 488b4500                     mov      rax, qword ptr [rbp]
00000000061e244e: 4889ef                       mov      rdi, rbp
00000000061e2451: ff5020                       call     qword ptr [rax + 0x20]
00000000061e2454: 498d442470                   lea      rax, [r12 + 0x70]
00000000061e2459: 498b4d20                     mov      rcx, qword ptr [r13 + 0x20]
00000000061e245d: 4885c9                       test     rcx, rcx
00000000061e2460: 740f                         je       0x61e2471
00000000061e2462: 4c39e9                       cmp      rcx, r13
00000000061e2465: 7413                         je       0x61e247a
00000000061e2467: 4983c520                     add      r13, 0x20
00000000061e246b: 488908                       mov      qword ptr [rax], rcx
00000000061e246e: 4c89e8                       mov      rax, r13
00000000061e2471: 48c70000000000               mov      qword ptr [rax], 0
00000000061e2478: eb10                         jmp      0x61e248a
00000000061e247a: 488928                       mov      qword ptr [rax], rbp
00000000061e247d: 498b4500                     mov      rax, qword ptr [r13]
00000000061e2481: 4c89ef                       mov      rdi, r13
00000000061e2484: 4889ee                       mov      rsi, rbp
00000000061e2487: ff5018                       call     qword ptr [rax + 0x18]
00000000061e248a: 498d7c2438                   lea      rdi, [r12 + 0x38]
00000000061e248f: 4c89fe                       mov      rsi, r15
00000000061e2492: e819b932fe                   call     0x450ddb0
00000000061e2497: 410fb64620                   movzx    eax, byte ptr [r14 + 0x20]
00000000061e249c: 4188842480000000             mov      byte ptr [r12 + 0x80], al
00000000061e24a4: 418b4624                     mov      eax, dword ptr [r14 + 0x24]
00000000061e24a8: 4189842484000000             mov      dword ptr [r12 + 0x84], eax
00000000061e24b0: 488b03                       mov      rax, qword ptr [rbx]
00000000061e24b3: 4889df                       mov      rdi, rbx
00000000061e24b6: 4c89e6                       mov      rsi, r12
00000000061e24b9: ff5028                       call     qword ptr [rax + 0x28]
00000000061e24bc: e8ef142101                   call     0x73f39b0
00000000061e24c1: 4c89e6                       mov      rsi, r12
00000000061e24c4: 4883c618                     add      rsi, 0x18
00000000061e24c8: 4889c7                       mov      rdi, rax
00000000061e24cb: e8c0162101                   call     0x73f3b90
00000000061e24d0: 418b5c2408                   mov      ebx, dword ptr [r12 + 8]
00000000061e24d5: f644241801                   test     byte ptr [rsp + 0x18], 1
00000000061e24da: 740a                         je       0x61e24e6
00000000061e24dc: 488b7c2428                   mov      rdi, qword ptr [rsp + 0x28]
00000000061e24e1: e85a7c32fe                   call     0x450a140
00000000061e24e6: 89d8                         mov      eax, ebx
00000000061e24e8: 4883c438                     add      rsp, 0x38
00000000061e24ec: 5b                           pop      rbx
00000000061e24ed: 415c                         pop      r12
00000000061e24ef: 415d                         pop      r13
00000000061e24f1: 415e                         pop      r14
00000000061e24f3: 415f                         pop      r15
00000000061e24f5: 5d                           pop      rbp
00000000061e24f6: c3                           ret
00000000061e24f7: 4889c7                       mov      rdi, rax
00000000061e24fa: e841a130fe                   call     0x44ec640
00000000061e24ff: eb0f                         jmp      0x61e2510
00000000061e2501: 4889c3                       mov      rbx, rax
00000000061e2504: 4c89e7                       mov      rdi, r12
00000000061e2507: e8347c32fe                   call     0x450a140
00000000061e250c: eb05                         jmp      0x61e2513
00000000061e250e: eb00                         jmp      0x61e2510
00000000061e2510: 4889c3                       mov      rbx, rax
00000000061e2513: f644241801                   test     byte ptr [rsp + 0x18], 1
00000000061e2518: 740a                         je       0x61e2524
00000000061e251a: 488b7c2428                   mov      rdi, qword ptr [rsp + 0x28]
00000000061e251f: e81c7c32fe                   call     0x450a140
00000000061e2524: 4889df                       mov      rdi, rbx
00000000061e2527: e8f4a830fe                   call     0x44ece20
