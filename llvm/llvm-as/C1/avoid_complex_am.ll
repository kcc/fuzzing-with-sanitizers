






target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx"

define void @mulDouble(double* nocapture %a, double* nocapture %b, double* nocapture %c) {

entry:
  br label %for.body

for.body:                                         



  %indvars.iv = phi i64 [ 1, %entry ], [ %indvars.iv.next, %for.body ]
  %tmp = add nsw i64 %indvars.iv, -1
  %arrayidx = getelementptr inbounds double, double* %b, i64 %tmp
  %tmp1 = load double, double* %arrayidx, align 8


  %indvars.iv.next = add i64 %indvars.iv, 1
  %arrayidx2 = getelementptr inbounds double, double* %c, i64 %indvars.iv.next
  %tmp2 = load double, double* %arrayidx2, align 8
  %mul = fmul double %tmp1, %tmp2
  %arrayidx4 = getelementptr inbounds double, double* %a, i64 %indvars.iv
  store double %mul, double* %arrayidx4, align 8
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32


  %exitcond = icmp eq i32 %lftr.wideiv, 20
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}
