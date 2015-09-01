




target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

%T = type { i32, [10 x i8] }

@G = external global %T




define void @test() {
  %D = getelementptr %T, %T* @G, i64 0, i32 0
  %E = getelementptr %T, %T* @G, i64 0, i32 1, i64 5
  %F = getelementptr i32, i32* getelementptr (%T, %T* @G, i64 0, i32 0), i64 0
  %X = getelementptr [10 x i8], [10 x i8]* getelementptr (%T, %T* @G, i64 0, i32 1), i64 0, i64 5

  ret void
}
