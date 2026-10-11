0000000007ccaec0: 53                           push     rbx
0000000007ccaec1: 4889fb                       mov      rbx, rdi
0000000007ccaec4: bf20000000                   mov      edi, 0x20
0000000007ccaec9: e8d22e9a02                   call     0xa66dda0
0000000007ccaece: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007ccaed2: 48c70321000000               mov      qword ptr [rbx], 0x21
0000000007ccaed9: 48c743081a000000             mov      qword ptr [rbx + 8], 0x1a
0000000007ccaee1: 0f100573292af9               movups   xmm0, xmmword ptr [rip - 0x6d5d68d]
0000000007ccaee8: 0f11400a                     movups   xmmword ptr [rax + 0xa], xmm0
0000000007ccaeec: 0f10055e292af9               movups   xmm0, xmmword ptr [rip - 0x6d5d6a2]
0000000007ccaef3: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007ccaef6: c6401a00                     mov      byte ptr [rax + 0x1a], 0
0000000007ccaefa: 4889d8                       mov      rax, rbx
0000000007ccaefd: 5b                           pop      rbx
0000000007ccaefe: c3                           ret
