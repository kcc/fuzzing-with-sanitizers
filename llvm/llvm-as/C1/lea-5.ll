








define void @foo(i32 %x, i32 %d) #0 {
entry:
  %a = alloca [8 x i32], align 16
  br label %while.cond

while.cond:                                       
  %d.addr.0 = phi i32 [ %d, %entry ], [ %inc, %while.cond ]
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i32 %d.addr.0



  %0 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp eq i32 %0, 0
  %inc = add nsw i32 %d.addr.0, 1



  br i1 %cmp1, label %while.end, label %while.cond

while.end:                                        
  ret void
}





define void @bar(i32 %x, i32 %d) #0 {
entry:
  %a = alloca [8 x i32], align 64
  br label %while.cond

while.cond:                                       
  %d.addr.0 = phi i32 [ %d, %entry ], [ %inc, %while.cond ]
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i32 %d.addr.0



  %0 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp eq i32 %0, 0
  %inc = add nsw i32 %d.addr.0, 1



  br i1 %cmp1, label %while.end, label %while.cond

while.end:                                        
  ret void
}

