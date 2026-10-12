00000000079e4250: 53                           push     rbx
00000000079e4251: 4883ec30                     sub      rsp, 0x30
00000000079e4255: 0fb6051c5e3103               movzx    eax, byte ptr [rip + 0x3315e1c]
00000000079e425c: 84c0                         test     al, al
00000000079e425e: 0f842a010000                 je       0x79e438e
00000000079e4264: 488b35ed5d3103               mov      rsi, qword ptr [rip + 0x3315ded]
00000000079e426b: 4885f6                       test     rsi, rsi
00000000079e426e: 0f840e010000                 je       0x79e4382
00000000079e4274: 4189f8                       mov      r8d, edi
00000000079e4277: 4889f0                       mov      rax, rsi
00000000079e427a: 48d1e8                       shr      rax, 1
00000000079e427d: 48b95555555555555555         movabs   rcx, 0x5555555555555555
00000000079e4287: 4821c1                       and      rcx, rax
00000000079e428a: 4889f0                       mov      rax, rsi
00000000079e428d: 4829c8                       sub      rax, rcx
00000000079e4290: 48b93333333333333333         movabs   rcx, 0x3333333333333333
00000000079e429a: 4889c2                       mov      rdx, rax
00000000079e429d: 4821ca                       and      rdx, rcx
00000000079e42a0: 48c1e802                     shr      rax, 2
00000000079e42a4: 4821c8                       and      rax, rcx
00000000079e42a7: 4801d0                       add      rax, rdx
00000000079e42aa: 4889c1                       mov      rcx, rax
00000000079e42ad: 48c1e904                     shr      rcx, 4
00000000079e42b1: 4801c1                       add      rcx, rax
00000000079e42b4: 48b80f0f0f0f0f0f0f0f         movabs   rax, 0xf0f0f0f0f0f0f0f
00000000079e42be: 4821c8                       and      rax, rcx
00000000079e42c1: 49b90101010101010101         movabs   r9, 0x101010101010101
00000000079e42cb: 4c0fafc8                     imul     r9, rax
00000000079e42cf: 49c1e938                     shr      r9, 0x38
00000000079e42d3: 4983f901                     cmp      r9, 1
00000000079e42d7: 770a                         ja       0x79e42e3
00000000079e42d9: 8d46ff                       lea      eax, [rsi - 1]
00000000079e42dc: 4489c1                       mov      ecx, r8d
00000000079e42df: 21c1                         and      ecx, eax
00000000079e42e1: eb10                         jmp      0x79e42f3
00000000079e42e3: 4c89c1                       mov      rcx, r8
00000000079e42e6: 4c39c6                       cmp      rsi, r8
00000000079e42e9: 7708                         ja       0x79e42f3
00000000079e42eb: 89f8                         mov      eax, edi
00000000079e42ed: 31d2                         xor      edx, edx
00000000079e42ef: f7f6                         div      esi
00000000079e42f1: 89d1                         mov      ecx, edx
00000000079e42f3: 488b05565d3103               mov      rax, qword ptr [rip + 0x3315d56]
00000000079e42fa: 488b04c8                     mov      rax, qword ptr [rax + rcx*8]
00000000079e42fe: 4885c0                       test     rax, rax
00000000079e4301: 747f                         je       0x79e4382
00000000079e4303: 4c8b10                       mov      r10, qword ptr [rax]
00000000079e4306: 4d85d2                       test     r10, r10
00000000079e4309: 7477                         je       0x79e4382
00000000079e430b: 4c8d5eff                     lea      r11, [rsi - 1]
00000000079e430f: eb1d                         jmp      0x79e432e
00000000079e4311: 6666666666662e0f1f840000000000 nop      word ptr cs:[rax + rax]
00000000079e4320: 41397a10                     cmp      dword ptr [r10 + 0x10], edi
00000000079e4324: 7464                         je       0x79e438a
00000000079e4326: 4d8b12                       mov      r10, qword ptr [r10]
00000000079e4329: 4d85d2                       test     r10, r10
00000000079e432c: 7454                         je       0x79e4382
00000000079e432e: 498b4208                     mov      rax, qword ptr [r10 + 8]
00000000079e4332: 4c39c0                       cmp      rax, r8
00000000079e4335: 74e9                         je       0x79e4320
00000000079e4337: 4183f901                     cmp      r9d, 1
00000000079e433b: 7713                         ja       0x79e4350
00000000079e433d: 4c21d8                       and      rax, r11
00000000079e4340: 4839c8                       cmp      rax, rcx
00000000079e4343: 74e1                         je       0x79e4326
00000000079e4345: eb3b                         jmp      0x79e4382
00000000079e4347: 660f1f840000000000           nop      word ptr [rax + rax]
00000000079e4350: 4839f0                       cmp      rax, rsi
00000000079e4353: 721b                         jb       0x79e4370
00000000079e4355: 4889c2                       mov      rdx, rax
00000000079e4358: 4809f2                       or       rdx, rsi
00000000079e435b: 48c1ea20                     shr      rdx, 0x20
00000000079e435f: 7416                         je       0x79e4377
00000000079e4361: 31d2                         xor      edx, edx
00000000079e4363: 48f7f6                       div      rsi
00000000079e4366: 4889d0                       mov      rax, rdx
00000000079e4369: 0f1f8000000000               nop      dword ptr [rax]
00000000079e4370: 4839c8                       cmp      rax, rcx
00000000079e4373: 74b1                         je       0x79e4326
00000000079e4375: eb0b                         jmp      0x79e4382
00000000079e4377: 31d2                         xor      edx, edx
00000000079e4379: f7f6                         div      esi
00000000079e437b: 89d0                         mov      eax, edx
00000000079e437d: 4839c8                       cmp      rax, rcx
00000000079e4380: 74a4                         je       0x79e4326
00000000079e4382: 31c0                         xor      eax, eax
00000000079e4384: 4883c430                     add      rsp, 0x30
00000000079e4388: 5b                           pop      rbx
00000000079e4389: c3                           ret
00000000079e438a: b001                         mov      al, 1
00000000079e438c: ebf6                         jmp      0x79e4384
00000000079e438e: 488d05e35c3103               lea      rax, [rip + 0x3315ce3]
00000000079e4395: 89fb                         mov      ebx, edi
00000000079e4397: 4889c7                       mov      rdi, rax
00000000079e439a: e82280b0fc                   call     0x44ec3c1
00000000079e439f: 89df                         mov      edi, ebx
00000000079e43a1: 85c0                         test     eax, eax
00000000079e43a3: 0f84bbfeffff                 je       0x79e4264
00000000079e43a9: 0f1005041c5efa               movups   xmm0, xmmword ptr [rip - 0x5a1e3fc]
00000000079e43b0: 0f29442410                   movaps   xmmword ptr [rsp + 0x10], xmm0
00000000079e43b5: 0f1005e81b5efa               movups   xmm0, xmmword ptr [rip - 0x5a1e418]
00000000079e43bc: 0f290424                     movaps   xmmword ptr [rsp], xmm0
00000000079e43c0: 48b8db03000028570000         movabs   rax, 0x5728000003db
00000000079e43ca: 4889442420                   mov      qword ptr [rsp + 0x20], rax
00000000079e43cf: 488d3d7a5c3103               lea      rdi, [rip + 0x3315c7a]
00000000079e43d6: 4889e6                       mov      rsi, rsp
00000000079e43d9: ba0a000000                   mov      edx, 0xa
00000000079e43de: e8dd406efd                   call     0x50c84c0
00000000079e43e3: 488d3d666251fd               lea      rdi, [rip - 0x2ae9d9a]
00000000079e43ea: 488d355f5c3103               lea      rsi, [rip + 0x3315c5f]
00000000079e43f1: 488d15085b1103               lea      rdx, [rip + 0x3115b08]
00000000079e43f8: e8539dc802                   call     0xa66e150
00000000079e43fd: 488d3d745c3103               lea      rdi, [rip + 0x3315c74]
00000000079e4404: e8e480b0fc                   call     0x44ec4ed
00000000079e4409: 89df                         mov      edi, ebx
00000000079e440b: e954feffff                   jmp      0x79e4264
00000000079e4410: 4889c3                       mov      rbx, rax
00000000079e4413: 488d3d5e5c3103               lea      rdi, [rip + 0x3315c5e]
00000000079e441a: e85781b0fc                   call     0x44ec576
00000000079e441f: 4889df                       mov      rdi, rbx
00000000079e4422: e8f989b0fc                   call     0x44ece20
