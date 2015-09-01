






define void @func() nounwind {
entry:
  br label %bb

bb:
  br label %bb

unreachable:
  %phi = phi i16 [ %add, %unreachable ], [ 0, %next ]
  %add = add i16 0, %phi
  %cmp = icmp slt i16 %phi, 0
  br i1 %cmp, label %unreachable, label %next

next:
  br label %unreachable
}

