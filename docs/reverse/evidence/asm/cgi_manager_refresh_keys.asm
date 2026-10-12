00000000079e2b30: 55                           push     rbp
00000000079e2b31: 4156                         push     r14
00000000079e2b33: 53                           push     rbx
00000000079e2b34: 4881ec40020000               sub      rsp, 0x240
00000000079e2b3b: 48837f6000                   cmp      qword ptr [rdi + 0x60], 0
00000000079e2b40: 0f8484060000                 je       0x79e31ca
00000000079e2b46: 4889fb                       mov      rbx, rdi
00000000079e2b49: 49beaaaaaaaaaaaaaaaa         movabs   r14, 0xaaaaaaaaaaaaaaaa
00000000079e2b53: 4c89742470                   mov      qword ptr [rsp + 0x70], r14
00000000079e2b58: 0f2805416b37f9               movaps   xmm0, xmmword ptr [rip - 0x6c894bf]
00000000079e2b5f: 0f29442460                   movaps   xmmword ptr [rsp + 0x60], xmm0
00000000079e2b64: e8779965fe                   call     0x603c4e0
00000000079e2b69: 488d7c2460                   lea      rdi, [rsp + 0x60]
00000000079e2b6e: 4889c6                       mov      rsi, rax
00000000079e2b71: e81aec65fe                   call     0x6041790
00000000079e2b76: 4c89742450                   mov      qword ptr [rsp + 0x50], r14
00000000079e2b7b: 0f28051e6b37f9               movaps   xmm0, xmmword ptr [rip - 0x6c894e2]
00000000079e2b82: 0f29442440                   movaps   xmmword ptr [rsp + 0x40], xmm0
00000000079e2b87: e8549965fe                   call     0x603c4e0
00000000079e2b8c: 488d7c2440                   lea      rdi, [rsp + 0x40]
00000000079e2b91: 4889c6                       mov      rsi, rax
00000000079e2b94: e8b7c565fe                   call     0x603f150
00000000079e2b99: bf02000000                   mov      edi, 2
00000000079e2b9e: e8ed407301                   call     0x9116c90
00000000079e2ba3: 85c0                         test     eax, eax
00000000079e2ba5: 0f8440010000                 je       0x79e2ceb
00000000079e2bab: 4889e7                       mov      rdi, rsp
00000000079e2bae: e81dfe9cff                   call     0x73b29d0
00000000079e2bb3: f6042401                     test     byte ptr [rsp], 1
00000000079e2bb7: 7407                         je       0x79e2bc0
00000000079e2bb9: 488b542410                   mov      rdx, qword ptr [rsp + 0x10]
00000000079e2bbe: eb05                         jmp      0x79e2bc5
00000000079e2bc0: 488d542401                   lea      rdx, [rsp + 1]
00000000079e2bc5: 488d0d72c93df9               lea      rcx, [rip - 0x6c2368e]
00000000079e2bcc: 4c8d0583a458f9               lea      r8, [rip - 0x6a75b7d]
00000000079e2bd3: 488dbc2460010000             lea      rdi, [rsp + 0x160]
00000000079e2bdb: be02000000                   mov      esi, 2
00000000079e2be0: 41b9b6010000                 mov      r9d, 0x1b6
00000000079e2be6: 6a00                         push     0
00000000079e2be8: 6a00                         push     0
00000000079e2bea: e8b1e97201                   call     0x91115a0
00000000079e2bef: 4883c410                     add      rsp, 0x10
00000000079e2bf3: 0fb6442460                   movzx    eax, byte ptr [rsp + 0x60]
00000000079e2bf8: a801                         test     al, 1
00000000079e2bfa: 7407                         je       0x79e2c03
00000000079e2bfc: 488b442468                   mov      rax, qword ptr [rsp + 0x68]
00000000079e2c01: eb02                         jmp      0x79e2c05
00000000079e2c03: d1e8                         shr      eax, 1
00000000079e2c05: 4885c0                       test     rax, rax
00000000079e2c08: 488d05f0b44df9               lea      rax, [rip - 0x6b24b10] ; 'true'
00000000079e2c0f: 488d0d549c37f9               lea      rcx, [rip - 0x6c863ac] ; 'false'
00000000079e2c16: 4889ca                       mov      rdx, rcx
00000000079e2c19: 480f44d0                     cmove    rdx, rax
00000000079e2c1d: 4889942410010000             mov      qword ptr [rsp + 0x110], rdx
00000000079e2c25: c684241801000000             mov      byte ptr [rsp + 0x118], 0
00000000079e2c2d: 0fb6542440                   movzx    edx, byte ptr [rsp + 0x40]
00000000079e2c32: f6c201                       test     dl, 1
00000000079e2c35: 7407                         je       0x79e2c3e
00000000079e2c37: 488b542448                   mov      rdx, qword ptr [rsp + 0x48]
00000000079e2c3c: eb02                         jmp      0x79e2c40
00000000079e2c3e: d1ea                         shr      edx, 1
00000000079e2c40: 4885d2                       test     rdx, rdx
00000000079e2c43: 480f44c8                     cmove    rcx, rax
00000000079e2c47: 48898c24f0010000             mov      qword ptr [rsp + 0x1f0], rcx
00000000079e2c4f: c68424f801000000             mov      byte ptr [rsp + 0x1f8], 0
00000000079e2c57: 488d842410010000             lea      rax, [rsp + 0x110]
00000000079e2c5f: 4889842490000000             mov      qword ptr [rsp + 0x90], rax
00000000079e2c67: 488d8424f0010000             lea      rax, [rsp + 0x1f0]
00000000079e2c6f: 4889842498000000             mov      qword ptr [rsp + 0x98], rax
00000000079e2c77: 0f57c0                       xorps    xmm0, xmm0
00000000079e2c7a: 0f298424a0000000             movaps   xmmword ptr [rsp + 0xa0], xmm0
00000000079e2c82: 0f298424b0000000             movaps   xmmword ptr [rsp + 0xb0], xmm0
00000000079e2c8a: 0f298424c0000000             movaps   xmmword ptr [rsp + 0xc0], xmm0
00000000079e2c92: 0f298424d0000000             movaps   xmmword ptr [rsp + 0xd0], xmm0
00000000079e2c9a: 0f298424e0000000             movaps   xmmword ptr [rsp + 0xe0], xmm0
00000000079e2ca2: 0f298424f0000000             movaps   xmmword ptr [rsp + 0xf0], xmm0
00000000079e2caa: 0f29842400010000             movaps   xmmword ptr [rsp + 0x100], xmm0
00000000079e2cb2: 488d35ff1354f9               lea      rsi, [rip - 0x6abec01]
00000000079e2cb9: 488dbc2460010000             lea      rdi, [rsp + 0x160]
00000000079e2cc1: 488d942490000000             lea      rdx, [rsp + 0x90]
00000000079e2cc9: e822ec7201                   call     0x91118f0
00000000079e2cce: 488dbc2460010000             lea      rdi, [rsp + 0x160]
00000000079e2cd6: e855e97201                   call     0x9111630
00000000079e2cdb: f6042401                     test     byte ptr [rsp], 1
00000000079e2cdf: 740a                         je       0x79e2ceb
00000000079e2ce1: 488b7c2410                   mov      rdi, qword ptr [rsp + 0x10]
00000000079e2ce6: e85574b2fc                   call     0x450a140
00000000079e2ceb: 0fb6442460                   movzx    eax, byte ptr [rsp + 0x60]
00000000079e2cf0: a801                         test     al, 1
00000000079e2cf2: 740c                         je       0x79e2d00
00000000079e2cf4: 488b442468                   mov      rax, qword ptr [rsp + 0x68]
00000000079e2cf9: 4885c0                       test     rax, rax
00000000079e2cfc: 7509                         jne      0x79e2d07
00000000079e2cfe: eb15                         jmp      0x79e2d15
00000000079e2d00: d1e8                         shr      eax, 1
00000000079e2d02: 4885c0                       test     rax, rax
00000000079e2d05: 740e                         je       0x79e2d15
00000000079e2d07: 488b7b60                     mov      rdi, qword ptr [rbx + 0x60]
00000000079e2d0b: 488d742460                   lea      rsi, [rsp + 0x60]
00000000079e2d10: e8dbf14001                   call     0x8df1ef0
00000000079e2d15: 4c89742410                   mov      qword ptr [rsp + 0x10], r14
00000000079e2d1a: 0f28057f6937f9               movaps   xmm0, xmmword ptr [rip - 0x6c89681]
00000000079e2d21: 0f290424                     movaps   xmmword ptr [rsp], xmm0
00000000079e2d25: e8b69765fe                   call     0x603c4e0
00000000079e2d2a: 4889e7                       mov      rdi, rsp
00000000079e2d2d: 4889c6                       mov      rsi, rax
00000000079e2d30: e85beb65fe                   call     0x6041890
00000000079e2d35: 4c89742430                   mov      qword ptr [rsp + 0x30], r14
00000000079e2d3a: 0f28055f6937f9               movaps   xmm0, xmmword ptr [rip - 0x6c896a1]
00000000079e2d41: 0f29442420                   movaps   xmmword ptr [rsp + 0x20], xmm0
00000000079e2d46: e8959765fe                   call     0x603c4e0
00000000079e2d4b: 488d7c2420                   lea      rdi, [rsp + 0x20]
00000000079e2d50: 4889c6                       mov      rsi, rax
00000000079e2d53: e838ec65fe                   call     0x6041990
00000000079e2d58: 0fb60424                     movzx    eax, byte ptr [rsp]
00000000079e2d5c: a801                         test     al, 1
00000000079e2d5e: 740c                         je       0x79e2d6c
00000000079e2d60: 488b442408                   mov      rax, qword ptr [rsp + 8]
00000000079e2d65: 4885c0                       test     rax, rax
00000000079e2d68: 7509                         jne      0x79e2d73
00000000079e2d6a: eb66                         jmp      0x79e2dd2
00000000079e2d6c: d1e8                         shr      eax, 1
00000000079e2d6e: 4885c0                       test     rax, rax
00000000079e2d71: 745f                         je       0x79e2dd2
00000000079e2d73: 0fb6442420                   movzx    eax, byte ptr [rsp + 0x20]
00000000079e2d78: a801                         test     al, 1
00000000079e2d7a: 744f                         je       0x79e2dcb
00000000079e2d7c: 488b442428                   mov      rax, qword ptr [rsp + 0x28]
00000000079e2d81: 4885c0                       test     rax, rax
00000000079e2d84: 744c                         je       0x79e2dd2
00000000079e2d86: 488b7b60                     mov      rdi, qword ptr [rbx + 0x60]
00000000079e2d8a: 4889e6                       mov      rsi, rsp
00000000079e2d8d: 488d542420                   lea      rdx, [rsp + 0x20]
00000000079e2d92: e879f14001                   call     0x8df1f10
00000000079e2d97: bf02000000                   mov      edi, 2
00000000079e2d9c: e8ef3e7301                   call     0x9116c90
00000000079e2da1: 85c0                         test     eax, eax
00000000079e2da3: 0f8454030000                 je       0x79e30fd
00000000079e2da9: 488d7c2478                   lea      rdi, [rsp + 0x78]
00000000079e2dae: e81dfc9cff                   call     0x73b29d0
00000000079e2db3: f644247801                   test     byte ptr [rsp + 0x78], 1
00000000079e2db8: 0f8404010000                 je       0x79e2ec2
00000000079e2dbe: 488b942488000000             mov      rdx, qword ptr [rsp + 0x88]
00000000079e2dc6: e9fc000000                   jmp      0x79e2ec7
00000000079e2dcb: d1e8                         shr      eax, 1
00000000079e2dcd: 4885c0                       test     rax, rax
00000000079e2dd0: 75b4                         jne      0x79e2d86
00000000079e2dd2: bf02000000                   mov      edi, 2
00000000079e2dd7: e8b43e7301                   call     0x9116c90
00000000079e2ddc: 85c0                         test     eax, eax
00000000079e2dde: 0f8419030000                 je       0x79e30fd
00000000079e2de4: 488dbc2410010000             lea      rdi, [rsp + 0x110]
00000000079e2dec: e8dffb9cff                   call     0x73b29d0
00000000079e2df1: f684241001000001             test     byte ptr [rsp + 0x110], 1
00000000079e2df9: 740a                         je       0x79e2e05
00000000079e2dfb: 488b942420010000             mov      rdx, qword ptr [rsp + 0x120]
00000000079e2e03: eb08                         jmp      0x79e2e0d
00000000079e2e05: 488d942411010000             lea      rdx, [rsp + 0x111]
00000000079e2e0d: 488d0d2ac73df9               lea      rcx, [rip - 0x6c238d6]
00000000079e2e14: 4c8d053ba258f9               lea      r8, [rip - 0x6a75dc5]
00000000079e2e1b: 488dbc2460010000             lea      rdi, [rsp + 0x160]
00000000079e2e23: be02000000                   mov      esi, 2
00000000079e2e28: 41b9c8010000                 mov      r9d, 0x1c8
00000000079e2e2e: 6a00                         push     0
00000000079e2e30: 6a00                         push     0
00000000079e2e32: e869e77201                   call     0x91115a0
00000000079e2e37: 4883c410                     add      rsp, 0x10
00000000079e2e3b: 0f57c0                       xorps    xmm0, xmm0
00000000079e2e3e: 0f29842400010000             movaps   xmmword ptr [rsp + 0x100], xmm0
00000000079e2e46: 0f298424f0000000             movaps   xmmword ptr [rsp + 0xf0], xmm0
00000000079e2e4e: 0f298424e0000000             movaps   xmmword ptr [rsp + 0xe0], xmm0
00000000079e2e56: 0f298424d0000000             movaps   xmmword ptr [rsp + 0xd0], xmm0
00000000079e2e5e: 0f298424c0000000             movaps   xmmword ptr [rsp + 0xc0], xmm0
00000000079e2e66: 0f298424b0000000             movaps   xmmword ptr [rsp + 0xb0], xmm0
00000000079e2e6e: 0f298424a0000000             movaps   xmmword ptr [rsp + 0xa0], xmm0
00000000079e2e76: 0f29842490000000             movaps   xmmword ptr [rsp + 0x90], xmm0
00000000079e2e7e: 488d35d6cd66f9               lea      rsi, [rip - 0x699322a]
00000000079e2e85: 488dbc2460010000             lea      rdi, [rsp + 0x160]
00000000079e2e8d: 488d942490000000             lea      rdx, [rsp + 0x90]
00000000079e2e95: e856ea7201                   call     0x91118f0
00000000079e2e9a: 488dbc2460010000             lea      rdi, [rsp + 0x160]
00000000079e2ea2: e889e77201                   call     0x9111630
00000000079e2ea7: f684241001000001             test     byte ptr [rsp + 0x110], 1
00000000079e2eaf: 0f8448020000                 je       0x79e30fd
00000000079e2eb5: 488bbc2420010000             mov      rdi, qword ptr [rsp + 0x120]
00000000079e2ebd: e936020000                   jmp      0x79e30f8
00000000079e2ec2: 488d542479                   lea      rdx, [rsp + 0x79]
00000000079e2ec7: 488d0d70c63df9               lea      rcx, [rip - 0x6c23990]
00000000079e2ece: 4c8d0581a158f9               lea      r8, [rip - 0x6a75e7f]
00000000079e2ed5: 488dbc2460010000             lea      rdi, [rsp + 0x160]
00000000079e2edd: be02000000                   mov      esi, 2
00000000079e2ee2: 41b9c5010000                 mov      r9d, 0x1c5
00000000079e2ee8: 6a00                         push     0
00000000079e2eea: 6a00                         push     0
00000000079e2eec: e8afe67201                   call     0x91115a0
00000000079e2ef1: 4883c410                     add      rsp, 0x10
00000000079e2ef5: 0fb60c24                     movzx    ecx, byte ptr [rsp]
00000000079e2ef9: f6c101                       test     cl, 1
00000000079e2efc: 7407                         je       0x79e2f05
00000000079e2efe: 488b4c2408                   mov      rcx, qword ptr [rsp + 8]
00000000079e2f03: eb02                         jmp      0x79e2f07
00000000079e2f05: d1e9                         shr      ecx, 1
00000000079e2f07: 48c784241001000000000000     mov      qword ptr [rsp + 0x110], 0
00000000079e2f13: 41b907000000                 mov      r9d, 7
00000000079e2f19: 4c8d842417010000             lea      r8, [rsp + 0x117]
00000000079e2f21: 48becdcccccccccccccc         movabs   rsi, 0xcccccccccccccccd
00000000079e2f2b: 488d3ddac454f9               lea      rdi, [rip - 0x6ab3b26] ; 'ZYXWVUTSRQPONMLKJIHGFEDCBA9876543210123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'
00000000079e2f32: 66666666662e0f1f840000000000 nop      word ptr cs:[rax + rax]
00000000079e2f40: 4889c8                       mov      rax, rcx
00000000079e2f43: 48f7e6                       mul      rsi
00000000079e2f46: 48c1ea03                     shr      rdx, 3
00000000079e2f4a: 488d0412                     lea      rax, [rdx + rdx]
00000000079e2f4e: 488d0480                     lea      rax, [rax + rax*4]
00000000079e2f52: 4989fa                       mov      r10, rdi
00000000079e2f55: 4929c2                       sub      r10, rax
00000000079e2f58: 410fb6440a23                 movzx    eax, byte ptr [r10 + rcx + 0x23]
00000000079e2f5e: 41884001                     mov      byte ptr [r8 + 1], al
00000000079e2f62: 49ffc0                       inc      r8
00000000079e2f65: 49ffc1                       inc      r9
00000000079e2f68: 4883f909                     cmp      rcx, 9
00000000079e2f6c: 4889d1                       mov      rcx, rdx
00000000079e2f6f: 77cf                         ja       0x79e2f40
00000000079e2f71: 488d842418010000             lea      rax, [rsp + 0x118]
00000000079e2f79: 41c6400100                   mov      byte ptr [r8 + 1], 0
00000000079e2f7e: 4983f909                     cmp      r9, 9
00000000079e2f82: 722a                         jb       0x79e2fae
00000000079e2f84: 488d8c2419010000             lea      rcx, [rsp + 0x119]
00000000079e2f8c: 0f1f4000                     nop      dword ptr [rax]
00000000079e2f90: 410fb610                     movzx    edx, byte ptr [r8]
00000000079e2f94: 440fb649ff                   movzx    r9d, byte ptr [rcx - 1]
00000000079e2f99: 458808                       mov      byte ptr [r8], r9b
00000000079e2f9c: 49ffc8                       dec      r8
00000000079e2f9f: 8851ff                       mov      byte ptr [rcx - 1], dl
00000000079e2fa2: 488d5101                     lea      rdx, [rcx + 1]
00000000079e2fa6: 4c39c1                       cmp      rcx, r8
00000000079e2fa9: 4889d1                       mov      rcx, rdx
00000000079e2fac: 72e2                         jb       0x79e2f90
00000000079e2fae: 4889842410010000             mov      qword ptr [rsp + 0x110], rax
00000000079e2fb6: 0fb64c2420                   movzx    ecx, byte ptr [rsp + 0x20]
00000000079e2fbb: f6c101                       test     cl, 1
00000000079e2fbe: 7407                         je       0x79e2fc7
00000000079e2fc0: 488b4c2428                   mov      rcx, qword ptr [rsp + 0x28]
00000000079e2fc5: eb02                         jmp      0x79e2fc9
00000000079e2fc7: d1e9                         shr      ecx, 1
00000000079e2fc9: 48c78424f001000000000000     mov      qword ptr [rsp + 0x1f0], 0
00000000079e2fd5: 41b907000000                 mov      r9d, 7
00000000079e2fdb: 4c8d8424f7010000             lea      r8, [rsp + 0x1f7]
00000000079e2fe3: 666666662e0f1f840000000000   nop      word ptr cs:[rax + rax]
00000000079e2ff0: 4889c8                       mov      rax, rcx
00000000079e2ff3: 48f7e6                       mul      rsi
00000000079e2ff6: 48c1ea03                     shr      rdx, 3
00000000079e2ffa: 488d0412                     lea      rax, [rdx + rdx]
00000000079e2ffe: 488d0480                     lea      rax, [rax + rax*4]
00000000079e3002: 4989fa                       mov      r10, rdi
00000000079e3005: 4929c2                       sub      r10, rax
00000000079e3008: 410fb6440a23                 movzx    eax, byte ptr [r10 + rcx + 0x23]
00000000079e300e: 41884001                     mov      byte ptr [r8 + 1], al
00000000079e3012: 49ffc0                       inc      r8
00000000079e3015: 49ffc1                       inc      r9
00000000079e3018: 4883f909                     cmp      rcx, 9
00000000079e301c: 4889d1                       mov      rcx, rdx
00000000079e301f: 77cf                         ja       0x79e2ff0
00000000079e3021: 488d8424f8010000             lea      rax, [rsp + 0x1f8]
00000000079e3029: 41c6400100                   mov      byte ptr [r8 + 1], 0
00000000079e302e: 4983f909                     cmp      r9, 9
00000000079e3032: 7229                         jb       0x79e305d
00000000079e3034: 488d8c24f9010000             lea      rcx, [rsp + 0x1f9]
00000000079e303c: 0f1f4000                     nop      dword ptr [rax]
00000000079e3040: 410fb610                     movzx    edx, byte ptr [r8]
00000000079e3044: 0fb671ff                     movzx    esi, byte ptr [rcx - 1]
00000000079e3048: 418830                       mov      byte ptr [r8], sil
00000000079e304b: 49ffc8                       dec      r8
00000000079e304e: 8851ff                       mov      byte ptr [rcx - 1], dl
00000000079e3051: 488d5101                     lea      rdx, [rcx + 1]
00000000079e3055: 4c39c1                       cmp      rcx, r8
00000000079e3058: 4889d1                       mov      rcx, rdx
00000000079e305b: 72e3                         jb       0x79e3040
00000000079e305d: 48898424f0010000             mov      qword ptr [rsp + 0x1f0], rax
00000000079e3065: 488d842410010000             lea      rax, [rsp + 0x110]
00000000079e306d: 4889842490000000             mov      qword ptr [rsp + 0x90], rax
00000000079e3075: 488d8424f0010000             lea      rax, [rsp + 0x1f0]
00000000079e307d: 4889842498000000             mov      qword ptr [rsp + 0x98], rax
00000000079e3085: 0f57c0                       xorps    xmm0, xmm0
00000000079e3088: 0f298424a0000000             movaps   xmmword ptr [rsp + 0xa0], xmm0
00000000079e3090: 0f298424b0000000             movaps   xmmword ptr [rsp + 0xb0], xmm0
00000000079e3098: 0f298424c0000000             movaps   xmmword ptr [rsp + 0xc0], xmm0
00000000079e30a0: 0f298424d0000000             movaps   xmmword ptr [rsp + 0xd0], xmm0
00000000079e30a8: 0f298424e0000000             movaps   xmmword ptr [rsp + 0xe0], xmm0
00000000079e30b0: 0f298424f0000000             movaps   xmmword ptr [rsp + 0xf0], xmm0
00000000079e30b8: 0f29842400010000             movaps   xmmword ptr [rsp + 0x100], xmm0
00000000079e30c0: 488d352d6a45f9               lea      rsi, [rip - 0x6ba95d3]
00000000079e30c7: 488dbc2460010000             lea      rdi, [rsp + 0x160]
00000000079e30cf: 488d942490000000             lea      rdx, [rsp + 0x90]
00000000079e30d7: e814e87201                   call     0x91118f0
00000000079e30dc: 488dbc2460010000             lea      rdi, [rsp + 0x160]
00000000079e30e4: e847e57201                   call     0x9111630
00000000079e30e9: f644247801                   test     byte ptr [rsp + 0x78], 1
00000000079e30ee: 740d                         je       0x79e30fd
00000000079e30f0: 488bbc2488000000             mov      rdi, qword ptr [rsp + 0x88]
00000000079e30f8: e84370b2fc                   call     0x450a140
00000000079e30fd: 0fb6442440                   movzx    eax, byte ptr [rsp + 0x40]
00000000079e3102: a801                         test     al, 1
00000000079e3104: 740c                         je       0x79e3112
00000000079e3106: 488b442448                   mov      rax, qword ptr [rsp + 0x48]
00000000079e310b: 4885c0                       test     rax, rax
00000000079e310e: 7509                         jne      0x79e3119
00000000079e3110: eb15                         jmp      0x79e3127
00000000079e3112: d1e8                         shr      eax, 1
00000000079e3114: 4885c0                       test     rax, rax
00000000079e3117: 740e                         je       0x79e3127
00000000079e3119: 488b7b60                     mov      rdi, qword ptr [rbx + 0x60]
00000000079e311d: 488d742440                   lea      rsi, [rsp + 0x40]
00000000079e3122: e8d9ed4001                   call     0x8df1f00
00000000079e3127: 4c8b7360                     mov      r14, qword ptr [rbx + 0x60]
00000000079e312b: e8b09365fe                   call     0x603c4e0
00000000079e3130: 488b08                       mov      rcx, qword ptr [rax]
00000000079e3133: 4889c7                       mov      rdi, rax
00000000079e3136: ff5110                       call     qword ptr [rcx + 0x10]
00000000079e3139: 0fb7a880000000               movzx    ebp, word ptr [rax + 0x80]
00000000079e3140: e89b9365fe                   call     0x603c4e0
00000000079e3145: 488b08                       mov      rcx, qword ptr [rax]
00000000079e3148: 4889c7                       mov      rdi, rax
00000000079e314b: ff5110                       call     qword ptr [rcx + 0x10]
00000000079e314e: 488dbc2460010000             lea      rdi, [rsp + 0x160]
00000000079e3156: 4889c6                       mov      rsi, rax
00000000079e3159: e812fe65fe                   call     0x6042f70
00000000079e315e: 0fb7f5                       movzx    esi, bp
00000000079e3161: 488d942460010000             lea      rdx, [rsp + 0x160]
00000000079e3169: 4c89f7                       mov      rdi, r14
00000000079e316c: e85fed4001                   call     0x8df1ed0
00000000079e3171: f684246001000001             test     byte ptr [rsp + 0x160], 1
00000000079e3179: 740d                         je       0x79e3188
00000000079e317b: 488bbc2470010000             mov      rdi, qword ptr [rsp + 0x170]
00000000079e3183: e8b86fb2fc                   call     0x450a140
00000000079e3188: 488b5b60                     mov      rbx, qword ptr [rbx + 0x60]
00000000079e318c: e84f9365fe                   call     0x603c4e0
00000000079e3191: 488b08                       mov      rcx, qword ptr [rax]
00000000079e3194: 4889c7                       mov      rdi, rax
00000000079e3197: ff5110                       call     qword ptr [rcx + 0x10]
00000000079e319a: 8b7060                       mov      esi, dword ptr [rax + 0x60]
00000000079e319d: 4889df                       mov      rdi, rbx
00000000079e31a0: e83bed4001                   call     0x8df1ee0
00000000079e31a5: f644242001                   test     byte ptr [rsp + 0x20], 1
00000000079e31aa: 752a                         jne      0x79e31d6
00000000079e31ac: f6042401                     test     byte ptr [rsp], 1
00000000079e31b0: 7534                         jne      0x79e31e6
00000000079e31b2: f644244001                   test     byte ptr [rsp + 0x40], 1
00000000079e31b7: 753e                         jne      0x79e31f7
00000000079e31b9: f644246001                   test     byte ptr [rsp + 0x60], 1
00000000079e31be: 740a                         je       0x79e31ca
00000000079e31c0: 488b7c2470                   mov      rdi, qword ptr [rsp + 0x70]
00000000079e31c5: e8766fb2fc                   call     0x450a140
00000000079e31ca: 4881c440020000               add      rsp, 0x240
00000000079e31d1: 5b                           pop      rbx
00000000079e31d2: 415e                         pop      r14
00000000079e31d4: 5d                           pop      rbp
00000000079e31d5: c3                           ret
00000000079e31d6: 488b7c2430                   mov      rdi, qword ptr [rsp + 0x30]
00000000079e31db: e8606fb2fc                   call     0x450a140
00000000079e31e0: f6042401                     test     byte ptr [rsp], 1
00000000079e31e4: 74cc                         je       0x79e31b2
00000000079e31e6: 488b7c2410                   mov      rdi, qword ptr [rsp + 0x10]
00000000079e31eb: e8506fb2fc                   call     0x450a140
00000000079e31f0: f644244001                   test     byte ptr [rsp + 0x40], 1
00000000079e31f5: 74c2                         je       0x79e31b9
00000000079e31f7: 488b7c2450                   mov      rdi, qword ptr [rsp + 0x50]
00000000079e31fc: e83f6fb2fc                   call     0x450a140
00000000079e3201: f644246001                   test     byte ptr [rsp + 0x60], 1
00000000079e3206: 75b8                         jne      0x79e31c0
00000000079e3208: ebc0                         jmp      0x79e31ca
00000000079e320a: 4889c3                       mov      rbx, rax
00000000079e320d: 488dbc2460010000             lea      rdi, [rsp + 0x160]
00000000079e3215: e816e47201                   call     0x9111630
00000000079e321a: eb03                         jmp      0x79e321f
00000000079e321c: 4889c3                       mov      rbx, rax
00000000079e321f: f644247801                   test     byte ptr [rsp + 0x78], 1
00000000079e3224: 0f849c000000                 je       0x79e32c6
00000000079e322a: 488bbc2488000000             mov      rdi, qword ptr [rsp + 0x88]
00000000079e3232: eb61                         jmp      0x79e3295
00000000079e3234: e98a000000                   jmp      0x79e32c3
00000000079e3239: 4889c3                       mov      rbx, rax
00000000079e323c: 488dbc2460010000             lea      rdi, [rsp + 0x160]
00000000079e3244: e8e7e37201                   call     0x9111630
00000000079e3249: eb03                         jmp      0x79e324e
00000000079e324b: 4889c3                       mov      rbx, rax
00000000079e324e: f684241001000001             test     byte ptr [rsp + 0x110], 1
00000000079e3256: 746e                         je       0x79e32c6
00000000079e3258: 488bbc2420010000             mov      rdi, qword ptr [rsp + 0x120]
00000000079e3260: eb33                         jmp      0x79e3295
00000000079e3262: eb5f                         jmp      0x79e32c3
00000000079e3264: 4889c3                       mov      rbx, rax
00000000079e3267: 488dbc2460010000             lea      rdi, [rsp + 0x160]
00000000079e326f: e8bce37201                   call     0x9111630
00000000079e3274: f6042401                     test     byte ptr [rsp], 1
00000000079e3278: 7459                         je       0x79e32d3
00000000079e327a: eb7d                         jmp      0x79e32f9
00000000079e327c: eb20                         jmp      0x79e329e
00000000079e327e: eb29                         jmp      0x79e32a9
00000000079e3280: 4889c3                       mov      rbx, rax
00000000079e3283: f684246001000001             test     byte ptr [rsp + 0x160], 1
00000000079e328b: 7439                         je       0x79e32c6
00000000079e328d: 488bbc2470010000             mov      rdi, qword ptr [rsp + 0x170]
00000000079e3295: e8a66eb2fc                   call     0x450a140
00000000079e329a: eb2a                         jmp      0x79e32c6
00000000079e329c: eb0b                         jmp      0x79e32a9
00000000079e329e: 4889c3                       mov      rbx, rax
00000000079e32a1: f6042401                     test     byte ptr [rsp], 1
00000000079e32a5: 742c                         je       0x79e32d3
00000000079e32a7: eb50                         jmp      0x79e32f9
00000000079e32a9: 4889c3                       mov      rbx, rax
00000000079e32ac: f644244001                   test     byte ptr [rsp + 0x40], 1
00000000079e32b1: 7427                         je       0x79e32da
00000000079e32b3: eb55                         jmp      0x79e330a
00000000079e32b5: 4889c3                       mov      rbx, rax
00000000079e32b8: f644246001                   test     byte ptr [rsp + 0x60], 1
00000000079e32bd: 7422                         je       0x79e32e1
00000000079e32bf: eb5a                         jmp      0x79e331b
00000000079e32c1: eb00                         jmp      0x79e32c3
00000000079e32c3: 4889c3                       mov      rbx, rax
00000000079e32c6: f644242001                   test     byte ptr [rsp + 0x20], 1
00000000079e32cb: 751c                         jne      0x79e32e9
00000000079e32cd: f6042401                     test     byte ptr [rsp], 1
00000000079e32d1: 7526                         jne      0x79e32f9
00000000079e32d3: f644244001                   test     byte ptr [rsp + 0x40], 1
00000000079e32d8: 7530                         jne      0x79e330a
00000000079e32da: f644246001                   test     byte ptr [rsp + 0x60], 1
00000000079e32df: 753a                         jne      0x79e331b
00000000079e32e1: 4889df                       mov      rdi, rbx
00000000079e32e4: e8379bb0fc                   call     0x44ece20
00000000079e32e9: 488b7c2430                   mov      rdi, qword ptr [rsp + 0x30]
00000000079e32ee: e84d6eb2fc                   call     0x450a140
00000000079e32f3: f6042401                     test     byte ptr [rsp], 1
00000000079e32f7: 74da                         je       0x79e32d3
00000000079e32f9: 488b7c2410                   mov      rdi, qword ptr [rsp + 0x10]
00000000079e32fe: e83d6eb2fc                   call     0x450a140
00000000079e3303: f644244001                   test     byte ptr [rsp + 0x40], 1
00000000079e3308: 74d0                         je       0x79e32da
00000000079e330a: 488b7c2450                   mov      rdi, qword ptr [rsp + 0x50]
00000000079e330f: e82c6eb2fc                   call     0x450a140
00000000079e3314: f644246001                   test     byte ptr [rsp + 0x60], 1
00000000079e3319: 74c6                         je       0x79e32e1
00000000079e331b: 488b7c2470                   mov      rdi, qword ptr [rsp + 0x70]
00000000079e3320: e81b6eb2fc                   call     0x450a140
00000000079e3325: 4889df                       mov      rdi, rbx
00000000079e3328: e8f39ab0fc                   call     0x44ece20
