target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"




define void @test1(double* noalias %out, double* noalias %in1, double* noalias %in2) nounwind uwtable {
entry:
  br label %for.body



for.body:                                         
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds double, double* %in1, i64 %indvars.iv
  %0 = load double, double* %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds double, double* %in2, i64 %indvars.iv
  %1 = load double, double* %arrayidx2, align 8
  %mul = fmul double %0, %0
  %mul3 = fmul double %0, %1
  %add = fadd double %mul, %mul3
  %add4 = fadd double %1, %1
  %add5 = fadd double %add4, %0
  %mul6 = fmul double %0, %add5
  %add7 = fadd double %add, %mul6
  %mul8 = fmul double %1, %1
  %add9 = fadd double %0, %0
  %add10 = fadd double %add9, %0
  %mul11 = fmul double %mul8, %add10
  %add12 = fadd double %add7, %mul11
  %arrayidx14 = getelementptr inbounds double, double* %out, i64 %indvars.iv
  store double %add12, double* %arrayidx14, align 8
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 10
  br i1 %exitcond, label %for.end, label %for.body






















































for.end:                                          
  ret void
}
