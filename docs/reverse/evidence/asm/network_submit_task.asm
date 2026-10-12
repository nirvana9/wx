00000000079e3760: 55                           push     rbp
00000000079e3761: 4157                         push     r15
00000000079e3763: 4156                         push     r14
00000000079e3765: 4155                         push     r13
00000000079e3767: 4154                         push     r12
00000000079e3769: 53                           push     rbx
00000000079e376a: 4881ecd8030000               sub      rsp, 0x3d8
00000000079e3771: 0fb64718                     movzx    eax, byte ptr [rdi + 0x18]
00000000079e3775: a801                         test     al, 1
00000000079e3777: 0f847a090000                 je       0x79e40f7
00000000079e377d: 4989f6                       mov      r14, rsi
00000000079e3780: 4889fb                       mov      rbx, rdi
00000000079e3783: 4881c780000000               add      rdi, 0x80
00000000079e378a: 48897c2450                   mov      qword ptr [rsp + 0x50], rdi
00000000079e378f: e84cfbbefc                   call     0x45d32e0
00000000079e3794: 4c8da424c0010000             lea      r12, [rsp + 0x1c0]
00000000079e379c: ba18020000                   mov      edx, 0x218
00000000079e37a1: 4c89e7                       mov      rdi, r12
00000000079e37a4: beaa000000                   mov      esi, 0xaa
00000000079e37a9: e822abc802                   call     0xa66e2d0
00000000079e37ae: 4c89e7                       mov      rdi, r12
00000000079e37b1: e89aaa4e01                   call     0x8ece250
00000000079e37b6: 418b460c                     mov      eax, dword ptr [r14 + 0xc]
00000000079e37ba: 898424c4010000               mov      dword ptr [rsp + 0x1c4], eax
00000000079e37c1: 418b4610                     mov      eax, dword ptr [r14 + 0x10]
00000000079e37c5: 898424d0010000               mov      dword ptr [rsp + 0x1d0], eax
00000000079e37cc: 498d7618                     lea      rsi, [r14 + 0x18]
00000000079e37d0: 488dbc24d8010000             lea      rdi, [rsp + 0x1d8]
00000000079e37d8: e8d3a5b2fc                   call     0x450ddb0
00000000079e37dd: 410fb64631                   movzx    eax, byte ptr [r14 + 0x31]
00000000079e37e2: 888424f1010000               mov      byte ptr [rsp + 0x1f1], al
00000000079e37e9: 410fb64633                   movzx    eax, byte ptr [r14 + 0x33]
00000000079e37ee: 888424f3010000               mov      byte ptr [rsp + 0x1f3], al
00000000079e37f5: 410fb64632                   movzx    eax, byte ptr [r14 + 0x32]
00000000079e37fa: 888424f2010000               mov      byte ptr [rsp + 0x1f2], al
00000000079e3801: e8da8c65fe                   call     0x603c4e0
00000000079e3806: 418b760c                     mov      esi, dword ptr [r14 + 0xc]
00000000079e380a: 4889c7                       mov      rdi, rax
00000000079e380d: e85ef065fe                   call     0x6042870
00000000079e3812: 48895c2458                   mov      qword ptr [rsp + 0x58], rbx
00000000079e3817: 3401                         xor      al, 1
00000000079e3819: 0fb6c0                       movzx    eax, al
00000000079e381c: 89842400020000               mov      dword ptr [rsp + 0x200], eax
00000000079e3823: 410fb68680000000             movzx    eax, byte ptr [r14 + 0x80]
00000000079e382b: 8884240c020000               mov      byte ptr [rsp + 0x20c], al
00000000079e3832: 84c0                         test     al, al
00000000079e3834: 740e                         je       0x79e3844
00000000079e3836: 418b8684000000               mov      eax, dword ptr [r14 + 0x84]
00000000079e383d: 89842410020000               mov      dword ptr [rsp + 0x210], eax
00000000079e3844: 48bbaaaaaaaaaaaaaaaa         movabs   rbx, 0xaaaaaaaaaaaaaaaa
00000000079e384e: 418b460c                     mov      eax, dword ptr [r14 + 0xc]
00000000079e3852: 4889842420020000             mov      qword ptr [rsp + 0x220], rax
00000000079e385a: c744242c00000000             mov      dword ptr [rsp + 0x2c], 0
00000000079e3862: 48895c2408                   mov      qword ptr [rsp + 8], rbx
00000000079e3867: 488d7c2408                   lea      rdi, [rsp + 8]
00000000079e386c: e80f22feff                   call     0x79c5a80
00000000079e3871: c644240700                   mov      byte ptr [rsp + 7], 0
00000000079e3876: c744242800000000             mov      dword ptr [rsp + 0x28], 0
00000000079e387e: 498b06                       mov      rax, qword ptr [r14]
00000000079e3881: 488d742408                   lea      rsi, [rsp + 8]
00000000079e3886: 488d54242c                   lea      rdx, [rsp + 0x2c]
00000000079e388b: 488d4c2407                   lea      rcx, [rsp + 7]
00000000079e3890: 4c8d442428                   lea      r8, [rsp + 0x28]
00000000079e3895: 4c89f7                       mov      rdi, r14
00000000079e3898: ff5010                       call     qword ptr [rax + 0x10]
00000000079e389b: 48899c2430010000             mov      qword ptr [rsp + 0x130], rbx
00000000079e38a3: 0f2805f65d37f9               movaps   xmm0, xmmword ptr [rip - 0x6c8a20a]
00000000079e38aa: 0f29842420010000             movaps   xmmword ptr [rsp + 0x120], xmm0
00000000079e38b2: 0f29842410010000             movaps   xmmword ptr [rsp + 0x110], xmm0
00000000079e38ba: 0f29842400010000             movaps   xmmword ptr [rsp + 0x100], xmm0
00000000079e38c2: 0f298424f0000000             movaps   xmmword ptr [rsp + 0xf0], xmm0
00000000079e38ca: 488dbc24f0000000             lea      rdi, [rsp + 0xf0]
00000000079e38d2: e8d93d5e00                   call     0x7fc76b0
00000000079e38d7: e8048c65fe                   call     0x603c4e0
00000000079e38dc: 488b08                       mov      rcx, qword ptr [rax]
00000000079e38df: 4889c7                       mov      rdi, rax
00000000079e38e2: ff5120                       call     qword ptr [rcx + 0x20]
00000000079e38e5: 808c243401000001             or       byte ptr [rsp + 0x134], 1
00000000079e38ed: 48898424f8000000             mov      qword ptr [rsp + 0xf8], rax
00000000079e38f5: 488d7c2408                   lea      rdi, [rsp + 8]
00000000079e38fa: e89123feff                   call     0x79c5c90
00000000079e38ff: 4989c4                       mov      r12, rax
00000000079e3902: 488d7c2408                   lea      rdi, [rsp + 8]
00000000079e3907: e87423feff                   call     0x79c5c80
00000000079e390c: 89c5                         mov      ebp, eax
00000000079e390e: 808c243401000002             or       byte ptr [rsp + 0x134], 2
00000000079e3916: 488bbc2400010000             mov      rdi, qword ptr [rsp + 0x100]
00000000079e391e: 483b3ddbfb1003               cmp      rdi, qword ptr [rip + 0x310fbdb]
00000000079e3925: 7523                         jne      0x79e394a
00000000079e3927: bf18000000                   mov      edi, 0x18
00000000079e392c: e86fa4c802                   call     0xa66dda0
00000000079e3931: 4889c7                       mov      rdi, rax
00000000079e3934: 0f57c0                       xorps    xmm0, xmm0
00000000079e3937: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000079e393a: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000079e3942: 4889842400010000             mov      qword ptr [rsp + 0x100], rax
00000000079e394a: 4863d5                       movsxd   rdx, ebp
00000000079e394d: 4c89e6                       mov      rsi, r12
00000000079e3950: e8ab95b2fc                   call     0x450cf00
00000000079e3955: c784240801000000000000       mov      dword ptr [rsp + 0x108], 0
00000000079e3960: 808c24340100000c             or       byte ptr [rsp + 0x134], 0xc
00000000079e3968: c684241801000000             mov      byte ptr [rsp + 0x118], 0
00000000079e3970: e86b8b65fe                   call     0x603c4e0
00000000079e3975: 488d7c2460                   lea      rdi, [rsp + 0x60]
00000000079e397a: 4889c6                       mov      rsi, rax
00000000079e397d: e80ede65fe                   call     0x6041790
00000000079e3982: 0fb6442460                   movzx    eax, byte ptr [rsp + 0x60]
00000000079e3987: a801                         test     al, 1
00000000079e3989: 750a                         jne      0x79e3995
00000000079e398b: 84c0                         test     al, al
00000000079e398d: 0f8583000000                 jne      0x79e3a16
00000000079e3993: eb14                         jmp      0x79e39a9
00000000079e3995: 4c8b7c2468                   mov      r15, qword ptr [rsp + 0x68]
00000000079e399a: 488b7c2470                   mov      rdi, qword ptr [rsp + 0x70]
00000000079e399f: e89c67b2fc                   call     0x450a140
00000000079e39a4: 4d85ff                       test     r15, r15
00000000079e39a7: 756d                         jne      0x79e3a16
00000000079e39a9: 450fb66638                   movzx    r12d, byte ptr [r14 + 0x38]
00000000079e39ae: 41f6c401                     test     r12b, 1
00000000079e39b2: 750e                         jne      0x79e39c2
00000000079e39b4: 4d85e4                       test     r12, r12
00000000079e39b7: 745d                         je       0x79e3a16
00000000079e39b9: 4d8d6e39                     lea      r13, [r14 + 0x39]
00000000079e39bd: 41d1ec                       shr      r12d, 1
00000000079e39c0: eb0d                         jmp      0x79e39cf
00000000079e39c2: 4d8b6640                     mov      r12, qword ptr [r14 + 0x40]
00000000079e39c6: 4d85e4                       test     r12, r12
00000000079e39c9: 744b                         je       0x79e3a16
00000000079e39cb: 4d8b6e48                     mov      r13, qword ptr [r14 + 0x48]
00000000079e39cf: 808c243401000040             or       byte ptr [rsp + 0x134], 0x40
00000000079e39d7: 488bbc2410010000             mov      rdi, qword ptr [rsp + 0x110]
00000000079e39df: 483b3d1afb1003               cmp      rdi, qword ptr [rip + 0x310fb1a]
00000000079e39e6: 7523                         jne      0x79e3a0b
00000000079e39e8: bf18000000                   mov      edi, 0x18
00000000079e39ed: e8aea3c802                   call     0xa66dda0
00000000079e39f2: 4889c7                       mov      rdi, rax
00000000079e39f5: 0f57c0                       xorps    xmm0, xmm0
00000000079e39f8: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000079e39fb: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000079e3a03: 4889842410010000             mov      qword ptr [rsp + 0x110], rax
00000000079e3a0b: 4c89ee                       mov      rsi, r13
00000000079e3a0e: 4c89e2                       mov      rdx, r12
00000000079e3a11: e8ea94b2fc                   call     0x450cf00
00000000079e3a16: 418b7e0c                     mov      edi, dword ptr [r14 + 0xc]
00000000079e3a1a: e831080000                   call     0x79e4250
00000000079e3a1f: 84c0                         test     al, al
00000000079e3a21: 0f84d4010000                 je       0x79e3bfb
00000000079e3a27: 808c243401000080             or       byte ptr [rsp + 0x134], 0x80
00000000079e3a2f: c684241a01000001             mov      byte ptr [rsp + 0x11a], 1
00000000079e3a37: 48899c2480000000             mov      qword ptr [rsp + 0x80], rbx
00000000079e3a3f: 0f57c0                       xorps    xmm0, xmm0
00000000079e3a42: 0f11842488000000             movups   xmmword ptr [rsp + 0x88], xmm0
00000000079e3a4a: 48c784249800000000000000     mov      qword ptr [rsp + 0x98], 0
00000000079e3a56: 0f29442460                   movaps   xmmword ptr [rsp + 0x60], xmm0
00000000079e3a5b: 0f29442470                   movaps   xmmword ptr [rsp + 0x70], xmm0
00000000079e3a60: c784248000000000000000       mov      dword ptr [rsp + 0x80], 0
00000000079e3a6b: 488d7c2460                   lea      rdi, [rsp + 0x60]
00000000079e3a70: e8cb350100                   call     0x79f7040
00000000079e3a75: 808c243501000002             or       byte ptr [rsp + 0x135], 2
00000000079e3a7d: 4c8ba42420010000             mov      r12, qword ptr [rsp + 0x120]
00000000079e3a85: 4d85e4                       test     r12, r12
00000000079e3a88: 751d                         jne      0x79e3aa7
00000000079e3a8a: bf30000000                   mov      edi, 0x30
00000000079e3a8f: e80ca3c802                   call     0xa66dda0
00000000079e3a94: 4989c4                       mov      r12, rax
00000000079e3a97: 4889c7                       mov      rdi, rax
00000000079e3a9a: e8012c5e00                   call     0x7fc66a0
00000000079e3a9f: 4c89a42420010000             mov      qword ptr [rsp + 0x120], r12
00000000079e3aa7: 41804c242c03                 or       byte ptr [r12 + 0x2c], 3
00000000079e3aad: 488b442460                   mov      rax, qword ptr [rsp + 0x60]
00000000079e3ab2: 4989442408                   mov      qword ptr [r12 + 8], rax
00000000079e3ab7: 0f57c0                       xorps    xmm0, xmm0
00000000079e3aba: 0f29842470010000             movaps   xmmword ptr [rsp + 0x170], xmm0
00000000079e3ac2: 48c784248001000000000000     mov      qword ptr [rsp + 0x180], 0
00000000079e3ace: 0f29442410                   movaps   xmmword ptr [rsp + 0x10], xmm0
00000000079e3ad3: 0fb6442468                   movzx    eax, byte ptr [rsp + 0x68]
00000000079e3ad8: 89c6                         mov      esi, eax
00000000079e3ada: d1ee                         shr      esi, 1
00000000079e3adc: a801                         test     al, 1
00000000079e3ade: 488d7c2469                   lea      rdi, [rsp + 0x69]
00000000079e3ae3: 480f457c2478                 cmovne   rdi, qword ptr [rsp + 0x78]
00000000079e3ae9: 48c744242000000000           mov      qword ptr [rsp + 0x20], 0
00000000079e3af2: 480f45742470                 cmovne   rsi, qword ptr [rsp + 0x70]
00000000079e3af8: 488d942470010000             lea      rdx, [rsp + 0x170]
00000000079e3b00: e87b0dd4fc                   call     0x4724880
00000000079e3b05: 0fb6842488000000             movzx    eax, byte ptr [rsp + 0x88]
00000000079e3b0d: 89c6                         mov      esi, eax
00000000079e3b0f: d1ee                         shr      esi, 1
00000000079e3b11: a801                         test     al, 1
00000000079e3b13: 488dbc2489000000             lea      rdi, [rsp + 0x89]
00000000079e3b1b: 480f45bc2498000000           cmovne   rdi, qword ptr [rsp + 0x98]
00000000079e3b24: 480f45b42490000000           cmovne   rsi, qword ptr [rsp + 0x90]
00000000079e3b2d: 488d542410                   lea      rdx, [rsp + 0x10]
00000000079e3b32: e8490dd4fc                   call     0x4724880
00000000079e3b37: 41804c242c04                 or       byte ptr [r12 + 0x2c], 4
00000000079e3b3d: 498b7c2410                   mov      rdi, qword ptr [r12 + 0x10]
00000000079e3b42: 483b3db7f91003               cmp      rdi, qword ptr [rip + 0x310f9b7]
00000000079e3b49: 7520                         jne      0x79e3b6b
00000000079e3b4b: bf18000000                   mov      edi, 0x18
00000000079e3b50: e84ba2c802                   call     0xa66dda0
00000000079e3b55: 4889c7                       mov      rdi, rax
00000000079e3b58: 0f57c0                       xorps    xmm0, xmm0
00000000079e3b5b: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000079e3b5e: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000079e3b66: 4989442410                   mov      qword ptr [r12 + 0x10], rax
00000000079e3b6b: 488db42470010000             lea      rsi, [rsp + 0x170]
00000000079e3b73: e838a2b2fc                   call     0x450ddb0
00000000079e3b78: 41804c242c08                 or       byte ptr [r12 + 0x2c], 8
00000000079e3b7e: 498b7c2418                   mov      rdi, qword ptr [r12 + 0x18]
00000000079e3b83: 483b3d76f91003               cmp      rdi, qword ptr [rip + 0x310f976]
00000000079e3b8a: 7520                         jne      0x79e3bac
00000000079e3b8c: bf18000000                   mov      edi, 0x18
00000000079e3b91: e80aa2c802                   call     0xa66dda0
00000000079e3b96: 4889c7                       mov      rdi, rax
00000000079e3b99: 0f57c0                       xorps    xmm0, xmm0
00000000079e3b9c: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000079e3b9f: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000079e3ba7: 4989442418                   mov      qword ptr [r12 + 0x18], rax
00000000079e3bac: 488d742410                   lea      rsi, [rsp + 0x10]
00000000079e3bb1: e8faa1b2fc                   call     0x450ddb0
00000000079e3bb6: 48895c2440                   mov      qword ptr [rsp + 0x40], rbx
00000000079e3bbb: 0f2805de5a37f9               movaps   xmm0, xmmword ptr [rip - 0x6c8a522]
00000000079e3bc2: 0f29442430                   movaps   xmmword ptr [rsp + 0x30], xmm0
00000000079e3bc7: e8148965fe                   call     0x603c4e0
00000000079e3bcc: 488d7c2430                   lea      rdi, [rsp + 0x30]
00000000079e3bd1: 4889c6                       mov      rsi, rax
00000000079e3bd4: e8b7e065fe                   call     0x6041c90
00000000079e3bd9: 0fb64c2430                   movzx    ecx, byte ptr [rsp + 0x30]
00000000079e3bde: 89c8                         mov      eax, ecx
00000000079e3be0: 2401                         and      al, 1
00000000079e3be2: 0f8461010000                 je       0x79e3d49
00000000079e3be8: 488b4c2438                   mov      rcx, qword ptr [rsp + 0x38]
00000000079e3bed: 4885c9                       test     rcx, rcx
00000000079e3bf0: 0f855a010000                 jne      0x79e3d50
00000000079e3bf6: e99a010000                   jmp      0x79e3d95
00000000079e3bfb: e8e08865fe                   call     0x603c4e0
00000000079e3c00: 418b760c                     mov      esi, dword ptr [r14 + 0xc]
00000000079e3c04: 4889c7                       mov      rdi, rax
00000000079e3c07: e864ec65fe                   call     0x6042870
00000000079e3c0c: 84c0                         test     al, al
00000000079e3c0e: 0f84fc010000                 je       0x79e3e10
00000000079e3c14: 808c243501000001             or       byte ptr [rsp + 0x135], 1
00000000079e3c1c: c684241b01000001             mov      byte ptr [rsp + 0x11b], 1
00000000079e3c24: 0f2805755a37f9               movaps   xmm0, xmmword ptr [rip - 0x6c8a58b]
00000000079e3c2b: 0f298424a0000000             movaps   xmmword ptr [rsp + 0xa0], xmm0
00000000079e3c33: 0f29842490000000             movaps   xmmword ptr [rsp + 0x90], xmm0
00000000079e3c3b: 0f29842480000000             movaps   xmmword ptr [rsp + 0x80], xmm0
00000000079e3c43: 0f29442470                   movaps   xmmword ptr [rsp + 0x70], xmm0
00000000079e3c48: 0f29442460                   movaps   xmmword ptr [rsp + 0x60], xmm0
00000000079e3c4d: e88e8865fe                   call     0x603c4e0
00000000079e3c52: 418b560c                     mov      edx, dword ptr [r14 + 0xc]
00000000079e3c56: 488d7c2460                   lea      rdi, [rsp + 0x60]
00000000079e3c5b: 4889c6                       mov      rsi, rax
00000000079e3c5e: e87ded65fe                   call     0x60429e0
00000000079e3c63: 808c243501000004             or       byte ptr [rsp + 0x135], 4
00000000079e3c6b: 4c8ba42428010000             mov      r12, qword ptr [rsp + 0x128]
00000000079e3c73: 4d85e4                       test     r12, r12
00000000079e3c76: 751d                         jne      0x79e3c95
00000000079e3c78: bf28000000                   mov      edi, 0x28
00000000079e3c7d: e81ea1c802                   call     0xa66dda0
00000000079e3c82: 4989c4                       mov      r12, rax
00000000079e3c85: 4889c7                       mov      rdi, rax
00000000079e3c88: e873335e00                   call     0x7fc7000
00000000079e3c8d: 4c89a42428010000             mov      qword ptr [rsp + 0x128], r12
00000000079e3c95: 8b442460                     mov      eax, dword ptr [rsp + 0x60]
00000000079e3c99: 4189442418                   mov      dword ptr [r12 + 0x18], eax
00000000079e3c9e: 41834c242003                 or       dword ptr [r12 + 0x20], 3
00000000079e3ca4: 498b7c2408                   mov      rdi, qword ptr [r12 + 8]
00000000079e3ca9: 483b3d50f81003               cmp      rdi, qword ptr [rip + 0x310f850]
00000000079e3cb0: 7520                         jne      0x79e3cd2
00000000079e3cb2: bf18000000                   mov      edi, 0x18
00000000079e3cb7: e8e4a0c802                   call     0xa66dda0
00000000079e3cbc: 4889c7                       mov      rdi, rax
00000000079e3cbf: 0f57c0                       xorps    xmm0, xmm0
00000000079e3cc2: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000079e3cc5: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000079e3ccd: 4989442408                   mov      qword ptr [r12 + 8], rax
00000000079e3cd2: 488db42480000000             lea      rsi, [rsp + 0x80]
00000000079e3cda: e8d1a0b2fc                   call     0x450ddb0
00000000079e3cdf: 41804c242004                 or       byte ptr [r12 + 0x20], 4
00000000079e3ce5: 498b7c2410                   mov      rdi, qword ptr [r12 + 0x10]
00000000079e3cea: 483b3d0ff81003               cmp      rdi, qword ptr [rip + 0x310f80f]
00000000079e3cf1: 7520                         jne      0x79e3d13
00000000079e3cf3: bf18000000                   mov      edi, 0x18
00000000079e3cf8: e8a3a0c802                   call     0xa66dda0
00000000079e3cfd: 4889c7                       mov      rdi, rax
00000000079e3d00: 0f57c0                       xorps    xmm0, xmm0
00000000079e3d03: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000079e3d06: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000079e3d0e: 4989442410                   mov      qword ptr [r12 + 0x10], rax
00000000079e3d13: 488d742468                   lea      rsi, [rsp + 0x68]
00000000079e3d18: e893a0b2fc                   call     0x450ddb0
00000000079e3d1d: f684249800000001             test     byte ptr [rsp + 0x98], 1
00000000079e3d25: 0f85ac000000                 jne      0x79e3dd7
00000000079e3d2b: f684248000000001             test     byte ptr [rsp + 0x80], 1
00000000079e3d33: 0f85b9000000                 jne      0x79e3df2
00000000079e3d39: f644246801                   test     byte ptr [rsp + 0x68], 1
00000000079e3d3e: 0f85c2000000                 jne      0x79e3e06
00000000079e3d44: e9c7000000                   jmp      0x79e3e10
00000000079e3d49: d1e9                         shr      ecx, 1
00000000079e3d4b: 4885c9                       test     rcx, rcx
00000000079e3d4e: 7445                         je       0x79e3d95
00000000079e3d50: 41804c242c10                 or       byte ptr [r12 + 0x2c], 0x10
00000000079e3d56: 498b7c2420                   mov      rdi, qword ptr [r12 + 0x20]
00000000079e3d5b: 483b3d9ef71003               cmp      rdi, qword ptr [rip + 0x310f79e]
00000000079e3d62: 7520                         jne      0x79e3d84
00000000079e3d64: bf18000000                   mov      edi, 0x18
00000000079e3d69: e832a0c802                   call     0xa66dda0
00000000079e3d6e: 4889c7                       mov      rdi, rax
00000000079e3d71: 0f57c0                       xorps    xmm0, xmm0
00000000079e3d74: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000079e3d77: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000079e3d7f: 4989442420                   mov      qword ptr [r12 + 0x20], rax
00000000079e3d84: 488d742430                   lea      rsi, [rsp + 0x30]
00000000079e3d89: e822a0b2fc                   call     0x450ddb0
00000000079e3d8e: 0fb6442430                   movzx    eax, byte ptr [rsp + 0x30]
00000000079e3d93: 2401                         and      al, 1
00000000079e3d95: 84c0                         test     al, al
00000000079e3d97: 740a                         je       0x79e3da3
00000000079e3d99: 488b7c2440                   mov      rdi, qword ptr [rsp + 0x40]
00000000079e3d9e: e89d63b2fc                   call     0x450a140
00000000079e3da3: f644241001                   test     byte ptr [rsp + 0x10], 1
00000000079e3da8: 740a                         je       0x79e3db4
00000000079e3daa: 488b7c2420                   mov      rdi, qword ptr [rsp + 0x20]
00000000079e3daf: e88c63b2fc                   call     0x450a140
00000000079e3db4: f684247001000001             test     byte ptr [rsp + 0x170], 1
00000000079e3dbc: 740d                         je       0x79e3dcb
00000000079e3dbe: 488bbc2480010000             mov      rdi, qword ptr [rsp + 0x180]
00000000079e3dc6: e87563b2fc                   call     0x450a140
00000000079e3dcb: 488d7c2460                   lea      rdi, [rsp + 0x60]
00000000079e3dd0: e81b2e0100                   call     0x79f6bf0
00000000079e3dd5: eb39                         jmp      0x79e3e10
00000000079e3dd7: 488bbc24a8000000             mov      rdi, qword ptr [rsp + 0xa8]
00000000079e3ddf: e85c63b2fc                   call     0x450a140
00000000079e3de4: f684248000000001             test     byte ptr [rsp + 0x80], 1
00000000079e3dec: 0f8447ffffff                 je       0x79e3d39
00000000079e3df2: 488bbc2490000000             mov      rdi, qword ptr [rsp + 0x90]
00000000079e3dfa: e84163b2fc                   call     0x450a140
00000000079e3dff: f644246801                   test     byte ptr [rsp + 0x68], 1
00000000079e3e04: 740a                         je       0x79e3e10
00000000079e3e06: 488b7c2478                   mov      rdi, qword ptr [rsp + 0x78]
00000000079e3e0b: e83063b2fc                   call     0x450a140
00000000079e3e10: 0f57c0                       xorps    xmm0, xmm0
00000000079e3e13: 0f29442460                   movaps   xmmword ptr [rsp + 0x60], xmm0
00000000079e3e18: 48c744247000000000           mov      qword ptr [rsp + 0x70], 0
00000000079e3e21: 488dbc24f0000000             lea      rdi, [rsp + 0xf0]
00000000079e3e29: 488d742460                   lea      rsi, [rsp + 0x60]
00000000079e3e2e: e88dc65601                   call     0x8f504c0
00000000079e3e33: 488dbc2488030000             lea      rdi, [rsp + 0x388]
00000000079e3e3b: 0fb6542460                   movzx    edx, byte ptr [rsp + 0x60]
00000000079e3e40: f6c201                       test     dl, 1
00000000079e3e43: 740c                         je       0x79e3e51
00000000079e3e45: 488b742470                   mov      rsi, qword ptr [rsp + 0x70]
00000000079e3e4a: 488b542468                   mov      rdx, qword ptr [rsp + 0x68]
00000000079e3e4f: eb07                         jmp      0x79e3e58
00000000079e3e51: d1ea                         shr      edx, 1
00000000079e3e53: 488d742461                   lea      rsi, [rsp + 0x61]
00000000079e3e58: e843dd7301                   call     0x9121ba0
00000000079e3e5d: c684248003000001             mov      byte ptr [rsp + 0x380], 1
00000000079e3e65: f644246001                   test     byte ptr [rsp + 0x60], 1
00000000079e3e6a: 740a                         je       0x79e3e76
00000000079e3e6c: 488b7c2470                   mov      rdi, qword ptr [rsp + 0x70]
00000000079e3e71: e8ca62b2fc                   call     0x450a140
00000000079e3e76: 488dbc24f0000000             lea      rdi, [rsp + 0xf0]
00000000079e3e7e: e86d3b5e00                   call     0x7fc79f0
00000000079e3e83: 488d7c2408                   lea      rdi, [rsp + 8]
00000000079e3e88: e8231cfeff                   call     0x79c5ab0
00000000079e3e8d: 488d0554b42303               lea      rax, [rip + 0x323b454]
00000000079e3e94: 488dbc24c0010000             lea      rdi, [rsp + 0x1c0]
00000000079e3e9c: ff10                         call     qword ptr [rax]
00000000079e3e9e: 89c5                         mov      ebp, eax
00000000079e3ea0: 8b9c24c0010000               mov      ebx, dword ptr [rsp + 0x1c0]
00000000079e3ea7: 41895e08                     mov      dword ptr [r14 + 8], ebx
00000000079e3eab: 488b4c2458                   mov      rcx, qword ptr [rsp + 0x58]
00000000079e3eb0: 488b4170                     mov      rax, qword ptr [rcx + 0x70]
00000000079e3eb4: 4885c0                       test     rax, rax
00000000079e3eb7: 7523                         jne      0x79e3edc
00000000079e3eb9: 4c8d7970                     lea      r15, [rcx + 0x70]
00000000079e3ebd: 4d89fd                       mov      r13, r15
00000000079e3ec0: eb33                         jmp      0x79e3ef5
00000000079e3ec2: 66666666662e0f1f840000000000 nop      word ptr cs:[rax + rax]
00000000079e3ed0: 498b4500                     mov      rax, qword ptr [r13]
00000000079e3ed4: 4d89ef                       mov      r15, r13
00000000079e3ed7: 4885c0                       test     rax, rax
00000000079e3eda: 7419                         je       0x79e3ef5
00000000079e3edc: 4989c5                       mov      r13, rax
00000000079e3edf: 8b4020                       mov      eax, dword ptr [rax + 0x20]
00000000079e3ee2: 39c3                         cmp      ebx, eax
00000000079e3ee4: 72ea                         jb       0x79e3ed0
00000000079e3ee6: 765c                         jbe      0x79e3f44
00000000079e3ee8: 498b4508                     mov      rax, qword ptr [r13 + 8]
00000000079e3eec: 4885c0                       test     rax, rax
00000000079e3eef: 75eb                         jne      0x79e3edc
00000000079e3ef1: 4d8d7d08                     lea      r15, [r13 + 8]
00000000079e3ef5: bf30000000                   mov      edi, 0x30
00000000079e3efa: e8a19ec802                   call     0xa66dda0
00000000079e3eff: 4989c4                       mov      r12, rax
00000000079e3f02: 895820                       mov      dword ptr [rax + 0x20], ebx
00000000079e3f05: 48c7402800000000             mov      qword ptr [rax + 0x28], 0
00000000079e3f0d: 0f57c0                       xorps    xmm0, xmm0
00000000079e3f10: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000079e3f13: 4c896810                     mov      qword ptr [rax + 0x10], r13
00000000079e3f17: 498907                       mov      qword ptr [r15], rax
00000000079e3f1a: 488b5c2458                   mov      rbx, qword ptr [rsp + 0x58]
00000000079e3f1f: 488b4368                     mov      rax, qword ptr [rbx + 0x68]
00000000079e3f23: 488b00                       mov      rax, qword ptr [rax]
00000000079e3f26: 4c89e6                       mov      rsi, r12
00000000079e3f29: 4885c0                       test     rax, rax
00000000079e3f2c: 7407                         je       0x79e3f35
00000000079e3f2e: 48894368                     mov      qword ptr [rbx + 0x68], rax
00000000079e3f32: 498b37                       mov      rsi, qword ptr [r15]
00000000079e3f35: 488b7b70                     mov      rdi, qword ptr [rbx + 0x70]
00000000079e3f39: e8e2f6b5fc                   call     0x4543620
00000000079e3f3e: 48ff4378                     inc      qword ptr [rbx + 0x78]
00000000079e3f42: eb03                         jmp      0x79e3f47
00000000079e3f44: 4d89ec                       mov      r12, r13
00000000079e3f47: 4d89742428                   mov      qword ptr [r12 + 0x28], r14
00000000079e3f4c: 4084ed                       test     bpl, bpl
00000000079e3f4f: 0f858b010000                 jne      0x79e40e0
00000000079e3f55: bf04000000                   mov      edi, 4
00000000079e3f5a: e8312d7301                   call     0x9116c90
00000000079e3f5f: 85c0                         test     eax, eax
00000000079e3f61: 0f8479010000                 je       0x79e40e0
00000000079e3f67: 488d7c2410                   lea      rdi, [rsp + 0x10]
00000000079e3f6c: e85fea9cff                   call     0x73b29d0
00000000079e3f71: f644241001                   test     byte ptr [rsp + 0x10], 1
00000000079e3f76: 7407                         je       0x79e3f7f
00000000079e3f78: 488b542420                   mov      rdx, qword ptr [rsp + 0x20]
00000000079e3f7d: eb05                         jmp      0x79e3f84
00000000079e3f7f: 488d542411                   lea      rdx, [rsp + 0x11]
00000000079e3f84: 488d0db3b53df9               lea      rcx, [rip - 0x6c24a4d]
00000000079e3f8b: 4c8d05e11060f9               lea      r8, [rip - 0x69fef1f]
00000000079e3f92: 488d7c2460                   lea      rdi, [rsp + 0x60]
00000000079e3f97: be04000000                   mov      esi, 4
00000000079e3f9c: 41b953020000                 mov      r9d, 0x253
00000000079e3fa2: 6a00                         push     0
00000000079e3fa4: 6a00                         push     0
00000000079e3fa6: e8f5d57201                   call     0x91115a0
00000000079e3fab: 4883c410                     add      rsp, 0x10
00000000079e3faf: 8b9424c0010000               mov      edx, dword ptr [rsp + 0x1c0]
00000000079e3fb6: 48c784247001000000000000     mov      qword ptr [rsp + 0x170], 0
00000000079e3fc2: b807000000                   mov      eax, 7
00000000079e3fc7: 488d8c2477010000             lea      rcx, [rsp + 0x177]
00000000079e3fcf: becdcccccc                   mov      esi, 0xcccccccd
00000000079e3fd4: 488d3d31b454f9               lea      rdi, [rip - 0x6ab4bcf] ; 'ZYXWVUTSRQPONMLKJIHGFEDCBA9876543210123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'
00000000079e3fdb: 0f1f440000                   nop      dword ptr [rax + rax]
00000000079e3fe0: 4189d0                       mov      r8d, edx
00000000079e3fe3: 4c0fafc6                     imul     r8, rsi
00000000079e3fe7: 49c1e823                     shr      r8, 0x23
00000000079e3feb: 478d0c00                     lea      r9d, [r8 + r8]
00000000079e3fef: 478d0c89                     lea      r9d, [r9 + r9*4]
00000000079e3ff3: 41f7d9                       neg      r9d
00000000079e3ff6: 4101d1                       add      r9d, edx
00000000079e3ff9: 4183c123                     add      r9d, 0x23
00000000079e3ffd: 450fb60c39                   movzx    r9d, byte ptr [r9 + rdi]
00000000079e4002: 44884901                     mov      byte ptr [rcx + 1], r9b
00000000079e4006: 48ffc1                       inc      rcx
00000000079e4009: 48ffc0                       inc      rax
00000000079e400c: 83fa09                       cmp      edx, 9
00000000079e400f: 4489c2                       mov      edx, r8d
00000000079e4012: 77cc                         ja       0x79e3fe0
00000000079e4014: 488d942478010000             lea      rdx, [rsp + 0x178]
00000000079e401c: c6410100                     mov      byte ptr [rcx + 1], 0
00000000079e4020: 4883f809                     cmp      rax, 9
00000000079e4024: 7227                         jb       0x79e404d
00000000079e4026: 488d842479010000             lea      rax, [rsp + 0x179]
00000000079e402e: 6690                         nop
00000000079e4030: 0fb631                       movzx    esi, byte ptr [rcx]
00000000079e4033: 0fb678ff                     movzx    edi, byte ptr [rax - 1]
00000000079e4037: 408839                       mov      byte ptr [rcx], dil
00000000079e403a: 48ffc9                       dec      rcx
00000000079e403d: 408870ff                     mov      byte ptr [rax - 1], sil
00000000079e4041: 488d7001                     lea      rsi, [rax + 1]
00000000079e4045: 4839c8                       cmp      rax, rcx
00000000079e4048: 4889f0                       mov      rax, rsi
00000000079e404b: 72e3                         jb       0x79e4030
00000000079e404d: 4889942470010000             mov      qword ptr [rsp + 0x170], rdx
00000000079e4055: 488d842470010000             lea      rax, [rsp + 0x170]
00000000079e405d: 48898424f0000000             mov      qword ptr [rsp + 0xf0], rax
00000000079e4065: 0f57c0                       xorps    xmm0, xmm0
00000000079e4068: 0f118424f8000000             movups   xmmword ptr [rsp + 0xf8], xmm0
00000000079e4070: 0f11842408010000             movups   xmmword ptr [rsp + 0x108], xmm0
00000000079e4078: 0f11842418010000             movups   xmmword ptr [rsp + 0x118], xmm0
00000000079e4080: 0f11842428010000             movups   xmmword ptr [rsp + 0x128], xmm0
00000000079e4088: 0f11842438010000             movups   xmmword ptr [rsp + 0x138], xmm0
00000000079e4090: 0f11842448010000             movups   xmmword ptr [rsp + 0x148], xmm0
00000000079e4098: 0f11842458010000             movups   xmmword ptr [rsp + 0x158], xmm0
00000000079e40a0: 48c784246801000000000000     mov      qword ptr [rsp + 0x168], 0
00000000079e40ac: 488d357cd55ef9               lea      rsi, [rip - 0x6a12a84]
00000000079e40b3: 488d7c2460                   lea      rdi, [rsp + 0x60]
00000000079e40b8: 488d9424f0000000             lea      rdx, [rsp + 0xf0]
00000000079e40c0: e82bd87201                   call     0x91118f0
00000000079e40c5: 488d7c2460                   lea      rdi, [rsp + 0x60]
00000000079e40ca: e861d57201                   call     0x9111630
00000000079e40cf: f644241001                   test     byte ptr [rsp + 0x10], 1
00000000079e40d4: 740a                         je       0x79e40e0
00000000079e40d6: 488b7c2420                   mov      rdi, qword ptr [rsp + 0x20]
00000000079e40db: e86060b2fc                   call     0x450a140
00000000079e40e0: 488dbc24c0010000             lea      rdi, [rsp + 0x1c0]
00000000079e40e8: e843030000                   call     0x79e4430
00000000079e40ed: 488b7c2450                   mov      rdi, qword ptr [rsp + 0x50]
00000000079e40f2: e819f2befc                   call     0x45d3310
00000000079e40f7: 4881c4d8030000               add      rsp, 0x3d8
00000000079e40fe: 5b                           pop      rbx
00000000079e40ff: 415c                         pop      r12
00000000079e4101: 415d                         pop      r13
00000000079e4103: 415e                         pop      r14
00000000079e4105: 415f                         pop      r15
00000000079e4107: 5d                           pop      rbp
00000000079e4108: c3                           ret
00000000079e4109: 4989c6                       mov      r14, rax
00000000079e410c: 4c89e7                       mov      rdi, r12
00000000079e410f: e82c60b2fc                   call     0x450a140
00000000079e4114: e981000000                   jmp      0x79e419a
00000000079e4119: 4989c6                       mov      r14, rax
00000000079e411c: 4c89e7                       mov      rdi, r12
00000000079e411f: e9d7000000                   jmp      0x79e41fb
00000000079e4124: 4989c6                       mov      r14, rax
00000000079e4127: e9d4000000                   jmp      0x79e4200
00000000079e412c: 4989c6                       mov      r14, rax
00000000079e412f: 488d7c2460                   lea      rdi, [rsp + 0x60]
00000000079e4134: e8f7d47201                   call     0x9111630
00000000079e4139: eb03                         jmp      0x79e413e
00000000079e413b: 4989c6                       mov      r14, rax
00000000079e413e: f644241001                   test     byte ptr [rsp + 0x10], 1
00000000079e4143: 0f84e2000000                 je       0x79e422b
00000000079e4149: 488b7c2420                   mov      rdi, qword ptr [rsp + 0x20]
00000000079e414e: e8ed5fb2fc                   call     0x450a140
00000000079e4153: e9d3000000                   jmp      0x79e422b
00000000079e4158: e9af000000                   jmp      0x79e420c
00000000079e415d: 4989c6                       mov      r14, rax
00000000079e4160: f644243001                   test     byte ptr [rsp + 0x30], 1
00000000079e4165: 7516                         jne      0x79e417d
00000000079e4167: f644241001                   test     byte ptr [rsp + 0x10], 1
00000000079e416c: 7571                         jne      0x79e41df
00000000079e416e: f684247001000001             test     byte ptr [rsp + 0x170], 1
00000000079e4176: 757b                         jne      0x79e41f3
00000000079e4178: e983000000                   jmp      0x79e4200
00000000079e417d: 488b7c2440                   mov      rdi, qword ptr [rsp + 0x40]
00000000079e4182: e8b95fb2fc                   call     0x450a140
00000000079e4187: f644241001                   test     byte ptr [rsp + 0x10], 1
00000000079e418c: 74e0                         je       0x79e416e
00000000079e418e: eb4f                         jmp      0x79e41df
00000000079e4190: eb7f                         jmp      0x79e4211
00000000079e4192: 4989c6                       mov      r14, rax
00000000079e4195: eb69                         jmp      0x79e4200
00000000079e4197: 4989c6                       mov      r14, rax
00000000079e419a: 488d7c2460                   lea      rdi, [rsp + 0x60]
00000000079e419f: e83c817bfe                   call     0x619c2e0
00000000079e41a4: eb6e                         jmp      0x79e4214
00000000079e41a6: eb2d                         jmp      0x79e41d5
00000000079e41a8: 4989c6                       mov      r14, rax
00000000079e41ab: eb74                         jmp      0x79e4221
00000000079e41ad: 4989c6                       mov      r14, rax
00000000079e41b0: eb6f                         jmp      0x79e4221
00000000079e41b2: eb58                         jmp      0x79e420c
00000000079e41b4: 4989c6                       mov      r14, rax
00000000079e41b7: eb7f                         jmp      0x79e4238
00000000079e41b9: 4989c6                       mov      r14, rax
00000000079e41bc: f644246001                   test     byte ptr [rsp + 0x60], 1
00000000079e41c1: 7451                         je       0x79e4214
00000000079e41c3: 488b7c2470                   mov      rdi, qword ptr [rsp + 0x70]
00000000079e41c8: e8735fb2fc                   call     0x450a140
00000000079e41cd: eb45                         jmp      0x79e4214
00000000079e41cf: eb40                         jmp      0x79e4211
00000000079e41d1: eb3e                         jmp      0x79e4211
00000000079e41d3: eb37                         jmp      0x79e420c
00000000079e41d5: 4989c6                       mov      r14, rax
00000000079e41d8: f644241001                   test     byte ptr [rsp + 0x10], 1
00000000079e41dd: 748f                         je       0x79e416e
00000000079e41df: 488b7c2420                   mov      rdi, qword ptr [rsp + 0x20]
00000000079e41e4: e8575fb2fc                   call     0x450a140
00000000079e41e9: f684247001000001             test     byte ptr [rsp + 0x170], 1
00000000079e41f1: 740d                         je       0x79e4200
00000000079e41f3: 488bbc2480010000             mov      rdi, qword ptr [rsp + 0x180]
00000000079e41fb: e8405fb2fc                   call     0x450a140
00000000079e4200: 488d7c2460                   lea      rdi, [rsp + 0x60]
00000000079e4205: e8e6290100                   call     0x79f6bf0
00000000079e420a: eb08                         jmp      0x79e4214
00000000079e420c: 4989c6                       mov      r14, rax
00000000079e420f: eb1a                         jmp      0x79e422b
00000000079e4211: 4989c6                       mov      r14, rax
00000000079e4214: 488dbc24f0000000             lea      rdi, [rsp + 0xf0]
00000000079e421c: e8cf375e00                   call     0x7fc79f0
00000000079e4221: 488d7c2408                   lea      rdi, [rsp + 8]
00000000079e4226: e88518feff                   call     0x79c5ab0
00000000079e422b: 488dbc24c0010000             lea      rdi, [rsp + 0x1c0]
00000000079e4233: e8f8010000                   call     0x79e4430
00000000079e4238: 488b7c2450                   mov      rdi, qword ptr [rsp + 0x50]
00000000079e423d: e8cef0befc                   call     0x45d3310
00000000079e4242: 4c89f7                       mov      rdi, r14
00000000079e4245: e8d68bb0fc                   call     0x44ece20
