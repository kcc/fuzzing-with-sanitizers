









target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.8.0"













define void @vectorized(float* noalias nocapture %A, float* noalias nocapture readonly %B) {
entry:
  br label %for.body

for.body:
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds float, float* %B, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4, !llvm.mem.parallel_loop_access !1
  %arrayidx2 = getelementptr inbounds float, float* %A, i64 %indvars.iv
  %1 = load float, float* %arrayidx2, align 4, !llvm.mem.parallel_loop_access !1
  %add = fadd fast float %0, %1
  store float %add, float* %arrayidx2, align 4, !llvm.mem.parallel_loop_access !1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 20
  br i1 %exitcond, label %for.end, label %for.body, !llvm.loop !1

for.end:
  ret void
}

!1 = !{!1, !2}
!2 = !{!"llvm.loop.vectorize.enable", i1 true}




define void @not_vectorized(float* noalias nocapture %A, float* noalias nocapture readonly %B) {
entry:
  br label %for.body

for.body:
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds float, float* %B, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4, !llvm.mem.parallel_loop_access !3
  %arrayidx2 = getelementptr inbounds float, float* %A, i64 %indvars.iv
  %1 = load float, float* %arrayidx2, align 4, !llvm.mem.parallel_loop_access !3
  %add = fadd fast float %0, %1
  store float %add, float* %arrayidx2, align 4, !llvm.mem.parallel_loop_access !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 20
  br i1 %exitcond, label %for.end, label %for.body, !llvm.loop !3

for.end:
  ret void
}

!3 = !{!3}

