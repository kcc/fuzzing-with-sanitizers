

target datalayout = "e-m:e-i64:64-i128:128-n32:64-S128"
























@AB = common global [1024 x i32] zeroinitializer, align 4
@CD = common global [1024 x i32] zeroinitializer, align 4

define void @test_array_load2_store2(i32 %C, i32 %D) {
entry:
  br label %for.body

for.body:                                         
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx0 = getelementptr inbounds [1024 x i32], [1024 x i32]* @AB, i64 0, i64 %indvars.iv
  %tmp = load i32, i32* %arrayidx0, align 4
  %tmp1 = or i64 %indvars.iv, 1
  %arrayidx1 = getelementptr inbounds [1024 x i32], [1024 x i32]* @AB, i64 0, i64 %tmp1
  %tmp2 = load i32, i32* %arrayidx1, align 4
  %add = add nsw i32 %tmp, %C
  %mul = mul nsw i32 %tmp2, %D
  %arrayidx2 = getelementptr inbounds [1024 x i32], [1024 x i32]* @CD, i64 0, i64 %indvars.iv
  store i32 %add, i32* %arrayidx2, align 4
  %arrayidx3 = getelementptr inbounds [1024 x i32], [1024 x i32]* @CD, i64 0, i64 %tmp1
  store i32 %mul, i32* %arrayidx3, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %cmp = icmp slt i64 %indvars.iv.next, 1024
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          
  ret void
}




























%struct.ST3 = type { i32, i32, i32 }
@A = common global [3072 x i32] zeroinitializer, align 4
@S = common global [1024 x %struct.ST3] zeroinitializer, align 4

define void @test_struct_array_load3_store3() {
entry:
  br label %for.body

for.body:                                         
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %ptr.016 = phi i32* [ getelementptr inbounds ([3072 x i32], [3072 x i32]* @A, i64 0, i64 0), %entry ], [ %incdec.ptr2, %for.body ]
  %incdec.ptr = getelementptr inbounds i32, i32* %ptr.016, i64 1
  %tmp = load i32, i32* %ptr.016, align 4
  %incdec.ptr1 = getelementptr inbounds i32, i32* %ptr.016, i64 2
  %tmp1 = load i32, i32* %incdec.ptr, align 4
  %incdec.ptr2 = getelementptr inbounds i32, i32* %ptr.016, i64 3
  %tmp2 = load i32, i32* %incdec.ptr1, align 4
  %add = add nsw i32 %tmp, 1
  %x = getelementptr inbounds [1024 x %struct.ST3], [1024 x %struct.ST3]* @S, i64 0, i64 %indvars.iv, i32 0
  store i32 %add, i32* %x, align 4
  %add3 = add nsw i32 %tmp1, 2
  %y = getelementptr inbounds [1024 x %struct.ST3], [1024 x %struct.ST3]* @S, i64 0, i64 %indvars.iv, i32 1
  store i32 %add3, i32* %y, align 4
  %add6 = add nsw i32 %tmp2, 3
  %z = getelementptr inbounds [1024 x %struct.ST3], [1024 x %struct.ST3]* @S, i64 0, i64 %indvars.iv, i32 2
  store i32 %add6, i32* %z, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 1024
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}































%struct.ST4 = type { i32, i32, i32, i32 }

define i32 @test_struct_load4(%struct.ST4* nocapture readonly %S) {
entry:
  br label %for.body

for.body:                                         
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %r.022 = phi i32 [ 0, %entry ], [ %sub8, %for.body ]
  %x = getelementptr inbounds %struct.ST4, %struct.ST4* %S, i64 %indvars.iv, i32 0
  %tmp = load i32, i32* %x, align 4
  %add = add nsw i32 %tmp, %r.022
  %y = getelementptr inbounds %struct.ST4, %struct.ST4* %S, i64 %indvars.iv, i32 1
  %tmp1 = load i32, i32* %y, align 4
  %sub = sub i32 %add, %tmp1
  %z = getelementptr inbounds %struct.ST4, %struct.ST4* %S, i64 %indvars.iv, i32 2
  %tmp2 = load i32, i32* %z, align 4
  %add5 = add nsw i32 %sub, %tmp2
  %w = getelementptr inbounds %struct.ST4, %struct.ST4* %S, i64 %indvars.iv, i32 3
  %tmp3 = load i32, i32* %w, align 4
  %sub8 = sub i32 %add5, %tmp3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 1024
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret i32 %sub8
}

























define void @test_struct_store4(i32* noalias nocapture readonly %A, %struct.ST4* noalias nocapture %B) {
entry:
  br label %for.body

for.cond.cleanup:                                 
  ret void

for.body:                                         
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %ptr.024 = phi i32* [ %A, %entry ], [ %incdec.ptr, %for.body ]
  %incdec.ptr = getelementptr inbounds i32, i32* %ptr.024, i64 1
  %tmp = load i32, i32* %ptr.024, align 4
  %add = add nsw i32 %tmp, 1
  %x = getelementptr inbounds %struct.ST4, %struct.ST4* %B, i64 %indvars.iv, i32 0
  store i32 %add, i32* %x, align 4
  %mul = shl nsw i32 %tmp, 1
  %y = getelementptr inbounds %struct.ST4, %struct.ST4* %B, i64 %indvars.iv, i32 1
  store i32 %mul, i32* %y, align 4
  %add3 = add nsw i32 %tmp, 3
  %z = getelementptr inbounds %struct.ST4, %struct.ST4* %B, i64 %indvars.iv, i32 2
  store i32 %add3, i32* %z, align 4
  %add6 = add nsw i32 %tmp, 4
  %w = getelementptr inbounds %struct.ST4, %struct.ST4* %B, i64 %indvars.iv, i32 3
  store i32 %add6, i32* %w, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 1024
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}































%struct.ST2 = type { i32, i32 }

define void @test_reversed_load2_store2(%struct.ST2* noalias nocapture readonly %A, %struct.ST2* noalias nocapture %B) {
entry:
  br label %for.body

for.cond.cleanup:                                 
  ret void

for.body:                                         
  %indvars.iv = phi i64 [ 1023, %entry ], [ %indvars.iv.next, %for.body ]
  %x = getelementptr inbounds %struct.ST2, %struct.ST2* %A, i64 %indvars.iv, i32 0
  %tmp = load i32, i32* %x, align 4
  %tmp1 = trunc i64 %indvars.iv to i32
  %add = add nsw i32 %tmp, %tmp1
  %y = getelementptr inbounds %struct.ST2, %struct.ST2* %A, i64 %indvars.iv, i32 1
  %tmp2 = load i32, i32* %y, align 4
  %sub = sub nsw i32 %tmp2, %tmp1
  %x5 = getelementptr inbounds %struct.ST2, %struct.ST2* %B, i64 %indvars.iv, i32 0
  store i32 %add, i32* %x5, align 4
  %y8 = getelementptr inbounds %struct.ST2, %struct.ST2* %B, i64 %indvars.iv, i32 1
  store i32 %sub, i32* %y8, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %cmp = icmp sgt i64 %indvars.iv, 0
  br i1 %cmp, label %for.body, label %for.cond.cleanup
}















define void @even_load(i32* noalias nocapture readonly %A, i32* noalias nocapture %B) {
entry:
  br label %for.body

for.cond.cleanup:                                 
  ret void

for.body:                                         
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %indvars.iv
  %tmp = load i32, i32* %arrayidx, align 4
  %mul = shl nsw i32 %tmp, 1
  %tmp1 = lshr exact i64 %indvars.iv, 1
  %arrayidx2 = getelementptr inbounds i32, i32* %B, i64 %tmp1
  store i32 %mul, i32* %arrayidx2, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %cmp = icmp ult i64 %indvars.iv.next, 1024
  br i1 %cmp, label %for.body, label %for.cond.cleanup
}

















define void @mixed_load2_store2(i32* noalias nocapture readonly %A, i32* noalias nocapture %B) {
entry:
  br label %for.body

for.cond.cleanup:                                 
  ret void

for.body:                                         
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %indvars.iv
  %tmp = load i32, i32* %arrayidx, align 4
  %tmp1 = or i64 %indvars.iv, 1
  %arrayidx2 = getelementptr inbounds i32, i32* %A, i64 %tmp1
  %tmp2 = load i32, i32* %arrayidx2, align 4
  %mul = mul nsw i32 %tmp2, %tmp
  %arrayidx4 = getelementptr inbounds i32, i32* %B, i64 %indvars.iv
  store i32 %mul, i32* %arrayidx4, align 4
  %tmp3 = load i32, i32* %arrayidx, align 4
  %tmp4 = load i32, i32* %arrayidx2, align 4
  %add10 = add nsw i32 %tmp4, %tmp3
  %arrayidx13 = getelementptr inbounds i32, i32* %B, i64 %tmp1
  store i32 %add10, i32* %arrayidx13, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %cmp = icmp ult i64 %indvars.iv.next, 1024
  br i1 %cmp, label %for.body, label %for.cond.cleanup
}



















define void @mixed_load3_store3(i32* nocapture %A) {
entry:
  br label %for.body

for.cond.cleanup:                                 
  ret void

for.body:                                         
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %A.addr.012 = phi i32* [ %A, %entry ], [ %incdec.ptr3, %for.body ]
  %incdec.ptr = getelementptr inbounds i32, i32* %A.addr.012, i64 1
  %tmp = load i32, i32* %A.addr.012, align 4
  %add = add i32 %tmp, %i.013
  store i32 %add, i32* %A.addr.012, align 4
  %incdec.ptr1 = getelementptr inbounds i32, i32* %A.addr.012, i64 2
  %tmp1 = load i32, i32* %incdec.ptr, align 4
  %add2 = add i32 %tmp1, %i.013
  store i32 %add2, i32* %incdec.ptr, align 4
  %incdec.ptr3 = getelementptr inbounds i32, i32* %A.addr.012, i64 3
  %tmp2 = load i32, i32* %incdec.ptr1, align 4
  %add4 = add i32 %tmp2, %i.013
  store i32 %add4, i32* %incdec.ptr1, align 4
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond = icmp eq i32 %inc, 1024
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}































%struct.IntFloat = type { i32, float }

@SA = common global i32 0, align 4
@SB = common global float 0.000000e+00, align 4

define void @int_float_struct(%struct.IntFloat* nocapture readonly %A) #0 {
entry:
  br label %for.body

for.cond.cleanup:                                 
  store i32 %add, i32* @SA, align 4
  store float %add3, float* @SB, align 4
  ret void

for.body:                                         
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %SumB.014 = phi float [ undef, %entry ], [ %add3, %for.body ]
  %SumA.013 = phi i32 [ undef, %entry ], [ %add, %for.body ]
  %a = getelementptr inbounds %struct.IntFloat, %struct.IntFloat* %A, i64 %indvars.iv, i32 0
  %tmp = load i32, i32* %a, align 4
  %add = add nsw i32 %tmp, %SumA.013
  %b = getelementptr inbounds %struct.IntFloat, %struct.IntFloat* %A, i64 %indvars.iv, i32 1
  %tmp1 = load float, float* %b, align 4
  %add3 = fadd fast float %SumB.014, %tmp1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 1024
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}

attributes #0 = { "unsafe-fp-math"="true" }
