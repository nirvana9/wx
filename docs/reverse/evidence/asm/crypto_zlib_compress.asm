0000000008b1cf50: b8ffffffff                   mov      eax, 0xffffffff
0000000008b1cf55: 4885ff                       test     rdi, rdi
0000000008b1cf58: 0f8408020000                 je       0x8b1d166
0000000008b1cf5e: 55                           push     rbp
0000000008b1cf5f: 4157                         push     r15
0000000008b1cf61: 4156                         push     r14
0000000008b1cf63: 4154                         push     r12
0000000008b1cf65: 53                           push     rbx
0000000008b1cf66: 4881ec70010000               sub      rsp, 0x170
0000000008b1cf6d: 4989f6                       mov      r14, rsi
0000000008b1cf70: 4885f6                       test     rsi, rsi
0000000008b1cf73: 0f84de010000                 je       0x8b1d157
0000000008b1cf79: 4889d3                       mov      rbx, rdx
0000000008b1cf7c: 4885d2                       test     rdx, rdx
0000000008b1cf7f: 0f84d2010000                 je       0x8b1d157
0000000008b1cf85: 4989ff                       mov      r15, rdi
0000000008b1cf88: 4989cc                       mov      r12, rcx
0000000008b1cf8b: 4c89f7                       mov      rdi, r14
0000000008b1cf8e: e83d2db501                   call     0xa66fcd0
0000000008b1cf93: 4889442408                   mov      qword ptr [rsp + 8], rax
0000000008b1cf98: 488d7801                     lea      rdi, [rax + 1]
0000000008b1cf9c: e8bf12b501                   call     0xa66e260
0000000008b1cfa1: 4889c7                       mov      rdi, rax
0000000008b1cfa4: 488903                       mov      qword ptr [rbx], rax
0000000008b1cfa7: b8ffffffff                   mov      eax, 0xffffffff
0000000008b1cfac: 4885ff                       test     rdi, rdi
0000000008b1cfaf: 0f84a2010000                 je       0x8b1d157
0000000008b1cfb5: 488d742408                   lea      rsi, [rsp + 8]
0000000008b1cfba: 4c89fa                       mov      rdx, r15
0000000008b1cfbd: 4c89f1                       mov      rcx, r14
0000000008b1cfc0: e81b2db501                   call     0xa66fce0
0000000008b1cfc5: 85c0                         test     eax, eax
0000000008b1cfc7: 0f847f010000                 je       0x8b1d14c
0000000008b1cfcd: 89c5                         mov      ebp, eax
0000000008b1cfcf: bf04000000                   mov      edi, 4
0000000008b1cfd4: e8b79c5f00                   call     0x9116c90
0000000008b1cfd9: 85c0                         test     eax, eax
0000000008b1cfdb: 0f8450010000                 je       0x8b1d131
0000000008b1cfe1: 488d152a8533f8               lea      rdx, [rip - 0x7cc7ad6] ; 'mars::cryptowrapper'
0000000008b1cfe8: 488d0d3f7d56f8               lea      rcx, [rip - 0x7a982c1] ; 'zlib_util.cpp'
0000000008b1cfef: 4c8d05960f25f8               lea      r8, [rip - 0x7daf06a] ; 'ZLibCompress'
0000000008b1cff6: 488dbc24e0000000             lea      rdi, [rsp + 0xe0]
0000000008b1cffe: be04000000                   mov      esi, 4
0000000008b1d003: 41b91a000000                 mov      r9d, 0x1a
0000000008b1d009: 6a00                         push     0
0000000008b1d00b: 6a00                         push     0
0000000008b1d00d: e88e455f00                   call     0x91115a0
0000000008b1d012: 4883c410                     add      rsp, 0x10
0000000008b1d016: 48c744241000000000           mov      qword ptr [rsp + 0x10], 0
0000000008b1d01f: b808000000                   mov      eax, 8
0000000008b1d024: 488d0de12341f8               lea      rcx, [rip - 0x7bedc1f] ; 'ZYXWVUTSRQPONMLKJIHGFEDCBA9876543210123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'
0000000008b1d02b: 89ea                         mov      edx, ebp
0000000008b1d02d: 0f1f00                       nop      dword ptr [rax]
0000000008b1d030: 4863f2                       movsxd   rsi, edx
0000000008b1d033: 4869d667666666               imul     rdx, rsi, 0x66666667
0000000008b1d03a: 4889d7                       mov      rdi, rdx
0000000008b1d03d: 48c1ef3f                     shr      rdi, 0x3f
0000000008b1d041: 48c1fa22                     sar      rdx, 0x22
0000000008b1d045: 01fa                         add      edx, edi
0000000008b1d047: 8d3c12                       lea      edi, [rdx + rdx]
0000000008b1d04a: 8d3cbf                       lea      edi, [rdi + rdi*4]
0000000008b1d04d: 4189f0                       mov      r8d, esi
0000000008b1d050: 4129f8                       sub      r8d, edi
0000000008b1d053: 4963f8                       movsxd   rdi, r8d
0000000008b1d056: 0fb67c0f23                   movzx    edi, byte ptr [rdi + rcx + 0x23]
0000000008b1d05b: 40887c0410                   mov      byte ptr [rsp + rax + 0x10], dil
0000000008b1d060: 48ffc0                       inc      rax
0000000008b1d063: 83c609                       add      esi, 9
0000000008b1d066: 83fe12                       cmp      esi, 0x12
0000000008b1d069: 77c5                         ja       0x8b1d030
0000000008b1d06b: 85ed                         test     ebp, ebp
0000000008b1d06d: 7908                         jns      0x8b1d077
0000000008b1d06f: c64404102d                   mov      byte ptr [rsp + rax + 0x10], 0x2d
0000000008b1d074: 48ffc0                       inc      rax
0000000008b1d077: 488d4c2418                   lea      rcx, [rsp + 0x18]
0000000008b1d07c: c644041000                   mov      byte ptr [rsp + rax + 0x10], 0
0000000008b1d081: 4883f80a                     cmp      rax, 0xa
0000000008b1d085: 7c36                         jl       0x8b1d0bd
0000000008b1d087: 4801e0                       add      rax, rsp
0000000008b1d08a: 4883c010                     add      rax, 0x10
0000000008b1d08e: 48ffc8                       dec      rax
0000000008b1d091: 488d542419                   lea      rdx, [rsp + 0x19]
0000000008b1d096: 662e0f1f840000000000         nop      word ptr cs:[rax + rax]
0000000008b1d0a0: 0fb630                       movzx    esi, byte ptr [rax]
0000000008b1d0a3: 0fb67aff                     movzx    edi, byte ptr [rdx - 1]
0000000008b1d0a7: 408838                       mov      byte ptr [rax], dil
0000000008b1d0aa: 408872ff                     mov      byte ptr [rdx - 1], sil
0000000008b1d0ae: 48ffc8                       dec      rax
0000000008b1d0b1: 488d7201                     lea      rsi, [rdx + 1]
0000000008b1d0b5: 4839c2                       cmp      rdx, rax
0000000008b1d0b8: 4889f2                       mov      rdx, rsi
0000000008b1d0bb: 72e3                         jb       0x8b1d0a0
0000000008b1d0bd: 48894c2410                   mov      qword ptr [rsp + 0x10], rcx
0000000008b1d0c2: 488d442410                   lea      rax, [rsp + 0x10]
0000000008b1d0c7: 4889442460                   mov      qword ptr [rsp + 0x60], rax
0000000008b1d0cc: 0f57c0                       xorps    xmm0, xmm0
0000000008b1d0cf: 0f11442468                   movups   xmmword ptr [rsp + 0x68], xmm0
0000000008b1d0d4: 0f11442478                   movups   xmmword ptr [rsp + 0x78], xmm0
0000000008b1d0d9: 0f11842488000000             movups   xmmword ptr [rsp + 0x88], xmm0
0000000008b1d0e1: 0f11842498000000             movups   xmmword ptr [rsp + 0x98], xmm0
0000000008b1d0e9: 0f118424a8000000             movups   xmmword ptr [rsp + 0xa8], xmm0
0000000008b1d0f1: 0f118424b8000000             movups   xmmword ptr [rsp + 0xb8], xmm0
0000000008b1d0f9: 0f118424c8000000             movups   xmmword ptr [rsp + 0xc8], xmm0
0000000008b1d101: 48c78424d800000000000000     mov      qword ptr [rsp + 0xd8], 0
0000000008b1d10d: 488d358d834bf8               lea      rsi, [rip - 0x7b47c73] ; 'compreses fail. ret=%_'
0000000008b1d114: 4c8db424e0000000             lea      r14, [rsp + 0xe0]
0000000008b1d11c: 488d542460                   lea      rdx, [rsp + 0x60]
0000000008b1d121: 4c89f7                       mov      rdi, r14
0000000008b1d124: e8c7475f00                   call     0x91118f0
0000000008b1d129: 4c89f7                       mov      rdi, r14
0000000008b1d12c: e8ff445f00                   call     0x9111630
0000000008b1d131: 488b3b                       mov      rdi, qword ptr [rbx]
0000000008b1d134: 4885ff                       test     rdi, rdi
0000000008b1d137: 740c                         je       0x8b1d145
0000000008b1d139: e83211b501                   call     0xa66e270
0000000008b1d13e: 48c70300000000               mov      qword ptr [rbx], 0
0000000008b1d145: b8ffffffff                   mov      eax, 0xffffffff
0000000008b1d14a: eb0b                         jmp      0x8b1d157
0000000008b1d14c: 488b442408                   mov      rax, qword ptr [rsp + 8]
0000000008b1d151: 49890424                     mov      qword ptr [r12], rax
0000000008b1d155: 31c0                         xor      eax, eax
0000000008b1d157: 4881c470010000               add      rsp, 0x170
0000000008b1d15e: 5b                           pop      rbx
0000000008b1d15f: 415c                         pop      r12
0000000008b1d161: 415e                         pop      r14
0000000008b1d163: 415f                         pop      r15
0000000008b1d165: 5d                           pop      rbp
0000000008b1d166: c3                           ret
