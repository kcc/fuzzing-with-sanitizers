




target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

%T = type { i32, [10 x i8] }




define void @test(%T* %P) {
  %A = getelementptr %T, %T* %P, i64 0
  %B = getelementptr %T, %T* %P, i64 0, i32 0
  %C = getelementptr %T, %T* %P, i64 0, i32 1
  %D = getelementptr %T, %T* %P, i64 0, i32 1, i64 0
  %E = getelementptr %T, %T* %P, i64 0, i32 1, i64 5
  ret void
}
