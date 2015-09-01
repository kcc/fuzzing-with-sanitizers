



define zeroext i1 @and_rr_i1(i1 signext %a, i1 signext %b) {


  %1 = and i1 %a, %b
  ret i1 %1
}

define zeroext i8 @and_rr_i8(i8 signext %a, i8 signext %b) {



  %1 = and i8 %a, %b
  ret i8 %1
}

define zeroext i16 @and_rr_i16(i16 signext %a, i16 signext %b) {



  %1 = and i16 %a, %b
  ret i16 %1
}

define i32 @and_rr_i32(i32 %a, i32 %b) {


  %1 = and i32 %a, %b
  ret i32 %1
}

define i64 @and_rr_i64(i64 %a, i64 %b) {


  %1 = and i64 %a, %b
  ret i64 %1
}

define zeroext i1 @and_ri_i1(i1 signext %a) {


  %1 = and i1 %a, 1
  ret i1 %1
}

define zeroext i8 @and_ri_i8(i8 signext %a) {


  %1 = and i8 %a, 15
  ret i8 %1
}

define zeroext i16 @and_ri_i16(i16 signext %a) {


  %1 = and i16 %a, 255
  ret i16 %1
}

define i32 @and_ri_i32(i32 %a) {


  %1 = and i32 %a, 255
  ret i32 %1
}

define i64 @and_ri_i64(i64 %a) {


  %1 = and i64 %a, 255
  ret i64 %1
}

define zeroext i8 @and_rs_i8(i8 signext %a, i8 signext %b) {



  %1 = shl i8 %b, 4
  %2 = and i8 %a, %1
  ret i8 %2
}

define zeroext i16 @and_rs_i16(i16 signext %a, i16 signext %b) {



  %1 = shl i16 %b, 8
  %2 = and i16 %a, %1
  ret i16 %2
}

define i32 @and_rs_i32(i32 %a, i32 %b) {


  %1 = shl i32 %b, 8
  %2 = and i32 %a, %1
  ret i32 %2
}

define i64 @and_rs_i64(i64 %a, i64 %b) {


  %1 = shl i64 %b, 8
  %2 = and i64 %a, %1
  ret i64 %2
}

define i32 @and_mul_i32(i32 %a, i32 %b) {


  %1 = mul i32 %b, 4
  %2 = and i32 %a, %1
  ret i32 %2
}

define i64 @and_mul_i64(i64 %a, i64 %b) {


  %1 = mul i64 %b, 4
  %2 = and i64 %a, %1
  ret i64 %2
}


define zeroext i1 @or_rr_i1(i1 signext %a, i1 signext %b) {


  %1 = or i1 %a, %b
  ret i1 %1
}

define zeroext i8 @or_rr_i8(i8 signext %a, i8 signext %b) {



  %1 = or i8 %a, %b
  ret i8 %1
}

define zeroext i16 @or_rr_i16(i16 signext %a, i16 signext %b) {



  %1 = or i16 %a, %b
  ret i16 %1
}

define i32 @or_rr_i32(i32 %a, i32 %b) {


  %1 = or i32 %a, %b
  ret i32 %1
}

define i64 @or_rr_i64(i64 %a, i64 %b) {


  %1 = or i64 %a, %b
  ret i64 %1
}

define zeroext i8 @or_ri_i8(i8 %a) {



  %1 = or i8 %a, 15
  ret i8 %1
}

define zeroext i16 @or_ri_i16(i16 %a) {



  %1 = or i16 %a, 255
  ret i16 %1
}

define i32 @or_ri_i32(i32 %a) {


  %1 = or i32 %a, 255
  ret i32 %1
}

define i64 @or_ri_i64(i64 %a) {


  %1 = or i64 %a, 255
  ret i64 %1
}

define zeroext i8 @or_rs_i8(i8 signext %a, i8 signext %b) {



  %1 = shl i8 %b, 4
  %2 = or i8 %a, %1
  ret i8 %2
}

define zeroext i16 @or_rs_i16(i16 signext %a, i16 signext %b) {



  %1 = shl i16 %b, 8
  %2 = or i16 %a, %1
  ret i16 %2
}

define i32 @or_rs_i32(i32 %a, i32 %b) {


  %1 = shl i32 %b, 8
  %2 = or i32 %a, %1
  ret i32 %2
}

define i64 @or_rs_i64(i64 %a, i64 %b) {


  %1 = shl i64 %b, 8
  %2 = or i64 %a, %1
  ret i64 %2
}

define i32 @or_mul_i32(i32 %a, i32 %b) {


  %1 = mul i32 %b, 4
  %2 = or i32 %a, %1
  ret i32 %2
}

define i64 @or_mul_i64(i64 %a, i64 %b) {


  %1 = mul i64 %b, 4
  %2 = or i64 %a, %1
  ret i64 %2
}


define zeroext i1 @xor_rr_i1(i1 signext %a, i1 signext %b) {


  %1 = xor i1 %a, %b
  ret i1 %1
}

define zeroext i8 @xor_rr_i8(i8 signext %a, i8 signext %b) {



  %1 = xor i8 %a, %b
  ret i8 %1
}

define zeroext i16 @xor_rr_i16(i16 signext %a, i16 signext %b) {



  %1 = xor i16 %a, %b
  ret i16 %1
}

define i32 @xor_rr_i32(i32 %a, i32 %b) {


  %1 = xor i32 %a, %b
  ret i32 %1
}

define i64 @xor_rr_i64(i64 %a, i64 %b) {


  %1 = xor i64 %a, %b
  ret i64 %1
}

define zeroext i8 @xor_ri_i8(i8 signext %a) {



  %1 = xor i8 %a, 15
  ret i8 %1
}

define zeroext i16 @xor_ri_i16(i16 signext %a) {



  %1 = xor i16 %a, 255
  ret i16 %1
}

define i32 @xor_ri_i32(i32 %a) {


  %1 = xor i32 %a, 255
  ret i32 %1
}

define i64 @xor_ri_i64(i64 %a) {


  %1 = xor i64 %a, 255
  ret i64 %1
}

define zeroext i8 @xor_rs_i8(i8 %a, i8 %b) {



  %1 = shl i8 %b, 4
  %2 = xor i8 %a, %1
  ret i8 %2
}

define zeroext i16 @xor_rs_i16(i16 %a, i16 %b) {



  %1 = shl i16 %b, 8
  %2 = xor i16 %a, %1
  ret i16 %2
}

define i32 @xor_rs_i32(i32 %a, i32 %b) {


  %1 = shl i32 %b, 8
  %2 = xor i32 %a, %1
  ret i32 %2
}

define i64 @xor_rs_i64(i64 %a, i64 %b) {


  %1 = shl i64 %b, 8
  %2 = xor i64 %a, %1
  ret i64 %2
}

define i32 @xor_mul_i32(i32 %a, i32 %b) {


  %1 = mul i32 %b, 4
  %2 = xor i32 %a, %1
  ret i32 %2
}

define i64 @xor_mul_i64(i64 %a, i64 %b) {


  %1 = mul i64 %b, 4
  %2 = xor i64 %a, %1
  ret i64 %2
}

