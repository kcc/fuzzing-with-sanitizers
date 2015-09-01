

target datalayout = "E-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v128:128:128-n32"
target triple = "powerpc-unknown-freebsd9.0"





define i32 @testing(i32 %x, float %a, ...) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  store i32 %x, i32* %1, align 4
  store float %a, float* %2, align 4
  ret i32 0
}
