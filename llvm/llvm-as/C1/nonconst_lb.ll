
target datalayout = "e-p:32:32:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:32:64-v128:32:128-a0:0:32-n32-S32"
target triple = "thumbv7-none-linux"









define void @foo(i32* nocapture %A, i32* nocapture readonly %B, i32 %m, i32 %n) {
entry:
  %cmp34 = icmp slt i32 %m, %n
  br i1 %cmp34, label %for.body, label %for.end

for.body:                                         
  %i.035 = phi i32 [ %add18, %for.body ], [ %m, %entry ]
  %arrayidx = getelementptr inbounds i32, i32* %B, i32 %i.035
  %0 = load i32, i32* %arrayidx, align 4
  %mul = shl nsw i32 %0, 2
  %arrayidx2 = getelementptr inbounds i32, i32* %A, i32 %i.035
  store i32 %mul, i32* %arrayidx2, align 4
  %add3 = add nsw i32 %i.035, 1
  %arrayidx4 = getelementptr inbounds i32, i32* %B, i32 %add3
  %1 = load i32, i32* %arrayidx4, align 4
  %mul5 = shl nsw i32 %1, 2
  %arrayidx7 = getelementptr inbounds i32, i32* %A, i32 %add3
  store i32 %mul5, i32* %arrayidx7, align 4
  %add8 = add nsw i32 %i.035, 2
  %arrayidx9 = getelementptr inbounds i32, i32* %B, i32 %add8
  %2 = load i32, i32* %arrayidx9, align 4
  %mul10 = shl nsw i32 %2, 2
  %arrayidx12 = getelementptr inbounds i32, i32* %A, i32 %add8
  store i32 %mul10, i32* %arrayidx12, align 4
  %add13 = add nsw i32 %i.035, 3
  %arrayidx14 = getelementptr inbounds i32, i32* %B, i32 %add13
  %3 = load i32, i32* %arrayidx14, align 4
  %mul15 = shl nsw i32 %3, 2
  %arrayidx17 = getelementptr inbounds i32, i32* %A, i32 %add13
  store i32 %mul15, i32* %arrayidx17, align 4
  %add18 = add nsw i32 %i.035, 4
  %cmp = icmp slt i32 %add18, %n
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          
  ret void
}

































define void @daxpy_ur(i32 %n, float %da, float* nocapture readonly %dx, float* nocapture %dy) {
entry:
  %rem = srem i32 %n, 4
  %cmp55 = icmp slt i32 %rem, %n
  br i1 %cmp55, label %for.body, label %for.end

for.body:                                         
  %i.056 = phi i32 [ %add27, %for.body ], [ %rem, %entry ]
  %arrayidx = getelementptr inbounds float, float* %dy, i32 %i.056
  %0 = load float, float* %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds float, float* %dx, i32 %i.056
  %1 = load float, float* %arrayidx1, align 4
  %mul = fmul float %1, %da
  %add = fadd float %0, %mul
  store float %add, float* %arrayidx, align 4
  %add3 = add nsw i32 %i.056, 1
  %arrayidx4 = getelementptr inbounds float, float* %dy, i32 %add3
  %2 = load float, float* %arrayidx4, align 4
  %arrayidx6 = getelementptr inbounds float, float* %dx, i32 %add3
  %3 = load float, float* %arrayidx6, align 4
  %mul7 = fmul float %3, %da
  %add8 = fadd float %2, %mul7
  store float %add8, float* %arrayidx4, align 4
  %add11 = add nsw i32 %i.056, 2
  %arrayidx12 = getelementptr inbounds float, float* %dy, i32 %add11
  %4 = load float, float* %arrayidx12, align 4
  %arrayidx14 = getelementptr inbounds float, float* %dx, i32 %add11
  %5 = load float, float* %arrayidx14, align 4
  %mul15 = fmul float %5, %da
  %add16 = fadd float %4, %mul15
  store float %add16, float* %arrayidx12, align 4
  %add19 = add nsw i32 %i.056, 3
  %arrayidx20 = getelementptr inbounds float, float* %dy, i32 %add19
  %6 = load float, float* %arrayidx20, align 4
  %arrayidx22 = getelementptr inbounds float, float* %dx, i32 %add19
  %7 = load float, float* %arrayidx22, align 4
  %mul23 = fmul float %7, %da
  %add24 = fadd float %6, %mul23
  store float %add24, float* %arrayidx20, align 4
  %add27 = add nsw i32 %i.056, 4
  %cmp = icmp slt i32 %add27, %n
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          
  ret void
}
























