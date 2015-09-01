








define void @foo(i64 %n, double* nocapture %p) nounwind {
entry:
  %cmp6 = icmp slt i64 %n, 0                      
  br i1 %cmp6, label %for.end, label %for.body.preheader

for.body.preheader:                               
  %tmp = icmp sgt i64 %n, 0                       
  %n.op = add i64 %n, 1                           
  %tmp1 = select i1 %tmp, i64 %n.op, i64 1        
  br label %for.body

for.body:                                         
  %i = phi i64 [ %i.next, %for.body ], [ 0, %for.body.preheader ] 
  %arrayidx = getelementptr double, double* %p, i64 %i    
  %t4 = load double, double* %arrayidx                    
  %mul = fmul double %t4, 2.200000e+00            
  store double %mul, double* %arrayidx
  %i.next = add nsw i64 %i, 1                     
  %exitcond = icmp eq i64 %i.next, %tmp1          
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}


















define void @_Z18GenerateStatusPagei(i32 %jobs_to_display) nounwind {
entry:
  %cmp.i = icmp sgt i32 %jobs_to_display, 0       
  %tmp = select i1 %cmp.i, i32 %jobs_to_display, i32 0 
  %cmp8 = icmp sgt i32 %tmp, 0                    
  br i1 %cmp8, label %bb.nph, label %for.end

bb.nph:                                           
  %tmp11 = icmp sgt i32 %tmp, 1                   
  %smax = select i1 %tmp11, i32 %tmp, i32 1       
  br label %for.body

for.body:                                         
  %i.010 = phi i32 [ 0, %bb.nph ], [ %inc, %for.body ] 
  %it.0.09 = phi float* [ null, %bb.nph ], [ %call.i, %for.body ] 
  %call.i = call float* @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(float* %it.0.09) 
  %inc = add nsw i32 %i.010, 1                    
  %exitcond = icmp eq i32 %inc, %smax             
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}

declare float* @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(float*)
