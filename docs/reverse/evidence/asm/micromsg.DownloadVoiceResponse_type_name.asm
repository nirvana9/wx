0000000007d1e970: 53                           push     rbx
0000000007d1e971: 4889fb                       mov      rbx, rdi
0000000007d1e974: bf20000000                   mov      edi, 0x20
0000000007d1e979: e822f49402                   call     0xa66dda0
0000000007d1e97e: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007d1e982: 48c70321000000               mov      qword ptr [rbx], 0x21
0000000007d1e989: 48c743081e000000             mov      qword ptr [rbx + 8], 0x1e
0000000007d1e991: 0f100531e121f9               movups   xmm0, xmmword ptr [rip - 0x6de1ecf]
0000000007d1e998: 0f11400e                     movups   xmmword ptr [rax + 0xe], xmm0
0000000007d1e99c: 0f100518e121f9               movups   xmm0, xmmword ptr [rip - 0x6de1ee8]
0000000007d1e9a3: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007d1e9a6: c6401e00                     mov      byte ptr [rax + 0x1e], 0
0000000007d1e9aa: 4889d8                       mov      rax, rbx
0000000007d1e9ad: 5b                           pop      rbx
0000000007d1e9ae: c3                           ret
