


@var_8bit = global i8 0
@var_16bit = global i16 0
@var_32bit = global i32 0
@var_64bit = global i64 0

@var_float = global float 0.0
@var_double = global double 0.0

define void @ldst_8bit() {






   %val8_sext32 = load volatile i8, i8* @var_8bit
   %val32_signed = sext i8 %val8_sext32 to i32
   store volatile i32 %val32_signed, i32* @var_32bit




  %val8_zext32 = load volatile i8, i8* @var_8bit
  %val32_unsigned = zext i8 %val8_zext32 to i32
  store volatile i32 %val32_unsigned, i32* @var_32bit



  %val8_anyext = load volatile i8, i8* @var_8bit
  %newval8 = add i8 %val8_anyext, 1
  store volatile i8 %newval8, i8* @var_8bit



  %val8_sext64 = load volatile i8, i8* @var_8bit
  %val64_signed = sext i8 %val8_sext64 to i64
  store volatile i64 %val64_signed, i64* @var_64bit





  %val8_zext64 = load volatile i8, i8* @var_8bit
  %val64_unsigned = zext i8 %val8_zext64 to i64
  store volatile i64 %val64_unsigned, i64* @var_64bit



  %val32 = load volatile i32, i32* @var_32bit
  %val8_trunc32 = trunc i32 %val32 to i8
  store volatile i8 %val8_trunc32, i8* @var_8bit



  %val64 = load volatile i64, i64* @var_64bit
  %val8_trunc64 = trunc i64 %val64 to i8
  store volatile i8 %val8_trunc64, i8* @var_8bit


   ret void
}

define void @ldst_16bit() {






  %val16_sext32 = load volatile i16, i16* @var_16bit
  %val32_signed = sext i16 %val16_sext32 to i32
  store volatile i32 %val32_signed, i32* @var_32bit




  %val16_zext32 = load volatile i16, i16* @var_16bit
  %val32_unsigned = zext i16 %val16_zext32 to i32
  store volatile i32 %val32_unsigned, i32* @var_32bit



  %val16_anyext = load volatile i16, i16* @var_16bit
  %newval16 = add i16 %val16_anyext, 1
  store volatile i16 %newval16, i16* @var_16bit



  %val16_sext64 = load volatile i16, i16* @var_16bit
  %val64_signed = sext i16 %val16_sext64 to i64
  store volatile i64 %val64_signed, i64* @var_64bit





  %val16_zext64 = load volatile i16, i16* @var_16bit
  %val64_unsigned = zext i16 %val16_zext64 to i64
  store volatile i64 %val64_unsigned, i64* @var_64bit



  %val32 = load volatile i32, i32* @var_32bit
  %val16_trunc32 = trunc i32 %val32 to i16
  store volatile i16 %val16_trunc32, i16* @var_16bit



  %val64 = load volatile i64, i64* @var_64bit
  %val16_trunc64 = trunc i64 %val64 to i16
  store volatile i16 %val16_trunc64, i16* @var_16bit


  ret void
}

define void @ldst_32bit() {



  %val32_noext = load volatile i32, i32* @var_32bit
  store volatile i32 %val32_noext, i32* @var_32bit





  %val32_zext = load volatile i32, i32* @var_32bit
  %val64_unsigned = zext i32 %val32_zext to i64
  store volatile i64 %val64_unsigned, i64* @var_64bit




  %val32_sext = load volatile i32, i32* @var_32bit
  %val64_signed = sext i32 %val32_sext to i64
  store volatile i64 %val64_signed, i64* @var_64bit




  %val64_trunc = load volatile i64, i64* @var_64bit
  %val32_trunc = trunc i64 %val64_trunc to i32
  store volatile i32 %val32_trunc, i32* @var_32bit



  ret void
}

@arr8 = global i8* null
@arr16 = global i16* null
@arr32 = global i32* null
@arr64 = global i64* null






define void @ldst_complex_offsets() {

  %arr8_addr = load volatile i8*, i8** @arr8



  %arr8_sub1_addr = getelementptr i8, i8* %arr8_addr, i64 1
  %arr8_sub1 = load volatile i8, i8* %arr8_sub1_addr
  store volatile i8 %arr8_sub1, i8* @var_8bit


  %arr8_sub4095_addr = getelementptr i8, i8* %arr8_addr, i64 4095
  %arr8_sub4095 = load volatile i8, i8* %arr8_sub4095_addr
  store volatile i8 %arr8_sub4095, i8* @var_8bit



  %arr16_addr = load volatile i16*, i16** @arr16



  %arr16_sub1_addr = getelementptr i16, i16* %arr16_addr, i64 1
  %arr16_sub1 = load volatile i16, i16* %arr16_sub1_addr
  store volatile i16 %arr16_sub1, i16* @var_16bit


  %arr16_sub4095_addr = getelementptr i16, i16* %arr16_addr, i64 4095
  %arr16_sub4095 = load volatile i16, i16* %arr16_sub4095_addr
  store volatile i16 %arr16_sub4095, i16* @var_16bit



  %arr32_addr = load volatile i32*, i32** @arr32



  %arr32_sub1_addr = getelementptr i32, i32* %arr32_addr, i64 1
  %arr32_sub1 = load volatile i32, i32* %arr32_sub1_addr
  store volatile i32 %arr32_sub1, i32* @var_32bit


  %arr32_sub4095_addr = getelementptr i32, i32* %arr32_addr, i64 4095
  %arr32_sub4095 = load volatile i32, i32* %arr32_sub4095_addr
  store volatile i32 %arr32_sub4095, i32* @var_32bit



  %arr64_addr = load volatile i64*, i64** @arr64



  %arr64_sub1_addr = getelementptr i64, i64* %arr64_addr, i64 1
  %arr64_sub1 = load volatile i64, i64* %arr64_sub1_addr
  store volatile i64 %arr64_sub1, i64* @var_64bit


  %arr64_sub4095_addr = getelementptr i64, i64* %arr64_addr, i64 4095
  %arr64_sub4095 = load volatile i64, i64* %arr64_sub4095_addr
  store volatile i64 %arr64_sub4095, i64* @var_64bit


  ret void
}

define void @ldst_float() {


   %valfp = load volatile float, float* @var_float




  store volatile float %valfp, float* @var_float



   ret void
}

define void @ldst_double() {


   %valfp = load volatile double, double* @var_double




  store volatile double %valfp, double* @var_double



   ret void
}
