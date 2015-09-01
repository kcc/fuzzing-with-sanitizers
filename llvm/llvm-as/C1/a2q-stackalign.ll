


target datalayout = "E-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f128:128:128-v128:128:128-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

declare i32 @bar(i8* %a) nounwind
define i32 @foo() nounwind {
  %p = alloca i8, i8 115
  store i8 0, i8* %p
  %r = call i32 @bar(i8* %p)
  ret i32 %r
}










