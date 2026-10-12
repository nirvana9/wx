0000000006041790: 4157                         push     r15
0000000006041792: 4156                         push     r14
0000000006041794: 53                           push     rbx
0000000006041795: 4883ec20                     sub      rsp, 0x20
0000000006041799: 4889fb                       mov      rbx, rdi
000000000604179c: 488b35adddca04               mov      rsi, qword ptr [rip + 0x4caddad]
00000000060417a3: 488b06                       mov      rax, qword ptr [rsi]
00000000060417a6: 488d7c2410                   lea      rdi, [rsp + 0x10]
00000000060417ab: ff5068                       call     qword ptr [rax + 0x68]
00000000060417ae: 4c8b742410                   mov      r14, qword ptr [rsp + 0x10]
00000000060417b3: 488b442418                   mov      rax, qword ptr [rsp + 0x18]
00000000060417b8: 4c893424                     mov      qword ptr [rsp], r14
00000000060417bc: 4889442408                   mov      qword ptr [rsp + 8], rax
00000000060417c1: 4885c0                       test     rax, rax
00000000060417c4: 7436                         je       0x60417fc
00000000060417c6: f048ff4008                   lock inc qword ptr [rax + 8]
00000000060417cb: 4c8b742418                   mov      r14, qword ptr [rsp + 0x18]
00000000060417d0: 4d85f6                       test     r14, r14
00000000060417d3: 7423                         je       0x60417f8
00000000060417d5: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000060417dc: f0490fc14608                 lock xadd qword ptr [r14 + 8], rax
00000000060417e2: 4885c0                       test     rax, rax
00000000060417e5: 7511                         jne      0x60417f8
00000000060417e7: 498b06                       mov      rax, qword ptr [r14]
00000000060417ea: 4c89f7                       mov      rdi, r14
00000000060417ed: ff5010                       call     qword ptr [rax + 0x10]
00000000060417f0: 4c89f7                       mov      rdi, r14
00000000060417f3: e8d8594ffe                   call     0x45371d0
00000000060417f8: 4c8b3424                     mov      r14, qword ptr [rsp]
00000000060417fc: 4d85f6                       test     r14, r14
00000000060417ff: 742d                         je       0x604182e
0000000006041801: 4c89f7                       mov      rdi, r14
0000000006041804: e8c7901500                   call     0x619a8d0
0000000006041809: f60001                       test     byte ptr [rax], 1
000000000604180c: 7510                         jne      0x604181e
000000000604180e: 488b4810                     mov      rcx, qword ptr [rax + 0x10]
0000000006041812: 48894b10                     mov      qword ptr [rbx + 0x10], rcx
0000000006041816: 0f1000                       movups   xmm0, xmmword ptr [rax]
0000000006041819: 0f1103                       movups   xmmword ptr [rbx], xmm0
000000000604181c: eb10                         jmp      0x604182e
000000000604181e: 488b5008                     mov      rdx, qword ptr [rax + 8]
0000000006041822: 488b7010                     mov      rsi, qword ptr [rax + 0x10]
0000000006041826: 4889df                       mov      rdi, rbx
0000000006041829: e872ae4cfe                   call     0x450c6a0
000000000604182e: 4c8b7c2408                   mov      r15, qword ptr [rsp + 8]
0000000006041833: 4d85ff                       test     r15, r15
0000000006041836: 7412                         je       0x604184a
0000000006041838: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
000000000604183f: f0490fc14708                 lock xadd qword ptr [r15 + 8], rax
0000000006041845: 4885c0                       test     rax, rax
0000000006041848: 7417                         je       0x6041861
000000000604184a: 4d85f6                       test     r14, r14
000000000604184d: 7505                         jne      0x6041854
000000000604184f: 66c7030000                   mov      word ptr [rbx], 0
0000000006041854: 4889d8                       mov      rax, rbx
0000000006041857: 4883c420                     add      rsp, 0x20
000000000604185b: 5b                           pop      rbx
000000000604185c: 415e                         pop      r14
000000000604185e: 415f                         pop      r15
0000000006041860: c3                           ret
0000000006041861: 498b07                       mov      rax, qword ptr [r15]
0000000006041864: 4c89ff                       mov      rdi, r15
0000000006041867: ff5010                       call     qword ptr [rax + 0x10]
000000000604186a: 4c89ff                       mov      rdi, r15
000000000604186d: e85e594ffe                   call     0x45371d0
0000000006041872: 4d85f6                       test     r14, r14
0000000006041875: 75dd                         jne      0x6041854
0000000006041877: ebd6                         jmp      0x604184f
0000000006041879: 4889c3                       mov      rbx, rax
000000000604187c: 4889e7                       mov      rdi, rsp
000000000604187f: e88cb5ffff                   call     0x603ce10
0000000006041884: 4889df                       mov      rdi, rbx
0000000006041887: e894b54afe                   call     0x44ece20
