





target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"


define void @test_sink(i8* %arg1, i32 %arg2, i8 %arg3) #0 {
  %tmp1 = add i32 -2147483648, %arg2
  %tmp2 = add i32 -2147483648, %tmp1
  %tmp3 = getelementptr i8, i8* %arg1, i32 %arg2
  br label %bb1

bb1:
  %tmp4 = getelementptr i8, i8* %arg1, i32 %tmp2
  store i8 %arg3, i8* %tmp4
  ret void
}





