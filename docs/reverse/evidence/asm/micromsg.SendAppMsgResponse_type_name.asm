0000000007d0e400: 53                           push     rbx
0000000007d0e401: 4889fb                       mov      rbx, rdi
0000000007d0e404: bf20000000                   mov      edi, 0x20
0000000007d0e409: e892f99502                   call     0xa66dda0
0000000007d0e40e: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007d0e412: 48c70321000000               mov      qword ptr [rbx], 0x21
0000000007d0e419: 48c743081b000000             mov      qword ptr [rbx + 8], 0x1b
0000000007d0e421: 0f100556400ef9               movups   xmm0, xmmword ptr [rip - 0x6f1bfaa]
0000000007d0e428: 0f11400b                     movups   xmmword ptr [rax + 0xb], xmm0
0000000007d0e42c: 0f100540400ef9               movups   xmm0, xmmword ptr [rip - 0x6f1bfc0]
0000000007d0e433: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007d0e436: c6401b00                     mov      byte ptr [rax + 0x1b], 0
0000000007d0e43a: 4889d8                       mov      rax, rbx
0000000007d0e43d: 5b                           pop      rbx
0000000007d0e43e: c3                           ret
