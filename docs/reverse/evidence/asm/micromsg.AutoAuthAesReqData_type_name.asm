0000000007cdf1b0: 53                           push     rbx
0000000007cdf1b1: 4889fb                       mov      rbx, rdi
0000000007cdf1b4: bf20000000                   mov      edi, 0x20
0000000007cdf1b9: e8e2eb9802                   call     0xa66dda0
0000000007cdf1be: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007cdf1c2: 48c70321000000               mov      qword ptr [rbx], 0x21
0000000007cdf1c9: 48c743081b000000             mov      qword ptr [rbx + 8], 0x1b
0000000007cdf1d1: 0f1005aad825f9               movups   xmm0, xmmword ptr [rip - 0x6da2756]
0000000007cdf1d8: 0f11400b                     movups   xmmword ptr [rax + 0xb], xmm0
0000000007cdf1dc: 0f100594d825f9               movups   xmm0, xmmword ptr [rip - 0x6da276c]
0000000007cdf1e3: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007cdf1e6: c6401b00                     mov      byte ptr [rax + 0x1b], 0
0000000007cdf1ea: 4889d8                       mov      rax, rbx
0000000007cdf1ed: 5b                           pop      rbx
0000000007cdf1ee: c3                           ret
