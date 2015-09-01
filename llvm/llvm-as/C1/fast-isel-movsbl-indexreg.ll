

target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-unknown"







@table = external hidden global [64 x i8], align 16

define i32 @test(i32 %x, i64 %offset) {
bb:
  %tmp37 = getelementptr inbounds [64 x i8], [64 x i8]* @table, i64 0, i64 %offset
  %tmp38 = load i8, i8* %tmp37, align 1
  %tmp39 = sext i8 %tmp38 to i32
  ret i32 %tmp39
}
