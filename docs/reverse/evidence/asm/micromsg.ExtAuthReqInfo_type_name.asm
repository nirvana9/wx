0000000007cd4510: 53                           push     rbx
0000000007cd4511: 4889fb                       mov      rbx, rdi
0000000007cd4514: bf1a000000                   mov      edi, 0x1a
0000000007cd4519: e882989902                   call     0xa66dda0
0000000007cd451e: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007cd4522: 48c7031b000000               mov      qword ptr [rbx], 0x1b
0000000007cd4529: 48c7430817000000             mov      qword ptr [rbx + 8], 0x17
0000000007cd4531: 48b968526571496e666f         movabs   rcx, 0x6f666e4971655268
0000000007cd453b: 4889480f                     mov      qword ptr [rax + 0xf], rcx
0000000007cd453f: 0f1005907f1ff9               movups   xmm0, xmmword ptr [rip - 0x6e08070]
0000000007cd4546: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007cd4549: c6401700                     mov      byte ptr [rax + 0x17], 0
0000000007cd454d: 4889d8                       mov      rax, rbx
0000000007cd4550: 5b                           pop      rbx
0000000007cd4551: c3                           ret
