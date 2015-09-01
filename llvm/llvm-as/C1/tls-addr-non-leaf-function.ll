




























target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = thread_local global i32 0
define i32 @foo() "no-frame-pointer-elim-non-leaf" {
  %a = load i32, i32* @x, align 4
  ret i32 %a
}
