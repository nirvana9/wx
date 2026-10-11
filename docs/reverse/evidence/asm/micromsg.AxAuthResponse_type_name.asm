0000000007ceb920: 53                           push     rbx
0000000007ceb921: 4889fb                       mov      rbx, rdi
0000000007ceb924: bf1a000000                   mov      edi, 0x1a
0000000007ceb929: e872249802                   call     0xa66dda0
0000000007ceb92e: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007ceb932: 48c7031b000000               mov      qword ptr [rbx], 0x1b
0000000007ceb939: 48c7430817000000             mov      qword ptr [rbx + 8], 0x17
0000000007ceb941: 48b9526573706f6e7365         movabs   rcx, 0x65736e6f70736552
0000000007ceb94b: 4889480f                     mov      qword ptr [rax + 0xf], rcx
0000000007ceb94f: 0f10055fd237f9               movups   xmm0, xmmword ptr [rip - 0x6c82da1]
0000000007ceb956: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007ceb959: c6401700                     mov      byte ptr [rax + 0x17], 0
0000000007ceb95d: 4889d8                       mov      rax, rbx
0000000007ceb960: 5b                           pop      rbx
0000000007ceb961: c3                           ret
