0000000007ded2d0: 53                           push     rbx
0000000007ded2d1: 4889fb                       mov      rbx, rdi
0000000007ded2d4: bf1a000000                   mov      edi, 0x1a
0000000007ded2d9: e8c20a8802                   call     0xa66dda0
0000000007ded2de: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007ded2e2: 48c7031b000000               mov      qword ptr [rbx], 0x1b
0000000007ded2e9: 48c7430817000000             mov      qword ptr [rbx + 8], 0x17
0000000007ded2f1: 48b96352657175657374         movabs   rcx, 0x7473657571655263
0000000007ded2fb: 4889480f                     mov      qword ptr [rax + 0xf], rcx
0000000007ded2ff: 0f1005fa41f9f8               movups   xmm0, xmmword ptr [rip - 0x706be06]
0000000007ded306: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007ded309: c6401700                     mov      byte ptr [rax + 0x17], 0
0000000007ded30d: 4889d8                       mov      rax, rbx
0000000007ded310: 5b                           pop      rbx
0000000007ded311: c3                           ret
