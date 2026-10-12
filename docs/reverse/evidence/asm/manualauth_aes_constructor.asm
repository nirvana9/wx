0000000007cd8040: 488d05219bcc02               lea      rax, [rip + 0x2cc9b21]
0000000007cd8047: 4883c010                     add      rax, 0x10
0000000007cd804b: 488907                       mov      qword ptr [rdi], rax
0000000007cd804e: c787cc00000000000000         mov      dword ptr [rdi + 0xcc], 0
0000000007cd8058: 0f57c0                       xorps    xmm0, xmm0
0000000007cd805b: 0f114708                     movups   xmmword ptr [rdi + 8], xmm0
0000000007cd805f: 488d058af60303               lea      rax, [rip + 0x303f68a]
0000000007cd8066: 48894718                     mov      qword ptr [rdi + 0x18], rax
0000000007cd806a: 48894720                     mov      qword ptr [rdi + 0x20], rax
0000000007cd806e: 48c7474000000000             mov      qword ptr [rdi + 0x40], 0
0000000007cd8076: 48894728                     mov      qword ptr [rdi + 0x28], rax
0000000007cd807a: 48894730                     mov      qword ptr [rdi + 0x30], rax
0000000007cd807e: 48894738                     mov      qword ptr [rdi + 0x38], rax
0000000007cd8082: 48894748                     mov      qword ptr [rdi + 0x48], rax
0000000007cd8086: 48894750                     mov      qword ptr [rdi + 0x50], rax
0000000007cd808a: 48894758                     mov      qword ptr [rdi + 0x58], rax
0000000007cd808e: c7878000000000000000         mov      dword ptr [rdi + 0x80], 0
0000000007cd8098: 48894760                     mov      qword ptr [rdi + 0x60], rax
0000000007cd809c: 48894768                     mov      qword ptr [rdi + 0x68], rax
0000000007cd80a0: 48894770                     mov      qword ptr [rdi + 0x70], rax
0000000007cd80a4: 48894778                     mov      qword ptr [rdi + 0x78], rax
0000000007cd80a8: 48898788000000               mov      qword ptr [rdi + 0x88], rax
0000000007cd80af: 48898790000000               mov      qword ptr [rdi + 0x90], rax
0000000007cd80b6: 48898798000000               mov      qword ptr [rdi + 0x98], rax
0000000007cd80bd: c7878400000000000000         mov      dword ptr [rdi + 0x84], 0
0000000007cd80c7: 0f1187a0000000               movups   xmmword ptr [rdi + 0xa0], xmm0
0000000007cd80ce: 488987b0000000               mov      qword ptr [rdi + 0xb0], rax
0000000007cd80d5: c787d000000000000000         mov      dword ptr [rdi + 0xd0], 0
0000000007cd80df: 0f1187b8000000               movups   xmmword ptr [rdi + 0xb8], xmm0
0000000007cd80e6: c787c800000000000000         mov      dword ptr [rdi + 0xc8], 0
0000000007cd80f0: c3                           ret
