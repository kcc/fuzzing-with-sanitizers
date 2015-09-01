






define void @foo(i32 %N) nounwind {
entry:
  %0 = icmp slt i32 %N, 0                         
  br i1 %0, label %bb, label %return

bb:                                               
  %i.03 = phi i32 [ 0, %entry ], [ %2, %bb ]      
  %1 = sitofp i32 %i.03 to double                  
  tail call void @bar(double %1) nounwind
  %2 = add nsw i32 %i.03, -1                       
  %exitcond = icmp eq i32 %2, %N                  
  br i1 %exitcond, label %return, label %bb

return:                                           
  ret void
}

declare void @bar(double)
