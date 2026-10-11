0000000007cfd420: 53                           push     rbx
0000000007cfd421: 4889fb                       mov      rbx, rdi
0000000007cfd424: bf20000000                   mov      edi, 0x20
0000000007cfd429: e872099702                   call     0xa66dda0
0000000007cfd42e: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007cfd432: 48c70321000000               mov      qword ptr [rbx], 0x21
0000000007cfd439: 48c743081d000000             mov      qword ptr [rbx + 8], 0x1d
0000000007cfd441: 0f1005d80427f9               movups   xmm0, xmmword ptr [rip - 0x6d8fb28]
0000000007cfd448: 0f11400d                     movups   xmmword ptr [rax + 0xd], xmm0
0000000007cfd44c: 0f1005c00427f9               movups   xmm0, xmmword ptr [rip - 0x6d8fb40]
0000000007cfd453: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007cfd456: c6401d00                     mov      byte ptr [rax + 0x1d], 0
0000000007cfd45a: 4889d8                       mov      rax, rbx
0000000007cfd45d: 5b                           pop      rbx
0000000007cfd45e: c3                           ret
