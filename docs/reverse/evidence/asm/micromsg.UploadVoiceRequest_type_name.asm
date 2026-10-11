00000000079f1400: 53                           push     rbx
00000000079f1401: 4889fb                       mov      rbx, rdi
00000000079f1404: bf20000000                   mov      edi, 0x20
00000000079f1409: e892c9c702                   call     0xa66dda0
00000000079f140e: 48894310                     mov      qword ptr [rbx + 0x10], rax
00000000079f1412: 48c70321000000               mov      qword ptr [rbx], 0x21
00000000079f1419: 48c743081b000000             mov      qword ptr [rbx + 8], 0x1b
00000000079f1421: 0f1005c38647f9               movups   xmm0, xmmword ptr [rip - 0x6b8793d]
00000000079f1428: 0f11400b                     movups   xmmword ptr [rax + 0xb], xmm0
00000000079f142c: 0f1005ad8647f9               movups   xmm0, xmmword ptr [rip - 0x6b87953]
00000000079f1433: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000079f1436: c6401b00                     mov      byte ptr [rax + 0x1b], 0
00000000079f143a: 4889d8                       mov      rax, rbx
00000000079f143d: 5b                           pop      rbx
00000000079f143e: c3                           ret
