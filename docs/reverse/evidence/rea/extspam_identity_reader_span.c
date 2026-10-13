
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Type propagation algorithm not settling */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void wx_9b0fefe(undefined8 param_1)

{
  byte *pbVar1;
  long *plVar2;
  long *plVar3;
  long lVar4;
  long *plVar5;
  undefined1 *puVar6;
  undefined8 *puVar7;
  int *piVar8;
  undefined8 uVar9;
  undefined8 uVar10;
  undefined8 uVar11;
  byte bVar12;
  long lVar13;
  undefined8 *puVar14;
  long *plVar15;
  long lVar16;
  ulong uVar17;
  long *plVar18;
  char *pcVar19;
  int iVar20;
  byte bVar21;
  uint uVar22;
  uint uVar23;
  long unaff_RBP;
  int iVar24;
  ulong uVar25;
  undefined1 *puVar26;
  undefined4 unaff_R14D;
  long lVar27;
  undefined8 in_XMM0_Qb;
  
  *(undefined8 *)(unaff_RBP + -0x1030) = param_1;
  *(undefined8 *)(unaff_RBP + -0x1028) = in_XMM0_Qb;
  *(undefined8 *)(unaff_RBP + -0x1040) = param_1;
  *(undefined8 *)(unaff_RBP + -0x1038) = in_XMM0_Qb;
  *(undefined4 *)(unaff_RBP + -0x1020) = 0;
  lVar13 = func_0x0a66ee40(unaff_R14D,unaff_RBP + -0x1040,0x24);
  if (lVar13 != 0x24) {
LAB_09b10246:
    func_0x045bfef0(unaff_R14D);
    FUN_09b10809();
    return;
  }
  *(undefined4 *)(unaff_RBP + -0x1f0) = 0;
  lVar13 = func_0x0a66ee40(unaff_R14D);
  if (lVar13 != 4) goto LAB_09b10246;
  uVar22 = (*(uint *)(&DAT_02b65ef0 + ((ulong)*(byte *)(unaff_RBP + -0x1040) ^ 0xff) * 4) ^ 0xffffff
           ) >> 8 ^ *(uint *)(&DAT_02b65ef0 +
                             (ulong)((*(uint *)(&DAT_02b65ef0 +
                                               ((ulong)*(byte *)(unaff_RBP + -0x1040) ^ 0xff) * 4) ^
                                     0xffffff) & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x103f)) * 4);
  uVar22 = uVar22 >> 8 ^
           *(uint *)(&DAT_02b65ef0 +
                    (ulong)(uVar22 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x103e)) * 4);
  uVar22 = uVar22 >> 8 ^
           *(uint *)(&DAT_02b65ef0 +
                    (ulong)(uVar22 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x103d)) * 4);
  uVar22 = uVar22 >> 8 ^
           *(uint *)(&DAT_02b65ef0 +
                    (ulong)(uVar22 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x103c)) * 4);
  uVar22 = uVar22 >> 8 ^
           *(uint *)(&DAT_02b65ef0 +
                    (ulong)(uVar22 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x103b)) * 4);
  uVar22 = uVar22 >> 8 ^
           *(uint *)(&DAT_02b65ef0 +
                    (ulong)(uVar22 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x103a)) * 4);
  uVar22 = uVar22 >> 8 ^
           *(uint *)(&DAT_02b65ef0 +
                    (ulong)(uVar22 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x1039)) * 4);
  uVar22 = uVar22 >> 8 ^
           *(uint *)(&DAT_02b65ef0 +
                    (ulong)(uVar22 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x1038)) * 4);
  uVar22 = uVar22 >> 8 ^
           *(uint *)(&DAT_02b65ef0 +
                    (ulong)(uVar22 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x1037)) * 4);
  uVar22 = uVar22 >> 8 ^
           *(uint *)(&DAT_02b65ef0 +
                    (ulong)(uVar22 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x1036)) * 4);
  uVar22 = uVar22 >> 8 ^
           *(uint *)(&DAT_02b65ef0 +
                    (ulong)(uVar22 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x1035)) * 4);
  uVar22 = uVar22 >> 8 ^
           *(uint *)(&DAT_02b65ef0 +
                    (ulong)(uVar22 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x1034)) * 4);
  uVar22 = uVar22 >> 8 ^
           *(uint *)(&DAT_02b65ef0 +
                    (ulong)(uVar22 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x1033)) * 4);
  uVar22 = uVar22 >> 8 ^
           *(uint *)(&DAT_02b65ef0 +
                    (ulong)(uVar22 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x1032)) * 4);
  uVar22 = uVar22 >> 8 ^
           *(uint *)(&DAT_02b65ef0 +
                    (ulong)(uVar22 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x1031)) * 4);
  uVar22 = uVar22 >> 8 ^
           *(uint *)(&DAT_02b65ef0 +
                    (ulong)(uVar22 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x1030)) * 4);
  uVar22 = uVar22 >> 8 ^
           *(uint *)(&DAT_02b65ef0 +
                    (ulong)(uVar22 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x102f)) * 4);
  uVar22 = uVar22 >> 8 ^
           *(uint *)(&DAT_02b65ef0 +
                    (ulong)(uVar22 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x102e)) * 4);
  uVar22 = uVar22 >> 8 ^
           *(uint *)(&DAT_02b65ef0 +
                    (ulong)(uVar22 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x102d)) * 4);
  uVar22 = uVar22 >> 8 ^
           *(uint *)(&DAT_02b65ef0 +
                    (ulong)(uVar22 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x102c)) * 4);
  uVar22 = uVar22 >> 8 ^
           *(uint *)(&DAT_02b65ef0 +
                    (ulong)(uVar22 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x102b)) * 4);
  uVar22 = uVar22 >> 8 ^
           *(uint *)(&DAT_02b65ef0 +
                    (ulong)(uVar22 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x102a)) * 4);
  uVar22 = uVar22 >> 8 ^
           *(uint *)(&DAT_02b65ef0 +
                    (ulong)(uVar22 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x1029)) * 4);
  uVar22 = uVar22 >> 8 ^
           *(uint *)(&DAT_02b65ef0 +
                    (ulong)(uVar22 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x1028)) * 4);
  uVar22 = uVar22 >> 8 ^
           *(uint *)(&DAT_02b65ef0 +
                    (ulong)(uVar22 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x1027)) * 4);
  uVar22 = uVar22 >> 8 ^
           *(uint *)(&DAT_02b65ef0 +
                    (ulong)(uVar22 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x1026)) * 4);
  uVar22 = uVar22 >> 8 ^
           *(uint *)(&DAT_02b65ef0 +
                    (ulong)(uVar22 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x1025)) * 4);
  uVar22 = uVar22 >> 8 ^
           *(uint *)(&DAT_02b65ef0 +
                    (ulong)(uVar22 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x1024)) * 4);
  uVar22 = uVar22 >> 8 ^
           *(uint *)(&DAT_02b65ef0 +
                    (ulong)(uVar22 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x1023)) * 4);
  uVar22 = uVar22 >> 8 ^
           *(uint *)(&DAT_02b65ef0 +
                    (ulong)(uVar22 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x1022)) * 4);
  uVar22 = uVar22 >> 8 ^
           *(uint *)(&DAT_02b65ef0 +
                    (ulong)(uVar22 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x1021)) * 4);
  uVar22 = uVar22 >> 8 ^
           *(uint *)(&DAT_02b65ef0 +
                    (ulong)(uVar22 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x1020)) * 4);
  uVar22 = uVar22 >> 8 ^
           *(uint *)(&DAT_02b65ef0 +
                    (ulong)(uVar22 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x101f)) * 4);
  uVar22 = uVar22 >> 8 ^
           *(uint *)(&DAT_02b65ef0 +
                    (ulong)(uVar22 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x101e)) * 4);
  uVar23 = ~(uVar22 >> 8 ^
            *(uint *)(&DAT_02b65ef0 +
                     (ulong)(uVar22 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x101d)) * 4));
  uVar22 = *(uint *)(unaff_RBP + -0x1f0);
  func_0x045bfef0(unaff_R14D);
  if (uVar22 == uVar23) {
    puVar14 = (undefined8 *)func_0x0a66dda0(0x28);
    uVar9 = *(undefined8 *)(unaff_RBP + -0x1038);
    uVar10 = *(undefined8 *)(unaff_RBP + -0x1030);
    uVar11 = *(undefined8 *)(unaff_RBP + -0x1028);
    *puVar14 = *(undefined8 *)(unaff_RBP + -0x1040);
    puVar14[1] = uVar9;
    puVar14[2] = uVar10;
    puVar14[3] = uVar11;
    *(undefined4 *)(puVar14 + 4) = *(undefined4 *)(unaff_RBP + -0x1020);
    *(undefined8 **)(unaff_RBP + -0x290) = puVar14;
    *(undefined1 *)((long)puVar14 + 0x24) = 0;
    uVar22 = (uint)CONCAT71((uint7)(uint3)(uVar23 >> 8),0x29);
  }
  else {
    uVar22 = 0;
  }
  if ((*(byte *)(unaff_RBP + -0x1300) & 1) != 0) {
    func_0x0450a140(*(undefined8 *)(unaff_RBP + -0x12f0));
  }
  lVar13 = unaff_RBP + -0x63f;
  if ((*(byte *)(unaff_RBP + -0x400) & 1) != 0) {
    func_0x0450a140(*(undefined8 *)(unaff_RBP + -0x3f0));
  }
  bVar21 = *(byte *)(unaff_RBP + -0x59);
  *(uint *)(unaff_RBP + -0x270) = uVar22;
  if ((uVar22 & 1) == 0) {
    *(ulong *)(unaff_RBP + -0x640) = (ulong)(uVar22 & 0xff);
    *(undefined8 *)(unaff_RBP + -0x638) = 0x24;
    *(undefined8 *)(unaff_RBP + -0x630) = *(undefined8 *)(unaff_RBP + -0x290);
    if ((byte)uVar22 < 2) {
      uVar23 = 0x24;
      bVar21 = 0;
      lVar16 = *(long *)(unaff_RBP + -0x290);
      uVar17 = (ulong)uVar22;
      goto LAB_09b1090d;
    }
  }
  else {
    func_0x0450c6a0(unaff_RBP + -0x640,*(undefined8 *)(unaff_RBP + -0x290),0x24);
  }
  bVar12 = (byte)uVar22 >> 1;
  if ((uVar22 & 1) != 0) {
    bVar12 = 0x24;
  }
  uVar22 = (uint)bVar12;
  if (bVar12 == 0) {
    uVar22 = 1;
  }
  if (bVar12 < 2) {
    uVar17 = 0;
  }
  else {
    uVar17 = 0;
    do {
      if ((*(byte *)(unaff_RBP + -0x640) & 1) == 0) {
        *(byte *)(lVar13 + uVar17) = *(byte *)(lVar13 + uVar17) ^ bVar21;
        bVar12 = *(byte *)(unaff_RBP + -0x640);
      }
      else {
        pbVar1 = (byte *)(*(long *)(unaff_RBP + -0x630) + uVar17);
        *pbVar1 = *pbVar1 ^ bVar21;
        bVar12 = *(byte *)(unaff_RBP + -0x640);
      }
      lVar16 = lVar13;
      if ((bVar12 & 1) != 0) {
        lVar16 = *(long *)(unaff_RBP + -0x630);
      }
      pbVar1 = (byte *)(lVar16 + 1 + uVar17);
      *pbVar1 = *pbVar1 ^ bVar21;
      uVar17 = uVar17 + 2;
    } while ((uVar22 & 0xfffffffe) != uVar17);
  }
  if ((uVar22 & 1) != 0) {
    lVar16 = lVar13;
    if ((*(byte *)(unaff_RBP + -0x640) & 1) != 0) {
      lVar16 = *(long *)(unaff_RBP + -0x630);
    }
    *(byte *)(lVar16 + uVar17) = *(byte *)(lVar16 + uVar17) ^ bVar21;
  }
  uVar17 = (ulong)*(byte *)(unaff_RBP + -0x640);
  lVar16 = *(long *)(unaff_RBP + -0x630);
  uVar23 = (uint)*(undefined8 *)(unaff_RBP + -0x638);
  bVar21 = *(byte *)(unaff_RBP + -0x640) & 1;
LAB_09b1090d:
  plVar3 = *(long **)(unaff_RBP + -0xe0);
  if (bVar21 == 0) {
    lVar16 = lVar13;
  }
  uVar17 = (ulong)((byte)(uVar17 >> 1) & 0x7f);
  if (bVar21 != 0) {
    uVar17 = (ulong)uVar23;
  }
  if ((((plVar3 != (long *)0x0) && (lVar16 != 0)) && (lVar13 = *plVar3, lVar13 != 0)) &&
     (0 < (int)*(uint *)(lVar13 + 0x18))) {
    lVar4 = *(long *)(lVar13 + 8);
    lVar27 = 0;
    do {
      if (*(int *)(lVar4 + lVar27) == 6) {
        if ((int)uVar17 < 1) {
          iVar20 = func_0x0a66e160(lVar16);
          uVar17 = (ulong)(uint)(iVar20 - (int)uVar17);
          uVar22 = *(uint *)(lVar4 + 0x14 + lVar27);
        }
        else {
          uVar22 = *(uint *)(lVar4 + 0x14 + lVar27);
        }
        if (1 < uVar22) {
          if (uVar22 == 3) {
            halt_baddata();
          }
          puVar26 = (undefined1 *)plVar3[2];
          puVar6 = (undefined1 *)plVar3[3];
          if (puVar6 < puVar26 + 0x14) {
            *(long **)(unaff_RBP + -0x30) = plVar3;
            lVar13 = plVar3[1];
            iVar20 = (int)puVar6 - (int)lVar13;
            do {
              iVar20 = iVar20 * 2;
            } while (iVar20 < (int)(puVar26 + 0x14) - (int)lVar13);
            *(ulong *)(unaff_RBP + -0x38) = uVar17;
            lVar16 = (long)puVar26 - lVar13;
            plVar3 = *(long **)(*(long *)(unaff_RBP + -0x30) + 0x70);
            uVar23 = iVar20 + 3U & 0xfffffffc;
            uVar22 = *(uint *)(plVar3 + 1);
            iVar24 = *(int *)((long)plVar3 + 0xc);
            if ((int)(uVar22 - iVar24) < (int)uVar23) {
              if ((int)uVar22 <= (int)uVar23) {
                uVar22 = uVar23;
              }
              *(long *)(unaff_RBP + -0x70) = lVar16;
              *(long **)(unaff_RBP + -0x50) = plVar3;
              *(long *)(unaff_RBP + -0x48) = lVar13;
              puVar14 = (undefined8 *)func_0x0a66e260((long)(int)uVar22 + 8);
              lVar13 = *(long *)(unaff_RBP + -0x48);
              lVar16 = *(long *)(unaff_RBP + -0x70);
              puVar7 = *(undefined8 **)(unaff_RBP + -0x50);
              *puVar14 = *puVar7;
              *puVar7 = puVar14;
              *(uint *)((long)puVar7 + 0xc) = uVar23;
            }
            else {
              puVar14 = (undefined8 *)(*plVar3 + (long)iVar24);
              *(uint *)((long)plVar3 + 0xc) = uVar23 + iVar24;
            }
            puVar14 = puVar14 + 1;
            func_0x0a66e230(puVar14,lVar13,(long)(int)lVar16);
            plVar3 = *(long **)(unaff_RBP + -0x30);
            puVar26 = (undefined1 *)((plVar3[2] - plVar3[1]) + (long)puVar14);
            plVar3[2] = (long)puVar26;
            plVar3[3] = (long)iVar20 + (long)puVar14;
            plVar3[1] = (long)puVar14;
            uVar17 = *(ulong *)(unaff_RBP + -0x38);
            iVar20 = *(int *)(lVar4 + 0x10 + lVar27);
          }
          else {
            iVar20 = *(int *)(lVar4 + 0x10 + lVar27);
          }
          if ((iVar20 != 0xc) && (iVar20 != 9)) {
            halt_baddata();
          }
          *puVar26 = 0x32;
          lVar13 = plVar3[2];
          pbVar1 = (byte *)(lVar13 + 1);
          plVar3[2] = (long)pbVar1;
          uVar22 = (uint)uVar17;
          if (uVar22 < 0x80) {
            *pbVar1 = (byte)uVar17;
            lVar13 = 1;
          }
          else {
            *pbVar1 = (byte)uVar17 | 0x80;
            bVar21 = (byte)(uVar17 >> 7);
            if (uVar22 < 0x4000) {
              *(byte *)(lVar13 + 2) = bVar21;
              lVar13 = 2;
            }
            else {
              *(byte *)(lVar13 + 2) = bVar21 | 0x80;
              bVar21 = (byte)(uVar17 >> 0xe);
              if (uVar22 < 0x200000) {
                *(byte *)(lVar13 + 3) = bVar21;
                lVar13 = 3;
              }
              else {
                *(byte *)(lVar13 + 3) = bVar21 | 0x80;
                bVar21 = (byte)(uVar17 >> 0x15);
                if (uVar22 < 0x10000000) {
                  *(byte *)(lVar13 + 4) = bVar21;
                  lVar13 = 4;
                }
                else {
                  *(byte *)(lVar13 + 4) = bVar21 | 0x80;
                  *(byte *)(lVar13 + 5) = (byte)(uVar17 >> 0x1c) & 0xf;
                  lVar13 = 5;
                }
              }
            }
          }
          lVar13 = lVar13 + plVar3[2];
          plVar3[2] = lVar13;
          uVar17 = lVar13 + (int)uVar22;
          uVar25 = plVar3[3];
          if (uVar17 <= uVar25) {
                    /* WARNING: Bad instruction - Truncating control flow here */
            halt_baddata();
          }
          *(long *)(unaff_RBP + -0x38) = (long)(int)uVar22;
          lVar16 = plVar3[1];
          iVar24 = (int)lVar16;
          iVar20 = (int)uVar25 - iVar24;
          do {
            iVar20 = iVar20 * 2;
          } while (iVar20 < (int)uVar17 - iVar24);
          *(long **)(unaff_RBP + -0x30) = plVar3;
          plVar3 = (long *)plVar3[0xe];
          uVar23 = iVar20 + 3U & 0xfffffffc;
          uVar22 = *(uint *)(plVar3 + 1);
          iVar20 = *(int *)((long)plVar3 + 0xc);
          if ((int)(uVar22 - iVar20) < (int)uVar23) {
            if ((int)uVar22 <= (int)uVar23) {
              uVar22 = uVar23;
            }
            *(long **)(unaff_RBP + -0x70) = plVar3;
            puVar14 = (undefined8 *)func_0x0a66e260((long)(int)uVar22 + 8);
            puVar7 = *(undefined8 **)(unaff_RBP + -0x70);
            *puVar14 = *puVar7;
            *puVar7 = puVar14;
            *(uint *)((long)puVar7 + 0xc) = uVar23;
          }
          else {
            puVar14 = (undefined8 *)(*plVar3 + (long)iVar20);
            *(uint *)((long)plVar3 + 0xc) = uVar23 + iVar20;
          }
          pcVar19 = (char *)func_0x0a66e230(puVar14 + 1,lVar16,(long)((int)lVar13 - iVar24));
          *pcVar19 = *pcVar19 + (char)pcVar19;
                    /* WARNING: Bad instruction - Truncating control flow here */
          halt_baddata();
        }
        if (plVar3[0xc] == 0) {
          plVar5 = (long *)plVar3[0xe];
          if (plVar5 == (long *)0x0) {
            plVar18 = (long *)func_0x0a66e260(0x20);
            lVar13 = lRam0000000000d5ba48;
            *plVar18 = _DAT_00d5ba40;
            plVar18[1] = lVar13;
            plVar15 = (long *)func_0x0a66e260(0x60);
            lVar13 = 0x60;
          }
          else {
            uVar22 = *(uint *)(plVar5 + 1);
            uVar25 = (ulong)uVar22;
            iVar20 = *(int *)((long)plVar5 + 0xc);
            if ((int)(uVar22 - iVar20) < 0x20) {
              if ((int)uVar22 < 0x21) {
                lVar13 = 0x28;
              }
              else {
                lVar13 = uVar25 + 8;
              }
              plVar15 = (long *)func_0x0a66e260(lVar13);
              *plVar15 = *plVar5;
              *plVar5 = (long)plVar15;
              *(undefined4 *)((long)plVar5 + 0xc) = 0x20;
              uVar25 = (ulong)*(uint *)(plVar5 + 1);
              iVar20 = 0x20;
              plVar2 = plVar15;
            }
            else {
              plVar15 = (long *)*plVar5;
              plVar2 = (long *)((long)plVar15 + (long)iVar20);
              iVar20 = iVar20 + 0x20;
              *(int *)((long)plVar5 + 0xc) = iVar20;
            }
            lVar13 = lRam0000000000d5ba48;
            plVar18 = plVar2 + 1;
            *plVar18 = _DAT_00d5ba40;
            plVar2[2] = lVar13;
            if ((int)uVar25 - iVar20 < 0x60) {
              if ((int)uVar25 < 0x61) {
                lVar13 = 0x68;
              }
              else {
                lVar13 = uVar25 + 8;
              }
              plVar15 = (long *)func_0x0a66e260(lVar13);
              *plVar15 = *plVar5;
              *plVar5 = (long)plVar15;
              *(undefined4 *)((long)plVar5 + 0xc) = 0x60;
              plVar15 = plVar15 + 1;
              lVar13 = *plVar18 * 0x18;
            }
            else {
              plVar15 = (long *)((long)plVar15 + (long)iVar20 + 8);
              *(int *)((long)plVar5 + 0xc) = iVar20 + 0x60;
              lVar13 = 0x60;
            }
          }
          plVar18[3] = (long)plVar15;
          func_0x0a66e2d0(plVar15,0,lVar13);
          plVar18[2] = (long)plVar5;
          plVar3[0xc] = (long)plVar18;
        }
        plVar5 = (long *)plVar3[0xe];
        iVar24 = (int)uVar17;
        uVar23 = iVar24 + 3U & 0xfffffffc;
        uVar22 = *(uint *)(plVar5 + 1);
        iVar20 = *(int *)((long)plVar5 + 0xc);
        if ((int)(uVar22 - iVar20) < (int)uVar23) {
          if ((int)uVar22 <= (int)uVar23) {
            uVar22 = uVar23;
          }
          plVar15 = (long *)func_0x0a66e260((long)(int)uVar22 + 8);
          *plVar15 = *plVar5;
          *plVar5 = (long)plVar15;
          *(uint *)((long)plVar5 + 0xc) = uVar23;
        }
        else {
          plVar15 = (long *)(*plVar5 + (long)iVar20);
          *(uint *)((long)plVar5 + 0xc) = uVar23 + iVar20;
        }
        plVar15 = plVar15 + 1;
        func_0x0a66e230(plVar15,lVar16,(long)iVar24);
        piVar8 = (int *)plVar3[0xc];
        if (piVar8 == (int *)0x0) goto LAB_09b10df6;
        uVar17 = (ulong)(*piVar8 - 1U & 6);
        lVar13 = *(long *)(piVar8 + 6);
        iVar20 = *(int *)(lVar13 + uVar17 * 0x18);
        if (iVar20 == 0) goto LAB_09b10df6;
        goto joined_r0x09b10dbb;
      }
      lVar27 = lVar27 + 0x30;
    } while ((ulong)*(uint *)(lVar13 + 0x18) * 0x30 != lVar27);
  }
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
joined_r0x09b10dbb:
  if (iVar20 == 6) {
    puVar14 = *(undefined8 **)(lVar13 + 8 + uVar17 * 0x18);
    if (puVar14 != (undefined8 *)0x0) {
      *puVar14 = plVar15;
      *(int *)(puVar14 + 1) = iVar24;
      halt_baddata();
    }
LAB_09b10df6:
    plVar5 = (long *)plVar3[0xe];
    uVar22 = *(uint *)(plVar5 + 1);
    iVar20 = *(int *)((long)plVar5 + 0xc);
    if ((int)(uVar22 - iVar20) < 0x10) {
      if ((int)uVar22 < 0x11) {
        lVar13 = 0x18;
      }
      else {
        lVar13 = (ulong)uVar22 + 8;
      }
      plVar18 = (long *)func_0x0a66e260(lVar13);
      *plVar18 = *plVar5;
      *plVar5 = (long)plVar18;
      *(undefined4 *)((long)plVar5 + 0xc) = 0x10;
    }
    else {
      plVar18 = (long *)(*plVar5 + (long)iVar20);
      *(int *)((long)plVar5 + 0xc) = iVar20 + 0x10;
    }
    plVar18[1] = (long)plVar15;
    *(int *)(plVar18 + 2) = iVar24;
    piVar8 = (int *)plVar3[0xc];
    if (piVar8 != (int *)0x0) {
      uVar17 = (ulong)(*piVar8 - 1U & 6);
      lVar13 = *(long *)(piVar8 + 6);
      iVar20 = *(int *)(lVar13 + uVar17 * 0x18);
      if (iVar20 != 0) {
        while( true ) {
          if (iVar20 == 6) {
            *(long **)(lVar13 + 8 + uVar17 * 0x18) = plVar18 + 1;
            halt_baddata();
          }
          lVar16 = (long)*(int *)(lVar13 + 0x10 + uVar17 * 0x18);
          if (lVar16 == 0) break;
          uVar17 = lVar16 - 1;
          iVar20 = *(int *)(lVar13 + uVar17 * 0x18);
        }
      }
    }
    func_0x09c4db20(piVar8,6);
                    /* WARNING: Bad instruction - Truncating control flow here */
    halt_baddata();
  }
  lVar16 = (long)*(int *)(lVar13 + 0x10 + uVar17 * 0x18);
  if (lVar16 == 0) goto LAB_09b10df6;
  uVar17 = lVar16 - 1;
  iVar20 = *(int *)(lVar13 + uVar17 * 0x18);
  goto joined_r0x09b10dbb;
}

