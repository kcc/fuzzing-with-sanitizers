





















define i32 @test(i32 %n, i32* nocapture %array, i32* nocapture %m, i32* nocapture %array2) #0 {
entry:
  %cmp7 = icmp sgt i32 %n, 0
  br i1 %cmp7, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   
  %.pre = load i32, i32* %m, align 4
  br label %for.body

for.body:                                         
  %0 = phi i32 [ %.pre, %for.body.lr.ph ], [ %add, %for.body ]
  %sum.010 = phi i32 [ 0, %for.body.lr.ph ], [ %add3, %for.body ]
  %j.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc1, %for.body ]
  %inc1 = add nsw i32 %j.09, 1
  %arrayidx = getelementptr inbounds i32, i32* %array2, i32 %j.09
  %1 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %0, %1
  store i32 %add, i32* %m, align 4
  %arrayidx2 = getelementptr inbounds i32, i32* %array, i32 %inc1
  %2 = load i32, i32* %arrayidx2, align 4
  %add3 = add nsw i32 %2, %sum.010
  %exitcond = icmp eq i32 %inc1, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  %sum.0.lcssa = phi i32 [ 0, %entry ], [ %add3, %for.body ]
  ret i32 %sum.0.lcssa
}

