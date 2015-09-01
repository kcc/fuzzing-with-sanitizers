



declare void @f()
declare void @g()
declare void @h()

define void @trivial_loop() {

 entry:
  br label %loop

 loop:
  %idx = phi i32 [ 0, %entry ], [ %idx.inc, %loop ]
  %idx.inc = add i32 %idx, 1
  call void @f()
  call void @g()
  call void @h()
  call void @f()
  call void @g()
  call void @h()
  call void @f()
  call void @g()
  call void @h()
  call void @f()
  call void @g()
  call void @h()
  call void @f()
  call void @g()
  call void @h()
  %be = icmp slt i32 %idx, 268435456
  br i1 %be, label %loop, label %exit






















 exit:
  ret void
}
