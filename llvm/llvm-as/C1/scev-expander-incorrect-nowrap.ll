

declare void @use(i32)
declare void @use.i8(i8)

define void @f() {

 entry:
  br label %loop

 loop:


  %idx.mirror = phi i8 [ -6, %entry ], [ %idx.mirror.inc, %loop ]
  %idx = phi i8 [ -5, %entry ], [ %idx.inc, %loop ]

  %idx.sext = sext i8 %idx to i32
  call void @use(i32 %idx.sext)

  %idx.mirror.inc = add nuw i8 %idx.mirror, 1
  call void @use.i8(i8 %idx.mirror.inc)

  %idx.inc = add i8 %idx, 1

  %cmp = icmp ugt i8 %idx.inc, 0
  br i1 %cmp, label %loop, label %exit

 exit:
  ret void
}
