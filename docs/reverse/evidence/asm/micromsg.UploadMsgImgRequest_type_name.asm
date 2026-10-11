0000000007cfbe00: 53                           push     rbx
0000000007cfbe01: 4889fb                       mov      rbx, rdi
0000000007cfbe04: bf20000000                   mov      edi, 0x20
0000000007cfbe09: e8921f9702                   call     0xa66dda0
0000000007cfbe0e: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007cfbe12: 48c70321000000               mov      qword ptr [rbx], 0x21
0000000007cfbe19: 48c743081c000000             mov      qword ptr [rbx + 8], 0x1c
0000000007cfbe21: 0f100577a00af9               movups   xmm0, xmmword ptr [rip - 0x6f55f89]
0000000007cfbe28: 0f11400c                     movups   xmmword ptr [rax + 0xc], xmm0
0000000007cfbe2c: 0f100560a00af9               movups   xmm0, xmmword ptr [rip - 0x6f55fa0]
0000000007cfbe33: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007cfbe36: c6401c00                     mov      byte ptr [rax + 0x1c], 0
0000000007cfbe3a: 4889d8                       mov      rax, rbx
0000000007cfbe3d: 5b                           pop      rbx
0000000007cfbe3e: c3                           ret
