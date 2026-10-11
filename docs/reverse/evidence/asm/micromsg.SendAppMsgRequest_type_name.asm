0000000007d0ce00: 53                           push     rbx
0000000007d0ce01: 4889fb                       mov      rbx, rdi
0000000007d0ce04: bf20000000                   mov      edi, 0x20
0000000007d0ce09: e8920f9602                   call     0xa66dda0
0000000007d0ce0e: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007d0ce12: 48c70321000000               mov      qword ptr [rbx], 0x21
0000000007d0ce19: 48c743081a000000             mov      qword ptr [rbx + 8], 0x1a
0000000007d0ce21: 0f1005bb9009f9               movups   xmm0, xmmword ptr [rip - 0x6f66f45]
0000000007d0ce28: 0f11400a                     movups   xmmword ptr [rax + 0xa], xmm0
0000000007d0ce2c: 0f1005a69009f9               movups   xmm0, xmmword ptr [rip - 0x6f66f5a]
0000000007d0ce33: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007d0ce36: c6401a00                     mov      byte ptr [rax + 0x1a], 0
0000000007d0ce3a: 4889d8                       mov      rax, rbx
0000000007d0ce3d: 5b                           pop      rbx
0000000007d0ce3e: c3                           ret
