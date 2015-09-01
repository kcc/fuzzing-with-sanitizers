

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"

@A = common global [1024 x i32] zeroinitializer, align 16
@fA = common global [1024 x float] zeroinitializer, align 16
@dA = common global [1024 x double] zeroinitializer, align 16














define i32 @max_red(i32 %max) {
entry:
  br label %for.body

for.body:
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %max.red.08 = phi i32 [ %max, %entry ], [ %max.red.0, %for.body ]
  %arrayidx = getelementptr inbounds [1024 x i32], [1024 x i32]* @A, i64 0, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %cmp3 = icmp sgt i32 %0, %max.red.08
  %max.red.0 = select i1 %cmp3, i32 %0, i32 %max.red.08
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 1024
  br i1 %exitcond, label %for.end, label %for.body

for.end:
  ret i32 %max.red.0
}










define i32 @max_red_inverse_select(i32 %max) {
entry:
  br label %for.body

for.body:
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %max.red.08 = phi i32 [ %max, %entry ], [ %max.red.0, %for.body ]
  %arrayidx = getelementptr inbounds [1024 x i32], [1024 x i32]* @A, i64 0, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %cmp3 = icmp slt i32 %max.red.08, %0
  %max.red.0 = select i1 %cmp3, i32 %0, i32 %max.red.08
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 1024
  br i1 %exitcond, label %for.end, label %for.body

for.end:
  ret i32 %max.red.0
}









define i32 @min_red(i32 %max) {
entry:
  br label %for.body

for.body:
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %max.red.08 = phi i32 [ %max, %entry ], [ %max.red.0, %for.body ]
  %arrayidx = getelementptr inbounds [1024 x i32], [1024 x i32]* @A, i64 0, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %cmp3 = icmp slt i32 %0, %max.red.08
  %max.red.0 = select i1 %cmp3, i32 %0, i32 %max.red.08
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 1024
  br i1 %exitcond, label %for.end, label %for.body

for.end:
  ret i32 %max.red.0
}










define i32 @min_red_inverse_select(i32 %max) {
entry:
  br label %for.body

for.body:
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %max.red.08 = phi i32 [ %max, %entry ], [ %max.red.0, %for.body ]
  %arrayidx = getelementptr inbounds [1024 x i32], [1024 x i32]* @A, i64 0, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %cmp3 = icmp sgt i32 %max.red.08, %0
  %max.red.0 = select i1 %cmp3, i32 %0, i32 %max.red.08
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 1024
  br i1 %exitcond, label %for.end, label %for.body

for.end:
  ret i32 %max.red.0
}











define i32 @umax_red(i32 %max) {
entry:
  br label %for.body

for.body:
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %max.red.08 = phi i32 [ %max, %entry ], [ %max.red.0, %for.body ]
  %arrayidx = getelementptr inbounds [1024 x i32], [1024 x i32]* @A, i64 0, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %cmp3 = icmp ugt i32 %0, %max.red.08
  %max.red.0 = select i1 %cmp3, i32 %0, i32 %max.red.08
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 1024
  br i1 %exitcond, label %for.end, label %for.body

for.end:
  ret i32 %max.red.0
}










define i32 @umax_red_inverse_select(i32 %max) {
entry:
  br label %for.body

for.body:
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %max.red.08 = phi i32 [ %max, %entry ], [ %max.red.0, %for.body ]
  %arrayidx = getelementptr inbounds [1024 x i32], [1024 x i32]* @A, i64 0, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %cmp3 = icmp ult i32 %max.red.08, %0
  %max.red.0 = select i1 %cmp3, i32 %0, i32 %max.red.08
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 1024
  br i1 %exitcond, label %for.end, label %for.body

for.end:
  ret i32 %max.red.0
}









define i32 @umin_red(i32 %max) {
entry:
  br label %for.body

for.body:
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %max.red.08 = phi i32 [ %max, %entry ], [ %max.red.0, %for.body ]
  %arrayidx = getelementptr inbounds [1024 x i32], [1024 x i32]* @A, i64 0, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %cmp3 = icmp ult i32 %0, %max.red.08
  %max.red.0 = select i1 %cmp3, i32 %0, i32 %max.red.08
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 1024
  br i1 %exitcond, label %for.end, label %for.body

for.end:
  ret i32 %max.red.0
}










define i32 @umin_red_inverse_select(i32 %max) {
entry:
  br label %for.body

for.body:
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %max.red.08 = phi i32 [ %max, %entry ], [ %max.red.0, %for.body ]
  %arrayidx = getelementptr inbounds [1024 x i32], [1024 x i32]* @A, i64 0, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %cmp3 = icmp ugt i32 %max.red.08, %0
  %max.red.0 = select i1 %cmp3, i32 %0, i32 %max.red.08
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 1024
  br i1 %exitcond, label %for.end, label %for.body

for.end:
  ret i32 %max.red.0
}










define i32 @sge_min_red(i32 %max) {
entry:
  br label %for.body

for.body:
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %max.red.08 = phi i32 [ %max, %entry ], [ %max.red.0, %for.body ]
  %arrayidx = getelementptr inbounds [1024 x i32], [1024 x i32]* @A, i64 0, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %cmp3 = icmp sge i32 %0, %max.red.08
  %max.red.0 = select i1 %cmp3, i32 %max.red.08, i32 %0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 1024
  br i1 %exitcond, label %for.end, label %for.body

for.end:
  ret i32 %max.red.0
}










define i32 @sle_min_red(i32 %max) {
entry:
  br label %for.body

for.body:
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %max.red.08 = phi i32 [ %max, %entry ], [ %max.red.0, %for.body ]
  %arrayidx = getelementptr inbounds [1024 x i32], [1024 x i32]* @A, i64 0, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %cmp3 = icmp sle i32 %0, %max.red.08
  %max.red.0 = select i1 %cmp3, i32 %max.red.08, i32 %0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 1024
  br i1 %exitcond, label %for.end, label %for.body

for.end:
  ret i32 %max.red.0
}










define i32 @uge_min_red(i32 %max) {
entry:
  br label %for.body

for.body:
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %max.red.08 = phi i32 [ %max, %entry ], [ %max.red.0, %for.body ]
  %arrayidx = getelementptr inbounds [1024 x i32], [1024 x i32]* @A, i64 0, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %cmp3 = icmp uge i32 %0, %max.red.08
  %max.red.0 = select i1 %cmp3, i32 %max.red.08, i32 %0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 1024
  br i1 %exitcond, label %for.end, label %for.body

for.end:
  ret i32 %max.red.0
}










define i32 @ule_min_red(i32 %max) {
entry:
  br label %for.body

for.body:
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %max.red.08 = phi i32 [ %max, %entry ], [ %max.red.0, %for.body ]
  %arrayidx = getelementptr inbounds [1024 x i32], [1024 x i32]* @A, i64 0, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %cmp3 = icmp ule i32 %0, %max.red.08
  %max.red.0 = select i1 %cmp3, i32 %max.red.08, i32 %0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 1024
  br i1 %exitcond, label %for.end, label %for.body

for.end:
  ret i32 %max.red.0
}




define i32 @no_red_1(i32 %max) {
entry:
  br label %for.body

for.body:
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %max.red.08 = phi i32 [ %max, %entry ], [ %max.red.0, %for.body ]
  %arrayidx = getelementptr inbounds [1024 x i32], [1024 x i32]* @A, i64 0, i64 %indvars.iv
  %arrayidx1 = getelementptr inbounds [1024 x i32], [1024 x i32]* @A, i64 1, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %1 = load i32, i32* %arrayidx1, align 4
  %cmp3 = icmp sgt i32 %0, %1
  %max.red.0 = select i1 %cmp3, i32 %0, i32 %max.red.08
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 1024
  br i1 %exitcond, label %for.end, label %for.body

for.end:
  ret i32 %max.red.0
}



define i32 @no_red_2(i32 %max) {
entry:
  br label %for.body

for.body:
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %max.red.08 = phi i32 [ %max, %entry ], [ %max.red.0, %for.body ]
  %arrayidx = getelementptr inbounds [1024 x i32], [1024 x i32]* @A, i64 0, i64 %indvars.iv
  %arrayidx1 = getelementptr inbounds [1024 x i32], [1024 x i32]* @A, i64 1, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %1 = load i32, i32* %arrayidx1, align 4
  %cmp3 = icmp sgt i32 %0, %max.red.08
  %max.red.0 = select i1 %cmp3, i32 %0, i32 %1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 1024
  br i1 %exitcond, label %for.end, label %for.body

for.end:
  ret i32 %max.red.0
}













define float @max_red_float(float %max) #0 {
entry:
  br label %for.body

for.body:
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %max.red.08 = phi float [ %max, %entry ], [ %max.red.0, %for.body ]
  %arrayidx = getelementptr inbounds [1024 x float], [1024 x float]* @fA, i64 0, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %cmp3 = fcmp ogt float %0, %max.red.08
  %max.red.0 = select i1 %cmp3, float %0, float %max.red.08
  %indvars.iv.next = add i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 1024
  br i1 %exitcond, label %for.end, label %for.body

for.end:
  ret float %max.red.0
}








define float @max_red_float_ge(float %max) #0 {
entry:
  br label %for.body

for.body:
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %max.red.08 = phi float [ %max, %entry ], [ %max.red.0, %for.body ]
  %arrayidx = getelementptr inbounds [1024 x float], [1024 x float]* @fA, i64 0, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %cmp3 = fcmp oge float %0, %max.red.08
  %max.red.0 = select i1 %cmp3, float %0, float %max.red.08
  %indvars.iv.next = add i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 1024
  br i1 %exitcond, label %for.end, label %for.body

for.end:
  ret float %max.red.0
}








define float @inverted_max_red_float(float %max) #0 {
entry:
  br label %for.body

for.body:
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %max.red.08 = phi float [ %max, %entry ], [ %max.red.0, %for.body ]
  %arrayidx = getelementptr inbounds [1024 x float], [1024 x float]* @fA, i64 0, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %cmp3 = fcmp olt float %0, %max.red.08
  %max.red.0 = select i1 %cmp3, float %max.red.08, float %0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 1024
  br i1 %exitcond, label %for.end, label %for.body

for.end:
  ret float %max.red.0
}








define float @inverted_max_red_float_le(float %max) #0 {
entry:
  br label %for.body

for.body:
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %max.red.08 = phi float [ %max, %entry ], [ %max.red.0, %for.body ]
  %arrayidx = getelementptr inbounds [1024 x float], [1024 x float]* @fA, i64 0, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %cmp3 = fcmp ole float %0, %max.red.08
  %max.red.0 = select i1 %cmp3, float %max.red.08, float %0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 1024
  br i1 %exitcond, label %for.end, label %for.body

for.end:
  ret float %max.red.0
}








define float @unordered_max_red_float(float %max) #0 {
entry:
  br label %for.body

for.body:
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %max.red.08 = phi float [ %max, %entry ], [ %max.red.0, %for.body ]
  %arrayidx = getelementptr inbounds [1024 x float], [1024 x float]* @fA, i64 0, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %cmp3 = fcmp ugt float %0, %max.red.08
  %max.red.0 = select i1 %cmp3, float %0, float %max.red.08
  %indvars.iv.next = add i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 1024
  br i1 %exitcond, label %for.end, label %for.body

for.end:
  ret float %max.red.0
}








define float @unordered_max_red_float_ge(float %max) #0 {
entry:
  br label %for.body

for.body:
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %max.red.08 = phi float [ %max, %entry ], [ %max.red.0, %for.body ]
  %arrayidx = getelementptr inbounds [1024 x float], [1024 x float]* @fA, i64 0, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %cmp3 = fcmp uge float %0, %max.red.08
  %max.red.0 = select i1 %cmp3, float %0, float %max.red.08
  %indvars.iv.next = add i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 1024
  br i1 %exitcond, label %for.end, label %for.body

for.end:
  ret float %max.red.0
}








define float @inverted_unordered_max_red_float(float %max) #0 {
entry:
  br label %for.body

for.body:
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %max.red.08 = phi float [ %max, %entry ], [ %max.red.0, %for.body ]
  %arrayidx = getelementptr inbounds [1024 x float], [1024 x float]* @fA, i64 0, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %cmp3 = fcmp ult float %0, %max.red.08
  %max.red.0 = select i1 %cmp3, float %max.red.08, float %0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 1024
  br i1 %exitcond, label %for.end, label %for.body

for.end:
  ret float %max.red.0
}








define float @inverted_unordered_max_red_float_le(float %max) #0 {
entry:
  br label %for.body

for.body:
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %max.red.08 = phi float [ %max, %entry ], [ %max.red.0, %for.body ]
  %arrayidx = getelementptr inbounds [1024 x float], [1024 x float]* @fA, i64 0, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %cmp3 = fcmp ule float %0, %max.red.08
  %max.red.0 = select i1 %cmp3, float %max.red.08, float %0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 1024
  br i1 %exitcond, label %for.end, label %for.body

for.end:
  ret float %max.red.0
}











define float @min_red_float(float %min) #0 {
entry:
  br label %for.body

for.body:
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %min.red.08 = phi float [ %min, %entry ], [ %min.red.0, %for.body ]
  %arrayidx = getelementptr inbounds [1024 x float], [1024 x float]* @fA, i64 0, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %cmp3 = fcmp olt float %0, %min.red.08
  %min.red.0 = select i1 %cmp3, float %0, float %min.red.08
  %indvars.iv.next = add i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 1024
  br i1 %exitcond, label %for.end, label %for.body

for.end:
  ret float %min.red.0
}








define float @min_red_float_le(float %min) #0 {
entry:
  br label %for.body

for.body:
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %min.red.08 = phi float [ %min, %entry ], [ %min.red.0, %for.body ]
  %arrayidx = getelementptr inbounds [1024 x float], [1024 x float]* @fA, i64 0, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %cmp3 = fcmp ole float %0, %min.red.08
  %min.red.0 = select i1 %cmp3, float %0, float %min.red.08
  %indvars.iv.next = add i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 1024
  br i1 %exitcond, label %for.end, label %for.body

for.end:
  ret float %min.red.0
}








define float @inverted_min_red_float(float %min) #0 {
entry:
  br label %for.body

for.body:
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %min.red.08 = phi float [ %min, %entry ], [ %min.red.0, %for.body ]
  %arrayidx = getelementptr inbounds [1024 x float], [1024 x float]* @fA, i64 0, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %cmp3 = fcmp ogt float %0, %min.red.08
  %min.red.0 = select i1 %cmp3, float %min.red.08, float %0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 1024
  br i1 %exitcond, label %for.end, label %for.body

for.end:
  ret float %min.red.0
}








define float @inverted_min_red_float_ge(float %min) #0 {
entry:
  br label %for.body

for.body:
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %min.red.08 = phi float [ %min, %entry ], [ %min.red.0, %for.body ]
  %arrayidx = getelementptr inbounds [1024 x float], [1024 x float]* @fA, i64 0, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %cmp3 = fcmp oge float %0, %min.red.08
  %min.red.0 = select i1 %cmp3, float %min.red.08, float %0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 1024
  br i1 %exitcond, label %for.end, label %for.body

for.end:
  ret float %min.red.0
}








define float @unordered_min_red_float(float %min) #0 {
entry:
  br label %for.body

for.body:
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %min.red.08 = phi float [ %min, %entry ], [ %min.red.0, %for.body ]
  %arrayidx = getelementptr inbounds [1024 x float], [1024 x float]* @fA, i64 0, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %cmp3 = fcmp ult float %0, %min.red.08
  %min.red.0 = select i1 %cmp3, float %0, float %min.red.08
  %indvars.iv.next = add i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 1024
  br i1 %exitcond, label %for.end, label %for.body

for.end:
  ret float %min.red.0
}








define float @unordered_min_red_float_le(float %min) #0 {
entry:
  br label %for.body

for.body:
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %min.red.08 = phi float [ %min, %entry ], [ %min.red.0, %for.body ]
  %arrayidx = getelementptr inbounds [1024 x float], [1024 x float]* @fA, i64 0, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %cmp3 = fcmp ule float %0, %min.red.08
  %min.red.0 = select i1 %cmp3, float %0, float %min.red.08
  %indvars.iv.next = add i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 1024
  br i1 %exitcond, label %for.end, label %for.body

for.end:
  ret float %min.red.0
}








define float @inverted_unordered_min_red_float(float %min) #0 {
entry:
  br label %for.body

for.body:
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %min.red.08 = phi float [ %min, %entry ], [ %min.red.0, %for.body ]
  %arrayidx = getelementptr inbounds [1024 x float], [1024 x float]* @fA, i64 0, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %cmp3 = fcmp ugt float %0, %min.red.08
  %min.red.0 = select i1 %cmp3, float %min.red.08, float %0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 1024
  br i1 %exitcond, label %for.end, label %for.body

for.end:
  ret float %min.red.0
}








define float @inverted_unordered_min_red_float_ge(float %min) #0 {
entry:
  br label %for.body

for.body:
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %min.red.08 = phi float [ %min, %entry ], [ %min.red.0, %for.body ]
  %arrayidx = getelementptr inbounds [1024 x float], [1024 x float]* @fA, i64 0, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %cmp3 = fcmp uge float %0, %min.red.08
  %min.red.0 = select i1 %cmp3, float %min.red.08, float %0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 1024
  br i1 %exitcond, label %for.end, label %for.body

for.end:
  ret float %min.red.0
}









define double @min_red_double(double %min) #0 {
entry:
  br label %for.body

for.body:
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %min.red.08 = phi double [ %min, %entry ], [ %min.red.0, %for.body ]
  %arrayidx = getelementptr inbounds [1024 x double], [1024 x double]* @dA, i64 0, i64 %indvars.iv
  %0 = load double, double* %arrayidx, align 4
  %cmp3 = fcmp olt double %0, %min.red.08
  %min.red.0 = select i1 %cmp3, double %0, double %min.red.08
  %indvars.iv.next = add i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 1024
  br i1 %exitcond, label %for.end, label %for.body

for.end:
  ret double %min.red.0
}






define float @max_red_float_nans(float %max) {
entry:
  br label %for.body

for.body:
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %max.red.08 = phi float [ %max, %entry ], [ %max.red.0, %for.body ]
  %arrayidx = getelementptr inbounds [1024 x float], [1024 x float]* @fA, i64 0, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %cmp3 = fcmp ogt float %0, %max.red.08
  %max.red.0 = select i1 %cmp3, float %0, float %max.red.08
  %indvars.iv.next = add i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 1024
  br i1 %exitcond, label %for.end, label %for.body

for.end:
  ret float %max.red.0
}


attributes #0 = { "no-nans-fp-math"="true" }
