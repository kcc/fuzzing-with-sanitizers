



target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"


define i32 @test1() {
  %1 = tail call noalias i8* @calloc(i64 1, i64 4)
  %2 = bitcast i8* %1 to i32*
  
  %3 = load i32, i32* %2, align 4
  ret i32 %3









}

declare noalias i8* @calloc(i64, i64)
