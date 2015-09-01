







define void @foo(double* nocapture %p, i64 %n) nounwind {
entry:
  %mul10 = shl i64 %n, 1                          
  br label %for.body

for.body:                                         
  %i.013 = phi i64 [ %tmp16, %for.body ], [ 0, %entry ] 
  %arrayidx7 = getelementptr double, double* %p, i64 %i.013 
  %tmp16 = add i64 %i.013, 1                      
  %arrayidx = getelementptr double, double* %p, i64 %tmp16 
  %tmp4 = load double, double* %arrayidx                  
  %tmp8 = load double, double* %arrayidx7                 
  %mul9 = fmul double %tmp8, %tmp4                
  store double %mul9, double* %arrayidx7
  %exitcond = icmp eq i64 %tmp16, %mul10          
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}
