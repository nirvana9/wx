0000000007d137e0: 53                           push     rbx
0000000007d137e1: 4889fb                       mov      rbx, rdi
0000000007d137e4: bf28000000                   mov      edi, 0x28
0000000007d137e9: e8b2a59502                   call     0xa66dda0
0000000007d137ee: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007d137f2: 48c70329000000               mov      qword ptr [rbx], 0x29
0000000007d137f9: 48c7430820000000             mov      qword ptr [rbx + 8], 0x20
0000000007d13801: 0f10058cde13f9               movups   xmm0, xmmword ptr [rip - 0x6ec2174]
0000000007d13808: 0f114010                     movups   xmmword ptr [rax + 0x10], xmm0
0000000007d1380c: 0f100571de13f9               movups   xmm0, xmmword ptr [rip - 0x6ec218f]
0000000007d13813: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007d13816: c6402000                     mov      byte ptr [rax + 0x20], 0
0000000007d1381a: 4889d8                       mov      rax, rbx
0000000007d1381d: 5b                           pop      rbx
0000000007d1381e: c3                           ret
