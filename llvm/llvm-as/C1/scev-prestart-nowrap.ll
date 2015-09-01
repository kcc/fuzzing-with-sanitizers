






















define i64 @bad.0(i32 %start, i32 %low.limit, i32 %high.limit) {

 entry:
  %postinc.start = add i32 %start, 1
  br label %loop

 loop:
  %idx = phi i32 [ %start, %entry ], [ %idx.inc, %continue ]
  %postinc = phi i32 [ %postinc.start, %entry ], [ %postinc.inc, %continue ]
  %postinc.inc = add nsw i32 %postinc, 1
  %postinc.sext = sext i32 %postinc to i64


  %break.early = icmp slt i32 %postinc, %low.limit
  br i1 %break.early, label %continue, label %early.exit

 continue:
  %idx.inc = add nsw i32 %idx, 1
  %cmp = icmp slt i32 %idx.inc, %high.limit
  br i1 %cmp, label %loop, label %exit

 exit:
  ret i64 0

 early.exit:
  ret i64 %postinc.sext
}

define i64 @bad.1(i32 %start, i32 %low.limit, i32 %high.limit, i1* %unknown) {

 entry:
  %postinc.start = add i32 %start, 1
  br label %loop

 loop:
  %idx = phi i32 [ %start, %entry ], [ %idx.inc, %continue ], [ %idx.inc, %continue.1 ]
  %postinc = phi i32 [ %postinc.start, %entry ], [ %postinc.inc, %continue ], [ %postinc.inc, %continue.1 ]
  %postinc.inc = add nsw i32 %postinc, 1
  %postinc.sext = sext i32 %postinc to i64


  %break.early = icmp slt i32 %postinc, %low.limit
  br i1 %break.early, label %continue.1, label %early.exit

 continue.1:
  %cond = load volatile i1, i1* %unknown
  %idx.inc = add nsw i32 %idx, 1
  br i1 %cond, label %loop, label %continue

 continue:
  %cmp = icmp slt i32 %idx.inc, %high.limit
  br i1 %cmp, label %loop, label %exit

 exit:
  ret i64 0

 early.exit:
  ret i64 %postinc.sext
}
