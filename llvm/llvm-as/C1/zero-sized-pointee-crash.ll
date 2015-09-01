
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"


define void @fn1() {
entry-block:
  br label %middle

middle:
  %0 = phi {}* [ %3, %middle ], [ inttoptr (i64 0 to {}*), %entry-block ]
  %1 = bitcast {}* %0 to i8*
  %2 = getelementptr i8, i8* %1, i64 1
  %3 = bitcast i8* %2 to {}*
  %4 = icmp eq i8* %2, undef
  br i1 %4, label %exit, label %middle








exit:
  ret void
}
