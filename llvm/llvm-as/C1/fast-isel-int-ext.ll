







define i64 @load_addr_shift_zext1(i32 %a, i64 %b) {


  %1 = zext i32 %a to i64
  %2 = shl i64 %1, 3
  %3 = add i64 %b, %2
  %4 = inttoptr i64 %3 to i64*
  %5 = load i64, i64* %4
  ret i64 %5
}

define i64 @load_addr_shift_zext2(i32 zeroext %a, i64 %b) {


  %1 = zext i32 %a to i64
  %2 = shl i64 %1, 3
  %3 = add i64 %b, %2
  %4 = inttoptr i64 %3 to i64*
  %5 = load i64, i64* %4
  ret i64 %5
}

define i64 @load_addr_shift_zext3(i32 signext %a, i64 %b) {


  %1 = zext i32 %a to i64
  %2 = shl i64 %1, 3
  %3 = add i64 %b, %2
  %4 = inttoptr i64 %3 to i64*
  %5 = load i64, i64* %4
  ret i64 %5
}

define i64 @load_addr_shift_sext1(i32 %a, i64 %b) {


  %1 = sext i32 %a to i64
  %2 = shl i64 %1, 3
  %3 = add i64 %b, %2
  %4 = inttoptr i64 %3 to i64*
  %5 = load i64, i64* %4
  ret i64 %5
}

define i64 @load_addr_shift_sext2(i32 zeroext %a, i64 %b) {


  %1 = sext i32 %a to i64
  %2 = shl i64 %1, 3
  %3 = add i64 %b, %2
  %4 = inttoptr i64 %3 to i64*
  %5 = load i64, i64* %4
  ret i64 %5
}

define i64 @load_addr_shift_sext3(i32 signext %a, i64 %b) {


  %1 = sext i32 %a to i64
  %2 = shl i64 %1, 3
  %3 = add i64 %b, %2
  %4 = inttoptr i64 %3 to i64*
  %5 = load i64, i64* %4
  ret i64 %5
}




define i64 @load_addr_mul_zext1(i32 %a, i64 %b) {


  %1 = zext i32 %a to i64
  %2 = mul i64 %1, 8
  %3 = add i64 %b, %2
  %4 = inttoptr i64 %3 to i64*
  %5 = load i64, i64* %4
  ret i64 %5
}

define i64 @load_addr_mul_zext2(i32 zeroext %a, i64 %b) {


  %1 = zext i32 %a to i64
  %2 = mul i64 %1, 8
  %3 = add i64 %b, %2
  %4 = inttoptr i64 %3 to i64*
  %5 = load i64, i64* %4
  ret i64 %5
}

define i64 @load_addr_mul_zext3(i32 signext %a, i64 %b) {


  %1 = zext i32 %a to i64
  %2 = mul i64 %1, 8
  %3 = add i64 %b, %2
  %4 = inttoptr i64 %3 to i64*
  %5 = load i64, i64* %4
  ret i64 %5
}

define i64 @load_addr_mul_sext1(i32 %a, i64 %b) {


  %1 = sext i32 %a to i64
  %2 = mul i64 %1, 8
  %3 = add i64 %b, %2
  %4 = inttoptr i64 %3 to i64*
  %5 = load i64, i64* %4
  ret i64 %5
}

define i64 @load_addr_mul_sext2(i32 zeroext %a, i64 %b) {


  %1 = sext i32 %a to i64
  %2 = mul i64 %1, 8
  %3 = add i64 %b, %2
  %4 = inttoptr i64 %3 to i64*
  %5 = load i64, i64* %4
  ret i64 %5
}

define i64 @load_addr_mul_sext3(i32 signext %a, i64 %b) {


  %1 = sext i32 %a to i64
  %2 = mul i64 %1, 8
  %3 = add i64 %b, %2
  %4 = inttoptr i64 %3 to i64*
  %5 = load i64, i64* %4
  ret i64 %5
}







define i32 @load_unscaled_zext_i8_to_i32(i64 %a) {



  %1 = sub i64 %a, 8
  %2 = inttoptr i64 %1 to i8*
  %3 = load i8, i8* %2
  %4 = zext i8 %3 to i32
  ret i32 %4
}

define i32 @load_unscaled_zext_i16_to_i32(i64 %a) {



  %1 = sub i64 %a, 8
  %2 = inttoptr i64 %1 to i16*
  %3 = load i16, i16* %2
  %4 = zext i16 %3 to i32
  ret i32 %4
}

define i64 @load_unscaled_zext_i8_to_i64(i64 %a) {



  %1 = sub i64 %a, 8
  %2 = inttoptr i64 %1 to i8*
  %3 = load i8, i8* %2
  %4 = zext i8 %3 to i64
  ret i64 %4
}

define i64 @load_unscaled_zext_i16_to_i64(i64 %a) {



  %1 = sub i64 %a, 8
  %2 = inttoptr i64 %1 to i16*
  %3 = load i16, i16* %2
  %4 = zext i16 %3 to i64
  ret i64 %4
}

define i64 @load_unscaled_zext_i32_to_i64(i64 %a) {



  %1 = sub i64 %a, 8
  %2 = inttoptr i64 %1 to i32*
  %3 = load i32, i32* %2
  %4 = zext i32 %3 to i64
  ret i64 %4
}

define i32 @load_unscaled_sext_i8_to_i32(i64 %a) {



  %1 = sub i64 %a, 8
  %2 = inttoptr i64 %1 to i8*
  %3 = load i8, i8* %2
  %4 = sext i8 %3 to i32
  ret i32 %4
}

define i32 @load_unscaled_sext_i16_to_i32(i64 %a) {



  %1 = sub i64 %a, 8
  %2 = inttoptr i64 %1 to i16*
  %3 = load i16, i16* %2
  %4 = sext i16 %3 to i32
  ret i32 %4
}

define i64 @load_unscaled_sext_i8_to_i64(i64 %a) {



  %1 = sub i64 %a, 8
  %2 = inttoptr i64 %1 to i8*
  %3 = load i8, i8* %2
  %4 = sext i8 %3 to i64
  ret i64 %4
}

define i64 @load_unscaled_sext_i16_to_i64(i64 %a) {



  %1 = sub i64 %a, 8
  %2 = inttoptr i64 %1 to i16*
  %3 = load i16, i16* %2
  %4 = sext i16 %3 to i64
  ret i64 %4
}

define i64 @load_unscaled_sext_i32_to_i64(i64 %a) {



  %1 = sub i64 %a, 8
  %2 = inttoptr i64 %1 to i32*
  %3 = load i32, i32* %2
  %4 = sext i32 %3 to i64
  ret i64 %4
}


define i32 @load_register_zext_i8_to_i32(i64 %a, i64 %b) {



  %1 = add i64 %a, %b
  %2 = inttoptr i64 %1 to i8*
  %3 = load i8, i8* %2
  %4 = zext i8 %3 to i32
  ret i32 %4
}

define i32 @load_register_zext_i16_to_i32(i64 %a, i64 %b) {



  %1 = add i64 %a, %b
  %2 = inttoptr i64 %1 to i16*
  %3 = load i16, i16* %2
  %4 = zext i16 %3 to i32
  ret i32 %4
}

define i64 @load_register_zext_i8_to_i64(i64 %a, i64 %b) {



  %1 = add i64 %a, %b
  %2 = inttoptr i64 %1 to i8*
  %3 = load i8, i8* %2
  %4 = zext i8 %3 to i64
  ret i64 %4
}

define i64 @load_register_zext_i16_to_i64(i64 %a, i64 %b) {



  %1 = add i64 %a, %b
  %2 = inttoptr i64 %1 to i16*
  %3 = load i16, i16* %2
  %4 = zext i16 %3 to i64
  ret i64 %4
}

define i64 @load_register_zext_i32_to_i64(i64 %a, i64 %b) {



  %1 = add i64 %a, %b
  %2 = inttoptr i64 %1 to i32*
  %3 = load i32, i32* %2
  %4 = zext i32 %3 to i64
  ret i64 %4
}

define i32 @load_register_sext_i8_to_i32(i64 %a, i64 %b) {



  %1 = add i64 %a, %b
  %2 = inttoptr i64 %1 to i8*
  %3 = load i8, i8* %2
  %4 = sext i8 %3 to i32
  ret i32 %4
}

define i32 @load_register_sext_i16_to_i32(i64 %a, i64 %b) {



  %1 = add i64 %a, %b
  %2 = inttoptr i64 %1 to i16*
  %3 = load i16, i16* %2
  %4 = sext i16 %3 to i32
  ret i32 %4
}

define i64 @load_register_sext_i8_to_i64(i64 %a, i64 %b) {



  %1 = add i64 %a, %b
  %2 = inttoptr i64 %1 to i8*
  %3 = load i8, i8* %2
  %4 = sext i8 %3 to i64
  ret i64 %4
}

define i64 @load_register_sext_i16_to_i64(i64 %a, i64 %b) {



  %1 = add i64 %a, %b
  %2 = inttoptr i64 %1 to i16*
  %3 = load i16, i16* %2
  %4 = sext i16 %3 to i64
  ret i64 %4
}

define i64 @load_register_sext_i32_to_i64(i64 %a, i64 %b) {



  %1 = add i64 %a, %b
  %2 = inttoptr i64 %1 to i32*
  %3 = load i32, i32* %2
  %4 = sext i32 %3 to i64
  ret i64 %4
}


define i32 @load_extend_zext_i8_to_i32(i64 %a, i32 %b) {



  %1 = sext i32 %b to i64
  %2 = add i64 %a, %1
  %3 = inttoptr i64 %2 to i8*
  %4 = load i8, i8* %3
  %5 = zext i8 %4 to i32
  ret i32 %5
}

define i32 @load_extend_zext_i16_to_i32(i64 %a, i32 %b) {



  %1 = sext i32 %b to i64
  %2 = add i64 %a, %1
  %3 = inttoptr i64 %2 to i16*
  %4 = load i16, i16* %3
  %5 = zext i16 %4 to i32
  ret i32 %5
}

define i64 @load_extend_zext_i8_to_i64(i64 %a, i32 %b) {



  %1 = sext i32 %b to i64
  %2 = add i64 %a, %1
  %3 = inttoptr i64 %2 to i8*
  %4 = load i8, i8* %3
  %5 = zext i8 %4 to i64
  ret i64 %5
}

define i64 @load_extend_zext_i16_to_i64(i64 %a, i32 %b) {



  %1 = sext i32 %b to i64
  %2 = add i64 %a, %1
  %3 = inttoptr i64 %2 to i16*
  %4 = load i16, i16* %3
  %5 = zext i16 %4 to i64
  ret i64 %5
}

define i64 @load_extend_zext_i32_to_i64(i64 %a, i32 %b) {



  %1 = sext i32 %b to i64
  %2 = add i64 %a, %1
  %3 = inttoptr i64 %2 to i32*
  %4 = load i32, i32* %3
  %5 = zext i32 %4 to i64
  ret i64 %5
}

define i32 @load_extend_sext_i8_to_i32(i64 %a, i32 %b) {



  %1 = sext i32 %b to i64
  %2 = add i64 %a, %1
  %3 = inttoptr i64 %2 to i8*
  %4 = load i8, i8* %3
  %5 = sext i8 %4 to i32
  ret i32 %5
}

define i32 @load_extend_sext_i16_to_i32(i64 %a, i32 %b) {



  %1 = sext i32 %b to i64
  %2 = add i64 %a, %1
  %3 = inttoptr i64 %2 to i16*
  %4 = load i16, i16* %3
  %5 = sext i16 %4 to i32
  ret i32 %5
}

define i64 @load_extend_sext_i8_to_i64(i64 %a, i32 %b) {



  %1 = sext i32 %b to i64
  %2 = add i64 %a, %1
  %3 = inttoptr i64 %2 to i8*
  %4 = load i8, i8* %3
  %5 = sext i8 %4 to i64
  ret i64 %5
}

define i64 @load_extend_sext_i16_to_i64(i64 %a, i32 %b) {



  %1 = sext i32 %b to i64
  %2 = add i64 %a, %1
  %3 = inttoptr i64 %2 to i16*
  %4 = load i16, i16* %3
  %5 = sext i16 %4 to i64
  ret i64 %5
}

define i64 @load_extend_sext_i32_to_i64(i64 %a, i32 %b) {



  %1 = sext i32 %b to i64
  %2 = add i64 %a, %1
  %3 = inttoptr i64 %2 to i32*
  %4 = load i32, i32* %3
  %5 = sext i32 %4 to i64
  ret i64 %5
}

