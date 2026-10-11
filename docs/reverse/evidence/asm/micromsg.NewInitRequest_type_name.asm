0000000007deb040: 53                           push     rbx
0000000007deb041: 4889fb                       mov      rbx, rdi
0000000007deb044: bf1a000000                   mov      edi, 0x1a
0000000007deb049: e8522d8802                   call     0xa66dda0
0000000007deb04e: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007deb052: 48c7031b000000               mov      qword ptr [rbx], 0x1b
0000000007deb059: 48c7430817000000             mov      qword ptr [rbx + 8], 0x17
0000000007deb061: 48b97452657175657374         movabs   rcx, 0x7473657571655274
0000000007deb06b: 4889480f                     mov      qword ptr [rax + 0xf], rcx
0000000007deb06f: 0f100555dc27f9               movups   xmm0, xmmword ptr [rip - 0x6d823ab]
0000000007deb076: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007deb079: c6401700                     mov      byte ptr [rax + 0x17], 0
0000000007deb07d: 4889d8                       mov      rax, rbx
0000000007deb080: 5b                           pop      rbx
0000000007deb081: c3                           ret
