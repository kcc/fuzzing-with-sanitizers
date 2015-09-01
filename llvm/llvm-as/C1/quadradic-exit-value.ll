


target datalayout = "n8:16:32:64"





define i64 @foo(i64 %n) {
entry:
  br label %foo.loop

foo.loop:
  %indvar = phi i64 [ 0, %entry ], [ %indvar.next, %foo.loop ]
  %indvar.next = add i64 %indvar, 1
  %c = icmp eq i64 %indvar.next, %n
  br i1 %c, label %exit, label %foo.loop

exit:
  %r = mul i64 %indvar.next, %indvar.next
  ret i64 %r
}








define i32 @test2() {
entry:
  br label %test2.loop

test2.loop:
  %inc1115.us = phi i32 [ 0, %entry ], [ %inc11.us, %test2.loop ]
  %inc11.us = add nsw i32 %inc1115.us, 1
  %cmp.us = icmp slt i32 %inc11.us, 2
  br i1 %cmp.us, label %test2.loop, label %for.end

for.end:
  %tobool.us = icmp eq i32 %inc1115.us, 0
  %sub.us = select i1 %tobool.us, i32 0, i32 0
  %mul.us = shl i32 %inc1115.us, 24
  %sub.cond.us = sub nsw i32 %inc1115.us, %sub.us
  %sext.us = mul i32 %mul.us, %sub.cond.us
  %f = ashr i32 %sext.us, 24
  br label %exit

exit:
  ret i32 %f
}
