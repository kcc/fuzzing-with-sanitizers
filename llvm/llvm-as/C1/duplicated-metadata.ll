
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"





define void @_Z3fooPf(float* %a) {
entry:
  br label %for.body

for.body:                                         
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds float, float* %a, i64 %indvars.iv
  %p = load float, float* %arrayidx, align 4
  %mul = fmul float %p, 2.000000e+00
  store float %mul, float* %arrayidx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 1024
  br i1 %exitcond, label %for.end, label %for.body, !llvm.loop !0

for.end:                                          
  ret void
}

!0 = !{!0, !1}
!1 = !{!"llvm.loop.vectorize.width", i32 4}


