





define void @test1(i32) gc "statepoint-example" {






entry:
  br label %loop

loop:
  %counter = phi i32 [ 0 , %entry ], [ %counter.inc , %loop ]
  %counter.inc = add i32 %counter, 1
  %counter.cmp = icmp slt i32 %counter.inc, 16
  br i1 %counter.cmp, label %loop, label %exit

exit:
  ret void
}


define void @test2(i32) gc "statepoint-example" {






entry:
  br label %loop

loop:
  %counter = phi i32 [ 0 , %entry ], [ %counter.inc , %continue ]
  %counter.inc = add i32 %counter, 1
  %counter.cmp = icmp slt i32 %counter.inc, 16
  br i1 undef, label %continue, label %exit

continue:
  br i1 %counter.cmp, label %loop, label %exit

exit:
  ret void
}


define void @test3(i8 %upper) gc "statepoint-example" {






entry:
  br label %loop

loop:
  %counter = phi i8 [ 0 , %entry ], [ %counter.inc , %loop ]
  %counter.inc = add nsw i8 %counter, 1
  %counter.cmp = icmp slt i8 %counter.inc, %upper
  br i1 %counter.cmp, label %loop, label %exit

exit:
  ret void
}



declare void @do_safepoint()
define void @gc.safepoint_poll() {

entry:
  call void @do_safepoint()
  ret void
}