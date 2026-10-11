0000000007cf30d0: 53                           push     rbx
0000000007cf30d1: 4889fb                       mov      rbx, rdi
0000000007cf30d4: bf20000000                   mov      edi, 0x20
0000000007cf30d9: e8c2ac9702                   call     0xa66dda0
0000000007cf30de: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007cf30e2: 48c70321000000               mov      qword ptr [rbx], 0x21
0000000007cf30e9: 48c743081a000000             mov      qword ptr [rbx + 8], 0x1a
0000000007cf30f1: 0f10051e391ff9               movups   xmm0, xmmword ptr [rip - 0x6e0c6e2]
0000000007cf30f8: 0f11400a                     movups   xmmword ptr [rax + 0xa], xmm0
0000000007cf30fc: 0f100509391ff9               movups   xmm0, xmmword ptr [rip - 0x6e0c6f7]
0000000007cf3103: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007cf3106: c6401a00                     mov      byte ptr [rax + 0x1a], 0
0000000007cf310a: 4889d8                       mov      rax, rbx
0000000007cf310d: 5b                           pop      rbx
0000000007cf310e: c3                           ret
