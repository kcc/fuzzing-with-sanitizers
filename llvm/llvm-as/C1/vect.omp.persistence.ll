











target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"




















define void @rotated(float* nocapture %a, i64 %size) {
entry:
  %cmp1 = icmp sgt i64 %size, 0
  br i1 %cmp1, label %for.header, label %for.end

for.header:
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %cmp2 = icmp sgt i64 %indvars.iv, %size
  br i1 %cmp2, label %for.end, label %for.body

for.body:

  %0 = add nsw i64 %indvars.iv, -5
  %arrayidx = getelementptr inbounds float, float* %a, i64 %0
  %1 = load float, float* %arrayidx, align 4, !llvm.mem.parallel_loop_access !1
  %2 = add nsw i64 %indvars.iv, 2
  %arrayidx2 = getelementptr inbounds float, float* %a, i64 %2
  %3 = load float, float* %arrayidx2, align 4, !llvm.mem.parallel_loop_access !1
  %mul = fmul float %1, %3
  %arrayidx4 = getelementptr inbounds float, float* %a, i64 %indvars.iv
  store float %mul, float* %arrayidx4, align 4, !llvm.mem.parallel_loop_access !1

  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.header, !llvm.loop !1

for.end:
  ret void
}

!1 = !{!1, !2}
!2 = !{!"llvm.loop.vectorize.enable", i1 true}







define i32 @nonrotated(i32 %a) {
entry:
  br label %loop_cond
loop_cond:
  %indx = phi i32 [ 1, %entry ], [ %inc, %loop_inc ]
  %cmp = icmp ne i32 %indx, %a
  br i1 %cmp, label %return, label %loop_inc
loop_inc:
  %inc = add i32 %indx, 1
  br label %loop_cond, !llvm.loop !3
return:
  ret i32 0
}

!3 = !{!3, !4}
!4 = !{!"llvm.loop.vectorize.enable", i1 true}
