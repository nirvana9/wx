
undefined8 wx_77f7000(long param_1,undefined8 param_2,undefined8 param_3,undefined1 *param_4)

{
  uint uVar1;
  long lVar2;
  undefined4 local_28;
  undefined4 uStack_24;
  uint uStack_20;
  undefined4 uStack_1c;
  long local_18;
  
  *param_4 = 0;
  local_18 = -0x5555555555555556;
  local_28 = 0xaaaaaaaa;
  uStack_24 = 0xaaaaaaaa;
  uStack_20 = 0xaaaaaaaa;
  uStack_1c = 0xaaaaaaaa;
  func_0x08f50740(&local_28,param_1 + 0x88);
  lVar2 = local_18;
  uVar1 = uStack_20;
  if ((local_28 & 1) == 0) {
    lVar2 = (long)&local_28 + 1;
    uVar1 = local_28 >> 1 & 0x7f;
  }
  wx_79c5c10(param_2,lVar2,uVar1);
  if ((local_28 & 1) != 0) {
    func_0x0450a140(local_18);
  }
  return 1;
}

