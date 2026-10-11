0000000007ce1240: 53                           push     rbx
0000000007ce1241: 4889fb                       mov      rbx, rdi
0000000007ce1244: bf20000000                   mov      edi, 0x20
0000000007ce1249: e852cb9802                   call     0xa66dda0
0000000007ce124e: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007ce1252: 48c70321000000               mov      qword ptr [rbx], 0x21
0000000007ce1259: 48c7430818000000             mov      qword ptr [rbx + 8], 0x18
0000000007ce1261: 48b95365637452657370         movabs   rcx, 0x7073655274636553
0000000007ce126b: 48894810                     mov      qword ptr [rax + 0x10], rcx
0000000007ce126f: 0f100512c628f9               movups   xmm0, xmmword ptr [rip - 0x6d739ee]
0000000007ce1276: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007ce1279: c6401800                     mov      byte ptr [rax + 0x18], 0
0000000007ce127d: 4889d8                       mov      rax, rbx
0000000007ce1280: 5b                           pop      rbx
0000000007ce1281: c3                           ret
