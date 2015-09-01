




define i32 @mulwide16(i16 %a, i16 %b) {


  %val0 = sext i16 %a to i32
  %val1 = sext i16 %b to i32
  %val2 = mul i32 %val0, %val1
  ret i32 %val2
}



define i32 @mulwideu16(i16 %a, i16 %b) {


  %val0 = zext i16 %a to i32
  %val1 = zext i16 %b to i32
  %val2 = mul i32 %val0, %val1
  ret i32 %val2
}



define i32 @mulwide8(i8 %a, i8 %b) {


  %val0 = sext i8 %a to i32
  %val1 = sext i8 %b to i32
  %val2 = mul i32 %val0, %val1
  ret i32 %val2
}



define i32 @mulwideu8(i8 %a, i8 %b) {


  %val0 = zext i8 %a to i32
  %val1 = zext i8 %b to i32
  %val2 = mul i32 %val0, %val1
  ret i32 %val2
}



define i64 @mulwide32(i32 %a, i32 %b) {


  %val0 = sext i32 %a to i64
  %val1 = sext i32 %b to i64
  %val2 = mul i64 %val0, %val1
  ret i64 %val2
}



define i64 @mulwideu32(i32 %a, i32 %b) {


  %val0 = zext i32 %a to i64
  %val1 = zext i32 %b to i64
  %val2 = mul i64 %val0, %val1
  ret i64 %val2
}



define i64 @mulwideu7(i7 %a, i7 %b) {


  %val0 = zext i7 %a to i64
  %val1 = zext i7 %b to i64
  %val2 = mul i64 %val0, %val1
  ret i64 %val2
}



define i64 @mulwides7(i7 %a, i7 %b) {


  %val0 = sext i7 %a to i64
  %val1 = sext i7 %b to i64
  %val2 = mul i64 %val0, %val1
  ret i64 %val2
}
