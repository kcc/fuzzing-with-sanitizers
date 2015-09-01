





target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

define i32 @foo() sanitize_address {
entry:
  
  %non_instrumented1 = alloca i32, align 4

  
  %instrumented = alloca i32, align 4

  
  %non_instrumented2 = alloca i32, align 4

  br label %bb0

bb0:
  
  %non_instrumented3 = alloca i32, align 4

  %ptr = ptrtoint i32* %instrumented to i32
  br label %bb1

bb1:
  ret i32 %ptr
}







