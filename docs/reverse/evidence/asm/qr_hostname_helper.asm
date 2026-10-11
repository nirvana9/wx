0000000008716ee0: 4157                         push     r15
0000000008716ee2: 4156                         push     r14
0000000008716ee4: 4154                         push     r12
0000000008716ee6: 53                           push     rbx
0000000008716ee7: 4881ec08010000               sub      rsp, 0x108
0000000008716eee: 4889fb                       mov      rbx, rdi
0000000008716ef1: 0f2805a82764f8               movaps   xmm0, xmmword ptr [rip - 0x79bd858]
0000000008716ef8: 0f298424f0000000             movaps   xmmword ptr [rsp + 0xf0], xmm0
0000000008716f00: 0f298424e0000000             movaps   xmmword ptr [rsp + 0xe0], xmm0
0000000008716f08: 0f298424d0000000             movaps   xmmword ptr [rsp + 0xd0], xmm0
0000000008716f10: 0f298424c0000000             movaps   xmmword ptr [rsp + 0xc0], xmm0
0000000008716f18: 0f298424b0000000             movaps   xmmword ptr [rsp + 0xb0], xmm0
0000000008716f20: 0f298424a0000000             movaps   xmmword ptr [rsp + 0xa0], xmm0
0000000008716f28: 0f29842490000000             movaps   xmmword ptr [rsp + 0x90], xmm0
0000000008716f30: 0f29842480000000             movaps   xmmword ptr [rsp + 0x80], xmm0
0000000008716f38: 0f29442470                   movaps   xmmword ptr [rsp + 0x70], xmm0
0000000008716f3d: 0f29442460                   movaps   xmmword ptr [rsp + 0x60], xmm0
0000000008716f42: 0f29442450                   movaps   xmmword ptr [rsp + 0x50], xmm0
0000000008716f47: 0f29442440                   movaps   xmmword ptr [rsp + 0x40], xmm0
0000000008716f4c: 0f29442430                   movaps   xmmword ptr [rsp + 0x30], xmm0
0000000008716f51: 0f29442420                   movaps   xmmword ptr [rsp + 0x20], xmm0
0000000008716f56: 0f29442410                   movaps   xmmword ptr [rsp + 0x10], xmm0
0000000008716f5b: 0f290424                     movaps   xmmword ptr [rsp], xmm0
0000000008716f5f: 4889e7                       mov      rdi, rsp
0000000008716f62: be00010000                   mov      esi, 0x100
0000000008716f67: e8948ff501                   call     0xa66ff00
0000000008716f6c: 85c0                         test     eax, eax
0000000008716f6e: 7404                         je       0x8716f74
0000000008716f70: c6042400                     mov      byte ptr [rsp], 0
0000000008716f74: 4889e7                       mov      rdi, rsp
0000000008716f77: e8e471f501                   call     0xa66e160
0000000008716f7c: 4883f8f8                     cmp      rax, -8
0000000008716f80: 7374                         jae      0x8716ff6
0000000008716f82: 4989c6                       mov      r14, rax
0000000008716f85: 4883f817                     cmp      rax, 0x17
0000000008716f89: 7313                         jae      0x8716f9e
0000000008716f8b: 438d0436                     lea      eax, [r14 + r14]
0000000008716f8f: 8803                         mov      byte ptr [rbx], al
0000000008716f91: 4989df                       mov      r15, rbx
0000000008716f94: 49ffc7                       inc      r15
0000000008716f97: 4d85f6                       test     r14, r14
0000000008716f9a: 7535                         jne      0x8716fd1
0000000008716f9c: eb41                         jmp      0x8716fdf
0000000008716f9e: 4c89f0                       mov      rax, r14
0000000008716fa1: 4883c807                     or       rax, 7
0000000008716fa5: 488d4801                     lea      rcx, [rax + 1]
0000000008716fa9: 4883f817                     cmp      rax, 0x17
0000000008716fad: 41bc1a000000                 mov      r12d, 0x1a
0000000008716fb3: 4c0f45e1                     cmovne   r12, rcx
0000000008716fb7: 4c89e7                       mov      rdi, r12
0000000008716fba: e8e16df501                   call     0xa66dda0
0000000008716fbf: 4989c7                       mov      r15, rax
0000000008716fc2: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000008716fc6: 4983cc01                     or       r12, 1
0000000008716fca: 4c8923                       mov      qword ptr [rbx], r12
0000000008716fcd: 4c897308                     mov      qword ptr [rbx + 8], r14
0000000008716fd1: 4889e6                       mov      rsi, rsp
0000000008716fd4: 4c89ff                       mov      rdi, r15
0000000008716fd7: 4c89f2                       mov      rdx, r14
0000000008716fda: e85172f501                   call     0xa66e230
0000000008716fdf: 43c6043700                   mov      byte ptr [r15 + r14], 0
0000000008716fe4: 4889d8                       mov      rax, rbx
0000000008716fe7: 4881c408010000               add      rsp, 0x108
0000000008716fee: 5b                           pop      rbx
0000000008716fef: 415c                         pop      r12
0000000008716ff1: 415e                         pop      r14
0000000008716ff3: 415f                         pop      r15
0000000008716ff5: c3                           ret
0000000008716ff6: 4889df                       mov      rdi, rbx
0000000008716ff9: e89256dffb                   call     0x450c690
