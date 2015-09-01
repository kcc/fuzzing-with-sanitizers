



target datalayout = "e-p:32:32-i64:64-v128:8:128-n32:64-S128"
target triple = "wasm32-unknown-unknown"



define i32 @sext_i8_i32(i8 *%p) {
  %v = load i8, i8* %p
  %e = sext i8 %v to i32
  ret i32 %e
}



define i32 @zext_i8_i32(i8 *%p) {
  %v = load i8, i8* %p
  %e = zext i8 %v to i32
  ret i32 %e
}



define i32 @sext_i16_i32(i16 *%p) {
  %v = load i16, i16* %p
  %e = sext i16 %v to i32
  ret i32 %e
}



define i32 @zext_i16_i32(i16 *%p) {
  %v = load i16, i16* %p
  %e = zext i16 %v to i32
  ret i32 %e
}



define i64 @sext_i8_i64(i8 *%p) {
  %v = load i8, i8* %p
  %e = sext i8 %v to i64
  ret i64 %e
}



define i64 @zext_i8_i64(i8 *%p) {
  %v = load i8, i8* %p
  %e = zext i8 %v to i64
  ret i64 %e
}



define i64 @sext_i16_i64(i16 *%p) {
  %v = load i16, i16* %p
  %e = sext i16 %v to i64
  ret i64 %e
}



define i64 @zext_i16_i64(i16 *%p) {
  %v = load i16, i16* %p
  %e = zext i16 %v to i64
  ret i64 %e
}



define i64 @sext_i32_i64(i32 *%p) {
  %v = load i32, i32* %p
  %e = sext i32 %v to i64
  ret i64 %e
}



define i64 @zext_i32_i64(i32 *%p) {
  %v = load i32, i32* %p
  %e = zext i32 %v to i64
  ret i64 %e
}
