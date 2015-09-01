








define void @le(i64 %n, double* nocapture %p) nounwind {
entry:
  %cmp6 = icmp slt i64 %n, 0                      
  br i1 %cmp6, label %for.end, label %for.body

for.body:                                         
  %i = phi i64 [ %i.next, %for.body ], [ 0, %entry ] 
  %arrayidx = getelementptr double, double* %p, i64 %i    
  %t4 = load double, double* %arrayidx                    
  %mul = fmul double %t4, 2.200000e+00            
  store double %mul, double* %arrayidx
  %i.next = add nsw i64 %i, 1                     
  %cmp = icmp sgt i64 %i.next, %n                 
  br i1 %cmp, label %for.end, label %for.body

for.end:                                          
  ret void
}
