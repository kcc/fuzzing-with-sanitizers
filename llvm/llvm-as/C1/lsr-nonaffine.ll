














define i64 @foo(i64 %n, i64 %s, i64* %p) nounwind {
entry:
  br label %loop

loop:
  %i = phi i64 [ 0, %entry ], [ %i.next, %loop ]
  store volatile i64 %i, i64* %p
  %i.next = add i64 %i, %s
  %c = icmp slt i64 %i.next, %n
  br i1 %c, label %loop, label %exit

exit:
  %mul = mul i64 %i.next, %i.next
  ret i64 %mul
}
