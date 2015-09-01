



target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i64, i64, i64, [8 x i8] }




define void @Caller() sanitize_memory {
entry:
  %agg.tmp = alloca %struct.S, align 16
  call void @Callee(i32 1, %struct.S* byval align 16 %agg.tmp)
  ret void
}

declare void @Callee(i32, %struct.S* byval align 16)
