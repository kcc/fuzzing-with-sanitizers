




target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"








define void @unroll_count_4(i32* nocapture %a) {
entry:
  br label %for.body

for.body:                                         
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* %arrayidx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond, label %for.end, label %for.body, !llvm.loop !1

for.end:                                          
  ret void
}
!1 = !{!1, !2, !3, !4}
!2 = !{!"llvm.loop.vectorize.enable", i1 true}
!3 = !{!"llvm.loop.unroll.count", i32 4}
!4 = !{!"llvm.loop.vectorize.width", i32 8}










define void @unroll_full(i32* nocapture %a, i32 %b) {
entry:
  %cmp3 = icmp sgt i32 %b, 0
  br i1 %cmp3, label %for.body, label %for.end, !llvm.loop !5

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* %arrayidx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %b
  br i1 %exitcond, label %for.end, label %for.body, !llvm.loop !5

for.end:                                          
  ret void
}
!5 = !{!5, !6}
!6 = !{!"llvm.loop.unroll.full"}







define void @unroll_disable(i32* nocapture %a) {
entry:
  br label %for.body

for.body:                                         
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* %arrayidx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond, label %for.end, label %for.body, !llvm.loop !7

for.end:                                          
  ret void
}
!7 = !{!7, !8}
!8 = !{!"llvm.loop.unroll.disable"}













define void @shared_metadata(i32* nocapture %List) #0 {
entry:
  br label %for.body3

for.body3:                                        
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body3 ]
  %arrayidx = getelementptr inbounds i32, i32* %List, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %add4 = add nsw i32 %0, 10
  store i32 %add4, i32* %arrayidx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond, label %for.body3.1.preheader, label %for.body3, !llvm.loop !9

for.body3.1.preheader:                            
  br label %for.body3.1

for.body3.1:                                      
  %indvars.iv.1 = phi i64 [ %1, %for.body3.1 ], [ 0, %for.body3.1.preheader ]
  %1 = add nsw i64 %indvars.iv.1, 1
  %arrayidx.1 = getelementptr inbounds i32, i32* %List, i64 %1
  %2 = load i32, i32* %arrayidx.1, align 4
  %add4.1 = add nsw i32 %2, 10
  store i32 %add4.1, i32* %arrayidx.1, align 4
  %exitcond.1 = icmp eq i64 %1, 4
  br i1 %exitcond.1, label %for.inc5.1, label %for.body3.1, !llvm.loop !9

for.inc5.1:                                       
  ret void
}
!9 = !{!9, !10}
!10 = !{!"llvm.loop.unroll.count", i32 2}











