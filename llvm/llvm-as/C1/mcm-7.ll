





target datalayout = "E-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f128:128:128-v128:128:128-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

define i8* @test_fnaddr() nounwind {
entry:
  %func = alloca i32 (i32)*, align 8
  store i32 (i32)* @foo, i32 (i32)** %func, align 8
  %0 = load i32 (i32)*, i32 (i32)** %func, align 8
  %1 = bitcast i32 (i32)* %0 to i8*
  ret i8* %1
}

declare signext i32 @foo(i32 signext)







