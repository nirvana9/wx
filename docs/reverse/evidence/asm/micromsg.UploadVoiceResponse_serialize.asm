00000000079f2130: 4156                         push     r14
00000000079f2132: 53                           push     rbx
00000000079f2133: 50                           push     rax
00000000079f2134: 4889f3                       mov      rbx, rsi
00000000079f2137: 4989fe                       mov      r14, rdi
00000000079f213a: 8b4754                       mov      eax, dword ptr [rdi + 0x54]
00000000079f213d: a801                         test     al, 1
00000000079f213f: 7577                         jne      0x79f21b8
00000000079f2141: a802                         test     al, 2
00000000079f2143: 0f858c000000                 jne      0x79f21d5
00000000079f2149: a804                         test     al, 4
00000000079f214b: 0f85a1000000                 jne      0x79f21f2
00000000079f2151: a808                         test     al, 8
00000000079f2153: 0f85b6000000                 jne      0x79f220f
00000000079f2159: a810                         test     al, 0x10
00000000079f215b: 0f85cb000000                 jne      0x79f222c
00000000079f2161: a820                         test     al, 0x20
00000000079f2163: 0f85e0000000                 jne      0x79f2249
00000000079f2169: a840                         test     al, 0x40
00000000079f216b: 0f85f5000000                 jne      0x79f2266
00000000079f2171: 84c0                         test     al, al
00000000079f2173: 0f880a010000                 js       0x79f2283
00000000079f2179: a900010000                   test     eax, 0x100
00000000079f217e: 0f851f010000                 jne      0x79f22a3
00000000079f2184: a900020000                   test     eax, 0x200
00000000079f2189: 0f8534010000                 jne      0x79f22c3
00000000079f218f: a900040000                   test     eax, 0x400
00000000079f2194: 0f855c010000                 jne      0x79f22f6
00000000079f219a: a900080000                   test     eax, 0x800
00000000079f219f: 0f8571010000                 jne      0x79f2316
00000000079f21a5: a900100000                   test     eax, 0x1000
00000000079f21aa: 0f8586010000                 jne      0x79f2336
00000000079f21b0: 4883c408                     add      rsp, 8
00000000079f21b4: 5b                           pop      rbx
00000000079f21b5: 415e                         pop      r14
00000000079f21b7: c3                           ret
00000000079f21b8: 498b7608                     mov      rsi, qword ptr [r14 + 8]
00000000079f21bc: bf01000000                   mov      edi, 1
00000000079f21c1: 4889da                       mov      rdx, rbx
00000000079f21c4: e887035601                   call     0x8f52550
00000000079f21c9: 418b4654                     mov      eax, dword ptr [r14 + 0x54]
00000000079f21cd: a802                         test     al, 2
00000000079f21cf: 0f8474ffffff                 je       0x79f2149
00000000079f21d5: 498b7610                     mov      rsi, qword ptr [r14 + 0x10]
00000000079f21d9: bf02000000                   mov      edi, 2
00000000079f21de: 4889da                       mov      rdx, rbx
00000000079f21e1: e86a035601                   call     0x8f52550
00000000079f21e6: 418b4654                     mov      eax, dword ptr [r14 + 0x54]
00000000079f21ea: a804                         test     al, 4
00000000079f21ec: 0f845fffffff                 je       0x79f2151
00000000079f21f2: 418b7618                     mov      esi, dword ptr [r14 + 0x18]
00000000079f21f6: bf03000000                   mov      edi, 3
00000000079f21fb: 4889da                       mov      rdx, rbx
00000000079f21fe: e87d015601                   call     0x8f52380
00000000079f2203: 418b4654                     mov      eax, dword ptr [r14 + 0x54]
00000000079f2207: a808                         test     al, 8
00000000079f2209: 0f844affffff                 je       0x79f2159
00000000079f220f: 418b761c                     mov      esi, dword ptr [r14 + 0x1c]
00000000079f2213: bf04000000                   mov      edi, 4
00000000079f2218: 4889da                       mov      rdx, rbx
00000000079f221b: e860015601                   call     0x8f52380
00000000079f2220: 418b4654                     mov      eax, dword ptr [r14 + 0x54]
00000000079f2224: a810                         test     al, 0x10
00000000079f2226: 0f8435ffffff                 je       0x79f2161
00000000079f222c: 418b7628                     mov      esi, dword ptr [r14 + 0x28]
00000000079f2230: bf05000000                   mov      edi, 5
00000000079f2235: 4889da                       mov      rdx, rbx
00000000079f2238: e843015601                   call     0x8f52380
00000000079f223d: 418b4654                     mov      eax, dword ptr [r14 + 0x54]
00000000079f2241: a820                         test     al, 0x20
00000000079f2243: 0f8420ffffff                 je       0x79f2169
00000000079f2249: 498b7620                     mov      rsi, qword ptr [r14 + 0x20]
00000000079f224d: bf06000000                   mov      edi, 6
00000000079f2252: 4889da                       mov      rdx, rbx
00000000079f2255: e8f6025601                   call     0x8f52550
00000000079f225a: 418b4654                     mov      eax, dword ptr [r14 + 0x54]
00000000079f225e: a840                         test     al, 0x40
00000000079f2260: 0f840bffffff                 je       0x79f2171
00000000079f2266: 418b762c                     mov      esi, dword ptr [r14 + 0x2c]
00000000079f226a: bf07000000                   mov      edi, 7
00000000079f226f: 4889da                       mov      rdx, rbx
00000000079f2272: e809015601                   call     0x8f52380
00000000079f2277: 418b4654                     mov      eax, dword ptr [r14 + 0x54]
00000000079f227b: 84c0                         test     al, al
00000000079f227d: 0f89f6feffff                 jns      0x79f2179
00000000079f2283: 418b7630                     mov      esi, dword ptr [r14 + 0x30]
00000000079f2287: bf08000000                   mov      edi, 8
00000000079f228c: 4889da                       mov      rdx, rbx
00000000079f228f: e8ec005601                   call     0x8f52380
00000000079f2294: 418b4654                     mov      eax, dword ptr [r14 + 0x54]
00000000079f2298: a900010000                   test     eax, 0x100
00000000079f229d: 0f84e1feffff                 je       0x79f2184
00000000079f22a3: 418b7634                     mov      esi, dword ptr [r14 + 0x34]
00000000079f22a7: bf09000000                   mov      edi, 9
00000000079f22ac: 4889da                       mov      rdx, rbx
00000000079f22af: e8cc005601                   call     0x8f52380
00000000079f22b4: 418b4654                     mov      eax, dword ptr [r14 + 0x54]
00000000079f22b8: a900020000                   test     eax, 0x200
00000000079f22bd: 0f84ccfeffff                 je       0x79f218f
00000000079f22c3: 498b7638                     mov      rsi, qword ptr [r14 + 0x38]
00000000079f22c7: 4885f6                       test     rsi, rsi
00000000079f22ca: 750e                         jne      0x79f22da
00000000079f22cc: 488d05257e3003               lea      rax, [rip + 0x3307e25]
00000000079f22d3: 488b00                       mov      rax, qword ptr [rax]
00000000079f22d6: 488b7038                     mov      rsi, qword ptr [rax + 0x38]
00000000079f22da: bf0a000000                   mov      edi, 0xa
00000000079f22df: 4889da                       mov      rdx, rbx
00000000079f22e2: e809045601                   call     0x8f526f0
00000000079f22e7: 418b4654                     mov      eax, dword ptr [r14 + 0x54]
00000000079f22eb: a900040000                   test     eax, 0x400
00000000079f22f0: 0f84a4feffff                 je       0x79f219a
00000000079f22f6: 418b7648                     mov      esi, dword ptr [r14 + 0x48]
00000000079f22fa: bf0b000000                   mov      edi, 0xb
00000000079f22ff: 4889da                       mov      rdx, rbx
00000000079f2302: e879005601                   call     0x8f52380
00000000079f2307: 418b4654                     mov      eax, dword ptr [r14 + 0x54]
00000000079f230b: a900080000                   test     eax, 0x800
00000000079f2310: 0f848ffeffff                 je       0x79f21a5
00000000079f2316: 498b7640                     mov      rsi, qword ptr [r14 + 0x40]
00000000079f231a: bf0c000000                   mov      edi, 0xc
00000000079f231f: 4889da                       mov      rdx, rbx
00000000079f2322: e889005601                   call     0x8f523b0
00000000079f2327: 418b4654                     mov      eax, dword ptr [r14 + 0x54]
00000000079f232b: a900100000                   test     eax, 0x1000
00000000079f2330: 0f847afeffff                 je       0x79f21b0
00000000079f2336: 418b764c                     mov      esi, dword ptr [r14 + 0x4c]
00000000079f233a: bf0d000000                   mov      edi, 0xd
00000000079f233f: 4889da                       mov      rdx, rbx
00000000079f2342: 4883c408                     add      rsp, 8
00000000079f2346: 5b                           pop      rbx
00000000079f2347: 415e                         pop      r14
00000000079f2349: e932005601                   jmp      0x8f52380
