



define zeroext i8 @and_rs_i8(i8 signext %a, i8 signext %b) {



  %1 = shl i8 %b, 8
  %2 = and i8 %a, %1
  ret i8 %2
}

define zeroext i16 @and_rs_i16(i16 signext %a, i16 signext %b) {



  %1 = shl i16 %b, 16
  %2 = and i16 %a, %1
  ret i16 %2
}

define i32 @and_rs_i32(i32 %a, i32 %b) {


  %1 = shl i32 %b, 32
  %2 = and i32 %a, %1
  ret i32 %2
}

define i64 @and_rs_i64(i64 %a, i64 %b) {


  %1 = shl i64 %b, 64
  %2 = and i64 %a, %1
  ret i64 %2
}


define zeroext i8 @or_rs_i8(i8 signext %a, i8 signext %b) {



  %1 = shl i8 %b, 8
  %2 = or i8 %a, %1
  ret i8 %2
}

define zeroext i16 @or_rs_i16(i16 signext %a, i16 signext %b) {



  %1 = shl i16 %b, 16
  %2 = or i16 %a, %1
  ret i16 %2
}

define i32 @or_rs_i32(i32 %a, i32 %b) {


  %1 = shl i32 %b, 32
  %2 = or i32 %a, %1
  ret i32 %2
}

define i64 @or_rs_i64(i64 %a, i64 %b) {


  %1 = shl i64 %b, 64
  %2 = or i64 %a, %1
  ret i64 %2
}


define zeroext i8 @xor_rs_i8(i8 %a, i8 %b) {



  %1 = shl i8 %b, 8
  %2 = xor i8 %a, %1
  ret i8 %2
}

define zeroext i16 @xor_rs_i16(i16 %a, i16 %b) {



  %1 = shl i16 %b, 16
  %2 = xor i16 %a, %1
  ret i16 %2
}

define i32 @xor_rs_i32(i32 %a, i32 %b) {


  %1 = shl i32 %b, 32
  %2 = xor i32 %a, %1
  ret i32 %2
}

define i64 @xor_rs_i64(i64 %a, i64 %b) {


  %1 = shl i64 %b, 64
  %2 = xor i64 %a, %1
  ret i64 %2
}


define i32 @add_rs_i32(i32 %a, i32 %b) {


  %1 = shl i32 %b, 32
  %2 = add i32 %a, %1
  ret i32 %2
}

define i64 @add_rs_i64(i64 %a, i64 %b) {


  %1 = shl i64 %b, 64
  %2 = add i64 %a, %1
  ret i64 %2
}

