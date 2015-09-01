

define void @bad.nsw() {


 entry: 
  br label %loop

 loop:
  %i = phi i8 [ -1, %entry ], [ %i.inc, %loop ]




  %counter = phi i8 [ 0, %entry ], [ %counter.inc, %loop ]

  %i.inc = add i8 %i, -128
  %i.sext = sext i8 %i to i16

  %counter.inc = add i8 %counter, 1
  %continue = icmp eq i8 %counter, 1
  br i1 %continue, label %exit, label %loop

 exit:
  ret void  
}
