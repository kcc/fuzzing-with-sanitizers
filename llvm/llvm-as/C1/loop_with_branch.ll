



define void @loop_with_branch(i32 %a) {

entry:
  %skip_loop = call i1 @foo0(i32 %a)
  br i1 %skip_loop, label %skip, label %header, !prof !0


skip:
  br label %exit


header:
  %i = phi i32 [ 0, %entry ], [ %i.next, %back ]
  %i.next = add i32 %i, 1
  %choose = call i2 @foo1(i32 %i)
  switch i2 %choose, label %exit [ i2 0, label %left
                                   i2 1, label %right ], !prof !1


left:
  br label %back


right:
  br label %back


back:
  br label %header


exit:
  ret void
}

declare i1 @foo0(i32)
declare i2 @foo1(i32)

!0 = !{!"branch_weights", i32 1, i32 3}
!1 = !{!"branch_weights", i32 1, i32 2, i32 3}
