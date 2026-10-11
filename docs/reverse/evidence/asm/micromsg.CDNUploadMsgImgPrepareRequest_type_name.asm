0000000007d19890: 53                           push     rbx
0000000007d19891: 4889fb                       mov      rbx, rdi
0000000007d19894: bf28000000                   mov      edi, 0x28
0000000007d19899: e802459502                   call     0xa66dda0
0000000007d1989e: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007d198a2: 48c70329000000               mov      qword ptr [rbx], 0x29
0000000007d198a9: 48c7430826000000             mov      qword ptr [rbx + 8], 0x26
0000000007d198b1: 48b96552657175657374         movabs   rcx, 0x7473657571655265
0000000007d198bb: 4889481e                     mov      qword ptr [rax + 0x1e], rcx
0000000007d198bf: 0f1005382c1bf9               movups   xmm0, xmmword ptr [rip - 0x6e4d3c8]
0000000007d198c6: 0f114010                     movups   xmmword ptr [rax + 0x10], xmm0
0000000007d198ca: 0f10051d2c1bf9               movups   xmm0, xmmword ptr [rip - 0x6e4d3e3]
0000000007d198d1: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007d198d4: c6402600                     mov      byte ptr [rax + 0x26], 0
0000000007d198d8: 4889d8                       mov      rax, rbx
0000000007d198db: 5b                           pop      rbx
0000000007d198dc: c3                           ret
