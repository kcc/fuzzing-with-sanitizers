


target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"







define void @foo([3 x [3 x double]]* noalias %p) {
entry:
  %p3 = getelementptr [3 x [3 x double]], [3 x [3 x double]]* %p, i64 0, i64 0, i64 3
  br label %loop

loop:
  %i = phi i64 [ 0, %entry ], [ %i.next, %loop ]

  %p.0.i.0 = getelementptr [3 x [3 x double]], [3 x [3 x double]]* %p, i64 0, i64 %i, i64 0

  store volatile double 0.0, double* %p3
  store volatile double 0.1, double* %p.0.i.0

  %i.next = add i64 %i, 1
  %cmp = icmp slt i64 %i.next, 3
  br i1 %cmp, label %loop, label %exit

exit:
  ret void
}
