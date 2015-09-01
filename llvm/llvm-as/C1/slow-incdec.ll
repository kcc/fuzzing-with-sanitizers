















define i32 @slow_1(i32* nocapture readonly %a, i32 %s) #0 {
entry:
  %cmp5 = icmp eq i32 %s, 0
  br i1 %cmp5, label %for.end, label %for.body.preheader

for.body.preheader:                               
  br label %for.body

for.cond:                                         
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %for.end.loopexit, label %for.body

for.body:                                         
  %i.06 = phi i32 [ %dec, %for.cond ], [ %s, %for.body.preheader ]
  %arrayidx = getelementptr inbounds i32, i32* %a, i32 %i.06
  %0 = load i32, i32* %arrayidx, align 4, !tbaa !1
  %cmp1 = icmp eq i32 %0, 0

  %dec = add nsw i32 %i.06, -1
  br i1 %cmp1, label %for.end.loopexit, label %for.cond

for.end.loopexit:                                 
  %i.0.lcssa.ph = phi i32 [ 0, %for.cond ], [ %i.06, %for.body ]
  br label %for.end

for.end:                                          
  %i.0.lcssa = phi i32 [ 0, %entry ], [ %i.0.lcssa.ph, %for.end.loopexit ]
  ret i32 %i.0.lcssa
}


define i32 @slow_2(i32* nocapture readonly %a, i32 %s) #0 {
entry:
  %cmp5 = icmp eq i32 %s, 0
  br i1 %cmp5, label %for.end, label %for.body.preheader

for.body.preheader:                               
  br label %for.body

for.cond:                                         
  %cmp = icmp eq i32 %inc, 0
  br i1 %cmp, label %for.end.loopexit, label %for.body

for.body:                                         
  %i.06 = phi i32 [ %inc, %for.cond ], [ %s, %for.body.preheader ]
  %arrayidx = getelementptr inbounds i32, i32* %a, i32 %i.06
  %0 = load i32, i32* %arrayidx, align 4, !tbaa !1
  %cmp1 = icmp eq i32 %0, 0
  %inc = add nsw i32 %i.06, 1
  br i1 %cmp1, label %for.end.loopexit, label %for.cond

for.end.loopexit:                                 
  %i.0.lcssa.ph = phi i32 [ 0, %for.cond ], [ %i.06, %for.body ]
  br label %for.end

for.end:                                          
  %i.0.lcssa = phi i32 [ 0, %entry ], [ %i.0.lcssa.ph, %for.end.loopexit ]
  ret i32 %i.0.lcssa
}

!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
