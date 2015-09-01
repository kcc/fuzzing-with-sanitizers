

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"












define void @loop(i32* nocapture %a, i32* nocapture %b) nounwind uwtable {
entry:
  br label %for.body

for.body:                                         
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %b, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %arrayidx2 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv
  %1 = load i32, i32* %arrayidx2, align 4
  %idxprom3 = sext i32 %1 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %a, i64 %idxprom3
  store i32 %0, i32* %arrayidx4, align 4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %arrayidx6 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next
  %2 = load i32, i32* %arrayidx6, align 4
  store i32 %2, i32* %arrayidx2, align 4
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 512
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}






define void @parallel_loop(i32* nocapture %a, i32* nocapture %b) nounwind uwtable {
entry:
  br label %for.body

for.body:                                         
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %b, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4, !llvm.mem.parallel_loop_access !3
  %arrayidx2 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv
  %1 = load i32, i32* %arrayidx2, align 4, !llvm.mem.parallel_loop_access !3
  %idxprom3 = sext i32 %1 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %a, i64 %idxprom3
  
  
  store i32 %0, i32* %arrayidx4, align 4, !llvm.mem.parallel_loop_access !5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %arrayidx6 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next
  %2 = load i32, i32* %arrayidx6, align 4, !llvm.mem.parallel_loop_access !3
  store i32 %2, i32* %arrayidx2, align 4, !llvm.mem.parallel_loop_access !3
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 512
  br i1 %exitcond, label %for.end, label %for.body, !llvm.loop !3

for.end:                                          
  ret void
}







define void @mixed_metadata(i32* nocapture %a, i32* nocapture %b) nounwind uwtable {
entry:
  br label %for.body

for.body:                                         
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %b, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4, !llvm.mem.parallel_loop_access !6
  %arrayidx2 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv
  %1 = load i32, i32* %arrayidx2, align 4, !llvm.mem.parallel_loop_access !6
  %idxprom3 = sext i32 %1 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %a, i64 %idxprom3
  
  
  store i32 %0, i32* %arrayidx4, align 4, !llvm.mem.parallel_loop_access !7
  %indvars.iv.next = add i64 %indvars.iv, 1
  %arrayidx6 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next
  %2 = load i32, i32* %arrayidx6, align 4, !llvm.mem.parallel_loop_access !6
  store i32 %2, i32* %arrayidx2, align 4, !llvm.mem.parallel_loop_access !6
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 512
  br i1 %exitcond, label %for.end, label %for.body, !llvm.loop !6

for.end:                                          
  ret void
}

!3 = !{!3}
!4 = !{!4}
!5 = !{!3, !4}
!6 = !{!6}
!7 = !{!7}
