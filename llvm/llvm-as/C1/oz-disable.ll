







@e = global i32 10

declare void @use(i32)

define void @test() {
entry:
  %end = load i32, i32* @e
  br label %loop

loop:
  %n.phi = phi i32 [ %n, %loop.fin ], [ 0, %entry ]
  %cond = icmp eq i32 %n.phi, %end
  br i1 %cond, label %exit, label %loop.fin

loop.fin:
  %n = add i32 %n.phi, 1
  call void @use(i32 %n)
  br label %loop

exit:
  ret void
}
