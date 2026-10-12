0000000008df3940: 4157                         push     r15
0000000008df3942: 4156                         push     r14
0000000008df3944: 53                           push     rbx
0000000008df3945: 4881ece0010000               sub      rsp, 0x1e0
0000000008df394c: 4889f3                       mov      rbx, rsi
0000000008df394f: 4989fe                       mov      r14, rdi
0000000008df3952: bf02000000                   mov      edi, 2
0000000008df3957: e834333200                   call     0x9116c90
0000000008df395c: 85c0                         test     eax, eax
0000000008df395e: 0f84bd010000                 je       0x8df3b21
0000000008df3964: 488d15f36616f8               lea      rdx, [rip - 0x7e9990d] ; 'mars::account'
0000000008df396b: 488d0d9a0f26f8               lea      rcx, [rip - 0x7d9f066] ; 'account_core.cc'
0000000008df3972: 4c8d05145a13f8               lea      r8, [rip - 0x7eca5ec] ; 'SetOriginalSessionKey'
0000000008df3979: 488dbc2450010000             lea      rdi, [rsp + 0x150]
0000000008df3981: be02000000                   mov      esi, 2
0000000008df3986: 41b94d000000                 mov      r9d, 0x4d
0000000008df398c: 6a00                         push     0
0000000008df398e: 6a00                         push     0
0000000008df3990: e80bdc3100                   call     0x91115a0
0000000008df3995: 4883c410                     add      rsp, 0x10
0000000008df3999: 0fb60b                       movzx    ecx, byte ptr [rbx]
0000000008df399c: f6c101                       test     cl, 1
0000000008df399f: 7406                         je       0x8df39a7
0000000008df39a1: 488b4b08                     mov      rcx, qword ptr [rbx + 8]
0000000008df39a5: eb02                         jmp      0x8df39a9
0000000008df39a7: d1e9                         shr      ecx, 1
0000000008df39a9: 48c78424b000000000000000     mov      qword ptr [rsp + 0xb0], 0
0000000008df39b5: bf07000000                   mov      edi, 7
0000000008df39ba: 488db424b7000000             lea      rsi, [rsp + 0xb7]
0000000008df39c2: 49b8cdcccccccccccccc         movabs   r8, 0xcccccccccccccccd
0000000008df39cc: 4c8d0d39ba13f8               lea      r9, [rip - 0x7ec45c7] ; 'ZYXWVUTSRQPONMLKJIHGFEDCBA9876543210123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'
0000000008df39d3: 666666662e0f1f840000000000   nop      word ptr cs:[rax + rax]
0000000008df39e0: 4889c8                       mov      rax, rcx
0000000008df39e3: 49f7e0                       mul      r8
0000000008df39e6: 48c1ea03                     shr      rdx, 3
0000000008df39ea: 488d0412                     lea      rax, [rdx + rdx]
0000000008df39ee: 488d0480                     lea      rax, [rax + rax*4]
0000000008df39f2: 4d89ca                       mov      r10, r9
0000000008df39f5: 4929c2                       sub      r10, rax
0000000008df39f8: 410fb6440a23                 movzx    eax, byte ptr [r10 + rcx + 0x23]
0000000008df39fe: 884601                       mov      byte ptr [rsi + 1], al
0000000008df3a01: 48ffc6                       inc      rsi
0000000008df3a04: 48ffc7                       inc      rdi
0000000008df3a07: 4883f909                     cmp      rcx, 9
0000000008df3a0b: 4889d1                       mov      rcx, rdx
0000000008df3a0e: 77d0                         ja       0x8df39e0
0000000008df3a10: 488d8424b8000000             lea      rax, [rsp + 0xb8]
0000000008df3a18: c6460100                     mov      byte ptr [rsi + 1], 0
0000000008df3a1c: 4883ff09                     cmp      rdi, 9
0000000008df3a20: 722a                         jb       0x8df3a4c
0000000008df3a22: 488d8c24b9000000             lea      rcx, [rsp + 0xb9]
0000000008df3a2a: 660f1f440000                 nop      word ptr [rax + rax]
0000000008df3a30: 0fb616                       movzx    edx, byte ptr [rsi]
0000000008df3a33: 0fb679ff                     movzx    edi, byte ptr [rcx - 1]
0000000008df3a37: 40883e                       mov      byte ptr [rsi], dil
0000000008df3a3a: 48ffce                       dec      rsi
0000000008df3a3d: 8851ff                       mov      byte ptr [rcx - 1], dl
0000000008df3a40: 488d5101                     lea      rdx, [rcx + 1]
0000000008df3a44: 4839f1                       cmp      rcx, rsi
0000000008df3a47: 4889d1                       mov      rcx, rdx
0000000008df3a4a: 72e4                         jb       0x8df3a30
0000000008df3a4c: 48898424b0000000             mov      qword ptr [rsp + 0xb0], rax
0000000008df3a54: 4c8d7c2418                   lea      r15, [rsp + 0x18]
0000000008df3a59: 4c89ff                       mov      rdi, r15
0000000008df3a5c: 4889de                       mov      rsi, rbx
0000000008df3a5f: e8ec803200                   call     0x911bb50
0000000008df3a64: 4889e7                       mov      rdi, rsp
0000000008df3a67: 4c89fe                       mov      rsi, r15
0000000008df3a6a: e8d17c0200                   call     0x8e1b740
0000000008df3a6f: f6042401                     test     byte ptr [rsp], 1
0000000008df3a73: 7407                         je       0x8df3a7c
0000000008df3a75: 488b442410                   mov      rax, qword ptr [rsp + 0x10]
0000000008df3a7a: eb05                         jmp      0x8df3a81
0000000008df3a7c: 488d442401                   lea      rax, [rsp + 1]
0000000008df3a81: 4889842400010000             mov      qword ptr [rsp + 0x100], rax
0000000008df3a89: c684240801000000             mov      byte ptr [rsp + 0x108], 0
0000000008df3a91: 488d8424b0000000             lea      rax, [rsp + 0xb0]
0000000008df3a99: 4889442430                   mov      qword ptr [rsp + 0x30], rax
0000000008df3a9e: 488d842400010000             lea      rax, [rsp + 0x100]
0000000008df3aa6: 4889442438                   mov      qword ptr [rsp + 0x38], rax
0000000008df3aab: 0f57c0                       xorps    xmm0, xmm0
0000000008df3aae: 0f29442440                   movaps   xmmword ptr [rsp + 0x40], xmm0
0000000008df3ab3: 0f29442450                   movaps   xmmword ptr [rsp + 0x50], xmm0
0000000008df3ab8: 0f29442460                   movaps   xmmword ptr [rsp + 0x60], xmm0
0000000008df3abd: 0f29442470                   movaps   xmmword ptr [rsp + 0x70], xmm0
0000000008df3ac2: 0f29842480000000             movaps   xmmword ptr [rsp + 0x80], xmm0
0000000008df3aca: 0f29842490000000             movaps   xmmword ptr [rsp + 0x90], xmm0
0000000008df3ad2: 0f298424a0000000             movaps   xmmword ptr [rsp + 0xa0], xmm0
0000000008df3ada: 488d35879322f8               lea      rsi, [rip - 0x7dd6c79] ; 'mmpack session_key len:%_, session_key:%_'
0000000008df3ae1: 488dbc2450010000             lea      rdi, [rsp + 0x150]
0000000008df3ae9: 488d542430                   lea      rdx, [rsp + 0x30]
0000000008df3aee: e8fddd3100                   call     0x91118f0
0000000008df3af3: f6042401                     test     byte ptr [rsp], 1
0000000008df3af7: 740a                         je       0x8df3b03
0000000008df3af9: 488b7c2410                   mov      rdi, qword ptr [rsp + 0x10]
0000000008df3afe: e83d6671fb                   call     0x450a140
0000000008df3b03: f644241801                   test     byte ptr [rsp + 0x18], 1
0000000008df3b08: 740a                         je       0x8df3b14
0000000008df3b0a: 488b7c2428                   mov      rdi, qword ptr [rsp + 0x28]
0000000008df3b0f: e82c6671fb                   call     0x450a140
0000000008df3b14: 488dbc2450010000             lea      rdi, [rsp + 0x150]
0000000008df3b1c: e80fdb3100                   call     0x9111630
0000000008df3b21: 4d8dbea0010000               lea      r15, [r14 + 0x1a0]
0000000008df3b28: 4c89ff                       mov      rdi, r15
0000000008df3b2b: e8d0f301fc                   call     0x4e12f00
0000000008df3b30: 4981c6b8000000               add      r14, 0xb8
0000000008df3b37: 4c89f7                       mov      rdi, r14
0000000008df3b3a: 4889de                       mov      rsi, rbx
0000000008df3b3d: e86ea271fb                   call     0x450ddb0
0000000008df3b42: 4c89ff                       mov      rdi, r15
0000000008df3b45: e856f401fc                   call     0x4e12fa0
0000000008df3b4a: 4881c4e0010000               add      rsp, 0x1e0
0000000008df3b51: 5b                           pop      rbx
0000000008df3b52: 415e                         pop      r14
0000000008df3b54: 415f                         pop      r15
0000000008df3b56: c3                           ret
