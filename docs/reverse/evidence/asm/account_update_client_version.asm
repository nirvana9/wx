0000000008df37d0: 4157                         push     r15
0000000008df37d2: 4156                         push     r14
0000000008df37d4: 53                           push     rbx
0000000008df37d5: 4881ec60010000               sub      rsp, 0x160
0000000008df37dc: 89f3                         mov      ebx, esi
0000000008df37de: 4989fe                       mov      r14, rdi
0000000008df37e1: bf02000000                   mov      edi, 2
0000000008df37e6: e8a5343200                   call     0x9116c90
0000000008df37eb: 85c0                         test     eax, eax
0000000008df37ed: 0f842f010000                 je       0x8df3922
0000000008df37f3: 488d15646816f8               lea      rdx, [rip - 0x7e9979c] ; 'mars::account'
0000000008df37fa: 488d0d0b1126f8               lea      rcx, [rip - 0x7d9eef5] ; 'account_core.cc'
0000000008df3801: 4c8d05b3530cf8               lea      r8, [rip - 0x7f3ac4d] ; 'UpdateClientVersion'
0000000008df3808: 488dbc24d0000000             lea      rdi, [rsp + 0xd0]
0000000008df3810: be02000000                   mov      esi, 2
0000000008df3815: 41b92e000000                 mov      r9d, 0x2e
0000000008df381b: 6a00                         push     0
0000000008df381d: 6a00                         push     0
0000000008df381f: e87cdd3100                   call     0x91115a0
0000000008df3824: 4883c410                     add      rsp, 0x10
0000000008df3828: 48c784248000000000000000     mov      qword ptr [rsp + 0x80], 0
0000000008df3834: b807000000                   mov      eax, 7
0000000008df3839: 488d8c2487000000             lea      rcx, [rsp + 0x87]
0000000008df3841: bacdcccccc                   mov      edx, 0xcccccccd
0000000008df3846: 488d35bfbb13f8               lea      rsi, [rip - 0x7ec4441] ; 'ZYXWVUTSRQPONMLKJIHGFEDCBA9876543210123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'
0000000008df384d: 89df                         mov      edi, ebx
0000000008df384f: 90                           nop
0000000008df3850: 4189f8                       mov      r8d, edi
0000000008df3853: 4c0fafc2                     imul     r8, rdx
0000000008df3857: 49c1e823                     shr      r8, 0x23
0000000008df385b: 478d0c00                     lea      r9d, [r8 + r8]
0000000008df385f: 478d0c89                     lea      r9d, [r9 + r9*4]
0000000008df3863: 41f7d9                       neg      r9d
0000000008df3866: 4101f9                       add      r9d, edi
0000000008df3869: 4183c123                     add      r9d, 0x23
0000000008df386d: 450fb60c31                   movzx    r9d, byte ptr [r9 + rsi]
0000000008df3872: 44884901                     mov      byte ptr [rcx + 1], r9b
0000000008df3876: 48ffc1                       inc      rcx
0000000008df3879: 48ffc0                       inc      rax
0000000008df387c: 83ff09                       cmp      edi, 9
0000000008df387f: 4489c7                       mov      edi, r8d
0000000008df3882: 77cc                         ja       0x8df3850
0000000008df3884: 488d942488000000             lea      rdx, [rsp + 0x88]
0000000008df388c: c6410100                     mov      byte ptr [rcx + 1], 0
0000000008df3890: 4883f809                     cmp      rax, 9
0000000008df3894: 7227                         jb       0x8df38bd
0000000008df3896: 488d842489000000             lea      rax, [rsp + 0x89]
0000000008df389e: 6690                         nop
0000000008df38a0: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008df38a3: 0fb678ff                     movzx    edi, byte ptr [rax - 1]
0000000008df38a7: 408839                       mov      byte ptr [rcx], dil
0000000008df38aa: 48ffc9                       dec      rcx
0000000008df38ad: 408870ff                     mov      byte ptr [rax - 1], sil
0000000008df38b1: 488d7001                     lea      rsi, [rax + 1]
0000000008df38b5: 4839c8                       cmp      rax, rcx
0000000008df38b8: 4889f0                       mov      rax, rsi
0000000008df38bb: 72e3                         jb       0x8df38a0
0000000008df38bd: 4889942480000000             mov      qword ptr [rsp + 0x80], rdx
0000000008df38c5: 488d842480000000             lea      rax, [rsp + 0x80]
0000000008df38cd: 48890424                     mov      qword ptr [rsp], rax
0000000008df38d1: 0f57c0                       xorps    xmm0, xmm0
0000000008df38d4: 0f11442408                   movups   xmmword ptr [rsp + 8], xmm0
0000000008df38d9: 0f11442418                   movups   xmmword ptr [rsp + 0x18], xmm0
0000000008df38de: 0f11442428                   movups   xmmword ptr [rsp + 0x28], xmm0
0000000008df38e3: 0f11442438                   movups   xmmword ptr [rsp + 0x38], xmm0
0000000008df38e8: 0f11442448                   movups   xmmword ptr [rsp + 0x48], xmm0
0000000008df38ed: 0f11442458                   movups   xmmword ptr [rsp + 0x58], xmm0
0000000008df38f2: 0f11442468                   movups   xmmword ptr [rsp + 0x68], xmm0
0000000008df38f7: 48c744247800000000           mov      qword ptr [rsp + 0x78], 0
0000000008df3900: 488d35656716f8               lea      rsi, [rip - 0x7e9989b] ; 'mmpack client_version:%_'
0000000008df3907: 4c8dbc24d0000000             lea      r15, [rsp + 0xd0]
0000000008df390f: 4889e2                       mov      rdx, rsp
0000000008df3912: 4c89ff                       mov      rdi, r15
0000000008df3915: e8d6df3100                   call     0x91118f0
0000000008df391a: 4c89ff                       mov      rdi, r15
0000000008df391d: e80edd3100                   call     0x9111630
0000000008df3922: 41895e34                     mov      dword ptr [r14 + 0x34], ebx
0000000008df3926: 4881c460010000               add      rsp, 0x160
0000000008df392d: 5b                           pop      rbx
0000000008df392e: 415e                         pop      r14
0000000008df3930: 415f                         pop      r15
0000000008df3932: c3                           ret
