

define void @double_backedge(i1 %x) {


entry:

  br label %loop

loop:

  br i1 %x, label %exit, label %loop.1, !prof !0

loop.1:

  br i1 %x, label %loop, label %loop.2, !prof !1

loop.2:

  br label %loop

exit:

  ret void
}
!0 = !{!"branch_weights", i32 1, i32 9}
!1 = !{!"branch_weights", i32 4, i32 5}
