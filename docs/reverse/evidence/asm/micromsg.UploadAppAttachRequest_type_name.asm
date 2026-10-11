0000000007d12860: 53                           push     rbx
0000000007d12861: 4889fb                       mov      rbx, rdi
0000000007d12864: bf20000000                   mov      edi, 0x20
0000000007d12869: e832b59502                   call     0xa66dda0
0000000007d1286e: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007d12872: 48c70321000000               mov      qword ptr [rbx], 0x21
0000000007d12879: 48c743081f000000             mov      qword ptr [rbx + 8], 0x1f
0000000007d12881: 0f100560d30af9               movups   xmm0, xmmword ptr [rip - 0x6f52ca0]
0000000007d12888: 0f11400f                     movups   xmmword ptr [rax + 0xf], xmm0
0000000007d1288c: 0f100546d30af9               movups   xmm0, xmmword ptr [rip - 0x6f52cba]
0000000007d12893: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007d12896: c6401f00                     mov      byte ptr [rax + 0x1f], 0
0000000007d1289a: 4889d8                       mov      rax, rbx
0000000007d1289d: 5b                           pop      rbx
0000000007d1289e: c3                           ret
