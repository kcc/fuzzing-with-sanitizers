

target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx"

@float_array = common global [10000 x float] zeroinitializer, align 16
@unsigned_array = common global [10000 x i32] zeroinitializer, align 16





define void @convert(i32 %N) {
entry:
  %0 = icmp eq i32 %N, 0
  br i1 %0, label %for.end, label %for.body.preheader

for.body.preheader:                               
  br label %for.body

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr inbounds [10000 x float], [10000 x float]* @float_array, i64 0, i64 %indvars.iv
  %1 = load float, float* %arrayidx, align 4
  %conv = fptoui float %1 to i32
  %arrayidx2 = getelementptr inbounds [10000 x i32], [10000 x i32]* @unsigned_array, i64 0, i64 %indvars.iv
  store i32 %conv, i32* %arrayidx2, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %N
  br i1 %exitcond, label %for.end.loopexit, label %for.body

for.end.loopexit:                                 
  br label %for.end

for.end:                                          
  ret void
}

