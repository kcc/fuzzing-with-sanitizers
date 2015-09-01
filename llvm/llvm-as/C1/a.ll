













define void @foo(i64 %n, i64 %m, i64 %o, i32* nocapture %A) #0 {
entry:
  %cmp32 = icmp sgt i64 %n, 0
  br i1 %cmp32, label %for.cond1.preheader.lr.ph, label %for.end17

for.cond1.preheader.lr.ph:                        
  %cmp230 = icmp sgt i64 %m, 0
  %cmp528 = icmp sgt i64 %o, 0
  br i1 %cmp230, label %for.i, label %for.end17

for.inc15.us:                                     
  %inc16.us = add nsw i64 %i.033.us, 1
  %exitcond55 = icmp eq i64 %inc16.us, %n
  br i1 %exitcond55, label %for.end17, label %for.i

for.i:                     
  %i.033.us = phi i64 [ %inc16.us, %for.inc15.us ], [ 0, %for.cond1.preheader.lr.ph ]
  %mul8.us = shl i64 %i.033.us, 1
  %add9.us = add nsw i64 %mul8.us, 3
  %0 = mul i64 %add9.us, %m
  %sub.us = add i64 %0, -4
  br i1 %cmp528, label %for.j, label %for.inc15.us

for.inc12.us.us:                                  
  %inc13.us.us = add nsw i64 %j.031.us.us, 1
  %exitcond54 = icmp eq i64 %inc13.us.us, %m
  br i1 %exitcond54, label %for.inc15.us, label %for.j

for.j:                            
  %j.031.us.us = phi i64 [ %inc13.us.us, %for.inc12.us.us ], [ 0, %for.i ]
  %mul7.us.us = mul nsw i64 %j.031.us.us, 3
  %tmp.us.us = add i64 %sub.us, %mul7.us.us
  %tmp27.us.us = mul i64 %tmp.us.us, %o
  br label %for.k

for.k:                                  
  %k.029.us.us = phi i64 [ 0, %for.j ], [ %inc.us.us, %for.k ]
  %mul.us.us = mul nsw i64 %k.029.us.us, 5
  %arrayidx.sum.us.us = add i64 %mul.us.us, 7
  %arrayidx10.sum.us.us = add i64 %arrayidx.sum.us.us, %tmp27.us.us
  %arrayidx11.us.us = getelementptr inbounds i32, i32* %A, i64 %arrayidx10.sum.us.us
  store i32 1, i32* %arrayidx11.us.us, align 4
  %inc.us.us = add nsw i64 %k.029.us.us, 1
  %exitcond = icmp eq i64 %inc.us.us, %o
  br i1 %exitcond, label %for.inc12.us.us, label %for.k

for.end17:                                        
  ret void
}
