



target datalayout = "e-p:32:32-i64:64-v128:8:128-n32:64-S128"
target triple = "wasm32-unknown-unknown"

declare i32 @i32_nullary()
declare i32 @i32_unary(i32)
declare i64 @i64_nullary()
declare float @float_nullary()
declare double @double_nullary()






define i32 @call_i32_nullary() {
  %r = call i32 @i32_nullary()
  ret i32 %r
}






define i64 @call_i64_nullary() {
  %r = call i64 @i64_nullary()
  ret i64 %r
}






define float @call_float_nullary() {
  %r = call float @float_nullary()
  ret float %r
}






define double @call_double_nullary() {
  %r = call double @double_nullary()
  ret double %r
}







define i32 @call_i32_unary(i32 %a) {
  %r = call i32 @i32_unary(i32 %a)
  ret i32 %r
}







