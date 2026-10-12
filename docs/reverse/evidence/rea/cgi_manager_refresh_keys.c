
/* WARNING: Type propagation algorithm not settling */

void wx_79e2b30(long param_1)

{
  char cVar1;
  undefined2 uVar2;
  bool bVar3;
  int iVar4;
  undefined8 uVar5;
  ulong uVar6;
  long *plVar7;
  long lVar8;
  undefined8 uVar9;
  char *pcVar10;
  undefined1 *puVar11;
  char *pcVar12;
  ulong uVar13;
  undefined4 local_258;
  undefined4 uStack_254;
  undefined4 uStack_250;
  undefined4 uStack_24c;
  long local_248;
  uint local_238;
  undefined4 uStack_234;
  undefined4 uStack_230;
  undefined4 uStack_22c;
  undefined8 local_228;
  uint local_218;
  undefined4 uStack_214;
  undefined4 uStack_210;
  undefined4 uStack_20c;
  undefined8 local_208;
  uint local_1f8;
  undefined4 uStack_1f4;
  undefined4 uStack_1f0;
  undefined4 uStack_1ec;
  undefined8 local_1e8;
  byte local_1e0;
  undefined1 local_1df [15];
  undefined1 *local_1d0;
  undefined8 *local_1c8;
  undefined8 *puStack_1c0;
  undefined8 local_1b8;
  undefined8 uStack_1b0;
  undefined8 local_1a8;
  undefined8 uStack_1a0;
  undefined8 local_198;
  undefined8 uStack_190;
  undefined8 local_188;
  undefined8 uStack_180;
  undefined8 local_178;
  undefined8 uStack_170;
  undefined8 local_168;
  undefined8 uStack_160;
  undefined8 local_158;
  undefined8 uStack_150;
  undefined8 local_148;
  char local_140 [8];
  undefined1 *local_138;
  byte local_f8 [16];
  undefined8 local_e8;
  undefined8 local_68;
  char local_60 [72];
  
  if (*(long *)(param_1 + 0x60) == 0) {
    return;
  }
  local_1e8 = 0xaaaaaaaaaaaaaaaa;
  local_1f8 = 0xaaaaaaaa;
  uStack_1f4 = 0xaaaaaaaa;
  uStack_1f0 = 0xaaaaaaaa;
  uStack_1ec = 0xaaaaaaaa;
  uVar5 = func_0x0603c4e0();
  wx_6041790(&local_1f8,uVar5);
  local_208 = 0xaaaaaaaaaaaaaaaa;
  local_218 = 0xaaaaaaaa;
  uStack_214 = 0xaaaaaaaa;
  uStack_210 = 0xaaaaaaaa;
  uStack_20c = 0xaaaaaaaa;
  uVar5 = func_0x0603c4e0();
  func_0x0603f150(&local_218,uVar5);
  iVar4 = func_0x09116c90(2);
  if (iVar4 != 0) {
    func_0x073b29d0(&local_258);
    lVar8 = local_248;
    if ((local_258 & 1) == 0) {
      lVar8 = (long)&local_258 + 1;
    }
    func_0x091115a0(local_f8,2,lVar8,&DAT_00dbf53e,&DAT_00f6d056,0x1b6,0,0);
    if ((local_1f8 & 1) == 0) {
      uVar6 = (ulong)((byte)local_1f8 >> 1);
    }
    else {
      uVar6 = CONCAT44(uStack_1ec,uStack_1f0);
    }
    local_68 = "false";
    local_148 = "false";
    if (uVar6 == 0) {
      local_148 = "true";
    }
    local_140[0] = '\0';
    if ((local_218 & 1) == 0) {
      uVar6 = (ulong)((byte)local_218 >> 1);
    }
    else {
      uVar6 = CONCAT44(uStack_20c,uStack_210);
    }
    if (uVar6 == 0) {
      local_68 = "true";
    }
    local_60[0] = '\0';
    local_1c8 = &local_148;
    puStack_1c0 = &local_68;
    local_1b8 = 0;
    uStack_1b0 = 0;
    local_1a8 = 0;
    uStack_1a0 = 0;
    local_198 = 0;
    uStack_190 = 0;
    local_188 = 0;
    uStack_180 = 0;
    local_178 = 0;
    uStack_170 = 0;
    local_168 = 0;
    uStack_160 = 0;
    local_158 = 0;
    uStack_150 = 0;
    func_0x091118f0(local_f8,&DAT_00f240b8,&local_1c8);
    func_0x09111630(local_f8);
    if ((local_258 & 1) != 0) {
      func_0x0450a140(local_248);
    }
  }
  if ((local_1f8 & 1) == 0) {
    if ((byte)local_1f8 >> 1 != 0) goto LAB_079e2d07;
  }
  else if (CONCAT44(uStack_1ec,uStack_1f0) != 0) {
LAB_079e2d07:
    func_0x08df1ef0(*(undefined8 *)(param_1 + 0x60),&local_1f8);
  }
  local_248 = 0xaaaaaaaaaaaaaaaa;
  local_258 = 0xaaaaaaaa;
  uStack_254 = 0xaaaaaaaa;
  uStack_250 = 0xaaaaaaaa;
  uStack_24c = 0xaaaaaaaa;
  uVar5 = func_0x0603c4e0();
  wx_6041890(&local_258,uVar5);
  local_228 = 0xaaaaaaaaaaaaaaaa;
  local_238 = 0xaaaaaaaa;
  uStack_234 = 0xaaaaaaaa;
  uStack_230 = 0xaaaaaaaa;
  uStack_22c = 0xaaaaaaaa;
  uVar5 = func_0x0603c4e0();
  wx_6041990(&local_238,uVar5);
  if ((local_258 & 1) == 0) {
    if ((byte)local_258 >> 1 != 0) goto LAB_079e2d73;
LAB_079e2dd2:
    iVar4 = func_0x09116c90(2);
    if (iVar4 != 0) {
      func_0x073b29d0(&local_148);
      puVar11 = local_138;
      if (((ulong)local_148 & 1) == 0) {
        puVar11 = (undefined1 *)((long)&local_148 + 1);
      }
      func_0x091115a0(local_f8,2,puVar11,&DAT_00dbf53e,&DAT_00f6d056,0x1c8,0,0);
      local_158 = 0;
      uStack_150 = 0;
      local_168 = 0;
      uStack_160 = 0;
      local_178 = 0;
      uStack_170 = 0;
      local_188 = 0;
      uStack_180 = 0;
      local_198 = 0;
      uStack_190 = 0;
      local_1a8 = 0;
      uStack_1a0 = 0;
      local_1b8 = 0;
      uStack_1b0 = 0;
      local_1c8 = (undefined8 *)0x0;
      puStack_1c0 = (undefined8 *)0x0;
      func_0x091118f0(local_f8,&DAT_0104fc5b,&local_1c8);
      func_0x09111630(local_f8);
      if (((ulong)local_148 & 1) != 0) goto LAB_079e30f8;
    }
  }
  else {
    if (CONCAT44(uStack_24c,uStack_250) == 0) goto LAB_079e2dd2;
LAB_079e2d73:
    if ((local_238 & 1) == 0) {
      if ((byte)local_238 >> 1 == 0) goto LAB_079e2dd2;
    }
    else if (CONCAT44(uStack_22c,uStack_230) == 0) goto LAB_079e2dd2;
    func_0x08df1f10(*(undefined8 *)(param_1 + 0x60),&local_258,&local_238);
    iVar4 = func_0x09116c90(2);
    if (iVar4 != 0) {
      func_0x073b29d0(&local_1e0);
      puVar11 = local_1d0;
      if ((local_1e0 & 1) == 0) {
        puVar11 = local_1df;
      }
      func_0x091115a0(local_f8,2,puVar11,&DAT_00dbf53e,&DAT_00f6d056,0x1c5,0,0);
      if ((local_258 & 1) == 0) {
        uVar6 = (ulong)((byte)local_258 >> 1);
      }
      else {
        uVar6 = CONCAT44(uStack_24c,uStack_250);
      }
      uVar13 = 7;
      pcVar12 = (char *)((long)&local_148 + 7);
      do {
        pcVar10 = pcVar12;
        pcVar10[1] = "ZYXWVUTSRQPONMLKJIHGFEDCBA9876543210123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                     [uVar6 + (uVar6 / 10) * -10 + 0x23];
        pcVar12 = pcVar10 + 1;
        uVar13 = uVar13 + 1;
        bVar3 = 9 < uVar6;
        uVar6 = uVar6 / 10;
      } while (bVar3);
      local_148 = local_140;
      pcVar10[2] = '\0';
      if (8 < uVar13) {
        pcVar10 = local_140;
        do {
          pcVar10 = pcVar10 + 1;
          cVar1 = *pcVar12;
          *pcVar12 = pcVar10[-1];
          pcVar12 = pcVar12 + -1;
          pcVar10[-1] = cVar1;
        } while (pcVar10 < pcVar12);
      }
      if ((local_238 & 1) == 0) {
        uVar6 = (ulong)((byte)local_238 >> 1);
      }
      else {
        uVar6 = CONCAT44(uStack_22c,uStack_230);
      }
      local_68 = (char *)0x0;
      uVar13 = 7;
      pcVar12 = (char *)((long)&local_68 + 7);
      do {
        pcVar10 = pcVar12;
        pcVar10[1] = "ZYXWVUTSRQPONMLKJIHGFEDCBA9876543210123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                     [uVar6 + (uVar6 / 10) * -10 + 0x23];
        pcVar12 = pcVar10 + 1;
        uVar13 = uVar13 + 1;
        bVar3 = 9 < uVar6;
        uVar6 = uVar6 / 10;
      } while (bVar3);
      local_68 = local_60;
      pcVar10[2] = '\0';
      if (8 < uVar13) {
        pcVar10 = local_60;
        do {
          pcVar10 = pcVar10 + 1;
          cVar1 = *pcVar12;
          *pcVar12 = pcVar10[-1];
          pcVar12 = pcVar12 + -1;
          pcVar10[-1] = cVar1;
        } while (pcVar10 < pcVar12);
      }
      local_1c8 = &local_148;
      puStack_1c0 = &local_68;
      local_1b8 = 0;
      uStack_1b0 = 0;
      local_1a8 = 0;
      uStack_1a0 = 0;
      local_198 = 0;
      uStack_190 = 0;
      local_188 = 0;
      uStack_180 = 0;
      local_178 = 0;
      uStack_170 = 0;
      local_168 = 0;
      uStack_160 = 0;
      local_158 = 0;
      uStack_150 = 0;
      func_0x091118f0(local_f8,&DAT_00e39af4,&local_1c8);
      func_0x09111630(local_f8);
      local_138 = local_1d0;
      if ((local_1e0 & 1) == 0) goto LAB_079e30fd;
LAB_079e30f8:
      func_0x0450a140(local_138);
    }
  }
LAB_079e30fd:
  if ((local_218 & 1) == 0) {
    if ((byte)local_218 >> 1 == 0) goto LAB_079e3127;
  }
  else if (CONCAT44(uStack_20c,uStack_210) == 0) goto LAB_079e3127;
  func_0x08df1f00(*(undefined8 *)(param_1 + 0x60),&local_218);
LAB_079e3127:
  uVar5 = *(undefined8 *)(param_1 + 0x60);
  plVar7 = (long *)func_0x0603c4e0();
  lVar8 = (**(code **)(*plVar7 + 0x10))(plVar7);
  uVar2 = *(undefined2 *)(lVar8 + 0x80);
  plVar7 = (long *)func_0x0603c4e0();
  uVar9 = (**(code **)(*plVar7 + 0x10))(plVar7);
  func_0x06042f70(local_f8,uVar9);
  func_0x08df1ed0(uVar5,uVar2,local_f8);
  if ((local_f8[0] & 1) != 0) {
    func_0x0450a140(local_e8);
  }
  uVar5 = *(undefined8 *)(param_1 + 0x60);
  plVar7 = (long *)func_0x0603c4e0();
  lVar8 = (**(code **)(*plVar7 + 0x10))(plVar7);
  func_0x08df1ee0(uVar5,*(undefined4 *)(lVar8 + 0x60));
  if ((local_238 & 1) != 0) {
    func_0x0450a140(local_228);
  }
  if ((local_258 & 1) != 0) {
    func_0x0450a140(local_248);
  }
  if ((local_218 & 1) != 0) {
    func_0x0450a140(local_208);
  }
  if ((local_1f8 & 1) != 0) {
    func_0x0450a140(local_1e8);
  }
  return;
}

