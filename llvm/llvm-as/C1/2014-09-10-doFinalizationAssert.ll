





declare i1 @check() nounwind
define void @skiplevelexit() nounwind {
entry:
  br label %outer

outer:
  br label %inner

inner:
  %iv = phi i32 [ 0, %outer ], [ %inc, %tail ]
  %inc = add i32 %iv, 1
  call zeroext i1 @check()
  br i1 true, label %outer.backedge, label %tail

tail:
  br i1 false, label %inner, label %exit

outer.backedge:
  br label %outer

exit:
  ret void
}

