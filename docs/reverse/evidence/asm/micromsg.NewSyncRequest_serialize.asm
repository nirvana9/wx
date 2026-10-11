0000000007dece20: 4156                         push     r14
0000000007dece22: 53                           push     rbx
0000000007dece23: 50                           push     rax
0000000007dece24: 4889f3                       mov      rbx, rsi
0000000007dece27: 4989fe                       mov      r14, rdi
0000000007dece2a: 8b4748                       mov      eax, dword ptr [rdi + 0x48]
0000000007dece2d: a801                         test     al, 1
0000000007dece2f: 7547                         jne      0x7dece78
0000000007dece31: a802                         test     al, 2
0000000007dece33: 756f                         jne      0x7decea4
0000000007dece35: a804                         test     al, 4
0000000007dece37: 0f8580000000                 jne      0x7decebd
0000000007dece3d: a808                         test     al, 8
0000000007dece3f: 0f85a8000000                 jne      0x7deceed
0000000007dece45: a810                         test     al, 0x10
0000000007dece47: 0f85bd000000                 jne      0x7decf0a
0000000007dece4d: a820                         test     al, 0x20
0000000007dece4f: 0f85d2000000                 jne      0x7decf27
0000000007dece55: a840                         test     al, 0x40
0000000007dece57: 0f85e7000000                 jne      0x7decf44
0000000007dece5d: 84c0                         test     al, al
0000000007dece5f: 0f88fc000000                 js       0x7decf61
0000000007dece65: a900010000                   test     eax, 0x100
0000000007dece6a: 0f8524010000                 jne      0x7decf94
0000000007dece70: 4883c408                     add      rsp, 8
0000000007dece74: 5b                           pop      rbx
0000000007dece75: 415e                         pop      r14
0000000007dece77: c3                           ret
0000000007dece78: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007dece7c: 4885f6                       test     rsi, rsi
0000000007dece7f: 750e                         jne      0x7dece8f
0000000007dece81: 488d0540faf002               lea      rax, [rip + 0x2f0fa40]
0000000007dece88: 488b00                       mov      rax, qword ptr [rax]
0000000007dece8b: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000007dece8f: bf01000000                   mov      edi, 1
0000000007dece94: 4889da                       mov      rdx, rbx
0000000007dece97: e854581601                   call     0x8f526f0
0000000007dece9c: 418b4648                     mov      eax, dword ptr [r14 + 0x48]
0000000007decea0: a802                         test     al, 2
0000000007decea2: 7491                         je       0x7dece35
0000000007decea4: 418b7618                     mov      esi, dword ptr [r14 + 0x18]
0000000007decea8: bf02000000                   mov      edi, 2
0000000007decead: 4889da                       mov      rdx, rbx
0000000007deceb0: e8cb541601                   call     0x8f52380
0000000007deceb5: 418b4648                     mov      eax, dword ptr [r14 + 0x48]
0000000007deceb9: a804                         test     al, 4
0000000007decebb: 7480                         je       0x7dece3d
0000000007decebd: 498b7610                     mov      rsi, qword ptr [r14 + 0x10]
0000000007decec1: 4885f6                       test     rsi, rsi
0000000007decec4: 750e                         jne      0x7deced4
0000000007decec6: 488d05fbf9f002               lea      rax, [rip + 0x2f0f9fb]
0000000007dececd: 488b00                       mov      rax, qword ptr [rax]
0000000007deced0: 488b7010                     mov      rsi, qword ptr [rax + 0x10]
0000000007deced4: bf03000000                   mov      edi, 3
0000000007deced9: 4889da                       mov      rdx, rbx
0000000007decedc: e80f581601                   call     0x8f526f0
0000000007decee1: 418b4648                     mov      eax, dword ptr [r14 + 0x48]
0000000007decee5: a808                         test     al, 8
0000000007decee7: 0f8458ffffff                 je       0x7dece45
0000000007deceed: 418b761c                     mov      esi, dword ptr [r14 + 0x1c]
0000000007decef1: bf04000000                   mov      edi, 4
0000000007decef6: 4889da                       mov      rdx, rbx
0000000007decef9: e882541601                   call     0x8f52380
0000000007decefe: 418b4648                     mov      eax, dword ptr [r14 + 0x48]
0000000007decf02: a810                         test     al, 0x10
0000000007decf04: 0f8443ffffff                 je       0x7dece4d
0000000007decf0a: 498b7620                     mov      rsi, qword ptr [r14 + 0x20]
0000000007decf0e: bf05000000                   mov      edi, 5
0000000007decf13: 4889da                       mov      rdx, rbx
0000000007decf16: e835561601                   call     0x8f52550
0000000007decf1b: 418b4648                     mov      eax, dword ptr [r14 + 0x48]
0000000007decf1f: a820                         test     al, 0x20
0000000007decf21: 0f842effffff                 je       0x7dece55
0000000007decf27: 418b7640                     mov      esi, dword ptr [r14 + 0x40]
0000000007decf2b: bf06000000                   mov      edi, 6
0000000007decf30: 4889da                       mov      rdx, rbx
0000000007decf33: e848541601                   call     0x8f52380
0000000007decf38: 418b4648                     mov      eax, dword ptr [r14 + 0x48]
0000000007decf3c: a840                         test     al, 0x40
0000000007decf3e: 0f8419ffffff                 je       0x7dece5d
0000000007decf44: 498b7628                     mov      rsi, qword ptr [r14 + 0x28]
0000000007decf48: bf07000000                   mov      edi, 7
0000000007decf4d: 4889da                       mov      rdx, rbx
0000000007decf50: e85b541601                   call     0x8f523b0
0000000007decf55: 418b4648                     mov      eax, dword ptr [r14 + 0x48]
0000000007decf59: 84c0                         test     al, al
0000000007decf5b: 0f8904ffffff                 jns      0x7dece65
0000000007decf61: 498b7630                     mov      rsi, qword ptr [r14 + 0x30]
0000000007decf65: 4885f6                       test     rsi, rsi
0000000007decf68: 750e                         jne      0x7decf78
0000000007decf6a: 488d0557f9f002               lea      rax, [rip + 0x2f0f957]
0000000007decf71: 488b00                       mov      rax, qword ptr [rax]
0000000007decf74: 488b7030                     mov      rsi, qword ptr [rax + 0x30]
0000000007decf78: bf08000000                   mov      edi, 8
0000000007decf7d: 4889da                       mov      rdx, rbx
0000000007decf80: e86b571601                   call     0x8f526f0
0000000007decf85: 418b4648                     mov      eax, dword ptr [r14 + 0x48]
0000000007decf89: a900010000                   test     eax, 0x100
0000000007decf8e: 0f84dcfeffff                 je       0x7dece70
0000000007decf94: 498b7638                     mov      rsi, qword ptr [r14 + 0x38]
0000000007decf98: bf09000000                   mov      edi, 9
0000000007decf9d: 4889da                       mov      rdx, rbx
0000000007decfa0: 4883c408                     add      rsp, 8
0000000007decfa4: 5b                           pop      rbx
0000000007decfa5: 415e                         pop      r14
0000000007decfa7: e904541601                   jmp      0x8f523b0
