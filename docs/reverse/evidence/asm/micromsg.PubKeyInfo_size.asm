00000000079ec7f0: 55                           push     rbp
00000000079ec7f1: 4156                         push     r14
00000000079ec7f3: 53                           push     rbx
00000000079ec7f4: 4889fb                       mov      rbx, rdi
00000000079ec7f7: 0fb64718                     movzx    eax, byte ptr [rdi + 0x18]
00000000079ec7fb: 4531f6                       xor      r14d, r14d
00000000079ec7fe: 85c0                         test     eax, eax
00000000079ec800: 7466                         je       0x79ec868
00000000079ec802: a801                         test     al, 1
00000000079ec804: 7423                         je       0x79ec829
00000000079ec806: 8b7b10                       mov      edi, dword ptr [rbx + 0x10]
00000000079ec809: 85ff                         test     edi, edi
00000000079ec80b: 7867                         js       0x79ec874
00000000079ec80d: 41be02000000                 mov      r14d, 2
00000000079ec813: 81ff80000000                 cmp      edi, 0x80
00000000079ec819: 720e                         jb       0x79ec829
00000000079ec81b: e840555601                   call     0x8f51d60
00000000079ec820: 4189c6                       mov      r14d, eax
00000000079ec823: 41ffc6                       inc      r14d
00000000079ec826: 8b4318                       mov      eax, dword ptr [rbx + 0x18]
00000000079ec829: a802                         test     al, 2
00000000079ec82b: 743b                         je       0x79ec868
00000000079ec82d: 488b7b08                     mov      rdi, qword ptr [rbx + 8]
00000000079ec831: 4885ff                       test     rdi, rdi
00000000079ec834: 750e                         jne      0x79ec844
00000000079ec836: 488d058bd83003               lea      rax, [rip + 0x330d88b]
00000000079ec83d: 488b00                       mov      rax, qword ptr [rax]
00000000079ec840: 488b7808                     mov      rdi, qword ptr [rax + 8]
00000000079ec844: e8a7401b00                   call     0x7ba08f0
00000000079ec849: 89c5                         mov      ebp, eax
00000000079ec84b: b801000000                   mov      eax, 1
00000000079ec850: 81fd80000000                 cmp      ebp, 0x80
00000000079ec856: 7207                         jb       0x79ec85f
00000000079ec858: 89ef                         mov      edi, ebp
00000000079ec85a: e801555601                   call     0x8f51d60
00000000079ec85f: 4101ee                       add      r14d, ebp
00000000079ec862: 4101c6                       add      r14d, eax
00000000079ec865: 41ffc6                       inc      r14d
00000000079ec868: 44897314                     mov      dword ptr [rbx + 0x14], r14d
00000000079ec86c: 4489f0                       mov      eax, r14d
00000000079ec86f: 5b                           pop      rbx
00000000079ec870: 415e                         pop      r14
00000000079ec872: 5d                           pop      rbp
00000000079ec873: c3                           ret
00000000079ec874: 41be0b000000                 mov      r14d, 0xb
00000000079ec87a: a802                         test     al, 2
00000000079ec87c: 75af                         jne      0x79ec82d
00000000079ec87e: ebe8                         jmp      0x79ec868
