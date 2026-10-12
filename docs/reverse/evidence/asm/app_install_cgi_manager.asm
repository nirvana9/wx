000000000603bb70: 4157                         push     r15
000000000603bb72: 4156                         push     r14
000000000603bb74: 53                           push     rbx
000000000603bb75: 4881eca0010000               sub      rsp, 0x1a0
000000000603bb7c: 4889fb                       mov      rbx, rdi
000000000603bb7f: 0f28051adbd1fa               movaps   xmm0, xmmword ptr [rip - 0x52e24e6]
000000000603bb86: 0f29842480000000             movaps   xmmword ptr [rsp + 0x80], xmm0
000000000603bb8e: 0f29442470                   movaps   xmmword ptr [rsp + 0x70], xmm0
000000000603bb93: 0f29442460                   movaps   xmmword ptr [rsp + 0x60], xmm0
000000000603bb98: 0f29442450                   movaps   xmmword ptr [rsp + 0x50], xmm0
000000000603bb9d: 0f29442440                   movaps   xmmword ptr [rsp + 0x40], xmm0
000000000603bba2: 0f29442430                   movaps   xmmword ptr [rsp + 0x30], xmm0
000000000603bba7: 0f29442420                   movaps   xmmword ptr [rsp + 0x20], xmm0
000000000603bbac: 4c8d742420                   lea      r14, [rsp + 0x20]
000000000603bbb1: 4c89f7                       mov      rdi, r14
000000000603bbb4: e8778482fe                   call     0x4864030
000000000603bbb9: 4c89f7                       mov      rdi, r14
000000000603bbbc: e85f036001                   call     0x763bf20
000000000603bbc1: 488d742420                   lea      rsi, [rsp + 0x20]
000000000603bbc6: 4889df                       mov      rdi, rbx
000000000603bbc9: e842060000                   call     0x603c210
000000000603bbce: bff8000000                   mov      edi, 0xf8
000000000603bbd3: e8c8216304                   call     0xa66dda0
000000000603bbd8: 4989c6                       mov      r14, rax
000000000603bbdb: 0f57c0                       xorps    xmm0, xmm0
000000000603bbde: 0f114008                     movups   xmmword ptr [rax + 8], xmm0
000000000603bbe2: 488d0577a98504               lea      rax, [rip + 0x485a977]
000000000603bbe9: 4883c010                     add      rax, 0x10
000000000603bbed: 498906                       mov      qword ptr [r14], rax
000000000603bbf0: 4d8d7e18                     lea      r15, [r14 + 0x18]
000000000603bbf4: 4c89ff                       mov      rdi, r15
000000000603bbf7: e8b4369a01                   call     0x79df2b0
000000000603bbfc: 4c89f0                       mov      rax, r14
000000000603bbff: 4883c028                     add      rax, 0x28
000000000603bc03: 4d85ff                       test     r15, r15
000000000603bc06: 490f44c7                     cmove    rax, r15
000000000603bc0a: 48898350020000               mov      qword ptr [rbx + 0x250], rax
000000000603bc11: 4c8bbb58020000               mov      r15, qword ptr [rbx + 0x258]
000000000603bc18: 4c89b358020000               mov      qword ptr [rbx + 0x258], r14
000000000603bc1f: 4d85ff                       test     r15, r15
000000000603bc22: 7423                         je       0x603bc47
000000000603bc24: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
000000000603bc2b: f0490fc14708                 lock xadd qword ptr [r15 + 8], rax
000000000603bc31: 4885c0                       test     rax, rax
000000000603bc34: 7511                         jne      0x603bc47
000000000603bc36: 498b07                       mov      rax, qword ptr [r15]
000000000603bc39: 4c89ff                       mov      rdi, r15
000000000603bc3c: ff5010                       call     qword ptr [rax + 0x10]
000000000603bc3f: 4c89ff                       mov      rdi, r15
000000000603bc42: e889b54ffe                   call     0x45371d0
000000000603bc47: bf78020000                   mov      edi, 0x278
000000000603bc4c: e84f216304                   call     0xa66dda0
000000000603bc51: 4989c6                       mov      r14, rax
000000000603bc54: 0f57c0                       xorps    xmm0, xmm0
000000000603bc57: 0f114008                     movups   xmmword ptr [rax + 8], xmm0
000000000603bc5b: 488d054ea98504               lea      rax, [rip + 0x485a94e]
000000000603bc62: 4883c010                     add      rax, 0x10
000000000603bc66: 498906                       mov      qword ptr [r14], rax
000000000603bc69: 4d8d7e18                     lea      r15, [r14 + 0x18]
000000000603bc6d: ba60020000                   mov      edx, 0x260
000000000603bc72: 4c89ff                       mov      rdi, r15
000000000603bc75: 31f6                         xor      esi, esi
000000000603bc77: e854266304                   call     0xa66e2d0
000000000603bc7c: 4c89ff                       mov      rdi, r15
000000000603bc7f: e85c0f0100                   call     0x604cbe0
000000000603bc84: 4c89bb60020000               mov      qword ptr [rbx + 0x260], r15
000000000603bc8b: 4c8bbb68020000               mov      r15, qword ptr [rbx + 0x268]
000000000603bc92: 4c89b368020000               mov      qword ptr [rbx + 0x268], r14
000000000603bc99: 4d85ff                       test     r15, r15
000000000603bc9c: 7423                         je       0x603bcc1
000000000603bc9e: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
000000000603bca5: f0490fc14708                 lock xadd qword ptr [r15 + 8], rax
000000000603bcab: 4885c0                       test     rax, rax
000000000603bcae: 7511                         jne      0x603bcc1
000000000603bcb0: 498b07                       mov      rax, qword ptr [r15]
000000000603bcb3: 4c89ff                       mov      rdi, r15
000000000603bcb6: ff5010                       call     qword ptr [rax + 0x10]
000000000603bcb9: 4c89ff                       mov      rdi, r15
000000000603bcbc: e80fb54ffe                   call     0x45371d0
000000000603bcc1: 488bbb50020000               mov      rdi, qword ptr [rbx + 0x250]
000000000603bcc8: 488bb360020000               mov      rsi, qword ptr [rbx + 0x260]
000000000603bccf: 488b07                       mov      rax, qword ptr [rdi]
000000000603bcd2: ff5008                       call     qword ptr [rax + 8]
000000000603bcd5: bf02000000                   mov      edi, 2
000000000603bcda: e8b1af0d03                   call     0x9116c90
000000000603bcdf: 85c0                         test     eax, eax
000000000603bce1: 0f84c8000000                 je       0x603bdaf
000000000603bce7: 488d7c2408                   lea      rdi, [rsp + 8]
000000000603bcec: e8df6c3701                   call     0x73b29d0
000000000603bcf1: f644240801                   test     byte ptr [rsp + 8], 1
000000000603bcf6: 7407                         je       0x603bcff
000000000603bcf8: 488b542418                   mov      rdx, qword ptr [rsp + 0x18]
000000000603bcfd: eb05                         jmp      0x603bd04
000000000603bcff: 488d542409                   lea      rdx, [rsp + 9]
000000000603bd04: 488d0d15f5e6fa               lea      rcx, [rip - 0x5190aeb]
000000000603bd0b: 4c8d055e00eefa               lea      r8, [rip - 0x511ffa2]
000000000603bd12: 488dbc2410010000             lea      rdi, [rsp + 0x110]
000000000603bd1a: be02000000                   mov      esi, 2
000000000603bd1f: 41b93d010000                 mov      r9d, 0x13d
000000000603bd25: 6a00                         push     0
000000000603bd27: 6a00                         push     0
000000000603bd29: e872580d03                   call     0x91115a0
000000000603bd2e: 4883c410                     add      rsp, 0x10
000000000603bd32: 0f57c0                       xorps    xmm0, xmm0
000000000603bd35: 0f29842400010000             movaps   xmmword ptr [rsp + 0x100], xmm0
000000000603bd3d: 0f298424f0000000             movaps   xmmword ptr [rsp + 0xf0], xmm0
000000000603bd45: 0f298424e0000000             movaps   xmmword ptr [rsp + 0xe0], xmm0
000000000603bd4d: 0f298424d0000000             movaps   xmmword ptr [rsp + 0xd0], xmm0
000000000603bd55: 0f298424c0000000             movaps   xmmword ptr [rsp + 0xc0], xmm0
000000000603bd5d: 0f298424b0000000             movaps   xmmword ptr [rsp + 0xb0], xmm0
000000000603bd65: 0f298424a0000000             movaps   xmmword ptr [rsp + 0xa0], xmm0
000000000603bd6d: 0f29842490000000             movaps   xmmword ptr [rsp + 0x90], xmm0
000000000603bd75: 488d35f4ffedfa               lea      rsi, [rip - 0x512000c]
000000000603bd7c: 488dbc2410010000             lea      rdi, [rsp + 0x110]
000000000603bd84: 488d942490000000             lea      rdx, [rsp + 0x90]
000000000603bd8c: e85f5b0d03                   call     0x91118f0
000000000603bd91: 488dbc2410010000             lea      rdi, [rsp + 0x110]
000000000603bd99: e892580d03                   call     0x9111630
000000000603bd9e: f644240801                   test     byte ptr [rsp + 8], 1
000000000603bda3: 740a                         je       0x603bdaf
000000000603bda5: 488b7c2418                   mov      rdi, qword ptr [rsp + 0x18]
000000000603bdaa: e891e34cfe                   call     0x450a140
000000000603bdaf: f644247801                   test     byte ptr [rsp + 0x78], 1
000000000603bdb4: 752c                         jne      0x603bde2
000000000603bdb6: f644246001                   test     byte ptr [rsp + 0x60], 1
000000000603bdbb: 7539                         jne      0x603bdf6
000000000603bdbd: f644244001                   test     byte ptr [rsp + 0x40], 1
000000000603bdc2: 7543                         jne      0x603be07
000000000603bdc4: f644242801                   test     byte ptr [rsp + 0x28], 1
000000000603bdc9: 740a                         je       0x603bdd5
000000000603bdcb: 488b7c2438                   mov      rdi, qword ptr [rsp + 0x38]
000000000603bdd0: e86be34cfe                   call     0x450a140
000000000603bdd5: 4881c4a0010000               add      rsp, 0x1a0
000000000603bddc: 5b                           pop      rbx
000000000603bddd: 415e                         pop      r14
000000000603bddf: 415f                         pop      r15
000000000603bde1: c3                           ret
000000000603bde2: 488bbc2488000000             mov      rdi, qword ptr [rsp + 0x88]
000000000603bdea: e851e34cfe                   call     0x450a140
000000000603bdef: f644246001                   test     byte ptr [rsp + 0x60], 1
000000000603bdf4: 74c7                         je       0x603bdbd
000000000603bdf6: 488b7c2470                   mov      rdi, qword ptr [rsp + 0x70]
000000000603bdfb: e840e34cfe                   call     0x450a140
000000000603be00: f644244001                   test     byte ptr [rsp + 0x40], 1
000000000603be05: 74bd                         je       0x603bdc4
000000000603be07: 488b7c2450                   mov      rdi, qword ptr [rsp + 0x50]
000000000603be0c: e82fe34cfe                   call     0x450a140
000000000603be11: f644242801                   test     byte ptr [rsp + 0x28], 1
000000000603be16: 75b3                         jne      0x603bdcb
000000000603be18: ebbb                         jmp      0x603bdd5
000000000603be1a: 4889c3                       mov      rbx, rax
000000000603be1d: 488dbc2410010000             lea      rdi, [rsp + 0x110]
000000000603be25: e806580d03                   call     0x9111630
000000000603be2a: eb03                         jmp      0x603be2f
000000000603be2c: 4889c3                       mov      rbx, rax
000000000603be2f: f644240801                   test     byte ptr [rsp + 8], 1
000000000603be34: 7441                         je       0x603be77
000000000603be36: 488b7c2418                   mov      rdi, qword ptr [rsp + 0x18]
000000000603be3b: e800e34cfe                   call     0x450a140
000000000603be40: eb35                         jmp      0x603be77
000000000603be42: eb30                         jmp      0x603be74
000000000603be44: 4889c3                       mov      rbx, rax
000000000603be47: 4c89f7                       mov      rdi, r14
000000000603be4a: e871b34ffe                   call     0x45371c0
000000000603be4f: 4d85f6                       test     r14, r14
000000000603be52: 7423                         je       0x603be77
000000000603be54: eb12                         jmp      0x603be68
000000000603be56: eb1c                         jmp      0x603be74
000000000603be58: 4889c3                       mov      rbx, rax
000000000603be5b: 4c89f7                       mov      rdi, r14
000000000603be5e: e85db34ffe                   call     0x45371c0
000000000603be63: 4d85f6                       test     r14, r14
000000000603be66: 740f                         je       0x603be77
000000000603be68: 4c89f7                       mov      rdi, r14
000000000603be6b: e8d0e24cfe                   call     0x450a140
000000000603be70: eb05                         jmp      0x603be77
000000000603be72: eb00                         jmp      0x603be74
000000000603be74: 4889c3                       mov      rbx, rax
000000000603be77: 488d7c2420                   lea      rdi, [rsp + 0x20]
000000000603be7c: e8bf8282fe                   call     0x4864140
000000000603be81: 4889df                       mov      rdi, rbx
000000000603be84: e8970f4bfe                   call     0x44ece20
