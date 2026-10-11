0000000007cd5930: 53                           push     rbx
0000000007cd5931: 4889fb                       mov      rbx, rdi
0000000007cd5934: bf20000000                   mov      edi, 0x20
0000000007cd5939: e862849902                   call     0xa66dda0
0000000007cd593e: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007cd5942: 48c70321000000               mov      qword ptr [rbx], 0x21
0000000007cd5949: 48c7430818000000             mov      qword ptr [rbx + 8], 0x18
0000000007cd5951: 48b968526571496e666f         movabs   rcx, 0x6f666e4971655268
0000000007cd595b: 48894810                     mov      qword ptr [rax + 0x10], rcx
0000000007cd595f: 0f1005992631f9               movups   xmm0, xmmword ptr [rip - 0x6ced967]
0000000007cd5966: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007cd5969: c6401800                     mov      byte ptr [rax + 0x18], 0
0000000007cd596d: 4889d8                       mov      rax, rbx
0000000007cd5970: 5b                           pop      rbx
0000000007cd5971: c3                           ret
