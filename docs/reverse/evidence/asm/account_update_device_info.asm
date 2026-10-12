0000000008df3620: 55                           push     rbp
0000000008df3621: 4157                         push     r15
0000000008df3623: 4156                         push     r14
0000000008df3625: 53                           push     rbx
0000000008df3626: 4881ecb8010000               sub      rsp, 0x1b8
0000000008df362d: 4889d3                       mov      rbx, rdx
0000000008df3630: 89f5                         mov      ebp, esi
0000000008df3632: 4989fe                       mov      r14, rdi
0000000008df3635: bf02000000                   mov      edi, 2
0000000008df363a: e851363200                   call     0x9116c90
0000000008df363f: 85c0                         test     eax, eax
0000000008df3641: 0f845e010000                 je       0x8df37a5
0000000008df3647: 488d15106a16f8               lea      rdx, [rip - 0x7e995f0] ; 'mars::account'
0000000008df364e: 488d0db71226f8               lea      rcx, [rip - 0x7d9ed49] ; 'account_core.cc'
0000000008df3655: 4c8d0526ca11f8               lea      r8, [rip - 0x7ee35da] ; 'UpdateDeviceInfo'
0000000008df365c: 488dbc2428010000             lea      rdi, [rsp + 0x128]
0000000008df3664: be02000000                   mov      esi, 2
0000000008df3669: 41b928000000                 mov      r9d, 0x28
0000000008df366f: 6a00                         push     0
0000000008df3671: 6a00                         push     0
0000000008df3673: e828df3100                   call     0x91115a0
0000000008df3678: 4883c410                     add      rsp, 0x10
0000000008df367c: 0fb7d5                       movzx    edx, bp
0000000008df367f: 48c784248800000000000000     mov      qword ptr [rsp + 0x88], 0
0000000008df368b: b907000000                   mov      ecx, 7
0000000008df3690: 488d84248f000000             lea      rax, [rsp + 0x8f]
0000000008df3698: becdcccccc                   mov      esi, 0xcccccccd
0000000008df369d: 488d3d68bd13f8               lea      rdi, [rip - 0x7ec4298] ; 'ZYXWVUTSRQPONMLKJIHGFEDCBA9876543210123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'
0000000008df36a4: 6666662e0f1f840000000000     nop      word ptr cs:[rax + rax]
0000000008df36b0: 4189d0                       mov      r8d, edx
0000000008df36b3: 4c0fafc6                     imul     r8, rsi
0000000008df36b7: 49c1e823                     shr      r8, 0x23
0000000008df36bb: 478d0c00                     lea      r9d, [r8 + r8]
0000000008df36bf: 478d0c89                     lea      r9d, [r9 + r9*4]
0000000008df36c3: 4189d2                       mov      r10d, edx
0000000008df36c6: 4529ca                       sub      r10d, r9d
0000000008df36c9: 4d63ca                       movsxd   r9, r10d
0000000008df36cc: 450fb64c3923                 movzx    r9d, byte ptr [r9 + rdi + 0x23]
0000000008df36d2: 44884801                     mov      byte ptr [rax + 1], r9b
0000000008df36d6: 48ffc0                       inc      rax
0000000008df36d9: 48ffc1                       inc      rcx
0000000008df36dc: 83fa09                       cmp      edx, 9
0000000008df36df: 4489c2                       mov      edx, r8d
0000000008df36e2: 77cc                         ja       0x8df36b0
0000000008df36e4: 488d942490000000             lea      rdx, [rsp + 0x90]
0000000008df36ec: c6400100                     mov      byte ptr [rax + 1], 0
0000000008df36f0: 4883f909                     cmp      rcx, 9
0000000008df36f4: 7227                         jb       0x8df371d
0000000008df36f6: 488d8c2491000000             lea      rcx, [rsp + 0x91]
0000000008df36fe: 6690                         nop
0000000008df3700: 0fb630                       movzx    esi, byte ptr [rax]
0000000008df3703: 0fb679ff                     movzx    edi, byte ptr [rcx - 1]
0000000008df3707: 408838                       mov      byte ptr [rax], dil
0000000008df370a: 408871ff                     mov      byte ptr [rcx - 1], sil
0000000008df370e: 48ffc8                       dec      rax
0000000008df3711: 488d7101                     lea      rsi, [rcx + 1]
0000000008df3715: 4839c1                       cmp      rcx, rax
0000000008df3718: 4889f1                       mov      rcx, rsi
0000000008df371b: 72e3                         jb       0x8df3700
0000000008df371d: 4889942488000000             mov      qword ptr [rsp + 0x88], rdx
0000000008df3725: f60301                       test     byte ptr [rbx], 1
0000000008df3728: 7406                         je       0x8df3730
0000000008df372a: 488b4310                     mov      rax, qword ptr [rbx + 0x10]
0000000008df372e: eb04                         jmp      0x8df3734
0000000008df3730: 488d4301                     lea      rax, [rbx + 1]
0000000008df3734: 48898424d8000000             mov      qword ptr [rsp + 0xd8], rax
0000000008df373c: c68424e000000000             mov      byte ptr [rsp + 0xe0], 0
0000000008df3744: 488d842488000000             lea      rax, [rsp + 0x88]
0000000008df374c: 48890424                     mov      qword ptr [rsp], rax
0000000008df3750: 488d8424d8000000             lea      rax, [rsp + 0xd8]
0000000008df3758: 4889442408                   mov      qword ptr [rsp + 8], rax
0000000008df375d: 0f57c0                       xorps    xmm0, xmm0
0000000008df3760: 0f29442410                   movaps   xmmword ptr [rsp + 0x10], xmm0
0000000008df3765: 0f29442420                   movaps   xmmword ptr [rsp + 0x20], xmm0
0000000008df376a: 0f29442430                   movaps   xmmword ptr [rsp + 0x30], xmm0
0000000008df376f: 0f29442440                   movaps   xmmword ptr [rsp + 0x40], xmm0
0000000008df3774: 0f29442450                   movaps   xmmword ptr [rsp + 0x50], xmm0
0000000008df3779: 0f29442460                   movaps   xmmword ptr [rsp + 0x60], xmm0
0000000008df377e: 0f29442470                   movaps   xmmword ptr [rsp + 0x70], xmm0
0000000008df3783: 488d35f8fe20f8               lea      rsi, [rip - 0x7df0108] ; 'mmpack device_type:%_, device_id:%_'
0000000008df378a: 4c8dbc2428010000             lea      r15, [rsp + 0x128]
0000000008df3792: 4889e2                       mov      rdx, rsp
0000000008df3795: 4c89ff                       mov      rdi, r15
0000000008df3798: e853e13100                   call     0x91118f0
0000000008df379d: 4c89ff                       mov      rdi, r15
0000000008df37a0: e88bde3100                   call     0x9111630
0000000008df37a5: 6641896e30                   mov      word ptr [r14 + 0x30], bp
0000000008df37aa: 4983c618                     add      r14, 0x18
0000000008df37ae: 4c89f7                       mov      rdi, r14
0000000008df37b1: 4889de                       mov      rsi, rbx
0000000008df37b4: e8f7a571fb                   call     0x450ddb0
0000000008df37b9: 4881c4b8010000               add      rsp, 0x1b8
0000000008df37c0: 5b                           pop      rbx
0000000008df37c1: 415e                         pop      r14
0000000008df37c3: 415f                         pop      r15
0000000008df37c5: 5d                           pop      rbp
0000000008df37c6: c3                           ret
