





target datalayout = "E-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f128:128:128-v128:128:128-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

@x = available_externally constant [13 x i8] c"St9bad_alloc\00"

define signext i8 @test_avext() nounwind {
entry:
  %0 = getelementptr inbounds [13 x i8], [13 x i8]* @x, i32 0, i32 0
  %1 = load i8, i8* %0, align 1
  ret i8 %1
}








