

target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios7.0.0"


define i32 @test1() #0 {
  %tmp1 = alloca i8
  %tmp2 = icmp eq i8* %tmp1, null
  %tmp3 = zext i1 %tmp2 to i32

  ret i32 %tmp3

  
  
}
