
target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"


define signext i32 @test(i32* nocapture readonly %P) #0 {
entry:
  %0 = load i32, i32* %P, align 4
  %shr = lshr i32 %0, 24
  ret i32 %shr




}

attributes #0 = { nounwind readonly }

