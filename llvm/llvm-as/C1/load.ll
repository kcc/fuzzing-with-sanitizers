



target datalayout = "e-p:32:32-i64:64-v128:8:128-n32:64-S128"
target triple = "wasm32-unknown-unknown"






define i32 @ldi32(i32 *%p) {
  %v = load i32, i32* %p
  ret i32 %v
}






define i64 @ldi64(i64 *%p) {
  %v = load i64, i64* %p
  ret i64 %v
}






define float @ldf32(float *%p) {
  %v = load float, float* %p
  ret float %v
}






define double @ldf64(double *%p) {
  %v = load double, double* %p
  ret double %v
}
