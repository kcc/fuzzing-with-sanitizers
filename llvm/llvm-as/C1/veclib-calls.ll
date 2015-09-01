

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"




declare float @sqrtf(float) nounwind readnone
define void @sqrt_f32(i32 %n, float* noalias %y, float* noalias %x) nounwind uwtable {
entry:
  %cmp6 = icmp sgt i32 %n, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float, float* %y, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %call = tail call float @sqrtf(float %0) nounwind readnone
  %arrayidx2 = getelementptr inbounds float, float* %x, i64 %indvars.iv
  store float %call, float* %arrayidx2, align 4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}




declare float @expf(float) nounwind readnone
define void @exp_f32(i32 %n, float* noalias %y, float* noalias %x) nounwind uwtable {
entry:
  %cmp6 = icmp sgt i32 %n, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float, float* %y, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %call = tail call float @expf(float %0) nounwind readnone
  %arrayidx2 = getelementptr inbounds float, float* %x, i64 %indvars.iv
  store float %call, float* %arrayidx2, align 4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}




declare float @logf(float) nounwind readnone
define void @log_f32(i32 %n, float* noalias %y, float* noalias %x) nounwind uwtable {
entry:
  %cmp6 = icmp sgt i32 %n, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float, float* %y, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %call = tail call float @logf(float %0) nounwind readnone
  %arrayidx2 = getelementptr inbounds float, float* %x, i64 %indvars.iv
  store float %call, float* %arrayidx2, align 4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}





declare float @fabsf(float) nounwind readnone
define void @fabs_f32(i32 %n, float* noalias %y, float* noalias %x) nounwind uwtable {
entry:
  %cmp6 = icmp sgt i32 %n, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float, float* %y, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %call = tail call float @fabsf(float %0) nounwind readnone
  %arrayidx2 = getelementptr inbounds float, float* %x, i64 %indvars.iv
  store float %call, float* %arrayidx2, align 4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}





declare float @llvm.exp.f32(float) nounwind readnone
define void @exp_f32_intrin(i32 %n, float* noalias %y, float* noalias %x) nounwind uwtable {
entry:
  %cmp6 = icmp sgt i32 %n, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float, float* %y, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %call = tail call float @llvm.exp.f32(float %0) nounwind readnone
  %arrayidx2 = getelementptr inbounds float, float* %x, i64 %indvars.iv
  store float %call, float* %arrayidx2, align 4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}





declare float @foo(float) nounwind readnone
define void @foo_f32(i32 %n, float* noalias %y, float* noalias %x) nounwind uwtable {
entry:
  %cmp6 = icmp sgt i32 %n, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float, float* %y, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %call = tail call float @foo(float %0) nounwind readnone
  %arrayidx2 = getelementptr inbounds float, float* %x, i64 %indvars.iv
  store float %call, float* %arrayidx2, align 4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}





define void @sqrt_f32_nobuiltin(i32 %n, float* noalias %y, float* noalias %x) nounwind uwtable {
entry:
  %cmp6 = icmp sgt i32 %n, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float, float* %y, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %call = tail call float @sqrtf(float %0) nounwind readnone nobuiltin
  %arrayidx2 = getelementptr inbounds float, float* %x, i64 %indvars.iv
  store float %call, float* %arrayidx2, align 4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}




declare float @ceilf(float) nounwind readnone
define void @ceil_f32(i32 %n, float* noalias %y, float* noalias %x) nounwind uwtable {
entry:
  %cmp6 = icmp sgt i32 %n, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float, float* %y, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %call = tail call float @ceilf(float %0) nounwind readnone
  %arrayidx2 = getelementptr inbounds float, float* %x, i64 %indvars.iv
  store float %call, float* %arrayidx2, align 4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}




declare float @floorf(float) nounwind readnone
define void @floor_f32(i32 %n, float* noalias %y, float* noalias %x) nounwind uwtable {
entry:
  %cmp6 = icmp sgt i32 %n, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float, float* %y, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %call = tail call float @floorf(float %0) nounwind readnone
  %arrayidx2 = getelementptr inbounds float, float* %x, i64 %indvars.iv
  store float %call, float* %arrayidx2, align 4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}




declare float @expm1f(float) nounwind readnone
define void @expm1_f32(i32 %n, float* noalias %y, float* noalias %x) nounwind uwtable {
entry:
  %cmp6 = icmp sgt i32 %n, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float, float* %y, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %call = tail call float @expm1f(float %0) nounwind readnone
  %arrayidx2 = getelementptr inbounds float, float* %x, i64 %indvars.iv
  store float %call, float* %arrayidx2, align 4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}




declare float @log1pf(float) nounwind readnone
define void @log1p_f32(i32 %n, float* noalias %y, float* noalias %x) nounwind uwtable {
entry:
  %cmp6 = icmp sgt i32 %n, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float, float* %y, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %call = tail call float @log1pf(float %0) nounwind readnone
  %arrayidx2 = getelementptr inbounds float, float* %x, i64 %indvars.iv
  store float %call, float* %arrayidx2, align 4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}




declare float @log10f(float) nounwind readnone
define void @log10_f32(i32 %n, float* noalias %y, float* noalias %x) nounwind uwtable {
entry:
  %cmp6 = icmp sgt i32 %n, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float, float* %y, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %call = tail call float @log10f(float %0) nounwind readnone
  %arrayidx2 = getelementptr inbounds float, float* %x, i64 %indvars.iv
  store float %call, float* %arrayidx2, align 4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}




declare float @logbf(float) nounwind readnone
define void @logb_f32(i32 %n, float* noalias %y, float* noalias %x) nounwind uwtable {
entry:
  %cmp6 = icmp sgt i32 %n, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float, float* %y, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %call = tail call float @logbf(float %0) nounwind readnone
  %arrayidx2 = getelementptr inbounds float, float* %x, i64 %indvars.iv
  store float %call, float* %arrayidx2, align 4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}




declare float @sinf(float) nounwind readnone
define void @sin_f32(i32 %n, float* noalias %y, float* noalias %x) nounwind uwtable {
entry:
  %cmp6 = icmp sgt i32 %n, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float, float* %y, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %call = tail call float @sinf(float %0) nounwind readnone
  %arrayidx2 = getelementptr inbounds float, float* %x, i64 %indvars.iv
  store float %call, float* %arrayidx2, align 4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}




declare float @cosf(float) nounwind readnone
define void @cos_f32(i32 %n, float* noalias %y, float* noalias %x) nounwind uwtable {
entry:
  %cmp6 = icmp sgt i32 %n, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float, float* %y, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %call = tail call float @cosf(float %0) nounwind readnone
  %arrayidx2 = getelementptr inbounds float, float* %x, i64 %indvars.iv
  store float %call, float* %arrayidx2, align 4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}




declare float @tanf(float) nounwind readnone
define void @tan_f32(i32 %n, float* noalias %y, float* noalias %x) nounwind uwtable {
entry:
  %cmp6 = icmp sgt i32 %n, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float, float* %y, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %call = tail call float @tanf(float %0) nounwind readnone
  %arrayidx2 = getelementptr inbounds float, float* %x, i64 %indvars.iv
  store float %call, float* %arrayidx2, align 4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}




declare float @asinf(float) nounwind readnone
define void @asin_f32(i32 %n, float* noalias %y, float* noalias %x) nounwind uwtable {
entry:
  %cmp6 = icmp sgt i32 %n, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float, float* %y, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %call = tail call float @asinf(float %0) nounwind readnone
  %arrayidx2 = getelementptr inbounds float, float* %x, i64 %indvars.iv
  store float %call, float* %arrayidx2, align 4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}




declare float @acosf(float) nounwind readnone
define void @acos_f32(i32 %n, float* noalias %y, float* noalias %x) nounwind uwtable {
entry:
  %cmp6 = icmp sgt i32 %n, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float, float* %y, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %call = tail call float @acosf(float %0) nounwind readnone
  %arrayidx2 = getelementptr inbounds float, float* %x, i64 %indvars.iv
  store float %call, float* %arrayidx2, align 4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}




declare float @atanf(float) nounwind readnone
define void @atan_f32(i32 %n, float* noalias %y, float* noalias %x) nounwind uwtable {
entry:
  %cmp6 = icmp sgt i32 %n, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float, float* %y, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %call = tail call float @atanf(float %0) nounwind readnone
  %arrayidx2 = getelementptr inbounds float, float* %x, i64 %indvars.iv
  store float %call, float* %arrayidx2, align 4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}




declare float @sinhf(float) nounwind readnone
define void @sinh_f32(i32 %n, float* noalias %y, float* noalias %x) nounwind uwtable {
entry:
  %cmp6 = icmp sgt i32 %n, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float, float* %y, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %call = tail call float @sinhf(float %0) nounwind readnone
  %arrayidx2 = getelementptr inbounds float, float* %x, i64 %indvars.iv
  store float %call, float* %arrayidx2, align 4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}




declare float @coshf(float) nounwind readnone
define void @cosh_f32(i32 %n, float* noalias %y, float* noalias %x) nounwind uwtable {
entry:
  %cmp6 = icmp sgt i32 %n, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float, float* %y, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %call = tail call float @coshf(float %0) nounwind readnone
  %arrayidx2 = getelementptr inbounds float, float* %x, i64 %indvars.iv
  store float %call, float* %arrayidx2, align 4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}




declare float @tanhf(float) nounwind readnone
define void @tanh_f32(i32 %n, float* noalias %y, float* noalias %x) nounwind uwtable {
entry:
  %cmp6 = icmp sgt i32 %n, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float, float* %y, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %call = tail call float @tanhf(float %0) nounwind readnone
  %arrayidx2 = getelementptr inbounds float, float* %x, i64 %indvars.iv
  store float %call, float* %arrayidx2, align 4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}




declare float @asinhf(float) nounwind readnone
define void @asinh_f32(i32 %n, float* noalias %y, float* noalias %x) nounwind uwtable {
entry:
  %cmp6 = icmp sgt i32 %n, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float, float* %y, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %call = tail call float @asinhf(float %0) nounwind readnone
  %arrayidx2 = getelementptr inbounds float, float* %x, i64 %indvars.iv
  store float %call, float* %arrayidx2, align 4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}




declare float @acoshf(float) nounwind readnone
define void @acosh_f32(i32 %n, float* noalias %y, float* noalias %x) nounwind uwtable {
entry:
  %cmp6 = icmp sgt i32 %n, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float, float* %y, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %call = tail call float @acoshf(float %0) nounwind readnone
  %arrayidx2 = getelementptr inbounds float, float* %x, i64 %indvars.iv
  store float %call, float* %arrayidx2, align 4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}




declare float @atanhf(float) nounwind readnone
define void @atanh_f32(i32 %n, float* noalias %y, float* noalias %x) nounwind uwtable {
entry:
  %cmp6 = icmp sgt i32 %n, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float, float* %y, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %call = tail call float @atanhf(float %0) nounwind readnone
  %arrayidx2 = getelementptr inbounds float, float* %x, i64 %indvars.iv
  store float %call, float* %arrayidx2, align 4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}
