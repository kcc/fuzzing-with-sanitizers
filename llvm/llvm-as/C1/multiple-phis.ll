









define i32 @upper_bound(i32* %r, i32 %high, i32 %k) nounwind {
entry:
  br label %while.cond

while.cond:                                       
  %high.addr.0 = phi i32 [ %high, %entry ], [ %div, %if.then ], [ %high.addr.0, %if.else ]
  %low.0 = phi i32 [ 0, %entry ], [ %low.0, %if.then ], [ %add2, %if.else ]
  %cmp = icmp ult i32 %low.0, %high.addr.0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       
  %add = add i32 %low.0, %high.addr.0
  %div = udiv i32 %add, 2
  %idxprom = zext i32 %div to i64
  %arrayidx = getelementptr inbounds i32, i32* %r, i64 %idxprom
  %0 = load i32, i32* %arrayidx
  %cmp1 = icmp ult i32 %k, %0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          
  br label %while.cond

if.else:                                          
  %add2 = add i32 %div, 1
  br label %while.cond

while.end:                                        
  ret i32 %low.0
}
