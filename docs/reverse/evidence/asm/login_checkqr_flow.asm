00000000077c2f40: 55                           push     rbp
00000000077c2f41: 4889e5                       mov      rbp, rsp
00000000077c2f44: 4157                         push     r15
00000000077c2f46: 4156                         push     r14
00000000077c2f48: 4155                         push     r13
00000000077c2f4a: 4154                         push     r12
00000000077c2f4c: 53                           push     rbx
00000000077c2f4d: 4881ecf8000000               sub      rsp, 0xf8
00000000077c2f54: 4989d4                       mov      r12, rdx
00000000077c2f57: 4889b570ffffff               mov      qword ptr [rbp - 0x90], rsi
00000000077c2f5e: 48897dc8                     mov      qword ptr [rbp - 0x38], rdi
00000000077c2f62: 488d05a7875003               lea      rax, [rip + 0x35087a7]
00000000077c2f69: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c2f6c: 7c19                         jl       0x77c2f87
00000000077c2f6e: 488d059f875003               lea      rax, [rip + 0x350879f]
00000000077c2f75: 8b00                         mov      eax, dword ptr [rax]
00000000077c2f77: 89c1                         mov      ecx, eax
00000000077c2f79: f7d1                         not      ecx
00000000077c2f7b: 0fafc8                       imul     ecx, eax
00000000077c2f7e: 83e101                       and      ecx, 1
00000000077c2f81: 0f850e010000                 jne      0x77c3095
00000000077c2f87: 4889e0                       mov      rax, rsp
00000000077c2f8a: 488d48f0                     lea      rcx, [rax - 0x10]
00000000077c2f8e: 48894d98                     mov      qword ptr [rbp - 0x68], rcx
00000000077c2f92: 4889cc                       mov      rsp, rcx
00000000077c2f95: 4889e3                       mov      rbx, rsp
00000000077c2f98: 4881c370ffffff               add      rbx, -0x90
00000000077c2f9f: 4889dc                       mov      rsp, rbx
00000000077c2fa2: 4989e7                       mov      r15, rsp
00000000077c2fa5: 4983c7e0                     add      r15, -0x20
00000000077c2fa9: 4c89fc                       mov      rsp, r15
00000000077c2fac: 4889e1                       mov      rcx, rsp
00000000077c2faf: 4883c1d0                     add      rcx, -0x30
00000000077c2fb3: 48894d90                     mov      qword ptr [rbp - 0x70], rcx
00000000077c2fb7: 4889cc                       mov      rsp, rcx
00000000077c2fba: 4889e1                       mov      rcx, rsp
00000000077c2fbd: 4883c1e0                     add      rcx, -0x20
00000000077c2fc1: 48894da8                     mov      qword ptr [rbp - 0x58], rcx
00000000077c2fc5: 4889cc                       mov      rsp, rcx
00000000077c2fc8: 4889e1                       mov      rcx, rsp
00000000077c2fcb: 4883c1f0                     add      rcx, -0x10
00000000077c2fcf: 48894dd0                     mov      qword ptr [rbp - 0x30], rcx
00000000077c2fd3: 4889cc                       mov      rsp, rcx
00000000077c2fd6: 4889e1                       mov      rcx, rsp
00000000077c2fd9: 4883c1d0                     add      rcx, -0x30
00000000077c2fdd: 48894dc0                     mov      qword ptr [rbp - 0x40], rcx
00000000077c2fe1: 4889cc                       mov      rsp, rcx
00000000077c2fe4: 4989e6                       mov      r14, rsp
00000000077c2fe7: 4983c6d0                     add      r14, -0x30
00000000077c2feb: 4c89f4                       mov      rsp, r14
00000000077c2fee: 4889e1                       mov      rcx, rsp
00000000077c2ff1: 4883c1d0                     add      rcx, -0x30
00000000077c2ff5: 48894d80                     mov      qword ptr [rbp - 0x80], rcx
00000000077c2ff9: 4889cc                       mov      rsp, rcx
00000000077c2ffc: 4989e5                       mov      r13, rsp
00000000077c2fff: 4983c5d0                     add      r13, -0x30
00000000077c3003: 4c89ec                       mov      rsp, r13
00000000077c3006: 4889e1                       mov      rcx, rsp
00000000077c3009: 4881c170ffffff               add      rcx, -0x90
00000000077c3010: 48894d88                     mov      qword ptr [rbp - 0x78], rcx
00000000077c3014: 4889cc                       mov      rsp, rcx
00000000077c3017: 4889e1                       mov      rcx, rsp
00000000077c301a: 4883c1e0                     add      rcx, -0x20
00000000077c301e: 48894db8                     mov      qword ptr [rbp - 0x48], rcx
00000000077c3022: 4889cc                       mov      rsp, rcx
00000000077c3025: 4889e1                       mov      rcx, rsp
00000000077c3028: 4881c170ffffff               add      rcx, -0x90
00000000077c302f: 48894da0                     mov      qword ptr [rbp - 0x60], rcx
00000000077c3033: 4889cc                       mov      rsp, rcx
00000000077c3036: 4889e1                       mov      rcx, rsp
00000000077c3039: 4883c1e0                     add      rcx, -0x20
00000000077c303d: 48894db0                     mov      qword ptr [rbp - 0x50], rcx
00000000077c3041: 4889cc                       mov      rsp, rcx
00000000077c3044: 4889e1                       mov      rcx, rsp
00000000077c3047: 4883c1b0                     add      rcx, -0x50
00000000077c304b: 48898d60ffffff               mov      qword ptr [rbp - 0xa0], rcx
00000000077c3052: 4889cc                       mov      rsp, rcx
00000000077c3055: 4889e1                       mov      rcx, rsp
00000000077c3058: 4883c1b0                     add      rcx, -0x50
00000000077c305c: 48898d68ffffff               mov      qword ptr [rbp - 0x98], rcx
00000000077c3063: 4889cc                       mov      rsp, rcx
00000000077c3066: 4c8960f0                     mov      qword ptr [rax - 0x10], r12
00000000077c306a: bf02000000                   mov      edi, 2
00000000077c306f: e81c3c9501                   call     0x9116c90
00000000077c3074: 488d0d95865003               lea      rcx, [rip + 0x3508695]
00000000077c307b: 83390a                       cmp      dword ptr [rcx], 0xa
00000000077c307e: 7c24                         jl       0x77c30a4
00000000077c3080: 488d0d8d865003               lea      rcx, [rip + 0x350868d]
00000000077c3087: 8b09                         mov      ecx, dword ptr [rcx]
00000000077c3089: 89ca                         mov      edx, ecx
00000000077c308b: f7d2                         not      edx
00000000077c308d: 0fafd1                       imul     edx, ecx
00000000077c3090: 83e201                       and      edx, 1
00000000077c3093: 740f                         je       0x77c30a4
00000000077c3095: bf02000000                   mov      edi, 2
00000000077c309a: e8f13b9501                   call     0x9116c90
00000000077c309f: e9e3feffff                   jmp      0x77c2f87
00000000077c30a4: 85c0                         test     eax, eax
00000000077c30a6: 4c8b6590                     mov      r12, qword ptr [rbp - 0x70]
00000000077c30aa: 0f845a010000                 je       0x77c320a
00000000077c30b0: 4c89ff                       mov      rdi, r15
00000000077c30b3: e818f9beff                   call     0x73b29d0
00000000077c30b8: 488d0551865003               lea      rax, [rip + 0x3508651]
00000000077c30bf: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c30c2: 7c1f                         jl       0x77c30e3
00000000077c30c4: 488d0549865003               lea      rax, [rip + 0x3508649]
00000000077c30cb: 8b00                         mov      eax, dword ptr [rax]
00000000077c30cd: 89c1                         mov      ecx, eax
00000000077c30cf: f7d1                         not      ecx
00000000077c30d1: 0fafc8                       imul     ecx, eax
00000000077c30d4: 83e101                       and      ecx, 1
00000000077c30d7: 740a                         je       0x77c30e3
00000000077c30d9: 4c89ff                       mov      rdi, r15
00000000077c30dc: e8eff8beff                   call     0x73b29d0
00000000077c30e1: ebcd                         jmp      0x77c30b0
00000000077c30e3: 41f60701                     test     byte ptr [r15], 1
00000000077c30e7: 7406                         je       0x77c30ef
00000000077c30e9: 498b5710                     mov      rdx, qword ptr [r15 + 0x10]
00000000077c30ed: eb04                         jmp      0x77c30f3
00000000077c30ef: 498d5701                     lea      rdx, [r15 + 1]
00000000077c30f3: 488d0d92dc80f9               lea      rcx, [rip - 0x67f236e]
00000000077c30fa: 4c8d05507f70f9               lea      r8, [rip - 0x68f80b0]
00000000077c3101: 4889df                       mov      rdi, rbx
00000000077c3104: be02000000                   mov      esi, 2
00000000077c3109: 41b93d020000                 mov      r9d, 0x23d
00000000077c310f: 6a00                         push     0
00000000077c3111: 6a00                         push     0
00000000077c3113: e888e49401                   call     0x91115a0
00000000077c3118: 4883c410                     add      rsp, 0x10
00000000077c311c: 0f57c0                       xorps    xmm0, xmm0
00000000077c311f: 0f298550ffffff               movaps   xmmword ptr [rbp - 0xb0], xmm0
00000000077c3126: 0f298540ffffff               movaps   xmmword ptr [rbp - 0xc0], xmm0
00000000077c312d: 0f298530ffffff               movaps   xmmword ptr [rbp - 0xd0], xmm0
00000000077c3134: 0f298520ffffff               movaps   xmmword ptr [rbp - 0xe0], xmm0
00000000077c313b: 0f298510ffffff               movaps   xmmword ptr [rbp - 0xf0], xmm0
00000000077c3142: 0f298500ffffff               movaps   xmmword ptr [rbp - 0x100], xmm0
00000000077c3149: 0f2985f0feffff               movaps   xmmword ptr [rbp - 0x110], xmm0
00000000077c3150: 0f2985e0feffff               movaps   xmmword ptr [rbp - 0x120], xmm0
00000000077c3157: 488d35f37e70f9               lea      rsi, [rip - 0x68f810d]
00000000077c315e: 488d95e0feffff               lea      rdx, [rbp - 0x120]
00000000077c3165: 4889df                       mov      rdi, rbx
00000000077c3168: e883e79401                   call     0x91118f0
00000000077c316d: 0f1f00                       nop      dword ptr [rax]
00000000077c3170: 4889df                       mov      rdi, rbx
00000000077c3173: e8b8e49401                   call     0x9111630
00000000077c3178: 41f60701                     test     byte ptr [r15], 1
00000000077c317c: 7409                         je       0x77c3187
00000000077c317e: 498b7f10                     mov      rdi, qword ptr [r15 + 0x10]
00000000077c3182: e8b96fd4fc                   call     0x450a140
00000000077c3187: 488d0582855003               lea      rax, [rip + 0x3508582]
00000000077c318e: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c3191: 7c77                         jl       0x77c320a
00000000077c3193: 488d057a855003               lea      rax, [rip + 0x350857a]
00000000077c319a: 8b00                         mov      eax, dword ptr [rax]
00000000077c319c: 89c1                         mov      ecx, eax
00000000077c319e: f7d1                         not      ecx
00000000077c31a0: 0fafc8                       imul     ecx, eax
00000000077c31a3: 83e101                       and      ecx, 1
00000000077c31a6: 7462                         je       0x77c320a
00000000077c31a8: 0f1f840000000000             nop      dword ptr [rax + rax]
00000000077c31b0: 4889df                       mov      rdi, rbx
00000000077c31b3: e878e49401                   call     0x9111630
00000000077c31b8: 41f60701                     test     byte ptr [r15], 1
00000000077c31bc: 7409                         je       0x77c31c7
00000000077c31be: 498b7f10                     mov      rdi, qword ptr [r15 + 0x10]
00000000077c31c2: e8796fd4fc                   call     0x450a140
00000000077c31c7: 4889df                       mov      rdi, rbx
00000000077c31ca: e861e49401                   call     0x9111630
00000000077c31cf: 41f60701                     test     byte ptr [r15], 1
00000000077c31d3: 7409                         je       0x77c31de
00000000077c31d5: 498b7f10                     mov      rdi, qword ptr [r15 + 0x10]
00000000077c31d9: e8626fd4fc                   call     0x450a140
00000000077c31de: 488d052f855003               lea      rax, [rip + 0x350852f]
00000000077c31e5: 8b08                         mov      ecx, dword ptr [rax]
00000000077c31e7: 89c8                         mov      eax, ecx
00000000077c31e9: f7d0                         not      eax
00000000077c31eb: 0fafc1                       imul     eax, ecx
00000000077c31ee: 83e001                       and      eax, 1
00000000077c31f1: 488d0d18855003               lea      rcx, [rip + 0x3508518]
00000000077c31f8: 83390a                       cmp      dword ptr [rcx], 0xa
00000000077c31fb: 0f8c6fffffff                 jl       0x77c3170
00000000077c3201: 85c0                         test     eax, eax
00000000077c3203: 75ab                         jne      0x77c31b0
00000000077c3205: e966ffffff                   jmp      0x77c3170
00000000077c320a: 0f28058f6459f9               movaps   xmm0, xmmword ptr [rip - 0x6a69b71]
00000000077c3211: 410f11442420                 movups   xmmword ptr [r12 + 0x20], xmm0
00000000077c3217: 410f11442410                 movups   xmmword ptr [r12 + 0x10], xmm0
00000000077c321d: 410f110424                   movups   xmmword ptr [r12], xmm0
00000000077c3222: 4c89e7                       mov      rdi, r12
00000000077c3225: e8a6465000                   call     0x7cc78d0
00000000077c322a: 48bbaaaaaaaaaaaaaaaa         movabs   rbx, 0xaaaaaaaaaaaaaaaa
00000000077c3234: 488b45a8                     mov      rax, qword ptr [rbp - 0x58]
00000000077c3238: 48895810                     mov      qword ptr [rax + 0x10], rbx
00000000077c323c: 0f28055d6459f9               movaps   xmm0, xmmword ptr [rip - 0x6a69ba3]
00000000077c3243: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077c3246: 488d05c3845003               lea      rax, [rip + 0x35084c3]
00000000077c324d: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c3250: 0f8ca2000000                 jl       0x77c32f8
00000000077c3256: 488d05b7845003               lea      rax, [rip + 0x35084b7]
00000000077c325d: 8b00                         mov      eax, dword ptr [rax]
00000000077c325f: 89c1                         mov      ecx, eax
00000000077c3261: f7d1                         not      ecx
00000000077c3263: 0fafc8                       imul     ecx, eax
00000000077c3266: 83e101                       and      ecx, 1
00000000077c3269: 0f8489000000                 je       0x77c32f8
00000000077c326f: 4c8b7da8                     mov      r15, qword ptr [rbp - 0x58]
00000000077c3273: 666666662e0f1f840000000000   nop      word ptr cs:[rax + rax]
00000000077c3280: 0f2805196459f9               movaps   xmm0, xmmword ptr [rip - 0x6a69be7]
00000000077c3287: 410f11442420                 movups   xmmword ptr [r12 + 0x20], xmm0
00000000077c328d: 410f11442410                 movups   xmmword ptr [r12 + 0x10], xmm0
00000000077c3293: 410f110424                   movups   xmmword ptr [r12], xmm0
00000000077c3298: 4c89e7                       mov      rdi, r12
00000000077c329b: e830465000                   call     0x7cc78d0
00000000077c32a0: 49895f10                     mov      qword ptr [r15 + 0x10], rbx
00000000077c32a4: 0f2805f56359f9               movaps   xmm0, xmmword ptr [rip - 0x6a69c0b]
00000000077c32ab: 410f1107                     movups   xmmword ptr [r15], xmm0
00000000077c32af: 410f11442420                 movups   xmmword ptr [r12 + 0x20], xmm0
00000000077c32b5: 410f11442410                 movups   xmmword ptr [r12 + 0x10], xmm0
00000000077c32bb: 410f110424                   movups   xmmword ptr [r12], xmm0
00000000077c32c0: 4c89e7                       mov      rdi, r12
00000000077c32c3: e808465000                   call     0x7cc78d0
00000000077c32c8: 49895f10                     mov      qword ptr [r15 + 0x10], rbx
00000000077c32cc: 0f2805cd6359f9               movaps   xmm0, xmmword ptr [rip - 0x6a69c33]
00000000077c32d3: 410f1107                     movups   xmmword ptr [r15], xmm0
00000000077c32d7: 488d0532845003               lea      rax, [rip + 0x3508432]
00000000077c32de: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c32e1: 7c15                         jl       0x77c32f8
00000000077c32e3: 488d052a845003               lea      rax, [rip + 0x350842a]
00000000077c32ea: 8b00                         mov      eax, dword ptr [rax]
00000000077c32ec: 89c1                         mov      ecx, eax
00000000077c32ee: f7d1                         not      ecx
00000000077c32f0: 0fafc8                       imul     ecx, eax
00000000077c32f3: 83e101                       and      ecx, 1
00000000077c32f6: 7588                         jne      0x77c3280
00000000077c32f8: be10000000                   mov      esi, 0x10
00000000077c32fd: 488b7da8                     mov      rdi, qword ptr [rbp - 0x58]
00000000077c3301: e8ca8b2f02                   call     0x9abbed0
00000000077c3306: 41804c242c02                 or       byte ptr [r12 + 0x2c], 2
00000000077c330c: 498b5c2410                   mov      rbx, qword ptr [r12 + 0x10]
00000000077c3311: 4885db                       test     rbx, rbx
00000000077c3314: 751a                         jne      0x77c3330
00000000077c3316: bf20000000                   mov      edi, 0x20
00000000077c331b: e880aaea02                   call     0xa66dda0
00000000077c3320: 4889c3                       mov      rbx, rax
00000000077c3323: 4889c7                       mov      rdi, rax
00000000077c3326: e885d13d00                   call     0x7ba04b0
00000000077c332b: 49895c2410                   mov      qword ptr [r12 + 0x10], rbx
00000000077c3330: 488b45a8                     mov      rax, qword ptr [rbp - 0x58]
00000000077c3334: f60001                       test     byte ptr [rax], 1
00000000077c3337: 7406                         je       0x77c333f
00000000077c3339: 4c8b7810                     mov      r15, qword ptr [rax + 0x10]
00000000077c333d: eb04                         jmp      0x77c3343
00000000077c333f: 4c8d7801                     lea      r15, [rax + 1]
00000000077c3343: 834b1802                     or       dword ptr [rbx + 0x18], 2
00000000077c3347: 488b7b08                     mov      rdi, qword ptr [rbx + 8]
00000000077c334b: 483b3dae013303               cmp      rdi, qword ptr [rip + 0x33301ae] ; reloc 0xad176f0
00000000077c3352: 751f                         jne      0x77c3373
00000000077c3354: bf18000000                   mov      edi, 0x18
00000000077c3359: e842aaea02                   call     0xa66dda0
00000000077c335e: 4889c7                       mov      rdi, rax
00000000077c3361: 0f57c0                       xorps    xmm0, xmm0
00000000077c3364: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077c3367: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077c336f: 48894308                     mov      qword ptr [rbx + 8], rax
00000000077c3373: ba10000000                   mov      edx, 0x10
00000000077c3378: 4c89fe                       mov      rsi, r15
00000000077c337b: e8809bd4fc                   call     0x450cf00
00000000077c3380: 41804c242c02                 or       byte ptr [r12 + 0x2c], 2
00000000077c3386: 498b5c2410                   mov      rbx, qword ptr [r12 + 0x10]
00000000077c338b: 4885db                       test     rbx, rbx
00000000077c338e: 751a                         jne      0x77c33aa
00000000077c3390: bf20000000                   mov      edi, 0x20
00000000077c3395: e806aaea02                   call     0xa66dda0
00000000077c339a: 4889c3                       mov      rbx, rax
00000000077c339d: 4889c7                       mov      rdi, rax
00000000077c33a0: e80bd13d00                   call     0x7ba04b0
00000000077c33a5: 49895c2410                   mov      qword ptr [r12 + 0x10], rbx
00000000077c33aa: 804b1801                     or       byte ptr [rbx + 0x18], 1
00000000077c33ae: c7431010000000               mov      dword ptr [rbx + 0x10], 0x10
00000000077c33b5: 41804c242c04                 or       byte ptr [r12 + 0x2c], 4
00000000077c33bb: 498b7c2418                   mov      rdi, qword ptr [r12 + 0x18]
00000000077c33c0: 483b3d39013303               cmp      rdi, qword ptr [rip + 0x3330139] ; reloc 0xad176f0
00000000077c33c7: 7520                         jne      0x77c33e9
00000000077c33c9: bf18000000                   mov      edi, 0x18
00000000077c33ce: e8cda9ea02                   call     0xa66dda0
00000000077c33d3: 4889c7                       mov      rdi, rax
00000000077c33d6: 0f57c0                       xorps    xmm0, xmm0
00000000077c33d9: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077c33dc: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077c33e4: 4989442418                   mov      qword ptr [r12 + 0x18], rax
00000000077c33e9: 488b8570ffffff               mov      rax, qword ptr [rbp - 0x90]
00000000077c33f0: 488db018010000               lea      rsi, [rax + 0x118]
00000000077c33f7: e8b4a9d4fc                   call     0x450ddb0
00000000077c33fc: 41804c242c10                 or       byte ptr [r12 + 0x2c], 0x10
00000000077c3402: 41c744242400000000           mov      dword ptr [r12 + 0x24], 0
00000000077c340b: e8f0ddbcff                   call     0x7391200
00000000077c3410: 89c0                         mov      eax, eax
00000000077c3412: 4869c0d34d6210               imul     rax, rax, 0x10624dd3
00000000077c3419: 48c1e826                     shr      rax, 0x26
00000000077c341d: 4189442420                   mov      dword ptr [r12 + 0x20], eax
00000000077c3422: 41804c242c18                 or       byte ptr [r12 + 0x2c], 0x18
00000000077c3428: 41c744242400000000           mov      dword ptr [r12 + 0x24], 0
00000000077c3431: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077c3435: c60000                       mov      byte ptr [rax], 0
00000000077c3438: 488b5dc8                     mov      rbx, qword ptr [rbp - 0x38]
00000000077c343c: 488d4320                     lea      rax, [rbx + 0x20]
00000000077c3440: 48898578ffffff               mov      qword ptr [rbp - 0x88], rax
00000000077c3447: 0f57c0                       xorps    xmm0, xmm0
00000000077c344a: 0f114320                     movups   xmmword ptr [rbx + 0x20], xmm0
00000000077c344e: 0f114310                     movups   xmmword ptr [rbx + 0x10], xmm0
00000000077c3452: 0f1103                       movups   xmmword ptr [rbx], xmm0
00000000077c3455: bf98000000                   mov      edi, 0x98
00000000077c345a: e841a9ea02                   call     0xa66dda0
00000000077c345f: 0f57c0                       xorps    xmm0, xmm0
00000000077c3462: 0f114008                     movups   xmmword ptr [rax + 8], xmm0
00000000077c3466: 488d0dbb8b1a03               lea      rcx, [rip + 0x31a8bbb]
00000000077c346d: 4883c110                     add      rcx, 0x10
00000000077c3471: 488908                       mov      qword ptr [rax], rcx
00000000077c3474: 4889c1                       mov      rcx, rax
00000000077c3477: 4883c118                     add      rcx, 0x18
00000000077c347b: 0f114018                     movups   xmmword ptr [rax + 0x18], xmm0
00000000077c347f: 0f114028                     movups   xmmword ptr [rax + 0x28], xmm0
00000000077c3483: 0f114038                     movups   xmmword ptr [rax + 0x38], xmm0
00000000077c3487: 0f114048                     movups   xmmword ptr [rax + 0x48], xmm0
00000000077c348b: 0f114058                     movups   xmmword ptr [rax + 0x58], xmm0
00000000077c348f: 0f114068                     movups   xmmword ptr [rax + 0x68], xmm0
00000000077c3493: 0f114078                     movups   xmmword ptr [rax + 0x78], xmm0
00000000077c3497: 0f118088000000               movups   xmmword ptr [rax + 0x88], xmm0
00000000077c349e: 48894b20                     mov      qword ptr [rbx + 0x20], rcx
00000000077c34a2: 48894328                     mov      qword ptr [rbx + 0x28], rax
00000000077c34a6: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c34aa: 0f2805ef6159f9               movaps   xmm0, xmmword ptr [rip - 0x6a69e11]
00000000077c34b1: 0f114020                     movups   xmmword ptr [rax + 0x20], xmm0
00000000077c34b5: 0f114010                     movups   xmmword ptr [rax + 0x10], xmm0
00000000077c34b9: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077c34bc: 488b4598                     mov      rax, qword ptr [rbp - 0x68]
00000000077c34c0: 488b18                       mov      rbx, qword ptr [rax]
00000000077c34c3: 4889df                       mov      rdi, rbx
00000000077c34c6: e8459887fe                   call     0x603cd10
00000000077c34cb: 488d0d42825003               lea      rcx, [rip + 0x3508242]
00000000077c34d2: 8b09                         mov      ecx, dword ptr [rcx]
00000000077c34d4: 89ca                         mov      edx, ecx
00000000077c34d6: f7d2                         not      edx
00000000077c34d8: 0fafd1                       imul     edx, ecx
00000000077c34db: f6c201                       test     dl, 1
00000000077c34de: 0f94c2                       sete     dl
00000000077c34e1: 488d0d28825003               lea      rcx, [rip + 0x3508228]
00000000077c34e8: 83390a                       cmp      dword ptr [rcx], 0xa
00000000077c34eb: 0f9cc1                       setl     cl
00000000077c34ee: 08d1                         or       cl, dl
00000000077c34f0: 49bf00000000c0d40100         movabs   r15, 0x1d4c000000000
00000000077c34fa: 80f901                       cmp      cl, 1
00000000077c34fd: 0f8436010000                 je       0x77c3639
00000000077c3503: e94d010000                   jmp      0x77c3655
00000000077c3508: eb00                         jmp      0x77c350a
00000000077c350a: 488945d0                     mov      qword ptr [rbp - 0x30], rax
00000000077c350e: 4889df                       mov      rdi, rbx
00000000077c3511: e82a6cd4fc                   call     0x450a140
00000000077c3516: e9e8000000                   jmp      0x77c3603
00000000077c351b: 488945d0                     mov      qword ptr [rbp - 0x30], rax
00000000077c351f: 4889df                       mov      rdi, rbx
00000000077c3522: e809e19401                   call     0x9111630
00000000077c3527: eb07                         jmp      0x77c3530
00000000077c3529: 488945d0                     mov      qword ptr [rbp - 0x30], rax
00000000077c352d: 0f1f00                       nop      dword ptr [rax]
00000000077c3530: 488d05d9815003               lea      rax, [rip + 0x35081d9]
00000000077c3537: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c353a: 7c6c                         jl       0x77c35a8
00000000077c353c: 488d05d1815003               lea      rax, [rip + 0x35081d1]
00000000077c3543: 8b00                         mov      eax, dword ptr [rax]
00000000077c3545: 89c1                         mov      ecx, eax
00000000077c3547: f7d1                         not      ecx
00000000077c3549: 0fafc8                       imul     ecx, eax
00000000077c354c: 83e101                       and      ecx, 1
00000000077c354f: 7457                         je       0x77c35a8
00000000077c3551: 41f60701                     test     byte ptr [r15], 1
00000000077c3555: 7409                         je       0x77c3560
00000000077c3557: 498b7f10                     mov      rdi, qword ptr [r15 + 0x10]
00000000077c355b: e8e06bd4fc                   call     0x450a140
00000000077c3560: 41f60701                     test     byte ptr [r15], 1
00000000077c3564: 74ca                         je       0x77c3530
00000000077c3566: 498b7f10                     mov      rdi, qword ptr [r15 + 0x10]
00000000077c356a: e8d16bd4fc                   call     0x450a140
00000000077c356f: ebbf                         jmp      0x77c3530
00000000077c3571: 6666666666662e0f1f840000000000 nop      word ptr cs:[rax + rax]
00000000077c3580: 488d058d815003               lea      rax, [rip + 0x350818d]
00000000077c3587: 8b00                         mov      eax, dword ptr [rax]
00000000077c3589: 89c1                         mov      ecx, eax
00000000077c358b: f7d1                         not      ecx
00000000077c358d: 0fafc8                       imul     ecx, eax
00000000077c3590: 83e101                       and      ecx, 1
00000000077c3593: 0f84580d0000                 je       0x77c42f1
00000000077c3599: 41f60701                     test     byte ptr [r15], 1
00000000077c359d: 7409                         je       0x77c35a8
00000000077c359f: 498b7f10                     mov      rdi, qword ptr [r15 + 0x10]
00000000077c35a3: e8986bd4fc                   call     0x450a140
00000000077c35a8: 41f60701                     test     byte ptr [r15], 1
00000000077c35ac: 7409                         je       0x77c35b7
00000000077c35ae: 498b7f10                     mov      rdi, qword ptr [r15 + 0x10]
00000000077c35b2: e8896bd4fc                   call     0x450a140
00000000077c35b7: 488d0552815003               lea      rax, [rip + 0x3508152]
00000000077c35be: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c35c1: 7dbd                         jge      0x77c3580
00000000077c35c3: e9290d0000                   jmp      0x77c42f1
00000000077c35c8: 488945d0                     mov      qword ptr [rbp - 0x30], rax
00000000077c35cc: e97d0b0000                   jmp      0x77c414e
00000000077c35d1: 488945d0                     mov      qword ptr [rbp - 0x30], rax
00000000077c35d5: 488bbd78ffffff               mov      rdi, qword ptr [rbp - 0x88]
00000000077c35dc: e8dfaa0200                   call     0x77ee0c0
00000000077c35e1: f6430801                     test     byte ptr [rbx + 8], 1
00000000077c35e5: 741c                         je       0x77c3603
00000000077c35e7: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077c35eb: 488b7818                     mov      rdi, qword ptr [rax + 0x18]
00000000077c35ef: e84c6bd4fc                   call     0x450a140
00000000077c35f4: eb0d                         jmp      0x77c3603
00000000077c35f6: 488945d0                     mov      qword ptr [rbp - 0x30], rax
00000000077c35fa: e9870c0000                   jmp      0x77c4286
00000000077c35ff: 488945d0                     mov      qword ptr [rbp - 0x30], rax
00000000077c3603: 488d050a815003               lea      rax, [rip + 0x350810a]
00000000077c360a: 8b10                         mov      edx, dword ptr [rax]
00000000077c360c: 488d05fd805003               lea      rax, [rip + 0x35080fd]
00000000077c3613: 8b08                         mov      ecx, dword ptr [rax]
00000000077c3615: 89d0                         mov      eax, edx
00000000077c3617: f7d0                         not      eax
00000000077c3619: 0fafc2                       imul     eax, edx
00000000077c361c: 83e001                       and      eax, 1
00000000077c361f: 83f90a                       cmp      ecx, 0xa
00000000077c3622: 488b5da8                     mov      rbx, qword ptr [rbp - 0x58]
00000000077c3626: 0f8c1b0c0000                 jl       0x77c4247
00000000077c362c: 85c0                         test     eax, eax
00000000077c362e: 0f85420c0000                 jne      0x77c4276
00000000077c3634: e90e0c0000                   jmp      0x77c4247
00000000077c3639: 4d893e                       mov      qword ptr [r14], r15
00000000077c363c: 41c7462400000000             mov      dword ptr [r14 + 0x24], 0
00000000077c3644: 0f57c0                       xorps    xmm0, xmm0
00000000077c3647: 410f114608                   movups   xmmword ptr [r14 + 8], xmm0
00000000077c364c: 410f114611                   movups   xmmword ptr [r14 + 0x11], xmm0
00000000077c3651: 84c9                         test     cl, cl
00000000077c3653: 751a                         jne      0x77c366f
00000000077c3655: 4d893e                       mov      qword ptr [r14], r15
00000000077c3658: 41c7462400000000             mov      dword ptr [r14 + 0x24], 0
00000000077c3660: 0f57c0                       xorps    xmm0, xmm0
00000000077c3663: 410f114608                   movups   xmmword ptr [r14 + 8], xmm0
00000000077c3668: 410f114611                   movups   xmmword ptr [r14 + 0x11], xmm0
00000000077c366d: ebca                         jmp      0x77c3639
00000000077c366f: 4d8d6608                     lea      r12, [r14 + 8]
00000000077c3673: 488b7dc0                     mov      rdi, qword ptr [rbp - 0x40]
00000000077c3677: 4889c6                       mov      rsi, rax
00000000077c367a: 488b5590                     mov      rdx, qword ptr [rbp - 0x70]
00000000077c367e: 488b4da8                     mov      rcx, qword ptr [rbp - 0x58]
00000000077c3682: 4d89f0                       mov      r8, r14
00000000077c3685: e8760c0000                   call     0x77c4300
00000000077c368a: 660f1f440000                 nop      word ptr [rax + rax]
00000000077c3690: 41f6042401                   test     byte ptr [r12], 1
00000000077c3695: 7409                         je       0x77c36a0
00000000077c3697: 498b7e18                     mov      rdi, qword ptr [r14 + 0x18]
00000000077c369b: e8a06ad4fc                   call     0x450a140
00000000077c36a0: 488d0569805003               lea      rax, [rip + 0x3508069]
00000000077c36a7: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c36aa: 7c27                         jl       0x77c36d3
00000000077c36ac: 488d0561805003               lea      rax, [rip + 0x3508061]
00000000077c36b3: 8b00                         mov      eax, dword ptr [rax]
00000000077c36b5: 89c1                         mov      ecx, eax
00000000077c36b7: f7d1                         not      ecx
00000000077c36b9: 0fafc8                       imul     ecx, eax
00000000077c36bc: 83e101                       and      ecx, 1
00000000077c36bf: 7412                         je       0x77c36d3
00000000077c36c1: 41f6042401                   test     byte ptr [r12], 1
00000000077c36c6: 74c8                         je       0x77c3690
00000000077c36c8: 498b7e18                     mov      rdi, qword ptr [r14 + 0x18]
00000000077c36cc: e86f6ad4fc                   call     0x450a140
00000000077c36d1: ebbd                         jmp      0x77c3690
00000000077c36d3: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c36d7: 488b4020                     mov      rax, qword ptr [rax + 0x20]
00000000077c36db: f6401c01                     test     byte ptr [rax + 0x1c], 1
00000000077c36df: 4c8b6590                     mov      r12, qword ptr [rbp - 0x70]
00000000077c36e3: 4c8b75a8                     mov      r14, qword ptr [rbp - 0x58]
00000000077c36e7: 0f84c1020000                 je       0x77c39ae
00000000077c36ed: 488b4008                     mov      rax, qword ptr [rax + 8]
00000000077c36f1: 4885c0                       test     rax, rax
00000000077c36f4: 740e                         je       0x77c3704
00000000077c36f6: 817810cffeffff               cmp      dword ptr [rax + 0x10], 0xfffffecf
00000000077c36fd: 7420                         je       0x77c371f
00000000077c36ff: e9aa020000                   jmp      0x77c39ae
00000000077c3704: 488d059d855303               lea      rax, [rip + 0x353859d]
00000000077c370b: 488b00                       mov      rax, qword ptr [rax]
00000000077c370e: 488b4008                     mov      rax, qword ptr [rax + 8]
00000000077c3712: 817810cffeffff               cmp      dword ptr [rax + 0x10], 0xfffffecf
00000000077c3719: 0f858f020000                 jne      0x77c39ae
00000000077c371f: e83c3a2300                   call     0x79f7160
00000000077c3724: 84c0                         test     al, al
00000000077c3726: 0f8482020000                 je       0x77c39ae
00000000077c372c: 4889df                       mov      rdi, rbx
00000000077c372f: e8dc9587fe                   call     0x603cd10
00000000077c3734: 488d0dd97f5003               lea      rcx, [rip + 0x3507fd9]
00000000077c373b: 8b09                         mov      ecx, dword ptr [rcx]
00000000077c373d: 89ca                         mov      edx, ecx
00000000077c373f: f7d2                         not      edx
00000000077c3741: 0fafd1                       imul     edx, ecx
00000000077c3744: f6c201                       test     dl, 1
00000000077c3747: 0f94c2                       sete     dl
00000000077c374a: 488d0dbf7f5003               lea      rcx, [rip + 0x3507fbf]
00000000077c3751: 83390a                       cmp      dword ptr [rcx], 0xa
00000000077c3754: 0f9cc1                       setl     cl
00000000077c3757: 08d1                         or       cl, dl
00000000077c3759: 80f901                       cmp      cl, 1
00000000077c375c: 7424                         je       0x77c3782
00000000077c375e: eb3f                         jmp      0x77c379f
00000000077c3760: e986090000                   jmp      0x77c40eb
00000000077c3765: 488945d0                     mov      qword ptr [rbp - 0x30], rax
00000000077c3769: 41f6042401                   test     byte ptr [r12], 1
00000000077c376e: 0f84da090000                 je       0x77c414e
00000000077c3774: 498b7e18                     mov      rdi, qword ptr [r14 + 0x18]
00000000077c3778: e8c369d4fc                   call     0x450a140
00000000077c377d: e9cc090000                   jmp      0x77c414e
00000000077c3782: 4d897d00                     mov      qword ptr [r13], r15
00000000077c3786: 41c7452400000000             mov      dword ptr [r13 + 0x24], 0
00000000077c378e: 0f57c0                       xorps    xmm0, xmm0
00000000077c3791: 410f114508                   movups   xmmword ptr [r13 + 8], xmm0
00000000077c3796: 410f114511                   movups   xmmword ptr [r13 + 0x11], xmm0
00000000077c379b: 84c9                         test     cl, cl
00000000077c379d: 751b                         jne      0x77c37ba
00000000077c379f: 4d897d00                     mov      qword ptr [r13], r15
00000000077c37a3: 41c7452400000000             mov      dword ptr [r13 + 0x24], 0
00000000077c37ab: 0f57c0                       xorps    xmm0, xmm0
00000000077c37ae: 410f114508                   movups   xmmword ptr [r13 + 8], xmm0
00000000077c37b3: 410f114511                   movups   xmmword ptr [r13 + 0x11], xmm0
00000000077c37b8: ebc8                         jmp      0x77c3782
00000000077c37ba: 498d4d08                     lea      rcx, [r13 + 8]
00000000077c37be: 48894d98                     mov      qword ptr [rbp - 0x68], rcx
00000000077c37c2: 4c8b7d80                     mov      r15, qword ptr [rbp - 0x80]
00000000077c37c6: 4c89ff                       mov      rdi, r15
00000000077c37c9: 4889c6                       mov      rsi, rax
00000000077c37cc: 4c89e2                       mov      rdx, r12
00000000077c37cf: 4c89f1                       mov      rcx, r14
00000000077c37d2: 4d89e8                       mov      r8, r13
00000000077c37d5: e8260b0000                   call     0x77c4300
00000000077c37da: 498b07                       mov      rax, qword ptr [r15]
00000000077c37dd: 488b4dc0                     mov      rcx, qword ptr [rbp - 0x40]
00000000077c37e1: 488901                       mov      qword ptr [rcx], rax
00000000077c37e4: 488d7908                     lea      rdi, [rcx + 8]
00000000077c37e8: 498d5f08                     lea      rbx, [r15 + 8]
00000000077c37ec: 4889de                       mov      rsi, rbx
00000000077c37ef: e8bca5d4fc                   call     0x450ddb0
00000000077c37f4: 498b4f20                     mov      rcx, qword ptr [r15 + 0x20]
00000000077c37f8: 498b4728                     mov      rax, qword ptr [r15 + 0x28]
00000000077c37fc: 4885c0                       test     rax, rax
00000000077c37ff: 7405                         je       0x77c3806
00000000077c3801: f048ff4008                   lock inc qword ptr [rax + 8]
00000000077c3806: 488b55c0                     mov      rdx, qword ptr [rbp - 0x40]
00000000077c380a: 48894a20                     mov      qword ptr [rdx + 0x20], rcx
00000000077c380e: 4c8b7228                     mov      r14, qword ptr [rdx + 0x28]
00000000077c3812: 48894228                     mov      qword ptr [rdx + 0x28], rax
00000000077c3816: 4d85f6                       test     r14, r14
00000000077c3819: 7423                         je       0x77c383e
00000000077c381b: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000077c3822: f0490fc14608                 lock xadd qword ptr [r14 + 8], rax
00000000077c3828: 4885c0                       test     rax, rax
00000000077c382b: 7511                         jne      0x77c383e
00000000077c382d: 498b06                       mov      rax, qword ptr [r14]
00000000077c3830: 4c89f7                       mov      rdi, r14
00000000077c3833: ff5010                       call     qword ptr [rax + 0x10]
00000000077c3836: 4c89f7                       mov      rdi, r14
00000000077c3839: e89239d7fc                   call     0x45371d0
00000000077c383e: 488b4580                     mov      rax, qword ptr [rbp - 0x80]
00000000077c3842: 4c8b7028                     mov      r14, qword ptr [rax + 0x28]
00000000077c3846: 4d85f6                       test     r14, r14
00000000077c3849: 7423                         je       0x77c386e
00000000077c384b: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000077c3852: f0490fc14608                 lock xadd qword ptr [r14 + 8], rax
00000000077c3858: 4885c0                       test     rax, rax
00000000077c385b: 7511                         jne      0x77c386e
00000000077c385d: 498b06                       mov      rax, qword ptr [r14]
00000000077c3860: 4c89f7                       mov      rdi, r14
00000000077c3863: ff5010                       call     qword ptr [rax + 0x10]
00000000077c3866: 4c89f7                       mov      rdi, r14
00000000077c3869: e86239d7fc                   call     0x45371d0
00000000077c386e: f60301                       test     byte ptr [rbx], 1
00000000077c3871: 740d                         je       0x77c3880
00000000077c3873: 488b4580                     mov      rax, qword ptr [rbp - 0x80]
00000000077c3877: 488b7818                     mov      rdi, qword ptr [rax + 0x18]
00000000077c387b: e8c068d4fc                   call     0x450a140
00000000077c3880: 488b4598                     mov      rax, qword ptr [rbp - 0x68]
00000000077c3884: f60001                       test     byte ptr [rax], 1
00000000077c3887: 4c8b75a8                     mov      r14, qword ptr [rbp - 0x58]
00000000077c388b: 7409                         je       0x77c3896
00000000077c388d: 498b7d18                     mov      rdi, qword ptr [r13 + 0x18]
00000000077c3891: e8aa68d4fc                   call     0x450a140
00000000077c3896: bf04000000                   mov      edi, 4
00000000077c389b: e8f0339501                   call     0x9116c90
00000000077c38a0: 85c0                         test     eax, eax
00000000077c38a2: 0f8401010000                 je       0x77c39a9
00000000077c38a8: 488b5db8                     mov      rbx, qword ptr [rbp - 0x48]
00000000077c38ac: 4889df                       mov      rdi, rbx
00000000077c38af: e81cf1beff                   call     0x73b29d0
00000000077c38b4: f60301                       test     byte ptr [rbx], 1
00000000077c38b7: 7406                         je       0x77c38bf
00000000077c38b9: 488b5310                     mov      rdx, qword ptr [rbx + 0x10]
00000000077c38bd: eb04                         jmp      0x77c38c3
00000000077c38bf: 488d5301                     lea      rdx, [rbx + 1]
00000000077c38c3: 488d0dc2d480f9               lea      rcx, [rip - 0x67f2b3e]
00000000077c38ca: 4c8d05807770f9               lea      r8, [rip - 0x68f8880]
00000000077c38d1: 488b5d88                     mov      rbx, qword ptr [rbp - 0x78]
00000000077c38d5: 4889df                       mov      rdi, rbx
00000000077c38d8: be04000000                   mov      esi, 4
00000000077c38dd: 41b94c020000                 mov      r9d, 0x24c
00000000077c38e3: 6a00                         push     0
00000000077c38e5: 6a00                         push     0
00000000077c38e7: e8b4dc9401                   call     0x91115a0
00000000077c38ec: 4883c410                     add      rsp, 0x10
00000000077c38f0: 0f57c0                       xorps    xmm0, xmm0
00000000077c38f3: 0f298550ffffff               movaps   xmmword ptr [rbp - 0xb0], xmm0
00000000077c38fa: 0f298540ffffff               movaps   xmmword ptr [rbp - 0xc0], xmm0
00000000077c3901: 0f298530ffffff               movaps   xmmword ptr [rbp - 0xd0], xmm0
00000000077c3908: 0f298520ffffff               movaps   xmmword ptr [rbp - 0xe0], xmm0
00000000077c390f: 0f298510ffffff               movaps   xmmword ptr [rbp - 0xf0], xmm0
00000000077c3916: 0f298500ffffff               movaps   xmmword ptr [rbp - 0x100], xmm0
00000000077c391d: 0f2985f0feffff               movaps   xmmword ptr [rbp - 0x110], xmm0
00000000077c3924: 0f2985e0feffff               movaps   xmmword ptr [rbp - 0x120], xmm0
00000000077c392b: 488d3525c786f9               lea      rsi, [rip - 0x67938db]
00000000077c3932: 488d95e0feffff               lea      rdx, [rbp - 0x120]
00000000077c3939: 4889df                       mov      rdi, rbx
00000000077c393c: e8afdf9401                   call     0x91118f0
00000000077c3941: 488b5db8                     mov      rbx, qword ptr [rbp - 0x48]
00000000077c3945: 66662e0f1f840000000000       nop      word ptr cs:[rax + rax]
00000000077c3950: 488b7d88                     mov      rdi, qword ptr [rbp - 0x78]
00000000077c3954: e8d7dc9401                   call     0x9111630
00000000077c3959: f60301                       test     byte ptr [rbx], 1
00000000077c395c: 740d                         je       0x77c396b
00000000077c395e: 488b45b8                     mov      rax, qword ptr [rbp - 0x48]
00000000077c3962: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077c3966: e8d567d4fc                   call     0x450a140
00000000077c396b: 488d059e7d5003               lea      rax, [rip + 0x3507d9e]
00000000077c3972: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c3975: 7c32                         jl       0x77c39a9
00000000077c3977: 488d05967d5003               lea      rax, [rip + 0x3507d96]
00000000077c397e: 8b00                         mov      eax, dword ptr [rax]
00000000077c3980: 89c1                         mov      ecx, eax
00000000077c3982: f7d1                         not      ecx
00000000077c3984: 0fafc8                       imul     ecx, eax
00000000077c3987: 83e101                       and      ecx, 1
00000000077c398a: 741d                         je       0x77c39a9
00000000077c398c: 488b7d88                     mov      rdi, qword ptr [rbp - 0x78]
00000000077c3990: e89bdc9401                   call     0x9111630
00000000077c3995: 488b5db8                     mov      rbx, qword ptr [rbp - 0x48]
00000000077c3999: f60301                       test     byte ptr [rbx], 1
00000000077c399c: 74b2                         je       0x77c3950
00000000077c399e: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077c39a2: e89967d4fc                   call     0x450a140
00000000077c39a7: eba7                         jmp      0x77c3950
00000000077c39a9: e8323b2300                   call     0x79f74e0
00000000077c39ae: 488b4dc0                     mov      rcx, qword ptr [rbp - 0x40]
00000000077c39b2: 8b01                         mov      eax, dword ptr [rcx]
00000000077c39b4: 0b4104                       or       eax, dword ptr [rcx + 4]
00000000077c39b7: 754b                         jne      0x77c3a04
00000000077c39b9: 488b4120                     mov      rax, qword ptr [rcx + 0x20]
00000000077c39bd: 488b4010                     mov      rax, qword ptr [rax + 0x10]
00000000077c39c1: 4885c0                       test     rax, rax
00000000077c39c4: 750e                         jne      0x77c39d4
00000000077c39c6: 488d05db825303               lea      rax, [rip + 0x35382db]
00000000077c39cd: 488b00                       mov      rax, qword ptr [rax]
00000000077c39d0: 488b4010                     mov      rax, qword ptr [rax + 0x10]
00000000077c39d4: 488b4008                     mov      rax, qword ptr [rax + 8]
00000000077c39d8: 4885c0                       test     rax, rax
00000000077c39db: 750e                         jne      0x77c39eb
00000000077c39dd: 488d059c825303               lea      rax, [rip + 0x353829c]
00000000077c39e4: 488b00                       mov      rax, qword ptr [rax]
00000000077c39e7: 488b4008                     mov      rax, qword ptr [rax + 8]
00000000077c39eb: 488b7008                     mov      rsi, qword ptr [rax + 8]
00000000077c39ef: 488bbd70ffffff               mov      rdi, qword ptr [rbp - 0x90]
00000000077c39f6: 488b55c8                     mov      rdx, qword ptr [rbp - 0x38]
00000000077c39fa: e841d3ffff                   call     0x77c0d40
00000000077c39ff: e9c7020000                   jmp      0x77c3ccb
00000000077c3a04: bf04000000                   mov      edi, 4
00000000077c3a09: e882329501                   call     0x9116c90
00000000077c3a0e: 85c0                         test     eax, eax
00000000077c3a10: 488b5dc0                     mov      rbx, qword ptr [rbp - 0x40]
00000000077c3a14: 0f8471020000                 je       0x77c3c8b
00000000077c3a1a: 4c8b7db0                     mov      r15, qword ptr [rbp - 0x50]
00000000077c3a1e: 4c89ff                       mov      rdi, r15
00000000077c3a21: e8aaefbeff                   call     0x73b29d0
00000000077c3a26: 41f60701                     test     byte ptr [r15], 1
00000000077c3a2a: 7406                         je       0x77c3a32
00000000077c3a2c: 498b5710                     mov      rdx, qword ptr [r15 + 0x10]
00000000077c3a30: eb04                         jmp      0x77c3a36
00000000077c3a32: 498d5701                     lea      rdx, [r15 + 1]
00000000077c3a36: 488d0d4fd380f9               lea      rcx, [rip - 0x67f2cb1]
00000000077c3a3d: 4c8d050d7670f9               lea      r8, [rip - 0x68f89f3]
00000000077c3a44: 488b7da0                     mov      rdi, qword ptr [rbp - 0x60]
00000000077c3a48: be04000000                   mov      esi, 4
00000000077c3a4d: 41b952020000                 mov      r9d, 0x252
00000000077c3a53: 6a00                         push     0
00000000077c3a55: 6a00                         push     0
00000000077c3a57: e844db9401                   call     0x91115a0
00000000077c3a5c: 4883c410                     add      rsp, 0x10
00000000077c3a60: 4c8b9560ffffff               mov      r10, qword ptr [rbp - 0xa0]
00000000077c3a67: 4c8b9d68ffffff               mov      r11, qword ptr [rbp - 0x98]
00000000077c3a6e: 8b13                         mov      edx, dword ptr [rbx]
00000000077c3a70: 49c70200000000               mov      qword ptr [r10], 0
00000000077c3a77: b908000000                   mov      ecx, 8
00000000077c3a7c: 488d0589b976f9               lea      rax, [rip - 0x6894677] ; 'ZYXWVUTSRQPONMLKJIHGFEDCBA9876543210123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'
00000000077c3a83: 89d6                         mov      esi, edx
00000000077c3a85: 66662e0f1f840000000000       nop      word ptr cs:[rax + rax]
00000000077c3a90: 4863fe                       movsxd   rdi, esi
00000000077c3a93: 4869f767666666               imul     rsi, rdi, 0x66666667
00000000077c3a9a: 4989f0                       mov      r8, rsi
00000000077c3a9d: 49c1e83f                     shr      r8, 0x3f
00000000077c3aa1: 48c1fe22                     sar      rsi, 0x22
00000000077c3aa5: 4401c6                       add      esi, r8d
00000000077c3aa8: 448d0436                     lea      r8d, [rsi + rsi]
00000000077c3aac: 478d0480                     lea      r8d, [r8 + r8*4]
00000000077c3ab0: 4189f9                       mov      r9d, edi
00000000077c3ab3: 4529c1                       sub      r9d, r8d
00000000077c3ab6: 4d63c1                       movsxd   r8, r9d
00000000077c3ab9: 450fb6440023                 movzx    r8d, byte ptr [r8 + rax + 0x23]
00000000077c3abf: 4588040a                     mov      byte ptr [r10 + rcx], r8b
00000000077c3ac3: 48ffc1                       inc      rcx
00000000077c3ac6: 83c709                       add      edi, 9
00000000077c3ac9: 83ff12                       cmp      edi, 0x12
00000000077c3acc: 77c2                         ja       0x77c3a90
00000000077c3ace: 85d2                         test     edx, edx
00000000077c3ad0: 7908                         jns      0x77c3ada
00000000077c3ad2: 41c6040a2d                   mov      byte ptr [r10 + rcx], 0x2d
00000000077c3ad7: 48ffc1                       inc      rcx
00000000077c3ada: 498d5208                     lea      rdx, [r10 + 8]
00000000077c3ade: 41c6040a00                   mov      byte ptr [r10 + rcx], 0
00000000077c3ae3: 4883f90a                     cmp      rcx, 0xa
00000000077c3ae7: 7c35                         jl       0x77c3b1e
00000000077c3ae9: 4c01d1                       add      rcx, r10
00000000077c3aec: 48ffc9                       dec      rcx
00000000077c3aef: 498d7209                     lea      rsi, [r10 + 9]
00000000077c3af3: 666666662e0f1f840000000000   nop      word ptr cs:[rax + rax]
00000000077c3b00: 0fb639                       movzx    edi, byte ptr [rcx]
00000000077c3b03: 440fb646ff                   movzx    r8d, byte ptr [rsi - 1]
00000000077c3b08: 448801                       mov      byte ptr [rcx], r8b
00000000077c3b0b: 40887eff                     mov      byte ptr [rsi - 1], dil
00000000077c3b0f: 48ffc9                       dec      rcx
00000000077c3b12: 488d7e01                     lea      rdi, [rsi + 1]
00000000077c3b16: 4839ce                       cmp      rsi, rcx
00000000077c3b19: 4889fe                       mov      rsi, rdi
00000000077c3b1c: 72e2                         jb       0x77c3b00
00000000077c3b1e: 498912                       mov      qword ptr [r10], rdx
00000000077c3b21: 8b5304                       mov      edx, dword ptr [rbx + 4]
00000000077c3b24: 49c70300000000               mov      qword ptr [r11], 0
00000000077c3b2b: b908000000                   mov      ecx, 8
00000000077c3b30: 89d6                         mov      esi, edx
00000000077c3b32: 66666666662e0f1f840000000000 nop      word ptr cs:[rax + rax]
00000000077c3b40: 4863fe                       movsxd   rdi, esi
00000000077c3b43: 4869f767666666               imul     rsi, rdi, 0x66666667
00000000077c3b4a: 4989f0                       mov      r8, rsi
00000000077c3b4d: 49c1e83f                     shr      r8, 0x3f
00000000077c3b51: 48c1fe22                     sar      rsi, 0x22
00000000077c3b55: 4401c6                       add      esi, r8d
00000000077c3b58: 448d0436                     lea      r8d, [rsi + rsi]
00000000077c3b5c: 478d0480                     lea      r8d, [r8 + r8*4]
00000000077c3b60: 4189f9                       mov      r9d, edi
00000000077c3b63: 4529c1                       sub      r9d, r8d
00000000077c3b66: 4d63c1                       movsxd   r8, r9d
00000000077c3b69: 450fb6440023                 movzx    r8d, byte ptr [r8 + rax + 0x23]
00000000077c3b6f: 4588040b                     mov      byte ptr [r11 + rcx], r8b
00000000077c3b73: 48ffc1                       inc      rcx
00000000077c3b76: 83c709                       add      edi, 9
00000000077c3b79: 83ff12                       cmp      edi, 0x12
00000000077c3b7c: 77c2                         ja       0x77c3b40
00000000077c3b7e: 85d2                         test     edx, edx
00000000077c3b80: 7908                         jns      0x77c3b8a
00000000077c3b82: 41c6040b2d                   mov      byte ptr [r11 + rcx], 0x2d
00000000077c3b87: 48ffc1                       inc      rcx
00000000077c3b8a: 498d4308                     lea      rax, [r11 + 8]
00000000077c3b8e: 41c6040b00                   mov      byte ptr [r11 + rcx], 0
00000000077c3b93: 4883f90a                     cmp      rcx, 0xa
00000000077c3b97: 7c34                         jl       0x77c3bcd
00000000077c3b99: 4c01d9                       add      rcx, r11
00000000077c3b9c: 48ffc9                       dec      rcx
00000000077c3b9f: 498d5309                     lea      rdx, [r11 + 9]
00000000077c3ba3: 666666662e0f1f840000000000   nop      word ptr cs:[rax + rax]
00000000077c3bb0: 0fb631                       movzx    esi, byte ptr [rcx]
00000000077c3bb3: 0fb67aff                     movzx    edi, byte ptr [rdx - 1]
00000000077c3bb7: 408839                       mov      byte ptr [rcx], dil
00000000077c3bba: 408872ff                     mov      byte ptr [rdx - 1], sil
00000000077c3bbe: 48ffc9                       dec      rcx
00000000077c3bc1: 488d7201                     lea      rsi, [rdx + 1]
00000000077c3bc5: 4839ca                       cmp      rdx, rcx
00000000077c3bc8: 4889f2                       mov      rdx, rsi
00000000077c3bcb: 72e3                         jb       0x77c3bb0
00000000077c3bcd: 498903                       mov      qword ptr [r11], rax
00000000077c3bd0: 4c8995e0feffff               mov      qword ptr [rbp - 0x120], r10
00000000077c3bd7: 4c899de8feffff               mov      qword ptr [rbp - 0x118], r11
00000000077c3bde: 0f57c0                       xorps    xmm0, xmm0
00000000077c3be1: 0f2985f0feffff               movaps   xmmword ptr [rbp - 0x110], xmm0
00000000077c3be8: 0f298500ffffff               movaps   xmmword ptr [rbp - 0x100], xmm0
00000000077c3bef: 0f298510ffffff               movaps   xmmword ptr [rbp - 0xf0], xmm0
00000000077c3bf6: 0f298520ffffff               movaps   xmmword ptr [rbp - 0xe0], xmm0
00000000077c3bfd: 0f298530ffffff               movaps   xmmword ptr [rbp - 0xd0], xmm0
00000000077c3c04: 0f298540ffffff               movaps   xmmword ptr [rbp - 0xc0], xmm0
00000000077c3c0b: 0f298550ffffff               movaps   xmmword ptr [rbp - 0xb0], xmm0
00000000077c3c12: 488d35d85667f9               lea      rsi, [rip - 0x698a928]
00000000077c3c19: 488d95e0feffff               lea      rdx, [rbp - 0x120]
00000000077c3c20: 488b7da0                     mov      rdi, qword ptr [rbp - 0x60]
00000000077c3c24: e8c7dc9401                   call     0x91118f0
00000000077c3c29: 4c8b7db0                     mov      r15, qword ptr [rbp - 0x50]
00000000077c3c2d: 0f1f00                       nop      dword ptr [rax]
00000000077c3c30: 488b7da0                     mov      rdi, qword ptr [rbp - 0x60]
00000000077c3c34: e8f7d99401                   call     0x9111630
00000000077c3c39: 41f60701                     test     byte ptr [r15], 1
00000000077c3c3d: 740d                         je       0x77c3c4c
00000000077c3c3f: 488b45b0                     mov      rax, qword ptr [rbp - 0x50]
00000000077c3c43: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077c3c47: e8f464d4fc                   call     0x450a140
00000000077c3c4c: 488d05bd7a5003               lea      rax, [rip + 0x3507abd]
00000000077c3c53: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c3c56: 7c33                         jl       0x77c3c8b
00000000077c3c58: 488d05b57a5003               lea      rax, [rip + 0x3507ab5]
00000000077c3c5f: 8b00                         mov      eax, dword ptr [rax]
00000000077c3c61: 89c1                         mov      ecx, eax
00000000077c3c63: f7d1                         not      ecx
00000000077c3c65: 0fafc8                       imul     ecx, eax
00000000077c3c68: 83e101                       and      ecx, 1
00000000077c3c6b: 741e                         je       0x77c3c8b
00000000077c3c6d: 488b7da0                     mov      rdi, qword ptr [rbp - 0x60]
00000000077c3c71: e8bad99401                   call     0x9111630
00000000077c3c76: 4c8b7db0                     mov      r15, qword ptr [rbp - 0x50]
00000000077c3c7a: 41f60701                     test     byte ptr [r15], 1
00000000077c3c7e: 74b0                         je       0x77c3c30
00000000077c3c80: 498b7f10                     mov      rdi, qword ptr [r15 + 0x10]
00000000077c3c84: e8b764d4fc                   call     0x450a140
00000000077c3c89: eba5                         jmp      0x77c3c30
00000000077c3c8b: 817b0429f8ffff               cmp      dword ptr [rbx + 4], 0xfffff829
00000000077c3c92: 7537                         jne      0x77c3ccb
00000000077c3c94: 488b8578ffffff               mov      rax, qword ptr [rbp - 0x88]
00000000077c3c9b: 488b00                       mov      rax, qword ptr [rax]
00000000077c3c9e: 6690                         nop
00000000077c3ca0: c60001                       mov      byte ptr [rax], 1
00000000077c3ca3: 488d0d667a5003               lea      rcx, [rip + 0x3507a66]
00000000077c3caa: 83390a                       cmp      dword ptr [rcx], 0xa
00000000077c3cad: 7c15                         jl       0x77c3cc4
00000000077c3caf: 488d0d5e7a5003               lea      rcx, [rip + 0x3507a5e]
00000000077c3cb6: 8b09                         mov      ecx, dword ptr [rcx]
00000000077c3cb8: 89ca                         mov      edx, ecx
00000000077c3cba: f7d2                         not      edx
00000000077c3cbc: 0fafd1                       imul     edx, ecx
00000000077c3cbf: 83e201                       and      edx, 1
00000000077c3cc2: 75dc                         jne      0x77c3ca0
00000000077c3cc4: c7400403000000               mov      dword ptr [rax + 4], 3
00000000077c3ccb: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077c3ccf: c60001                       mov      byte ptr [rax], 1
00000000077c3cd2: 4c8b7dc0                     mov      r15, qword ptr [rbp - 0x40]
00000000077c3cd6: 662e0f1f840000000000         nop      word ptr cs:[rax + rax]
00000000077c3ce0: 498b5f28                     mov      rbx, qword ptr [r15 + 0x28]
00000000077c3ce4: 4885db                       test     rbx, rbx
00000000077c3ce7: 7412                         je       0x77c3cfb
00000000077c3ce9: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000077c3cf0: f0480fc14308                 lock xadd qword ptr [rbx + 8], rax
00000000077c3cf6: 4885c0                       test     rax, rax
00000000077c3cf9: 7465                         je       0x77c3d60
00000000077c3cfb: 41f6470801                   test     byte ptr [r15 + 8], 1
00000000077c3d00: 7409                         je       0x77c3d0b
00000000077c3d02: 498b7f18                     mov      rdi, qword ptr [r15 + 0x18]
00000000077c3d06: e83564d4fc                   call     0x450a140
00000000077c3d0b: 488d05fe795003               lea      rax, [rip + 0x35079fe]
00000000077c3d12: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c3d15: 0f8c83000000                 jl       0x77c3d9e
00000000077c3d1b: 488d05f2795003               lea      rax, [rip + 0x35079f2]
00000000077c3d22: 8b00                         mov      eax, dword ptr [rax]
00000000077c3d24: 89c1                         mov      ecx, eax
00000000077c3d26: f7d1                         not      ecx
00000000077c3d28: 0fafc8                       imul     ecx, eax
00000000077c3d2b: 83e101                       and      ecx, 1
00000000077c3d2e: 746e                         je       0x77c3d9e
00000000077c3d30: 498b5f28                     mov      rbx, qword ptr [r15 + 0x28]
00000000077c3d34: 4885db                       test     rbx, rbx
00000000077c3d37: 7412                         je       0x77c3d4b
00000000077c3d39: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000077c3d40: f0480fc14308                 lock xadd qword ptr [rbx + 8], rax
00000000077c3d46: 4885c0                       test     rax, rax
00000000077c3d49: 7435                         je       0x77c3d80
00000000077c3d4b: 41f6470801                   test     byte ptr [r15 + 8], 1
00000000077c3d50: 748e                         je       0x77c3ce0
00000000077c3d52: 498b7f18                     mov      rdi, qword ptr [r15 + 0x18]
00000000077c3d56: e8e563d4fc                   call     0x450a140
00000000077c3d5b: eb83                         jmp      0x77c3ce0
00000000077c3d5d: 0f1f00                       nop      dword ptr [rax]
00000000077c3d60: 488b03                       mov      rax, qword ptr [rbx]
00000000077c3d63: 4889df                       mov      rdi, rbx
00000000077c3d66: ff5010                       call     qword ptr [rax + 0x10]
00000000077c3d69: 4889df                       mov      rdi, rbx
00000000077c3d6c: e85f34d7fc                   call     0x45371d0
00000000077c3d71: 41f6470801                   test     byte ptr [r15 + 8], 1
00000000077c3d76: 758a                         jne      0x77c3d02
00000000077c3d78: eb91                         jmp      0x77c3d0b
00000000077c3d7a: 660f1f440000                 nop      word ptr [rax + rax]
00000000077c3d80: 488b03                       mov      rax, qword ptr [rbx]
00000000077c3d83: 4889df                       mov      rdi, rbx
00000000077c3d86: ff5010                       call     qword ptr [rax + 0x10]
00000000077c3d89: 4889df                       mov      rdi, rbx
00000000077c3d8c: e83f34d7fc                   call     0x45371d0
00000000077c3d91: 41f6470801                   test     byte ptr [r15 + 8], 1
00000000077c3d96: 0f8444ffffff                 je       0x77c3ce0
00000000077c3d9c: ebb4                         jmp      0x77c3d52
00000000077c3d9e: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077c3da2: 803800                       cmp      byte ptr [rax], 0
00000000077c3da5: 7442                         je       0x77c3de9
00000000077c3da7: 41f60601                     test     byte ptr [r14], 1
00000000077c3dab: 7409                         je       0x77c3db6
00000000077c3dad: 498b7e10                     mov      rdi, qword ptr [r14 + 0x10]
00000000077c3db1: e88a63d4fc                   call     0x450a140
00000000077c3db6: 4c89e7                       mov      rdi, r12
00000000077c3db9: e8423d5000                   call     0x7cc7b00
00000000077c3dbe: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077c3dc2: 488d65d8                     lea      rsp, [rbp - 0x28]
00000000077c3dc6: 5b                           pop      rbx
00000000077c3dc7: 415c                         pop      r12
00000000077c3dc9: 415d                         pop      r13
00000000077c3dcb: 415e                         pop      r14
00000000077c3dcd: 415f                         pop      r15
00000000077c3dcf: 5d                           pop      rbp
00000000077c3dd0: c3                           ret
00000000077c3dd1: 6666666666662e0f1f840000000000 nop      word ptr cs:[rax + rax]
00000000077c3de0: 488b7818                     mov      rdi, qword ptr [rax + 0x18]
00000000077c3de4: e85763d4fc                   call     0x450a140
00000000077c3de9: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077c3ded: 488b5828                     mov      rbx, qword ptr [rax + 0x28]
00000000077c3df1: 4885db                       test     rbx, rbx
00000000077c3df4: 7416                         je       0x77c3e0c
00000000077c3df6: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000077c3dfd: f0480fc14308                 lock xadd qword ptr [rbx + 8], rax
00000000077c3e03: 4885c0                       test     rax, rax
00000000077c3e06: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077c3e0a: 7474                         je       0x77c3e80
00000000077c3e0c: f6400801                     test     byte ptr [rax + 8], 1
00000000077c3e10: 740d                         je       0x77c3e1f
00000000077c3e12: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077c3e16: 488b7818                     mov      rdi, qword ptr [rax + 0x18]
00000000077c3e1a: e82163d4fc                   call     0x450a140
00000000077c3e1f: 488d05ea785003               lea      rax, [rip + 0x35078ea]
00000000077c3e26: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c3e29: 0f8c78ffffff                 jl       0x77c3da7
00000000077c3e2f: 488d05de785003               lea      rax, [rip + 0x35078de]
00000000077c3e36: 8b00                         mov      eax, dword ptr [rax]
00000000077c3e38: 89c1                         mov      ecx, eax
00000000077c3e3a: f7d1                         not      ecx
00000000077c3e3c: 0fafc8                       imul     ecx, eax
00000000077c3e3f: 83e101                       and      ecx, 1
00000000077c3e42: 0f845fffffff                 je       0x77c3da7
00000000077c3e48: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077c3e4c: 488b5828                     mov      rbx, qword ptr [rax + 0x28]
00000000077c3e50: 4885db                       test     rbx, rbx
00000000077c3e53: 7416                         je       0x77c3e6b
00000000077c3e55: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000077c3e5c: f0480fc14308                 lock xadd qword ptr [rbx + 8], rax
00000000077c3e62: 4885c0                       test     rax, rax
00000000077c3e65: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077c3e69: 7445                         je       0x77c3eb0
00000000077c3e6b: f6400801                     test     byte ptr [rax + 8], 1
00000000077c3e6f: 0f8478ffffff                 je       0x77c3ded
00000000077c3e75: e966ffffff                   jmp      0x77c3de0
00000000077c3e7a: 660f1f440000                 nop      word ptr [rax + rax]
00000000077c3e80: 488b03                       mov      rax, qword ptr [rbx]
00000000077c3e83: 4889df                       mov      rdi, rbx
00000000077c3e86: ff5010                       call     qword ptr [rax + 0x10]
00000000077c3e89: 4889df                       mov      rdi, rbx
00000000077c3e8c: e83f33d7fc                   call     0x45371d0
00000000077c3e91: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077c3e95: f6400801                     test     byte ptr [rax + 8], 1
00000000077c3e99: 0f8573ffffff                 jne      0x77c3e12
00000000077c3e9f: e97bffffff                   jmp      0x77c3e1f
00000000077c3ea4: 6666662e0f1f840000000000     nop      word ptr cs:[rax + rax]
00000000077c3eb0: 488b03                       mov      rax, qword ptr [rbx]
00000000077c3eb3: 4889df                       mov      rdi, rbx
00000000077c3eb6: ff5010                       call     qword ptr [rax + 0x10]
00000000077c3eb9: 4889df                       mov      rdi, rbx
00000000077c3ebc: e80f33d7fc                   call     0x45371d0
00000000077c3ec1: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077c3ec5: f6400801                     test     byte ptr [rax + 8], 1
00000000077c3ec9: 0f841effffff                 je       0x77c3ded
00000000077c3ecf: e90cffffff                   jmp      0x77c3de0
00000000077c3ed4: 488945d0                     mov      qword ptr [rbp - 0x30], rax
00000000077c3ed8: 488b7d88                     mov      rdi, qword ptr [rbp - 0x78]
00000000077c3edc: e84fd79401                   call     0x9111630
00000000077c3ee1: eb04                         jmp      0x77c3ee7
00000000077c3ee3: 488945d0                     mov      qword ptr [rbp - 0x30], rax
00000000077c3ee7: 488b45b8                     mov      rax, qword ptr [rbp - 0x48]
00000000077c3eeb: f60001                       test     byte ptr [rax], 1
00000000077c3eee: 740d                         je       0x77c3efd
00000000077c3ef0: 488b45b8                     mov      rax, qword ptr [rbp - 0x48]
00000000077c3ef4: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077c3ef8: e84362d4fc                   call     0x450a140
00000000077c3efd: 488d050c785003               lea      rax, [rip + 0x350780c]
00000000077c3f04: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c3f07: 0f8ce2010000                 jl       0x77c40ef
00000000077c3f0d: 488d0500785003               lea      rax, [rip + 0x3507800]
00000000077c3f14: 8b00                         mov      eax, dword ptr [rax]
00000000077c3f16: 89c1                         mov      ecx, eax
00000000077c3f18: f7d1                         not      ecx
00000000077c3f1a: 0fafc8                       imul     ecx, eax
00000000077c3f1d: 83e101                       and      ecx, 1
00000000077c3f20: 0f84c9010000                 je       0x77c40ef
00000000077c3f26: 488b45b8                     mov      rax, qword ptr [rbp - 0x48]
00000000077c3f2a: f60001                       test     byte ptr [rax], 1
00000000077c3f2d: 74b8                         je       0x77c3ee7
00000000077c3f2f: 488b45b8                     mov      rax, qword ptr [rbp - 0x48]
00000000077c3f33: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077c3f37: e80462d4fc                   call     0x450a140
00000000077c3f3c: eba9                         jmp      0x77c3ee7
00000000077c3f3e: e9a8010000                   jmp      0x77c40eb
00000000077c3f43: 488945d0                     mov      qword ptr [rbp - 0x30], rax
00000000077c3f47: 4c89ff                       mov      rdi, r15
00000000077c3f4a: e8610b0000                   call     0x77c4ab0
00000000077c3f4f: eb04                         jmp      0x77c3f55
00000000077c3f51: 488945d0                     mov      qword ptr [rbp - 0x30], rax
00000000077c3f55: 488d05b8775003               lea      rax, [rip + 0x35077b8]
00000000077c3f5c: 8b00                         mov      eax, dword ptr [rax]
00000000077c3f5e: 488d0dab775003               lea      rcx, [rip + 0x35077ab]
00000000077c3f65: 8b09                         mov      ecx, dword ptr [rcx]
00000000077c3f67: 488b5d98                     mov      rbx, qword ptr [rbp - 0x68]
00000000077c3f6b: f60301                       test     byte ptr [rbx], 1
00000000077c3f6e: 741b                         je       0x77c3f8b
00000000077c3f70: 498b7d18                     mov      rdi, qword ptr [r13 + 0x18]
00000000077c3f74: e8c761d4fc                   call     0x450a140
00000000077c3f79: 488d0594775003               lea      rax, [rip + 0x3507794]
00000000077c3f80: 8b00                         mov      eax, dword ptr [rax]
00000000077c3f82: 488d0d87775003               lea      rcx, [rip + 0x3507787]
00000000077c3f89: 8b09                         mov      ecx, dword ptr [rcx]
00000000077c3f8b: 83f90a                       cmp      ecx, 0xa
00000000077c3f8e: 0f8c5b010000                 jl       0x77c40ef
00000000077c3f94: 89c1                         mov      ecx, eax
00000000077c3f96: f7d1                         not      ecx
00000000077c3f98: 0fafc8                       imul     ecx, eax
00000000077c3f9b: 83e101                       and      ecx, 1
00000000077c3f9e: 488b5d98                     mov      rbx, qword ptr [rbp - 0x68]
00000000077c3fa2: 0f8447010000                 je       0x77c40ef
00000000077c3fa8: f60301                       test     byte ptr [rbx], 1
00000000077c3fab: 7409                         je       0x77c3fb6
00000000077c3fad: 498b7d18                     mov      rdi, qword ptr [r13 + 0x18]
00000000077c3fb1: e88a61d4fc                   call     0x450a140
00000000077c3fb6: 41f6450801                   test     byte ptr [r13 + 8], 1
00000000077c3fbb: 7409                         je       0x77c3fc6
00000000077c3fbd: 498b7d18                     mov      rdi, qword ptr [r13 + 0x18]
00000000077c3fc1: e87a61d4fc                   call     0x450a140
00000000077c3fc6: 488d0547775003               lea      rax, [rip + 0x3507747]
00000000077c3fcd: 8b00                         mov      eax, dword ptr [rax]
00000000077c3fcf: 488d0d3a775003               lea      rcx, [rip + 0x350773a]
00000000077c3fd6: 8b09                         mov      ecx, dword ptr [rcx]
00000000077c3fd8: 89c2                         mov      edx, eax
00000000077c3fda: f7d2                         not      edx
00000000077c3fdc: 0fafd0                       imul     edx, eax
00000000077c3fdf: 83e201                       and      edx, 1
00000000077c3fe2: 83f90a                       cmp      ecx, 0xa
00000000077c3fe5: 7c84                         jl       0x77c3f6b
00000000077c3fe7: 85d2                         test     edx, edx
00000000077c3fe9: 75bd                         jne      0x77c3fa8
00000000077c3feb: e97bffffff                   jmp      0x77c3f6b
00000000077c3ff0: 488945d0                     mov      qword ptr [rbp - 0x30], rax
00000000077c3ff4: 488d0515775003               lea      rax, [rip + 0x3507715]
00000000077c3ffb: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c3ffe: 7c4a                         jl       0x77c404a
00000000077c4000: 488d050d775003               lea      rax, [rip + 0x350770d]
00000000077c4007: 8b00                         mov      eax, dword ptr [rax]
00000000077c4009: 89c1                         mov      ecx, eax
00000000077c400b: f7d1                         not      ecx
00000000077c400d: 0fafc8                       imul     ecx, eax
00000000077c4010: 83e101                       and      ecx, 1
00000000077c4013: 7435                         je       0x77c404a
00000000077c4015: 488b5da0                     mov      rbx, qword ptr [rbp - 0x60]
00000000077c4019: 4889df                       mov      rdi, rbx
00000000077c401c: e80fd69401                   call     0x9111630
00000000077c4021: 4889df                       mov      rdi, rbx
00000000077c4024: e807d69401                   call     0x9111630
00000000077c4029: 488d05e0765003               lea      rax, [rip + 0x35076e0]
00000000077c4030: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c4033: 7c15                         jl       0x77c404a
00000000077c4035: 488d05d8765003               lea      rax, [rip + 0x35076d8]
00000000077c403c: 8b00                         mov      eax, dword ptr [rax]
00000000077c403e: 89c1                         mov      ecx, eax
00000000077c4040: f7d1                         not      ecx
00000000077c4042: 0fafc8                       imul     ecx, eax
00000000077c4045: 83e101                       and      ecx, 1
00000000077c4048: 75cf                         jne      0x77c4019
00000000077c404a: 488b7da0                     mov      rdi, qword ptr [rbp - 0x60]
00000000077c404e: e8ddd59401                   call     0x9111630
00000000077c4053: 488d05ba765003               lea      rax, [rip + 0x35076ba]
00000000077c405a: 8b10                         mov      edx, dword ptr [rax]
00000000077c405c: 488d05ad765003               lea      rax, [rip + 0x35076ad]
00000000077c4063: 8b08                         mov      ecx, dword ptr [rax]
00000000077c4065: 89d0                         mov      eax, edx
00000000077c4067: f7d0                         not      eax
00000000077c4069: 0fafc2                       imul     eax, edx
00000000077c406c: 83e001                       and      eax, 1
00000000077c406f: 83f90a                       cmp      ecx, 0xa
00000000077c4072: 7c5f                         jl       0x77c40d3
00000000077c4074: 85c0                         test     eax, eax
00000000077c4076: 745b                         je       0x77c40d3
00000000077c4078: 488b5da0                     mov      rbx, qword ptr [rbp - 0x60]
00000000077c407c: 4889df                       mov      rdi, rbx
00000000077c407f: e8acd59401                   call     0x9111630
00000000077c4084: 4889df                       mov      rdi, rbx
00000000077c4087: e8a4d59401                   call     0x9111630
00000000077c408c: 488d0581765003               lea      rax, [rip + 0x3507681]
00000000077c4093: 8b10                         mov      edx, dword ptr [rax]
00000000077c4095: 488d0574765003               lea      rax, [rip + 0x3507674]
00000000077c409c: 8b08                         mov      ecx, dword ptr [rax]
00000000077c409e: 89d0                         mov      eax, edx
00000000077c40a0: f7d0                         not      eax
00000000077c40a2: 0fafc2                       imul     eax, edx
00000000077c40a5: 83e001                       and      eax, 1
00000000077c40a8: 83f90a                       cmp      ecx, 0xa
00000000077c40ab: 7c26                         jl       0x77c40d3
00000000077c40ad: 85c0                         test     eax, eax
00000000077c40af: 75cb                         jne      0x77c407c
00000000077c40b1: eb20                         jmp      0x77c40d3
00000000077c40b3: 488945d0                     mov      qword ptr [rbp - 0x30], rax
00000000077c40b7: 488d0556765003               lea      rax, [rip + 0x3507656]
00000000077c40be: 8b10                         mov      edx, dword ptr [rax]
00000000077c40c0: 488d0549765003               lea      rax, [rip + 0x3507649]
00000000077c40c7: 8b08                         mov      ecx, dword ptr [rax]
00000000077c40c9: 89d0                         mov      eax, edx
00000000077c40cb: f7d0                         not      eax
00000000077c40cd: 0fafc2                       imul     eax, edx
00000000077c40d0: 83e001                       and      eax, 1
00000000077c40d3: 83f90a                       cmp      ecx, 0xa
00000000077c40d6: 0f8c14010000                 jl       0x77c41f0
00000000077c40dc: 85c0                         test     eax, eax
00000000077c40de: 0f854b010000                 jne      0x77c422f
00000000077c40e4: e907010000                   jmp      0x77c41f0
00000000077c40e9: eb00                         jmp      0x77c40eb
00000000077c40eb: 488945d0                     mov      qword ptr [rbp - 0x30], rax
00000000077c40ef: 488b7dc0                     mov      rdi, qword ptr [rbp - 0x40]
00000000077c40f3: e8b8090000                   call     0x77c4ab0
00000000077c40f8: 488d0511765003               lea      rax, [rip + 0x3507611]
00000000077c40ff: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c4102: 7c4a                         jl       0x77c414e
00000000077c4104: 488d0509765003               lea      rax, [rip + 0x3507609]
00000000077c410b: 8b00                         mov      eax, dword ptr [rax]
00000000077c410d: 89c1                         mov      ecx, eax
00000000077c410f: f7d1                         not      ecx
00000000077c4111: 0fafc8                       imul     ecx, eax
00000000077c4114: 83e101                       and      ecx, 1
00000000077c4117: 7435                         je       0x77c414e
00000000077c4119: 488b5dc0                     mov      rbx, qword ptr [rbp - 0x40]
00000000077c411d: 4889df                       mov      rdi, rbx
00000000077c4120: e88b090000                   call     0x77c4ab0
00000000077c4125: 4889df                       mov      rdi, rbx
00000000077c4128: e883090000                   call     0x77c4ab0
00000000077c412d: 488d05dc755003               lea      rax, [rip + 0x35075dc]
00000000077c4134: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c4137: 7c15                         jl       0x77c414e
00000000077c4139: 488d05d4755003               lea      rax, [rip + 0x35075d4]
00000000077c4140: 8b00                         mov      eax, dword ptr [rax]
00000000077c4142: 89c1                         mov      ecx, eax
00000000077c4144: f7d1                         not      ecx
00000000077c4146: 0fafc8                       imul     ecx, eax
00000000077c4149: 83e101                       and      ecx, 1
00000000077c414c: 75cf                         jne      0x77c411d
00000000077c414e: 488b7dc8                     mov      rdi, qword ptr [rbp - 0x38]
00000000077c4152: e84948e8ff                   call     0x76489a0
00000000077c4157: 488d05b6755003               lea      rax, [rip + 0x35075b6]
00000000077c415e: 8b10                         mov      edx, dword ptr [rax]
00000000077c4160: 488d05a9755003               lea      rax, [rip + 0x35075a9]
00000000077c4167: 8b08                         mov      ecx, dword ptr [rax]
00000000077c4169: 89d0                         mov      eax, edx
00000000077c416b: f7d0                         not      eax
00000000077c416d: 0fafc2                       imul     eax, edx
00000000077c4170: 83e001                       and      eax, 1
00000000077c4173: 83f90a                       cmp      ecx, 0xa
00000000077c4176: 0f8ca3f4ffff                 jl       0x77c361f
00000000077c417c: 85c0                         test     eax, eax
00000000077c417e: 0f849bf4ffff                 je       0x77c361f
00000000077c4184: 488b5dc8                     mov      rbx, qword ptr [rbp - 0x38]
00000000077c4188: 4889df                       mov      rdi, rbx
00000000077c418b: e81048e8ff                   call     0x76489a0
00000000077c4190: 4889df                       mov      rdi, rbx
00000000077c4193: e80848e8ff                   call     0x76489a0
00000000077c4198: 488d0571755003               lea      rax, [rip + 0x3507571]
00000000077c419f: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c41a2: 7c15                         jl       0x77c41b9
00000000077c41a4: 488d0569755003               lea      rax, [rip + 0x3507569]
00000000077c41ab: 8b00                         mov      eax, dword ptr [rax]
00000000077c41ad: 89c1                         mov      ecx, eax
00000000077c41af: f7d1                         not      ecx
00000000077c41b1: 0fafc8                       imul     ecx, eax
00000000077c41b4: 83e101                       and      ecx, 1
00000000077c41b7: 75cf                         jne      0x77c4188
00000000077c41b9: 488b7dc8                     mov      rdi, qword ptr [rbp - 0x38]
00000000077c41bd: e8de47e8ff                   call     0x76489a0
00000000077c41c2: 488d054b755003               lea      rax, [rip + 0x350754b]
00000000077c41c9: 8b10                         mov      edx, dword ptr [rax]
00000000077c41cb: 488d053e755003               lea      rax, [rip + 0x350753e]
00000000077c41d2: 8b08                         mov      ecx, dword ptr [rax]
00000000077c41d4: 89d0                         mov      eax, edx
00000000077c41d6: f7d0                         not      eax
00000000077c41d8: 0fafc2                       imul     eax, edx
00000000077c41db: 83e001                       and      eax, 1
00000000077c41de: 83f90a                       cmp      ecx, 0xa
00000000077c41e1: 0f8c38f4ffff                 jl       0x77c361f
00000000077c41e7: 85c0                         test     eax, eax
00000000077c41e9: 759d                         jne      0x77c4188
00000000077c41eb: e92ff4ffff                   jmp      0x77c361f
00000000077c41f0: 488b45b0                     mov      rax, qword ptr [rbp - 0x50]
00000000077c41f4: f60001                       test     byte ptr [rax], 1
00000000077c41f7: 740d                         je       0x77c4206
00000000077c41f9: 488b45b0                     mov      rax, qword ptr [rbp - 0x50]
00000000077c41fd: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077c4201: e83a5fd4fc                   call     0x450a140
00000000077c4206: 488d0503755003               lea      rax, [rip + 0x3507503]
00000000077c420d: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c4210: 0f8cd9feffff                 jl       0x77c40ef
00000000077c4216: 488d05f7745003               lea      rax, [rip + 0x35074f7]
00000000077c421d: 8b00                         mov      eax, dword ptr [rax]
00000000077c421f: 89c1                         mov      ecx, eax
00000000077c4221: f7d1                         not      ecx
00000000077c4223: 0fafc8                       imul     ecx, eax
00000000077c4226: 83e101                       and      ecx, 1
00000000077c4229: 0f84c0feffff                 je       0x77c40ef
00000000077c422f: 488b45b0                     mov      rax, qword ptr [rbp - 0x50]
00000000077c4233: f60001                       test     byte ptr [rax], 1
00000000077c4236: 74b8                         je       0x77c41f0
00000000077c4238: 488b45b0                     mov      rax, qword ptr [rbp - 0x50]
00000000077c423c: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077c4240: e8fb5ed4fc                   call     0x450a140
00000000077c4245: eba9                         jmp      0x77c41f0
00000000077c4247: f60301                       test     byte ptr [rbx], 1
00000000077c424a: 7409                         je       0x77c4255
00000000077c424c: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077c4250: e8eb5ed4fc                   call     0x450a140
00000000077c4255: 488d05b4745003               lea      rax, [rip + 0x35074b4]
00000000077c425c: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c425f: 7c25                         jl       0x77c4286
00000000077c4261: 488d05ac745003               lea      rax, [rip + 0x35074ac]
00000000077c4268: 8b00                         mov      eax, dword ptr [rax]
00000000077c426a: 89c1                         mov      ecx, eax
00000000077c426c: f7d1                         not      ecx
00000000077c426e: 0fafc8                       imul     ecx, eax
00000000077c4271: 83e101                       and      ecx, 1
00000000077c4274: 7410                         je       0x77c4286
00000000077c4276: f60301                       test     byte ptr [rbx], 1
00000000077c4279: 74cc                         je       0x77c4247
00000000077c427b: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077c427f: e8bc5ed4fc                   call     0x450a140
00000000077c4284: ebc1                         jmp      0x77c4247
00000000077c4286: 488b7d90                     mov      rdi, qword ptr [rbp - 0x70]
00000000077c428a: e871385000                   call     0x7cc7b00
00000000077c428f: 488d057a745003               lea      rax, [rip + 0x350747a]
00000000077c4296: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c4299: 7c56                         jl       0x77c42f1
00000000077c429b: 488d0572745003               lea      rax, [rip + 0x3507472]
00000000077c42a2: 8b00                         mov      eax, dword ptr [rax]
00000000077c42a4: 89c1                         mov      ecx, eax
00000000077c42a6: f7d1                         not      ecx
00000000077c42a8: 0fafc8                       imul     ecx, eax
00000000077c42ab: 83e101                       and      ecx, 1
00000000077c42ae: 7441                         je       0x77c42f1
00000000077c42b0: 488b5d90                     mov      rbx, qword ptr [rbp - 0x70]
00000000077c42b4: 6666662e0f1f840000000000     nop      word ptr cs:[rax + rax]
00000000077c42c0: 4889df                       mov      rdi, rbx
00000000077c42c3: e838385000                   call     0x7cc7b00
00000000077c42c8: 4889df                       mov      rdi, rbx
00000000077c42cb: e830385000                   call     0x7cc7b00
00000000077c42d0: 488d0539745003               lea      rax, [rip + 0x3507439]
00000000077c42d7: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c42da: 7c15                         jl       0x77c42f1
00000000077c42dc: 488d0531745003               lea      rax, [rip + 0x3507431]
00000000077c42e3: 8b00                         mov      eax, dword ptr [rax]
00000000077c42e5: 89c1                         mov      ecx, eax
00000000077c42e7: f7d1                         not      ecx
00000000077c42e9: 0fafc8                       imul     ecx, eax
00000000077c42ec: 83e101                       and      ecx, 1
00000000077c42ef: 75cf                         jne      0x77c42c0
00000000077c42f1: 488b7dd0                     mov      rdi, qword ptr [rbp - 0x30]
00000000077c42f5: e8268bd2fc                   call     0x44ece20
