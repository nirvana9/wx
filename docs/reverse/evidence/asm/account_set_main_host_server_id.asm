0000000008df3b60: 4157                         push     r15
0000000008df3b62: 4156                         push     r14
0000000008df3b64: 53                           push     rbx
0000000008df3b65: 4881ece0010000               sub      rsp, 0x1e0
0000000008df3b6c: 4889f3                       mov      rbx, rsi
0000000008df3b6f: 4989fe                       mov      r14, rdi
0000000008df3b72: bf02000000                   mov      edi, 2
0000000008df3b77: e814313200                   call     0x9116c90
0000000008df3b7c: 85c0                         test     eax, eax
0000000008df3b7e: 0f84b0010000                 je       0x8df3d34
0000000008df3b84: 488d15d36416f8               lea      rdx, [rip - 0x7e99b2d] ; 'mars::account'
0000000008df3b8b: 488d0d7a0d26f8               lea      rcx, [rip - 0x7d9f286] ; 'account_core.cc'
0000000008df3b92: 4c8d052f7d0ff8               lea      r8, [rip - 0x7f082d1] ; 'SetMainHostServerId'
0000000008df3b99: 488dbc2450010000             lea      rdi, [rsp + 0x150]
0000000008df3ba1: be02000000                   mov      esi, 2
0000000008df3ba6: 41b953000000                 mov      r9d, 0x53
0000000008df3bac: 6a00                         push     0
0000000008df3bae: 6a00                         push     0
0000000008df3bb0: e8ebd93100                   call     0x91115a0
0000000008df3bb5: 4883c410                     add      rsp, 0x10
0000000008df3bb9: 4c8d7c2418                   lea      r15, [rsp + 0x18]
0000000008df3bbe: 4c89ff                       mov      rdi, r15
0000000008df3bc1: 4889de                       mov      rsi, rbx
0000000008df3bc4: e8877f3200                   call     0x911bb50
0000000008df3bc9: 4889e7                       mov      rdi, rsp
0000000008df3bcc: 4c89fe                       mov      rsi, r15
0000000008df3bcf: e86c7b0200                   call     0x8e1b740
0000000008df3bd4: f6042401                     test     byte ptr [rsp], 1
0000000008df3bd8: 7407                         je       0x8df3be1
0000000008df3bda: 488b442410                   mov      rax, qword ptr [rsp + 0x10]
0000000008df3bdf: eb05                         jmp      0x8df3be6
0000000008df3be1: 488d442401                   lea      rax, [rsp + 1]
0000000008df3be6: 4889842400010000             mov      qword ptr [rsp + 0x100], rax
0000000008df3bee: c684240801000000             mov      byte ptr [rsp + 0x108], 0
0000000008df3bf6: 0fb60b                       movzx    ecx, byte ptr [rbx]
0000000008df3bf9: f6c101                       test     cl, 1
0000000008df3bfc: 7406                         je       0x8df3c04
0000000008df3bfe: 488b4b08                     mov      rcx, qword ptr [rbx + 8]
0000000008df3c02: eb02                         jmp      0x8df3c06
0000000008df3c04: d1e9                         shr      ecx, 1
0000000008df3c06: 48c78424b000000000000000     mov      qword ptr [rsp + 0xb0], 0
0000000008df3c12: bf07000000                   mov      edi, 7
0000000008df3c17: 488db424b7000000             lea      rsi, [rsp + 0xb7]
0000000008df3c1f: 49b8cdcccccccccccccc         movabs   r8, 0xcccccccccccccccd
0000000008df3c29: 4c8d0ddcb713f8               lea      r9, [rip - 0x7ec4824] ; 'ZYXWVUTSRQPONMLKJIHGFEDCBA9876543210123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'
0000000008df3c30: 4889c8                       mov      rax, rcx
0000000008df3c33: 49f7e0                       mul      r8
0000000008df3c36: 48c1ea03                     shr      rdx, 3
0000000008df3c3a: 488d0412                     lea      rax, [rdx + rdx]
0000000008df3c3e: 488d0480                     lea      rax, [rax + rax*4]
0000000008df3c42: 4d89ca                       mov      r10, r9
0000000008df3c45: 4929c2                       sub      r10, rax
0000000008df3c48: 410fb6440a23                 movzx    eax, byte ptr [r10 + rcx + 0x23]
0000000008df3c4e: 884601                       mov      byte ptr [rsi + 1], al
0000000008df3c51: 48ffc6                       inc      rsi
0000000008df3c54: 48ffc7                       inc      rdi
0000000008df3c57: 4883f909                     cmp      rcx, 9
0000000008df3c5b: 4889d1                       mov      rcx, rdx
0000000008df3c5e: 77d0                         ja       0x8df3c30
0000000008df3c60: 488d8424b8000000             lea      rax, [rsp + 0xb8]
0000000008df3c68: c6460100                     mov      byte ptr [rsi + 1], 0
0000000008df3c6c: 4883ff09                     cmp      rdi, 9
0000000008df3c70: 722a                         jb       0x8df3c9c
0000000008df3c72: 488d8c24b9000000             lea      rcx, [rsp + 0xb9]
0000000008df3c7a: 660f1f440000                 nop      word ptr [rax + rax]
0000000008df3c80: 0fb616                       movzx    edx, byte ptr [rsi]
0000000008df3c83: 0fb679ff                     movzx    edi, byte ptr [rcx - 1]
0000000008df3c87: 40883e                       mov      byte ptr [rsi], dil
0000000008df3c8a: 48ffce                       dec      rsi
0000000008df3c8d: 8851ff                       mov      byte ptr [rcx - 1], dl
0000000008df3c90: 488d5101                     lea      rdx, [rcx + 1]
0000000008df3c94: 4839f1                       cmp      rcx, rsi
0000000008df3c97: 4889d1                       mov      rcx, rdx
0000000008df3c9a: 72e4                         jb       0x8df3c80
0000000008df3c9c: 48898424b0000000             mov      qword ptr [rsp + 0xb0], rax
0000000008df3ca4: 488d842400010000             lea      rax, [rsp + 0x100]
0000000008df3cac: 4889442430                   mov      qword ptr [rsp + 0x30], rax
0000000008df3cb1: 488d8424b0000000             lea      rax, [rsp + 0xb0]
0000000008df3cb9: 4889442438                   mov      qword ptr [rsp + 0x38], rax
0000000008df3cbe: 0f57c0                       xorps    xmm0, xmm0
0000000008df3cc1: 0f29442440                   movaps   xmmword ptr [rsp + 0x40], xmm0
0000000008df3cc6: 0f29442450                   movaps   xmmword ptr [rsp + 0x50], xmm0
0000000008df3ccb: 0f29442460                   movaps   xmmword ptr [rsp + 0x60], xmm0
0000000008df3cd0: 0f29442470                   movaps   xmmword ptr [rsp + 0x70], xmm0
0000000008df3cd5: 0f29842480000000             movaps   xmmword ptr [rsp + 0x80], xmm0
0000000008df3cdd: 0f29842490000000             movaps   xmmword ptr [rsp + 0x90], xmm0
0000000008df3ce5: 0f298424a0000000             movaps   xmmword ptr [rsp + 0xa0], xmm0
0000000008df3ced: 488d3546af07f8               lea      rsi, [rip - 0x7f850ba] ; 'mmpack server_id:%_ len:%_'
0000000008df3cf4: 488dbc2450010000             lea      rdi, [rsp + 0x150]
0000000008df3cfc: 488d542430                   lea      rdx, [rsp + 0x30]
0000000008df3d01: e8eadb3100                   call     0x91118f0
0000000008df3d06: f6042401                     test     byte ptr [rsp], 1
0000000008df3d0a: 740a                         je       0x8df3d16
0000000008df3d0c: 488b7c2410                   mov      rdi, qword ptr [rsp + 0x10]
0000000008df3d11: e82a6471fb                   call     0x450a140
0000000008df3d16: f644241801                   test     byte ptr [rsp + 0x18], 1
0000000008df3d1b: 740a                         je       0x8df3d27
0000000008df3d1d: 488b7c2428                   mov      rdi, qword ptr [rsp + 0x28]
0000000008df3d22: e8196471fb                   call     0x450a140
0000000008df3d27: 488dbc2450010000             lea      rdi, [rsp + 0x150]
0000000008df3d2f: e8fcd83100                   call     0x9111630
0000000008df3d34: 4d8dbea0010000               lea      r15, [r14 + 0x1a0]
0000000008df3d3b: 4c89ff                       mov      rdi, r15
0000000008df3d3e: e8bdf101fc                   call     0x4e12f00
0000000008df3d43: 4981c6a0000000               add      r14, 0xa0
0000000008df3d4a: 4c89f7                       mov      rdi, r14
0000000008df3d4d: 4889de                       mov      rsi, rbx
0000000008df3d50: e85ba071fb                   call     0x450ddb0
0000000008df3d55: 4c89ff                       mov      rdi, r15
0000000008df3d58: e843f201fc                   call     0x4e12fa0
0000000008df3d5d: 4881c4e0010000               add      rsp, 0x1e0
0000000008df3d64: 5b                           pop      rbx
0000000008df3d65: 415e                         pop      r14
0000000008df3d67: 415f                         pop      r15
0000000008df3d69: c3                           ret
