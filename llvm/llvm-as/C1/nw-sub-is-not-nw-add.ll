


define void @f(i32* %loc) {

 entry:
  br label %loop

 loop:
  %idx = phi i32 [ 6, %entry ], [ %idx.dec, %loop ]
  store i32 %idx, i32* %loc
  %idx.dec = sub nuw i32 %idx, 1
  %cond = icmp uge i32 %idx.dec, 5
  br i1 %cond, label %loop, label %exit


 exit:
  ret void
}

declare void @use_i1(i1)


define void @g(i32 %lim) {

 entry:
  br label %loop

 loop:
  %idx = phi i32 [ -1, %entry ], [ %idx.dec, %loop ]
  %t = icmp sgt i32 %idx, 0


  call void @use_i1(i1 %t)
  %idx.dec = sub nsw i32 %idx, -2147483648
  %cond = icmp eq i32 %idx.dec, %lim
  br i1 %cond, label %loop, label %exit

 exit:
  ret void
}
