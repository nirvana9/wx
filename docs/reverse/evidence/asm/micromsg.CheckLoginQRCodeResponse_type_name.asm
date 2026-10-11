0000000007cc8ae0: 53                           push     rbx
0000000007cc8ae1: 4889fb                       mov      rbx, rdi
0000000007cc8ae4: bf28000000                   mov      edi, 0x28
0000000007cc8ae9: e8b2529a02                   call     0xa66dda0
0000000007cc8aee: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007cc8af2: 48c70329000000               mov      qword ptr [rbx], 0x29
0000000007cc8af9: 48c7430821000000             mov      qword ptr [rbx + 8], 0x21
0000000007cc8b01: 0f10056b003af9               movups   xmm0, xmmword ptr [rip - 0x6c5ff95]
0000000007cc8b08: 0f114010                     movups   xmmword ptr [rax + 0x10], xmm0
0000000007cc8b0c: 0f100550003af9               movups   xmm0, xmmword ptr [rip - 0x6c5ffb0]
0000000007cc8b13: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007cc8b16: 66c740206500                 mov      word ptr [rax + 0x20], 0x65
0000000007cc8b1c: 4889d8                       mov      rax, rbx
0000000007cc8b1f: 5b                           pop      rbx
0000000007cc8b20: c3                           ret
