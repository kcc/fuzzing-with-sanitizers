

target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"



define i32 @cast_inst_test() {










  %a0 = inttoptr i64 4646526064 to i32*
  %v0 = load i32, i32* %a0, align 16
  %a1 = inttoptr i64 4646526080 to i32*
  %v1 = load i32, i32* %a1, align 16
  %a2 = inttoptr i64 4646526096 to i32*
  %v2 = load i32, i32* %a2, align 16
  %r0 = add i32 %v0, %v1
  %r1 = add i32 %r0, %v2
  ret i32 %r1
}

