

define void @x(i1* %cond) {

 entry:
  br label %loop

 loop:
  %idx = phi i8 [ 0, %entry ], [ %idx.inc, %loop ]



  %idx.inc = add nsw i8 %idx, 1

  %c = load volatile i1, i1* %cond
  br i1 %c, label %loop, label %exit

 exit:
  ret void
}

define void @y(i8* %addr) {

 entry:
  br label %loop

 loop:
  %idx = phi i8 [-5, %entry ], [ %idx.inc, %loop ]



  %idx.inc = add i8 %idx, 1

  %continue = icmp slt i8 %idx.inc, 6
  br i1 %continue, label %loop, label %exit

 exit:
  ret void
}
