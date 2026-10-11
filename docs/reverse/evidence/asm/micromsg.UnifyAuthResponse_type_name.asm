0000000007ce8b80: 53                           push     rbx
0000000007ce8b81: 4889fb                       mov      rbx, rdi
0000000007ce8b84: bf20000000                   mov      edi, 0x20
0000000007ce8b89: e812529802                   call     0xa66dda0
0000000007ce8b8e: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007ce8b92: 48c70321000000               mov      qword ptr [rbx], 0x21
0000000007ce8b99: 48c743081a000000             mov      qword ptr [rbx + 8], 0x1a
0000000007ce8ba1: 0f1005d67f39f9               movups   xmm0, xmmword ptr [rip - 0x6c6802a]
0000000007ce8ba8: 0f11400a                     movups   xmmword ptr [rax + 0xa], xmm0
0000000007ce8bac: 0f1005c17f39f9               movups   xmm0, xmmword ptr [rip - 0x6c6803f]
0000000007ce8bb3: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007ce8bb6: c6401a00                     mov      byte ptr [rax + 0x1a], 0
0000000007ce8bba: 4889d8                       mov      rax, rbx
0000000007ce8bbd: 5b                           pop      rbx
0000000007ce8bbe: c3                           ret
