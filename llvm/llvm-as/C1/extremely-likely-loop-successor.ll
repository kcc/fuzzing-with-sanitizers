






define void @extremely_likely_loop_successor() {

entry:
  br label %loop


loop:
  %exit.1.cond = call i1 @foo()
  br i1 %exit.1.cond, label %exit, label %loop.2, !prof !0


loop.2:
  %exit.2.cond = call i1 @foo()
  br i1 %exit.2.cond, label %exit, label %loop.3, !prof !0


loop.3:
  %exit.3.cond = call i1 @foo()
  br i1 %exit.3.cond, label %exit, label %loop.4, !prof !0


loop.4:
  %exit.4.cond = call i1 @foo()
  br i1 %exit.4.cond, label %exit, label %loop, !prof !0


exit:
  ret void
}

declare i1 @foo()

!0 = !{!"branch_weights", i32 4294967295, i32 1}
