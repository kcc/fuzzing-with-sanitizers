

declare void @side_effect(i1)

define void @latch_dominating_0(i8 %start) {

 entry:
  %e = icmp slt i8 %start, 42
  br i1 %e, label %loop, label %exit

 loop:

  %idx = phi i8 [ %start, %entry ], [ %idx.inc, %be ]
  %idx.inc = add i8 %idx, 1
  %folds.to.true = icmp slt i8 %idx, 42

  call void @side_effect(i1 %folds.to.true)
  %c0 = icmp slt i8 %idx.inc, 42
  br i1 %c0, label %be, label %exit

 be:

  call void @side_effect(i1 %folds.to.true)
  %c1 = icmp slt i8 %idx.inc, 100
  br i1 %c1, label %loop, label %exit

 exit:
  ret void
}

define void @latch_dominating_1(i8 %start) {

 entry:
  %e = icmp slt i8 %start, 42
  br i1 %e, label %loop, label %exit

 loop:

  %idx = phi i8 [ %start, %entry ], [ %idx.inc, %be ]
  %idx.inc = add i8 %idx, 1
  %does.not.fold.to.true = icmp slt i8 %idx, 42

  call void @side_effect(i1 %does.not.fold.to.true)
  %c0 = icmp slt i8 %idx.inc, 42
  br i1 %c0, label %be, label %be

 be:

  call void @side_effect(i1 %does.not.fold.to.true)
  %c1 = icmp slt i8 %idx.inc, 100
  br i1 %c1, label %loop, label %exit

 exit:
  ret void
}
