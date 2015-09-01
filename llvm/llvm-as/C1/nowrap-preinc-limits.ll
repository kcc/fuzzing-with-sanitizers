

define void @f(i1* %condition) {

 entry: 
  br label %loop

 loop:
  %idx = phi i32 [ 0, %entry ], [ %idx.inc, %loop ]
  %idx.inc = add nsw i32 %idx, 1

  %idx.inc2 = add i32 %idx.inc, 1
  %idx.inc2.zext = zext i32 %idx.inc2 to i64




  %c = load volatile i1, i1* %condition
  br i1 %c, label %loop, label %exit

 exit:
  ret void
}

define void @g(i1* %condition) {

 entry:
  br label %loop

 loop:
  %idx = phi i32 [ 0, %entry ], [ %idx.inc, %loop ]
  %idx.inc = add nsw i32 %idx, 3

  %idx.inc2 = add i32 %idx.inc, -1
  %idx.inc2.sext = sext i32 %idx.inc2 to i64



  %c = load volatile i1, i1* %condition
  br i1 %c, label %loop, label %exit

 exit:
  ret void
}
