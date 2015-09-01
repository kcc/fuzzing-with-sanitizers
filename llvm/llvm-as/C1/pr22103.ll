



target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = external thread_local global i64


define void @_Z1fv() {




entry:
  call void bitcast (i64* @a to void ()*)()
  ret void
}
