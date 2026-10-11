0000000007ce0e70: 4156                         push     r14
0000000007ce0e72: 53                           push     rbx
0000000007ce0e73: 50                           push     rax
0000000007ce0e74: 4889f3                       mov      rbx, rsi
0000000007ce0e77: 4989fe                       mov      r14, rdi
0000000007ce0e7a: 8b4738                       mov      eax, dword ptr [rdi + 0x38]
0000000007ce0e7d: a801                         test     al, 1
0000000007ce0e7f: 7528                         jne      0x7ce0ea9
0000000007ce0e81: a802                         test     al, 2
0000000007ce0e83: 7550                         jne      0x7ce0ed5
0000000007ce0e85: a804                         test     al, 4
0000000007ce0e87: 7578                         jne      0x7ce0f01
0000000007ce0e89: a808                         test     al, 8
0000000007ce0e8b: 0f85a0000000                 jne      0x7ce0f31
0000000007ce0e91: a810                         test     al, 0x10
0000000007ce0e93: 0f85b5000000                 jne      0x7ce0f4e
0000000007ce0e99: a820                         test     al, 0x20
0000000007ce0e9b: 0f85dd000000                 jne      0x7ce0f7e
0000000007ce0ea1: 4883c408                     add      rsp, 8
0000000007ce0ea5: 5b                           pop      rbx
0000000007ce0ea6: 415e                         pop      r14
0000000007ce0ea8: c3                           ret
0000000007ce0ea9: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007ce0ead: 4885f6                       test     rsi, rsi
0000000007ce0eb0: 750e                         jne      0x7ce0ec0
0000000007ce0eb2: 488d050faf0103               lea      rax, [rip + 0x301af0f]
0000000007ce0eb9: 488b00                       mov      rax, qword ptr [rax]
0000000007ce0ebc: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000007ce0ec0: bf01000000                   mov      edi, 1
0000000007ce0ec5: 4889da                       mov      rdx, rbx
0000000007ce0ec8: e823182701                   call     0x8f526f0
0000000007ce0ecd: 418b4638                     mov      eax, dword ptr [r14 + 0x38]
0000000007ce0ed1: a802                         test     al, 2
0000000007ce0ed3: 74b0                         je       0x7ce0e85
0000000007ce0ed5: 498b7610                     mov      rsi, qword ptr [r14 + 0x10]
0000000007ce0ed9: 4885f6                       test     rsi, rsi
0000000007ce0edc: 750e                         jne      0x7ce0eec
0000000007ce0ede: 488d05e3ae0103               lea      rax, [rip + 0x301aee3]
0000000007ce0ee5: 488b00                       mov      rax, qword ptr [rax]
0000000007ce0ee8: 488b7010                     mov      rsi, qword ptr [rax + 0x10]
0000000007ce0eec: bf02000000                   mov      edi, 2
0000000007ce0ef1: 4889da                       mov      rdx, rbx
0000000007ce0ef4: e8f7172701                   call     0x8f526f0
0000000007ce0ef9: 418b4638                     mov      eax, dword ptr [r14 + 0x38]
0000000007ce0efd: a804                         test     al, 4
0000000007ce0eff: 7488                         je       0x7ce0e89
0000000007ce0f01: 498b7618                     mov      rsi, qword ptr [r14 + 0x18]
0000000007ce0f05: 4885f6                       test     rsi, rsi
0000000007ce0f08: 750e                         jne      0x7ce0f18
0000000007ce0f0a: 488d05b7ae0103               lea      rax, [rip + 0x301aeb7]
0000000007ce0f11: 488b00                       mov      rax, qword ptr [rax]
0000000007ce0f14: 488b7018                     mov      rsi, qword ptr [rax + 0x18]
0000000007ce0f18: bf03000000                   mov      edi, 3
0000000007ce0f1d: 4889da                       mov      rdx, rbx
0000000007ce0f20: e8cb172701                   call     0x8f526f0
0000000007ce0f25: 418b4638                     mov      eax, dword ptr [r14 + 0x38]
0000000007ce0f29: a808                         test     al, 8
0000000007ce0f2b: 0f8460ffffff                 je       0x7ce0e91
0000000007ce0f31: 418b7630                     mov      esi, dword ptr [r14 + 0x30]
0000000007ce0f35: bf04000000                   mov      edi, 4
0000000007ce0f3a: 4889da                       mov      rdx, rbx
0000000007ce0f3d: e83e142701                   call     0x8f52380
0000000007ce0f42: 418b4638                     mov      eax, dword ptr [r14 + 0x38]
0000000007ce0f46: a810                         test     al, 0x10
0000000007ce0f48: 0f844bffffff                 je       0x7ce0e99
0000000007ce0f4e: 498b7620                     mov      rsi, qword ptr [r14 + 0x20]
0000000007ce0f52: 4885f6                       test     rsi, rsi
0000000007ce0f55: 750e                         jne      0x7ce0f65
0000000007ce0f57: 488d056aae0103               lea      rax, [rip + 0x301ae6a]
0000000007ce0f5e: 488b00                       mov      rax, qword ptr [rax]
0000000007ce0f61: 488b7020                     mov      rsi, qword ptr [rax + 0x20]
0000000007ce0f65: bf05000000                   mov      edi, 5
0000000007ce0f6a: 4889da                       mov      rdx, rbx
0000000007ce0f6d: e87e172701                   call     0x8f526f0
0000000007ce0f72: 418b4638                     mov      eax, dword ptr [r14 + 0x38]
0000000007ce0f76: a820                         test     al, 0x20
0000000007ce0f78: 0f8423ffffff                 je       0x7ce0ea1
0000000007ce0f7e: 498b7628                     mov      rsi, qword ptr [r14 + 0x28]
0000000007ce0f82: 4885f6                       test     rsi, rsi
0000000007ce0f85: 750e                         jne      0x7ce0f95
0000000007ce0f87: 488d053aae0103               lea      rax, [rip + 0x301ae3a]
0000000007ce0f8e: 488b00                       mov      rax, qword ptr [rax]
0000000007ce0f91: 488b7028                     mov      rsi, qword ptr [rax + 0x28]
0000000007ce0f95: bf06000000                   mov      edi, 6
0000000007ce0f9a: 4889da                       mov      rdx, rbx
0000000007ce0f9d: 4883c408                     add      rsp, 8
0000000007ce0fa1: 5b                           pop      rbx
0000000007ce0fa2: 415e                         pop      r14
0000000007ce0fa4: e947172701                   jmp      0x8f526f0
