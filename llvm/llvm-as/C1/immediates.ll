



target datalayout = "e-p:32:32-i64:64-n32:64-S128"
target triple = "wasm32-unknown-unknown"





define i32 @zero_i32() {
  ret i32 0
}





define i32 @one_i32() {
  ret i32 1
}





define i32 @max_i32() {
  ret i32 2147483647
}





define i32 @min_i32() {
  ret i32 -2147483648
}





define i64 @zero_i64() {
  ret i64 0
}





define i64 @one_i64() {
  ret i64 1
}





define i64 @max_i64() {
  ret i64 9223372036854775807
}





define i64 @min_i64() {
  ret i64 -9223372036854775808
}





define float @negzero_f32() {
  ret float -0.0
}





define float @zero_f32() {
  ret float 0.0
}





define float @one_f32() {
  ret float 1.0
}





define float @two_f32() {
  ret float 2.0
}





define float @nan_f32() {
  ret float 0x7FF8000000000000
}





define float @negnan_f32() {
  ret float 0xFFF8000000000000
}





define float @inf_f32() {
  ret float 0x7FF0000000000000
}





define float @neginf_f32() {
  ret float 0xFFF0000000000000
}





define double @negzero_f64() {
  ret double -0.0
}





define double @zero_f64() {
  ret double 0.0
}





define double @one_f64() {
  ret double 1.0
}





define double @two_f64() {
  ret double 2.0
}





define double @nan_f64() {
  ret double 0x7FF8000000000000
}





define double @negnan_f64() {
  ret double 0xFFF8000000000000
}





define double @inf_f64() {
  ret double 0x7FF0000000000000
}





define double @neginf_f64() {
  ret double 0xFFF0000000000000
}
