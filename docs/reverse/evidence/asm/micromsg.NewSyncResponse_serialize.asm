0000000007dedb00: 4156                         push     r14
0000000007dedb02: 53                           push     rbx
0000000007dedb03: 50                           push     rax
0000000007dedb04: 4889f3                       mov      rbx, rsi
0000000007dedb07: 4989fe                       mov      r14, rdi
0000000007dedb0a: 8b4730                       mov      eax, dword ptr [rdi + 0x30]
0000000007dedb0d: a801                         test     al, 1
0000000007dedb0f: 752c                         jne      0x7dedb3d
0000000007dedb11: a802                         test     al, 2
0000000007dedb13: 7541                         jne      0x7dedb56
0000000007dedb15: a804                         test     al, 4
0000000007dedb17: 7569                         jne      0x7dedb82
0000000007dedb19: a808                         test     al, 8
0000000007dedb1b: 757e                         jne      0x7dedb9b
0000000007dedb1d: a810                         test     al, 0x10
0000000007dedb1f: 0f85a6000000                 jne      0x7dedbcb
0000000007dedb25: a820                         test     al, 0x20
0000000007dedb27: 0f85bb000000                 jne      0x7dedbe8
0000000007dedb2d: a840                         test     al, 0x40
0000000007dedb2f: 0f85d0000000                 jne      0x7dedc05
0000000007dedb35: 4883c408                     add      rsp, 8
0000000007dedb39: 5b                           pop      rbx
0000000007dedb3a: 415e                         pop      r14
0000000007dedb3c: c3                           ret
0000000007dedb3d: 418b7610                     mov      esi, dword ptr [r14 + 0x10]
0000000007dedb41: bf01000000                   mov      edi, 1
0000000007dedb46: 4889da                       mov      rdx, rbx
0000000007dedb49: e8c2471601                   call     0x8f52310
0000000007dedb4e: 418b4630                     mov      eax, dword ptr [r14 + 0x30]
0000000007dedb52: a802                         test     al, 2
0000000007dedb54: 74bf                         je       0x7dedb15
0000000007dedb56: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007dedb5a: 4885f6                       test     rsi, rsi
0000000007dedb5d: 750e                         jne      0x7dedb6d
0000000007dedb5f: 488d056aedf002               lea      rax, [rip + 0x2f0ed6a]
0000000007dedb66: 488b00                       mov      rax, qword ptr [rax]
0000000007dedb69: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000007dedb6d: bf02000000                   mov      edi, 2
0000000007dedb72: 4889da                       mov      rdx, rbx
0000000007dedb75: e8764b1601                   call     0x8f526f0
0000000007dedb7a: 418b4630                     mov      eax, dword ptr [r14 + 0x30]
0000000007dedb7e: a804                         test     al, 4
0000000007dedb80: 7497                         je       0x7dedb19
0000000007dedb82: 418b7614                     mov      esi, dword ptr [r14 + 0x14]
0000000007dedb86: bf03000000                   mov      edi, 3
0000000007dedb8b: 4889da                       mov      rdx, rbx
0000000007dedb8e: e8ed471601                   call     0x8f52380
0000000007dedb93: 418b4630                     mov      eax, dword ptr [r14 + 0x30]
0000000007dedb97: a808                         test     al, 8
0000000007dedb99: 7482                         je       0x7dedb1d
0000000007dedb9b: 498b7618                     mov      rsi, qword ptr [r14 + 0x18]
0000000007dedb9f: 4885f6                       test     rsi, rsi
0000000007dedba2: 750e                         jne      0x7dedbb2
0000000007dedba4: 488d0525edf002               lea      rax, [rip + 0x2f0ed25]
0000000007dedbab: 488b00                       mov      rax, qword ptr [rax]
0000000007dedbae: 488b7018                     mov      rsi, qword ptr [rax + 0x18]
0000000007dedbb2: bf04000000                   mov      edi, 4
0000000007dedbb7: 4889da                       mov      rdx, rbx
0000000007dedbba: e8314b1601                   call     0x8f526f0
0000000007dedbbf: 418b4630                     mov      eax, dword ptr [r14 + 0x30]
0000000007dedbc3: a810                         test     al, 0x10
0000000007dedbc5: 0f845affffff                 je       0x7dedb25
0000000007dedbcb: 418b7620                     mov      esi, dword ptr [r14 + 0x20]
0000000007dedbcf: bf05000000                   mov      edi, 5
0000000007dedbd4: 4889da                       mov      rdx, rbx
0000000007dedbd7: e8a4471601                   call     0x8f52380
0000000007dedbdc: 418b4630                     mov      eax, dword ptr [r14 + 0x30]
0000000007dedbe0: a820                         test     al, 0x20
0000000007dedbe2: 0f8445ffffff                 je       0x7dedb2d
0000000007dedbe8: 418b7624                     mov      esi, dword ptr [r14 + 0x24]
0000000007dedbec: bf06000000                   mov      edi, 6
0000000007dedbf1: 4889da                       mov      rdx, rbx
0000000007dedbf4: e887471601                   call     0x8f52380
0000000007dedbf9: 418b4630                     mov      eax, dword ptr [r14 + 0x30]
0000000007dedbfd: a840                         test     al, 0x40
0000000007dedbff: 0f8430ffffff                 je       0x7dedb35
0000000007dedc05: 418b7628                     mov      esi, dword ptr [r14 + 0x28]
0000000007dedc09: bf07000000                   mov      edi, 7
0000000007dedc0e: 4889da                       mov      rdx, rbx
0000000007dedc11: 4883c408                     add      rsp, 8
0000000007dedc15: 5b                           pop      rbx
0000000007dedc16: 415e                         pop      r14
0000000007dedc18: e963471601                   jmp      0x8f52380
