0000000007c50150: 53                           push     rbx
0000000007c50151: 4889fb                       mov      rbx, rdi
0000000007c50154: bf1a000000                   mov      edi, 0x1a
0000000007c50159: e842dca102                   call     0xa66dda0
0000000007c5015e: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007c50162: 48c7031b000000               mov      qword ptr [rbx], 0x1b
0000000007c50169: 48c7430817000000             mov      qword ptr [rbx + 8], 0x17
0000000007c50171: 48b94d6963726f4d7367         movabs   rcx, 0x67734d6f7263694d
0000000007c5017b: 4889480f                     mov      qword ptr [rax + 0xf], rcx
0000000007c5017f: 0f1005d1773cf9               movups   xmm0, xmmword ptr [rip - 0x6c3882f]
0000000007c50186: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007c50189: c6401700                     mov      byte ptr [rax + 0x17], 0
0000000007c5018d: 4889d8                       mov      rax, rbx
0000000007c50190: 5b                           pop      rbx
0000000007c50191: c3                           ret
