

define i8 @test_64bit_add(i16* %a, i64 %b) {




  %tmp1 = getelementptr inbounds i16, i16* %a, i64 %b
  %tmp2 = load i16, i16* %tmp1
  %tmp3 = trunc i16 %tmp2 to i8
  ret i8 %tmp3
}



define void @ldst_8bit(i8* %base, i64 %offset) minsize {


   %off32.sext.tmp = shl i64 %offset, 32
   %off32.sext = ashr i64 %off32.sext.tmp, 32
   %addr8_sxtw = getelementptr i8, i8* %base, i64 %off32.sext
   %val8_sxtw = load volatile i8, i8* %addr8_sxtw
   %val32_signed = sext i8 %val8_sxtw to i32
   store volatile i32 %val32_signed, i32* @var_32bit


  %addrint_uxtw = ptrtoint i8* %base to i64
  %offset_uxtw = and i64 %offset, 4294967295
  %addrint1_uxtw = add i64 %addrint_uxtw, %offset_uxtw
  %addr_uxtw = inttoptr i64 %addrint1_uxtw to i8*
  %val8_uxtw = load volatile i8, i8* %addr_uxtw
  %newval8 = add i8 %val8_uxtw, 1
  store volatile i8 %newval8, i8* @var_8bit


   ret void
}


define void @ldst_16bit(i16* %base, i64 %offset) minsize {


  %addrint_uxtw = ptrtoint i16* %base to i64
  %offset_uxtw = and i64 %offset, 4294967295
  %addrint1_uxtw = add i64 %addrint_uxtw, %offset_uxtw
  %addr_uxtw = inttoptr i64 %addrint1_uxtw to i16*
  %val8_uxtw = load volatile i16, i16* %addr_uxtw
  %newval8 = add i16 %val8_uxtw, 1
  store volatile i16 %newval8, i16* @var_16bit


  %base_sxtw = ptrtoint i16* %base to i64
  %offset_sxtw.tmp = shl i64 %offset, 32
  %offset_sxtw = ashr i64 %offset_sxtw.tmp, 32
  %addrint_sxtw = add i64 %base_sxtw, %offset_sxtw
  %addr_sxtw = inttoptr i64 %addrint_sxtw to i16*
  %val16_sxtw = load volatile i16, i16* %addr_sxtw
  %val64_signed = sext i16 %val16_sxtw to i64
  store volatile i64 %val64_signed, i64* @var_64bit



  %base_uxtwN = ptrtoint i16* %base to i64
  %offset_uxtwN = and i64 %offset, 4294967295
  %offset2_uxtwN = shl i64 %offset_uxtwN, 1
  %addrint_uxtwN = add i64 %base_uxtwN, %offset2_uxtwN
  %addr_uxtwN = inttoptr i64 %addrint_uxtwN to i16*
  %val32 = load volatile i32, i32* @var_32bit
  %val16_trunc32 = trunc i32 %val32 to i16
  store volatile i16 %val16_trunc32, i16* %addr_uxtwN

   ret void
}

define void @ldst_32bit(i32* %base, i64 %offset) minsize {


  %addrint_uxtw = ptrtoint i32* %base to i64
  %offset_uxtw = and i64 %offset, 4294967295
  %addrint1_uxtw = add i64 %addrint_uxtw, %offset_uxtw
  %addr_uxtw = inttoptr i64 %addrint1_uxtw to i32*
  %val32_uxtw = load volatile i32, i32* %addr_uxtw
  %newval32 = add i32 %val32_uxtw, 1
  store volatile i32 %newval32, i32* @var_32bit


  %base_sxtw = ptrtoint i32* %base to i64
  %offset_sxtw.tmp = shl i64 %offset, 32
  %offset_sxtw = ashr i64 %offset_sxtw.tmp, 32
  %addrint_sxtw = add i64 %base_sxtw, %offset_sxtw
  %addr_sxtw = inttoptr i64 %addrint_sxtw to i32*
  %val32_sxtw = load volatile i32, i32* %addr_sxtw
  %val64_signed = sext i32 %val32_sxtw to i64
  store volatile i64 %val64_signed, i64* @var_64bit



  %base_uxtwN = ptrtoint i32* %base to i64
  %offset_uxtwN = and i64 %offset, 4294967295
  %offset2_uxtwN = shl i64 %offset_uxtwN, 2
  %addrint_uxtwN = add i64 %base_uxtwN, %offset2_uxtwN
  %addr_uxtwN = inttoptr i64 %addrint_uxtwN to i32*
  %val32 = load volatile i32, i32* @var_32bit
  store volatile i32 %val32, i32* %addr_uxtwN

   ret void
}

define void @ldst_64bit(i64* %base, i64 %offset) minsize {


  %addrint_uxtw = ptrtoint i64* %base to i64
  %offset_uxtw = and i64 %offset, 4294967295
  %addrint1_uxtw = add i64 %addrint_uxtw, %offset_uxtw
  %addr_uxtw = inttoptr i64 %addrint1_uxtw to i64*
  %val64_uxtw = load volatile i64, i64* %addr_uxtw
  %newval8 = add i64 %val64_uxtw, 1
  store volatile i64 %newval8, i64* @var_64bit


  %base_sxtw = ptrtoint i64* %base to i64
  %offset_sxtw.tmp = shl i64 %offset, 32
  %offset_sxtw = ashr i64 %offset_sxtw.tmp, 32
  %addrint_sxtw = add i64 %base_sxtw, %offset_sxtw
  %addr_sxtw = inttoptr i64 %addrint_sxtw to i64*
  %val64_sxtw = load volatile i64, i64* %addr_sxtw
  store volatile i64 %val64_sxtw, i64* @var_64bit



  %base_uxtwN = ptrtoint i64* %base to i64
  %offset_uxtwN = and i64 %offset, 4294967295
  %offset2_uxtwN = shl i64 %offset_uxtwN, 3
  %addrint_uxtwN = add i64 %base_uxtwN, %offset2_uxtwN
  %addr_uxtwN = inttoptr i64 %addrint_uxtwN to i64*
  %val64 = load volatile i64, i64* @var_64bit
  store volatile i64 %val64, i64* %addr_uxtwN

   ret void
}

@var_8bit = global i8 0
@var_16bit = global i16 0
@var_32bit = global i32 0
@var_64bit = global i64 0
