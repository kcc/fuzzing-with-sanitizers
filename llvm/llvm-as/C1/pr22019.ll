
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "pselect = __pselect"
module asm "var = __var"
module asm "alias = __alias"






define void @pselect() {
  ret void
}



@var = global i32 0


@alias = alias i32* @var
