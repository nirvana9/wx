00000000077dc9d0: 55                           push     rbp
00000000077dc9d1: 4157                         push     r15
00000000077dc9d3: 4156                         push     r14
00000000077dc9d5: 4155                         push     r13
00000000077dc9d7: 4154                         push     r12
00000000077dc9d9: 53                           push     rbx
00000000077dc9da: 4881ecb8020000               sub      rsp, 0x2b8
00000000077dc9e1: 4d89c6                       mov      r14, r8
00000000077dc9e4: 4989cf                       mov      r15, rcx
00000000077dc9e7: 48899424a8000000             mov      qword ptr [rsp + 0xa8], rdx
00000000077dc9ef: 4889fb                       mov      rbx, rdi
00000000077dc9f2: 418b00                       mov      eax, dword ptr [r8]
00000000077dc9f5: 8944240c                     mov      dword ptr [rsp + 0xc], eax
00000000077dc9f9: 498d4008                     lea      rax, [r8 + 8]
00000000077dc9fd: 4889442410                   mov      qword ptr [rsp + 0x10], rax
00000000077dca02: 4c8d642470                   lea      r12, [rsp + 0x70]
00000000077dca07: 488d2dfe2975f9               lea      rbp, [rip - 0x68ad602] ; 'ZYXWVUTSRQPONMLKJIHGFEDCBA9876543210123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'
00000000077dca0e: 48898c24a0000000             mov      qword ptr [rsp + 0xa0], rcx
00000000077dca16: eb16                         jmp      0x77dca2e
00000000077dca18: 0f1f840000000000             nop      dword ptr [rax + rax]
00000000077dca20: 4584ed                       test     r13b, r13b
00000000077dca23: 4c8d642470                   lea      r12, [rsp + 0x70]
00000000077dca28: 0f846b060000                 je       0x77dd099
00000000077dca2e: 0f28056bcc57f9               movaps   xmm0, xmmword ptr [rip - 0x6a83395]
00000000077dca35: 0f29842490000000             movaps   xmmword ptr [rsp + 0x90], xmm0
00000000077dca3d: 0f29842480000000             movaps   xmmword ptr [rsp + 0x80], xmm0
00000000077dca45: 0f29442470                   movaps   xmmword ptr [rsp + 0x70], xmm0
00000000077dca4a: 4c89e7                       mov      rdi, r12
00000000077dca4d: 31f6                         xor      esi, esi
00000000077dca4f: 31d2                         xor      edx, edx
00000000077dca51: e8ca850100                   call     0x77f5020
00000000077dca56: c744247092ffffff             mov      dword ptr [rsp + 0x70], 0xffffff92
00000000077dca5e: 837c247400                   cmp      dword ptr [rsp + 0x74], 0
00000000077dca63: 7508                         jne      0x77dca6d
00000000077dca65: c7442474aafbffff             mov      dword ptr [rsp + 0x74], 0xfffffbaa
00000000077dca6d: 0f28052ccc57f9               movaps   xmm0, xmmword ptr [rip - 0x6a833d4]
00000000077dca74: 0f114320                     movups   xmmword ptr [rbx + 0x20], xmm0
00000000077dca78: 0f114310                     movups   xmmword ptr [rbx + 0x10], xmm0
00000000077dca7c: 0f1103                       movups   xmmword ptr [rbx], xmm0
00000000077dca7f: 458b4e04                     mov      r9d, dword ptr [r14 + 4]
00000000077dca83: 4883ec08                     sub      rsp, 8
00000000077dca87: 488dbc24e8010000             lea      rdi, [rsp + 0x1e8]
00000000077dca8f: 488d35929e71f9               lea      rsi, [rip - 0x68e616e] ; 'CoCgiSendRequest'
00000000077dca96: 488d15633283f9               lea      rdx, [rip - 0x67ccd9d] ; 'mm_cgi.h'
00000000077dca9d: b93e010000                   mov      ecx, 0x13e
00000000077dcaa2: 4531c0                       xor      r8d, r8d
00000000077dcaa5: 4154                         push     r12
00000000077dcaa7: e844860100                   call     0x77f50f0
00000000077dcaac: 4883c410                     add      rsp, 0x10
00000000077dcab0: 4c8da424b0000000             lea      r12, [rsp + 0xb0]
00000000077dcab8: 4c89e7                       mov      rdi, r12
00000000077dcabb: 488bb424a8000000             mov      rsi, qword ptr [rsp + 0xa8]
00000000077dcac3: e848275000                   call     0x7cdf210
00000000077dcac8: 41f60701                     test     byte ptr [r15], 1
00000000077dcacc: 7522                         jne      0x77dcaf0
00000000077dcace: 498b4710                     mov      rax, qword ptr [r15 + 0x10]
00000000077dcad2: 488d8c24d0000000             lea      rcx, [rsp + 0xd0]
00000000077dcada: 48894110                     mov      qword ptr [rcx + 0x10], rax
00000000077dcade: 410f1007                     movups   xmm0, xmmword ptr [r15]
00000000077dcae2: 0f1101                       movups   xmmword ptr [rcx], xmm0
00000000077dcae5: eb1e                         jmp      0x77dcb05
00000000077dcae7: 660f1f840000000000           nop      word ptr [rax + rax]
00000000077dcaf0: 498b5708                     mov      rdx, qword ptr [r15 + 8]
00000000077dcaf4: 498b7710                     mov      rsi, qword ptr [r15 + 0x10]
00000000077dcaf8: 488dbc24d0000000             lea      rdi, [rsp + 0xd0]
00000000077dcb00: e89bfbd2fc                   call     0x450c6a0
00000000077dcb05: 498b06                       mov      rax, qword ptr [r14]
00000000077dcb08: 48898424e8000000             mov      qword ptr [rsp + 0xe8], rax
00000000077dcb10: 41f6460801                   test     byte ptr [r14 + 8], 1
00000000077dcb15: 7529                         jne      0x77dcb40
00000000077dcb17: 488b542410                   mov      rdx, qword ptr [rsp + 0x10]
00000000077dcb1c: 488b4210                     mov      rax, qword ptr [rdx + 0x10]
00000000077dcb20: 488d8c24f0000000             lea      rcx, [rsp + 0xf0]
00000000077dcb28: 48894110                     mov      qword ptr [rcx + 0x10], rax
00000000077dcb2c: 0f1002                       movups   xmm0, xmmword ptr [rdx]
00000000077dcb2f: 0f1101                       movups   xmmword ptr [rcx], xmm0
00000000077dcb32: eb21                         jmp      0x77dcb55
00000000077dcb34: 6666662e0f1f840000000000     nop      word ptr cs:[rax + rax]
00000000077dcb40: 498b5610                     mov      rdx, qword ptr [r14 + 0x10]
00000000077dcb44: 498b7618                     mov      rsi, qword ptr [r14 + 0x18]
00000000077dcb48: 488dbc24f0000000             lea      rdi, [rsp + 0xf0]
00000000077dcb50: e84bfbd2fc                   call     0x450c6a0
00000000077dcb55: 498b4620                     mov      rax, qword ptr [r14 + 0x20]
00000000077dcb59: 4889842408010000             mov      qword ptr [rsp + 0x108], rax
00000000077dcb61: 4889df                       mov      rdi, rbx
00000000077dcb64: 488db424e0010000             lea      rsi, [rsp + 0x1e0]
00000000077dcb6c: 4c89e2                       mov      rdx, r12
00000000077dcb6f: e88cec0100                   call     0x77fb800
00000000077dcb74: f68424f000000001             test     byte ptr [rsp + 0xf0], 1
00000000077dcb7c: 740d                         je       0x77dcb8b
00000000077dcb7e: 488bbc2400010000             mov      rdi, qword ptr [rsp + 0x100]
00000000077dcb86: e8b5d5d2fc                   call     0x450a140
00000000077dcb8b: f68424d000000001             test     byte ptr [rsp + 0xd0], 1
00000000077dcb93: 740d                         je       0x77dcba2
00000000077dcb95: 488bbc24e0000000             mov      rdi, qword ptr [rsp + 0xe0]
00000000077dcb9d: e89ed5d2fc                   call     0x450a140
00000000077dcba2: 4c89e7                       mov      rdi, r12
00000000077dcba5: e8f6275000                   call     0x7cdf3a0
00000000077dcbaa: 488bbc2428020000             mov      rdi, qword ptr [rsp + 0x228]
00000000077dcbb2: 4885ff                       test     rdi, rdi
00000000077dcbb5: 7412                         je       0x77dcbc9
00000000077dcbb7: 488b07                       mov      rax, qword ptr [rdi]
00000000077dcbba: ff5008                       call     qword ptr [rax + 8]
00000000077dcbbd: 48c784242802000000000000     mov      qword ptr [rsp + 0x228], 0
00000000077dcbc9: f68424e801000001             test     byte ptr [rsp + 0x1e8], 1
00000000077dcbd1: 740d                         je       0x77dcbe0
00000000077dcbd3: 488bbc24f8010000             mov      rdi, qword ptr [rsp + 0x1f8]
00000000077dcbdb: e860d5d2fc                   call     0x450a140
00000000077dcbe0: 48b8aaaaaaaaaaaaaaaa         movabs   rax, 0xaaaaaaaaaaaaaaaa
00000000077dcbea: 4889442460                   mov      qword ptr [rsp + 0x60], rax
00000000077dcbef: 0f28054a4557f9               movaps   xmm0, xmmword ptr [rip - 0x6a8bab6]
00000000077dcbf6: 0f29442430                   movaps   xmmword ptr [rsp + 0x30], xmm0
00000000077dcbfb: 48c7442440fb020000           mov      qword ptr [rsp + 0x40], 0x2fb
00000000077dcc04: bf28000000                   mov      edi, 0x28
00000000077dcc09: e89211e902                   call     0xa66dda0
00000000077dcc0e: 4889442458                   mov      qword ptr [rsp + 0x58], rax
00000000077dcc13: 48c744244829000000           mov      qword ptr [rsp + 0x48], 0x29
00000000077dcc1c: 48c744245021000000           mov      qword ptr [rsp + 0x50], 0x21
00000000077dcc25: 0f1005559f5ff9               movups   xmm0, xmmword ptr [rip - 0x6a060ab] ; 'g-bin/secautoauth'
00000000077dcc2c: 0f114010                     movups   xmmword ptr [rax + 0x10], xmm0
00000000077dcc30: 0f10053a9f5ff9               movups   xmm0, xmmword ptr [rip - 0x6a060c6] ; '/cgi-bin/micromsg-bin/secautoauth'
00000000077dcc37: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077dcc3a: 66c740206800                 mov      word ptr [rax + 0x20], 0x68
00000000077dcc40: c644246001                   mov      byte ptr [rsp + 0x60], 1
00000000077dcc45: 410fb64608                   movzx    eax, byte ptr [r14 + 8]
00000000077dcc4a: a801                         test     al, 1
00000000077dcc4c: 7412                         je       0x77dcc60
00000000077dcc4e: 498b4610                     mov      rax, qword ptr [r14 + 0x10]
00000000077dcc52: 4885c0                       test     rax, rax
00000000077dcc55: 7510                         jne      0x77dcc67
00000000077dcc57: eb1d                         jmp      0x77dcc76
00000000077dcc59: 0f1f8000000000               nop      dword ptr [rax]
00000000077dcc60: d1e8                         shr      eax, 1
00000000077dcc62: 4885c0                       test     rax, rax
00000000077dcc65: 740f                         je       0x77dcc76
00000000077dcc67: 488d7c2448                   lea      rdi, [rsp + 0x48]
00000000077dcc6c: 488b742410                   mov      rsi, qword ptr [rsp + 0x10]
00000000077dcc71: e83a11d3fc                   call     0x450ddb0
00000000077dcc76: 458b2e                       mov      r13d, dword ptr [r14]
00000000077dcc79: 4589ec                       mov      r12d, r13d
00000000077dcc7c: 8b7c240c                     mov      edi, dword ptr [rsp + 0xc]
00000000077dcc80: 4129fc                       sub      r12d, edi
00000000077dcc83: 8b03                         mov      eax, dword ptr [rbx]
00000000077dcc85: 8b5304                       mov      edx, dword ptr [rbx + 4]
00000000077dcc88: 31f6                         xor      esi, esi
00000000077dcc8a: 89c1                         mov      ecx, eax
00000000077dcc8c: 09d1                         or       ecx, edx
00000000077dcc8e: 0f840c030000                 je       0x77dcfa0
00000000077dcc94: 488b4b20                     mov      rcx, qword ptr [rbx + 0x20]
00000000077dcc98: 488b4908                     mov      rcx, qword ptr [rcx + 8]
00000000077dcc9c: 4885c9                       test     rcx, rcx
00000000077dcc9f: 750e                         jne      0x77dccaf
00000000077dcca1: 488d0d48f15103               lea      rcx, [rip + 0x351f148]
00000000077dcca8: 488b09                       mov      rcx, qword ptr [rcx]
00000000077dccab: 488b4908                     mov      rcx, qword ptr [rcx + 8]
00000000077dccaf: 8b4910                       mov      ecx, dword ptr [rcx + 0x10]
00000000077dccb2: 488d7c2448                   lea      rdi, [rsp + 0x48]
00000000077dccb7: 89c6                         mov      esi, eax
00000000077dccb9: 4589e0                       mov      r8d, r12d
00000000077dccbc: e84fd92000                   call     0x79ea610
00000000077dccc1: 8b33                         mov      esi, dword ptr [rbx]
00000000077dccc3: 85f6                         test     esi, esi
00000000077dccc5: 0f95c0                       setne    al
00000000077dccc8: 83fe92                       cmp      esi, -0x6e
00000000077dcccb: 0f95c1                       setne    cl
00000000077dccce: 84c8                         test     al, cl
00000000077dccd0: 0f85bc020000                 jne      0x77dcf92
00000000077dccd6: 8b7c240c                     mov      edi, dword ptr [rsp + 0xc]
00000000077dccda: 85ff                         test     edi, edi
00000000077dccdc: 0f84be020000                 je       0x77dcfa0
00000000077dcce2: bfe8030000                   mov      edi, 0x3e8
00000000077dcce7: 4489e1                       mov      ecx, r12d
00000000077dccea: d3e7                         shl      edi, cl
00000000077dccec: e8efb93002                   call     0x9ae86e0
00000000077dccf1: bf02000000                   mov      edi, 2
00000000077dccf6: e8959f9301                   call     0x9116c90
00000000077dccfb: 448b7c240c                   mov      r15d, dword ptr [rsp + 0xc]
00000000077dcd00: 41ffcf                       dec      r15d
00000000077dcd03: 41b501                       mov      r13b, 1
00000000077dcd06: 85c0                         test     eax, eax
00000000077dcd08: 44897c240c                   mov      dword ptr [rsp + 0xc], r15d
00000000077dcd0d: 0f8473020000                 je       0x77dcf86
00000000077dcd13: 488d7c2418                   lea      rdi, [rsp + 0x18]
00000000077dcd18: e8b35cbdff                   call     0x73b29d0
00000000077dcd1d: 4c8da424b0000000             lea      r12, [rsp + 0xb0]
00000000077dcd25: f644241801                   test     byte ptr [rsp + 0x18], 1
00000000077dcd2a: 488d542419                   lea      rdx, [rsp + 0x19]
00000000077dcd2f: 7405                         je       0x77dcd36
00000000077dcd31: 488b542428                   mov      rdx, qword ptr [rsp + 0x28]
00000000077dcd36: 4c89e7                       mov      rdi, r12
00000000077dcd39: be02000000                   mov      esi, 2
00000000077dcd3e: 488d0d955d6bf9               lea      rcx, [rip - 0x694a26b]
00000000077dcd45: 4c8d05aa5a65f9               lea      r8, [rip - 0x69aa556]
00000000077dcd4c: 41b950010000                 mov      r9d, 0x150
00000000077dcd52: 6a00                         push     0
00000000077dcd54: 6a00                         push     0
00000000077dcd56: e845489301                   call     0x91115a0
00000000077dcd5b: 4883c410                     add      rsp, 0x10
00000000077dcd5f: f644244801                   test     byte ptr [rsp + 0x48], 1
00000000077dcd64: 488d442449                   lea      rax, [rsp + 0x49]
00000000077dcd69: 7405                         je       0x77dcd70
00000000077dcd6b: 488b442458                   mov      rax, qword ptr [rsp + 0x58]
00000000077dcd70: 4889842468020000             mov      qword ptr [rsp + 0x268], rax
00000000077dcd78: c684247002000000             mov      byte ptr [rsp + 0x270], 0
00000000077dcd80: 8b0b                         mov      ecx, dword ptr [rbx]
00000000077dcd82: 48c784249001000000000000     mov      qword ptr [rsp + 0x190], 0
00000000077dcd8e: b808000000                   mov      eax, 8
00000000077dcd93: 89ca                         mov      edx, ecx
00000000077dcd95: 66662e0f1f840000000000       nop      word ptr cs:[rax + rax]
00000000077dcda0: 4863f2                       movsxd   rsi, edx
00000000077dcda3: 4869d667666666               imul     rdx, rsi, 0x66666667
00000000077dcdaa: 4889d7                       mov      rdi, rdx
00000000077dcdad: 48c1ef3f                     shr      rdi, 0x3f
00000000077dcdb1: 48c1fa22                     sar      rdx, 0x22
00000000077dcdb5: 01fa                         add      edx, edi
00000000077dcdb7: 8d3c12                       lea      edi, [rdx + rdx]
00000000077dcdba: 8d3cbf                       lea      edi, [rdi + rdi*4]
00000000077dcdbd: 4189f0                       mov      r8d, esi
00000000077dcdc0: 4129f8                       sub      r8d, edi
00000000077dcdc3: 4963f8                       movsxd   rdi, r8d
00000000077dcdc6: 0fb67c2f23                   movzx    edi, byte ptr [rdi + rbp + 0x23]
00000000077dcdcb: 4088bc0490010000             mov      byte ptr [rsp + rax + 0x190], dil
00000000077dcdd3: 48ffc0                       inc      rax
00000000077dcdd6: 83c609                       add      esi, 9
00000000077dcdd9: 83fe12                       cmp      esi, 0x12
00000000077dcddc: 77c2                         ja       0x77dcda0
00000000077dcdde: 85c9                         test     ecx, ecx
00000000077dcde0: 790b                         jns      0x77dcded
00000000077dcde2: c68404900100002d             mov      byte ptr [rsp + rax + 0x190], 0x2d
00000000077dcdea: 48ffc0                       inc      rax
00000000077dcded: c684049001000000             mov      byte ptr [rsp + rax + 0x190], 0
00000000077dcdf5: 4883f80a                     cmp      rax, 0xa
00000000077dcdf9: 7c31                         jl       0x77dce2c
00000000077dcdfb: 4801e0                       add      rax, rsp
00000000077dcdfe: 480590010000                 add      rax, 0x190
00000000077dce04: 48ffc8                       dec      rax
00000000077dce07: 488d8c2499010000             lea      rcx, [rsp + 0x199]
00000000077dce0f: 90                           nop
00000000077dce10: 0fb610                       movzx    edx, byte ptr [rax]
00000000077dce13: 0fb671ff                     movzx    esi, byte ptr [rcx - 1]
00000000077dce17: 408830                       mov      byte ptr [rax], sil
00000000077dce1a: 8851ff                       mov      byte ptr [rcx - 1], dl
00000000077dce1d: 48ffc8                       dec      rax
00000000077dce20: 488d5101                     lea      rdx, [rcx + 1]
00000000077dce24: 4839c1                       cmp      rcx, rax
00000000077dce27: 4889d1                       mov      rcx, rdx
00000000077dce2a: 72e4                         jb       0x77dce10
00000000077dce2c: 488d842498010000             lea      rax, [rsp + 0x198]
00000000077dce34: 4889842490010000             mov      qword ptr [rsp + 0x190], rax
00000000077dce3c: 8b4b04                       mov      ecx, dword ptr [rbx + 4]
00000000077dce3f: 48c784244001000000000000     mov      qword ptr [rsp + 0x140], 0
00000000077dce4b: b808000000                   mov      eax, 8
00000000077dce50: 89ca                         mov      edx, ecx
00000000077dce52: 66666666662e0f1f840000000000 nop      word ptr cs:[rax + rax]
00000000077dce60: 4863f2                       movsxd   rsi, edx
00000000077dce63: 4869d667666666               imul     rdx, rsi, 0x66666667
00000000077dce6a: 4889d7                       mov      rdi, rdx
00000000077dce6d: 48c1ef3f                     shr      rdi, 0x3f
00000000077dce71: 48c1fa22                     sar      rdx, 0x22
00000000077dce75: 01fa                         add      edx, edi
00000000077dce77: 8d3c12                       lea      edi, [rdx + rdx]
00000000077dce7a: 8d3cbf                       lea      edi, [rdi + rdi*4]
00000000077dce7d: 4189f0                       mov      r8d, esi
00000000077dce80: 4129f8                       sub      r8d, edi
00000000077dce83: 4963f8                       movsxd   rdi, r8d
00000000077dce86: 0fb67c2f23                   movzx    edi, byte ptr [rdi + rbp + 0x23]
00000000077dce8b: 4088bc0440010000             mov      byte ptr [rsp + rax + 0x140], dil
00000000077dce93: 48ffc0                       inc      rax
00000000077dce96: 83c609                       add      esi, 9
00000000077dce99: 83fe12                       cmp      esi, 0x12
00000000077dce9c: 77c2                         ja       0x77dce60
00000000077dce9e: 85c9                         test     ecx, ecx
00000000077dcea0: 790b                         jns      0x77dcead
00000000077dcea2: c68404400100002d             mov      byte ptr [rsp + rax + 0x140], 0x2d
00000000077dceaa: 48ffc0                       inc      rax
00000000077dcead: c684044001000000             mov      byte ptr [rsp + rax + 0x140], 0
00000000077dceb5: 4883f80a                     cmp      rax, 0xa
00000000077dceb9: 7c31                         jl       0x77dceec
00000000077dcebb: 4801e0                       add      rax, rsp
00000000077dcebe: 480540010000                 add      rax, 0x140
00000000077dcec4: 48ffc8                       dec      rax
00000000077dcec7: 488d8c2449010000             lea      rcx, [rsp + 0x149]
00000000077dcecf: 90                           nop
00000000077dced0: 0fb610                       movzx    edx, byte ptr [rax]
00000000077dced3: 0fb671ff                     movzx    esi, byte ptr [rcx - 1]
00000000077dced7: 408830                       mov      byte ptr [rax], sil
00000000077dceda: 8851ff                       mov      byte ptr [rcx - 1], dl
00000000077dcedd: 48ffc8                       dec      rax
00000000077dcee0: 488d5101                     lea      rdx, [rcx + 1]
00000000077dcee4: 4839c1                       cmp      rcx, rax
00000000077dcee7: 4889d1                       mov      rcx, rdx
00000000077dceea: 72e4                         jb       0x77dced0
00000000077dceec: 488d842448010000             lea      rax, [rsp + 0x148]
00000000077dcef4: 4889842440010000             mov      qword ptr [rsp + 0x140], rax
00000000077dcefc: 488d842468020000             lea      rax, [rsp + 0x268]
00000000077dcf04: 48898424e0010000             mov      qword ptr [rsp + 0x1e0], rax
00000000077dcf0c: 488d842490010000             lea      rax, [rsp + 0x190]
00000000077dcf14: 48898424e8010000             mov      qword ptr [rsp + 0x1e8], rax
00000000077dcf1c: 488d842440010000             lea      rax, [rsp + 0x140]
00000000077dcf24: 48898424f0010000             mov      qword ptr [rsp + 0x1f0], rax
00000000077dcf2c: 488d8424f8010000             lea      rax, [rsp + 0x1f8]
00000000077dcf34: 0f57c0                       xorps    xmm0, xmm0
00000000077dcf37: 0f114050                     movups   xmmword ptr [rax + 0x50], xmm0
00000000077dcf3b: 0f114040                     movups   xmmword ptr [rax + 0x40], xmm0
00000000077dcf3f: 0f114030                     movups   xmmword ptr [rax + 0x30], xmm0
00000000077dcf43: 0f114020                     movups   xmmword ptr [rax + 0x20], xmm0
00000000077dcf47: 0f114010                     movups   xmmword ptr [rax + 0x10], xmm0
00000000077dcf4b: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077dcf4e: 48c7406000000000             mov      qword ptr [rax + 0x60], 0
00000000077dcf56: 4c89e7                       mov      rdi, r12
00000000077dcf59: 488d35ea2c7df9               lea      rsi, [rip - 0x682d316]
00000000077dcf60: 488d9424e0010000             lea      rdx, [rsp + 0x1e0]
00000000077dcf68: e883499301                   call     0x91118f0
00000000077dcf6d: 4c89e7                       mov      rdi, r12
00000000077dcf70: e8bb469301                   call     0x9111630
00000000077dcf75: f644241801                   test     byte ptr [rsp + 0x18], 1
00000000077dcf7a: 740a                         je       0x77dcf86
00000000077dcf7c: 488b7c2428                   mov      rdi, qword ptr [rsp + 0x28]
00000000077dcf81: e8bad1d2fc                   call     0x450a140
00000000077dcf86: 4531ff                       xor      r15d, r15d
00000000077dcf89: f644244801                   test     byte ptr [rsp + 0x48], 1
00000000077dcf8e: 7550                         jne      0x77dcfe0
00000000077dcf90: eb58                         jmp      0x77dcfea
00000000077dcf92: 8b7c240c                     mov      edi, dword ptr [rsp + 0xc]
00000000077dcf96: 662e0f1f840000000000         nop      word ptr cs:[rax + rax]
00000000077dcfa0: 41b701                       mov      r15b, 1
00000000077dcfa3: 4139fd                       cmp      r13d, edi
00000000077dcfa6: 742e                         je       0x77dcfd6
00000000077dcfa8: 488b4320                     mov      rax, qword ptr [rbx + 0x20]
00000000077dcfac: 488b4008                     mov      rax, qword ptr [rax + 8]
00000000077dcfb0: 4885c0                       test     rax, rax
00000000077dcfb3: 750e                         jne      0x77dcfc3
00000000077dcfb5: 488d0534ee5103               lea      rax, [rip + 0x351ee34]
00000000077dcfbc: 488b00                       mov      rax, qword ptr [rax]
00000000077dcfbf: 488b4008                     mov      rax, qword ptr [rax + 8]
00000000077dcfc3: 8b5304                       mov      edx, dword ptr [rbx + 4]
00000000077dcfc6: 8b4810                       mov      ecx, dword ptr [rax + 0x10]
00000000077dcfc9: 488d7c2448                   lea      rdi, [rsp + 0x48]
00000000077dcfce: 4589e0                       mov      r8d, r12d
00000000077dcfd1: e83ad62000                   call     0x79ea610
00000000077dcfd6: 4531ed                       xor      r13d, r13d
00000000077dcfd9: f644244801                   test     byte ptr [rsp + 0x48], 1
00000000077dcfde: 740a                         je       0x77dcfea
00000000077dcfe0: 488b7c2458                   mov      rdi, qword ptr [rsp + 0x58]
00000000077dcfe5: e856d1d2fc                   call     0x450a140
00000000077dcfea: 4584ff                       test     r15b, r15b
00000000077dcfed: 4c8bbc24a0000000             mov      r15, qword ptr [rsp + 0xa0]
00000000077dcff5: 752b                         jne      0x77dd022
00000000077dcff7: 4c8b6328                     mov      r12, qword ptr [rbx + 0x28]
00000000077dcffb: 4d85e4                       test     r12, r12
00000000077dcffe: 7413                         je       0x77dd013
00000000077dd000: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000077dd007: f0490fc1442408               lock xadd qword ptr [r12 + 8], rax
00000000077dd00e: 4885c0                       test     rax, rax
00000000077dd011: 746c                         je       0x77dd07f
00000000077dd013: f6430801                     test     byte ptr [rbx + 8], 1
00000000077dd017: 7409                         je       0x77dd022
00000000077dd019: 488b7b18                     mov      rdi, qword ptr [rbx + 0x18]
00000000077dd01d: e81ed1d2fc                   call     0x450a140
00000000077dd022: 4c8ba42498000000             mov      r12, qword ptr [rsp + 0x98]
00000000077dd02a: 4d85e4                       test     r12, r12
00000000077dd02d: 7413                         je       0x77dd042
00000000077dd02f: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000077dd036: f0490fc1442408               lock xadd qword ptr [r12 + 8], rax
00000000077dd03d: 4885c0                       test     rax, rax
00000000077dd040: 741e                         je       0x77dd060
00000000077dd042: f644247801                   test     byte ptr [rsp + 0x78], 1
00000000077dd047: 0f84d3f9ffff                 je       0x77dca20
00000000077dd04d: 488bbc2488000000             mov      rdi, qword ptr [rsp + 0x88]
00000000077dd055: e8e6d0d2fc                   call     0x450a140
00000000077dd05a: e9c1f9ffff                   jmp      0x77dca20
00000000077dd05f: 90                           nop
00000000077dd060: 498b0424                     mov      rax, qword ptr [r12]
00000000077dd064: 4c89e7                       mov      rdi, r12
00000000077dd067: ff5010                       call     qword ptr [rax + 0x10]
00000000077dd06a: 4c89e7                       mov      rdi, r12
00000000077dd06d: e85ea1d5fc                   call     0x45371d0
00000000077dd072: f644247801                   test     byte ptr [rsp + 0x78], 1
00000000077dd077: 0f84a3f9ffff                 je       0x77dca20
00000000077dd07d: ebce                         jmp      0x77dd04d
00000000077dd07f: 498b0424                     mov      rax, qword ptr [r12]
00000000077dd083: 4c89e7                       mov      rdi, r12
00000000077dd086: ff5010                       call     qword ptr [rax + 0x10]
00000000077dd089: 4c89e7                       mov      rdi, r12
00000000077dd08c: e83fa1d5fc                   call     0x45371d0
00000000077dd091: f6430801                     test     byte ptr [rbx + 8], 1
00000000077dd095: 7582                         jne      0x77dd019
00000000077dd097: eb89                         jmp      0x77dd022
00000000077dd099: 4889d8                       mov      rax, rbx
00000000077dd09c: 4881c4b8020000               add      rsp, 0x2b8
00000000077dd0a3: 5b                           pop      rbx
00000000077dd0a4: 415c                         pop      r12
00000000077dd0a6: 415d                         pop      r13
00000000077dd0a8: 415e                         pop      r14
00000000077dd0aa: 415f                         pop      r15
00000000077dd0ac: 5d                           pop      rbp
00000000077dd0ad: c3                           ret
00000000077dd0ae: 4989c6                       mov      r14, rax
00000000077dd0b1: 488dbc24b0000000             lea      rdi, [rsp + 0xb0]
00000000077dd0b9: e872459301                   call     0x9111630
00000000077dd0be: eb03                         jmp      0x77dd0c3
00000000077dd0c0: 4989c6                       mov      r14, rax
00000000077dd0c3: f644241801                   test     byte ptr [rsp + 0x18], 1
00000000077dd0c8: 746f                         je       0x77dd139
00000000077dd0ca: 488b7c2428                   mov      rdi, qword ptr [rsp + 0x28]
00000000077dd0cf: e86cd0d2fc                   call     0x450a140
00000000077dd0d4: eb63                         jmp      0x77dd139
00000000077dd0d6: eb5e                         jmp      0x77dd136
00000000077dd0d8: 4989c6                       mov      r14, rax
00000000077dd0db: f68424d000000001             test     byte ptr [rsp + 0xd0], 1
00000000077dd0e3: 7412                         je       0x77dd0f7
00000000077dd0e5: 488bbc24e0000000             mov      rdi, qword ptr [rsp + 0xe0]
00000000077dd0ed: e84ed0d2fc                   call     0x450a140
00000000077dd0f2: eb03                         jmp      0x77dd0f7
00000000077dd0f4: 4989c6                       mov      r14, rax
00000000077dd0f7: 488dbc24b0000000             lea      rdi, [rsp + 0xb0]
00000000077dd0ff: e89c225000                   call     0x7cdf3a0
00000000077dd104: eb1c                         jmp      0x77dd122
00000000077dd106: eb2e                         jmp      0x77dd136
00000000077dd108: 4989c6                       mov      r14, rax
00000000077dd10b: eb45                         jmp      0x77dd152
00000000077dd10d: 4989c6                       mov      r14, rax
00000000077dd110: eb10                         jmp      0x77dd122
00000000077dd112: 4989c6                       mov      r14, rax
00000000077dd115: 488dbc24b0000000             lea      rdi, [rsp + 0xb0]
00000000077dd11d: e80eed0100                   call     0x77fbe30
00000000077dd122: 488dbc24e0010000             lea      rdi, [rsp + 0x1e0]
00000000077dd12a: e881c586fe                   call     0x60496b0
00000000077dd12f: eb21                         jmp      0x77dd152
00000000077dd131: 4989c6                       mov      r14, rax
00000000077dd134: eb14                         jmp      0x77dd14a
00000000077dd136: 4989c6                       mov      r14, rax
00000000077dd139: f644244801                   test     byte ptr [rsp + 0x48], 1
00000000077dd13e: 740a                         je       0x77dd14a
00000000077dd140: 488b7c2458                   mov      rdi, qword ptr [rsp + 0x58]
00000000077dd145: e8f6cfd2fc                   call     0x450a140
00000000077dd14a: 4889df                       mov      rdi, rbx
00000000077dd14d: e8fe2affff                   call     0x77cfc50
00000000077dd152: 488d7c2470                   lea      rdi, [rsp + 0x70]
00000000077dd157: e8f42affff                   call     0x77cfc50
00000000077dd15c: 4c89f7                       mov      rdi, r14
00000000077dd15f: e8bcfcd0fc                   call     0x44ece20
