0000000007cc91e0: 53                           push     rbx
0000000007cc91e1: 4889fb                       mov      rbx, rdi
0000000007cc91e4: bf30000000                   mov      edi, 0x30
0000000007cc91e9: e8b24b9a02                   call     0xa66dda0
0000000007cc91ee: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007cc91f2: 48c70331000000               mov      qword ptr [rbx], 0x31
0000000007cc91f9: 48c7430829000000             mov      qword ptr [rbx + 8], 0x29
0000000007cc9201: 0f100580492df9               movups   xmm0, xmmword ptr [rip - 0x6d2b680]
0000000007cc9208: 0f114019                     movups   xmmword ptr [rax + 0x19], xmm0
0000000007cc920c: 0f10056c492df9               movups   xmm0, xmmword ptr [rip - 0x6d2b694]
0000000007cc9213: 0f114010                     movups   xmmword ptr [rax + 0x10], xmm0
0000000007cc9217: 0f100551492df9               movups   xmm0, xmmword ptr [rip - 0x6d2b6af]
0000000007cc921e: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007cc9221: c6402900                     mov      byte ptr [rax + 0x29], 0
0000000007cc9225: 4889d8                       mov      rax, rbx
0000000007cc9228: 5b                           pop      rbx
0000000007cc9229: c3                           ret
