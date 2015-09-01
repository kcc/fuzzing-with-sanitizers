





target datalayout = "E-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f128:128:128-v128:128:128-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

@ti = common global i32 0, align 4

define signext i32 @test_tentative() nounwind {
entry:
  %0 = load i32, i32* @ti, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @ti, align 4
  ret i32 %0
}










