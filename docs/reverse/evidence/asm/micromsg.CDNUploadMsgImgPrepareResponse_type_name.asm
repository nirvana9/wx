0000000007d1abb0: 53                           push     rbx
0000000007d1abb1: 4889fb                       mov      rbx, rdi
0000000007d1abb4: bf28000000                   mov      edi, 0x28
0000000007d1abb9: e8e2319502                   call     0xa66dda0
0000000007d1abbe: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007d1abc2: 48c70329000000               mov      qword ptr [rbx], 0x29
0000000007d1abc9: 48c7430827000000             mov      qword ptr [rbx + 8], 0x27
0000000007d1abd1: 48b9526573706f6e7365         movabs   rcx, 0x65736e6f70736552
0000000007d1abdb: 4889481f                     mov      qword ptr [rax + 0x1f], rcx
0000000007d1abdf: 0f10053f191bf9               movups   xmm0, xmmword ptr [rip - 0x6e4e6c1]
0000000007d1abe6: 0f114010                     movups   xmmword ptr [rax + 0x10], xmm0
0000000007d1abea: 0f100524191bf9               movups   xmm0, xmmword ptr [rip - 0x6e4e6dc]
0000000007d1abf1: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007d1abf4: c6402700                     mov      byte ptr [rax + 0x27], 0
0000000007d1abf8: 4889d8                       mov      rax, rbx
0000000007d1abfb: 5b                           pop      rbx
0000000007d1abfc: c3                           ret
