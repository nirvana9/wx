0000000007cc6650: 53                           push     rbx
0000000007cc6651: 4889fb                       mov      rbx, rdi
0000000007cc6654: bf20000000                   mov      edi, 0x20
0000000007cc6659: e842779a02                   call     0xa66dda0
0000000007cc665e: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007cc6662: 48c70321000000               mov      qword ptr [rbx], 0x21
0000000007cc6669: 48c743081e000000             mov      qword ptr [rbx + 8], 0x1e
0000000007cc6671: 0f1005a4ac0bf9               movups   xmm0, xmmword ptr [rip - 0x6f4535c]
0000000007cc6678: 0f11400e                     movups   xmmword ptr [rax + 0xe], xmm0
0000000007cc667c: 0f10058bac0bf9               movups   xmm0, xmmword ptr [rip - 0x6f45375]
0000000007cc6683: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007cc6686: c6401e00                     mov      byte ptr [rax + 0x1e], 0
0000000007cc668a: 4889d8                       mov      rax, rbx
0000000007cc668d: 5b                           pop      rbx
0000000007cc668e: c3                           ret
