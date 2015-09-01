





define i3 @test(i3* %a, i3 %n) {


entry:
  %cmp1 = icmp eq i3 %n, 0
  br i1 %cmp1, label %for.end, label %for.body




for.body:                                         


  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %sum.02 = phi i3 [ %add, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i3, i3* %a, i64 %indvars.iv










  %0 = load i3, i3* %arrayidx
  %add = add nsw i3 %0, %sum.02
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i3
  %exitcond = icmp eq i3 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body



for.end:                                          
  %sum.0.lcssa = phi i3 [ 0, %entry ], [ %add, %for.body ]
  ret i3 %sum.0.lcssa
}
