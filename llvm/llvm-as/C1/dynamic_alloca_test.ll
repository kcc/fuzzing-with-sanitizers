











declare void @ext(i32*)

define internal void @callee(i32 %N) {
  %P = alloca i32, i32 %N
  call void @ext(i32* %P)
  ret void
}

define void @foo(i32 %N) {








entry:
  %P = alloca i32, i32 %N
  call void @ext(i32* %P)
  br label %loop

loop:
  %count = phi i32 [ 0, %entry ], [ %next, %loop ]
  %next = add i32 %count, 1
  call void @callee(i32 %N)
  %cond = icmp eq i32 %count, 100000
  br i1 %cond, label %out, label %loop

out:
  ret void
}

