0000000007cdf920: 53                           push     rbx
0000000007cdf921: 4889fb                       mov      rbx, rdi
0000000007cdf924: bf20000000                   mov      edi, 0x20
0000000007cdf929: e872e49802                   call     0xa66dda0
0000000007cdf92e: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007cdf932: 48c70321000000               mov      qword ptr [rbx], 0x21
0000000007cdf939: 48c7430818000000             mov      qword ptr [rbx + 8], 0x18
0000000007cdf941: 48b96852657175657374         movabs   rcx, 0x7473657571655268
0000000007cdf94b: 48894810                     mov      qword ptr [rax + 0x10], rcx
0000000007cdf94f: 0f1005c7010ef9               movups   xmm0, xmmword ptr [rip - 0x6f1fe39]
0000000007cdf956: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007cdf959: c6401800                     mov      byte ptr [rax + 0x18], 0
0000000007cdf95d: 4889d8                       mov      rax, rbx
0000000007cdf960: 5b                           pop      rbx
0000000007cdf961: c3                           ret
