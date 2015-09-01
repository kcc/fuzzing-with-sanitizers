









target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.8.0"















define void @vectorized(float* noalias nocapture %A, float* noalias nocapture %B) {
entry:
  br label %for.body

for.body:
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float, float* %B, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4, !llvm.mem.parallel_loop_access !1
  %call = tail call float @llvm.sin.f32(float %0)
  %arrayidx2 = getelementptr inbounds float, float* %A, i64 %indvars.iv
  store float %call, float* %arrayidx2, align 4, !llvm.mem.parallel_loop_access !1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 1000
  br i1 %exitcond, label %for.end.loopexit, label %for.body, !llvm.loop !1

for.end.loopexit:
  br label %for.end

for.end:
  ret void
}

!1 = !{!1, !2}
!2 = !{!"llvm.loop.vectorize.enable", i1 true}





define void @not_vectorized(float* noalias nocapture %A, float* noalias nocapture %B) {
entry:
  br label %for.body

for.body:
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float, float* %B, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4, !llvm.mem.parallel_loop_access !3
  %call = tail call float @llvm.sin.f32(float %0)
  %arrayidx2 = getelementptr inbounds float, float* %A, i64 %indvars.iv
  store float %call, float* %arrayidx2, align 4, !llvm.mem.parallel_loop_access !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 1000
  br i1 %exitcond, label %for.end.loopexit, label %for.body, !llvm.loop !3

for.end.loopexit:
  br label %for.end

for.end:
  ret void
}

declare float @llvm.sin.f32(float) nounwind readnone


!3 = !{!3}

