0000000007deacb0: 4156                         push     r14
0000000007deacb2: 53                           push     rbx
0000000007deacb3: 50                           push     rax
0000000007deacb4: 4889f3                       mov      rbx, rsi
0000000007deacb7: 4989fe                       mov      r14, rdi
0000000007deacba: 8b4734                       mov      eax, dword ptr [rdi + 0x34]
0000000007deacbd: a801                         test     al, 1
0000000007deacbf: 7520                         jne      0x7deace1
0000000007deacc1: a802                         test     al, 2
0000000007deacc3: 7548                         jne      0x7dead0d
0000000007deacc5: a804                         test     al, 4
0000000007deacc7: 755d                         jne      0x7dead26
0000000007deacc9: a808                         test     al, 8
0000000007deaccb: 0f8585000000                 jne      0x7dead56
0000000007deacd1: a810                         test     al, 0x10
0000000007deacd3: 0f85ad000000                 jne      0x7dead86
0000000007deacd9: 4883c408                     add      rsp, 8
0000000007deacdd: 5b                           pop      rbx
0000000007deacde: 415e                         pop      r14
0000000007deace0: c3                           ret
0000000007deace1: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007deace5: 4885f6                       test     rsi, rsi
0000000007deace8: 750e                         jne      0x7deacf8
0000000007deacea: 488d05bf1bf102               lea      rax, [rip + 0x2f11bbf]
0000000007deacf1: 488b00                       mov      rax, qword ptr [rax]
0000000007deacf4: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000007deacf8: bf01000000                   mov      edi, 1
0000000007deacfd: 4889da                       mov      rdx, rbx
0000000007dead00: e8eb791601                   call     0x8f526f0
0000000007dead05: 418b4634                     mov      eax, dword ptr [r14 + 0x34]
0000000007dead09: a802                         test     al, 2
0000000007dead0b: 74b8                         je       0x7deacc5
0000000007dead0d: 498b7610                     mov      rsi, qword ptr [r14 + 0x10]
0000000007dead11: bf02000000                   mov      edi, 2
0000000007dead16: 4889da                       mov      rdx, rbx
0000000007dead19: e832781601                   call     0x8f52550
0000000007dead1e: 418b4634                     mov      eax, dword ptr [r14 + 0x34]
0000000007dead22: a804                         test     al, 4
0000000007dead24: 74a3                         je       0x7deacc9
0000000007dead26: 498b7618                     mov      rsi, qword ptr [r14 + 0x18]
0000000007dead2a: 4885f6                       test     rsi, rsi
0000000007dead2d: 750e                         jne      0x7dead3d
0000000007dead2f: 488d057a1bf102               lea      rax, [rip + 0x2f11b7a]
0000000007dead36: 488b00                       mov      rax, qword ptr [rax]
0000000007dead39: 488b7018                     mov      rsi, qword ptr [rax + 0x18]
0000000007dead3d: bf03000000                   mov      edi, 3
0000000007dead42: 4889da                       mov      rdx, rbx
0000000007dead45: e8a6791601                   call     0x8f526f0
0000000007dead4a: 418b4634                     mov      eax, dword ptr [r14 + 0x34]
0000000007dead4e: a808                         test     al, 8
0000000007dead50: 0f847bffffff                 je       0x7deacd1
0000000007dead56: 498b7620                     mov      rsi, qword ptr [r14 + 0x20]
0000000007dead5a: 4885f6                       test     rsi, rsi
0000000007dead5d: 750e                         jne      0x7dead6d
0000000007dead5f: 488d054a1bf102               lea      rax, [rip + 0x2f11b4a]
0000000007dead66: 488b00                       mov      rax, qword ptr [rax]
0000000007dead69: 488b7020                     mov      rsi, qword ptr [rax + 0x20]
0000000007dead6d: bf04000000                   mov      edi, 4
0000000007dead72: 4889da                       mov      rdx, rbx
0000000007dead75: e876791601                   call     0x8f526f0
0000000007dead7a: 418b4634                     mov      eax, dword ptr [r14 + 0x34]
0000000007dead7e: a810                         test     al, 0x10
0000000007dead80: 0f8453ffffff                 je       0x7deacd9
0000000007dead86: 498b7628                     mov      rsi, qword ptr [r14 + 0x28]
0000000007dead8a: bf05000000                   mov      edi, 5
0000000007dead8f: 4889da                       mov      rdx, rbx
0000000007dead92: 4883c408                     add      rsp, 8
0000000007dead96: 5b                           pop      rbx
0000000007dead97: 415e                         pop      r14
0000000007dead99: e9b2771601                   jmp      0x8f52550
