

target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"




define i64 @callee(i64 %a, <4 x i32> %b, i64 %c, <4 x i32> %d, i64 %e) {
entry:
  ret i64 %e
}



define void @caller(i64 %x, <4 x i32> %y) {
entry:
  tail call void @test(i64 %x, <4 x i32> %y, i64 %x, <4 x i32> %y, i64 %x)
  ret void
}



declare void @test(i64, <4 x i32>, i64, <4 x i32>, i64)

