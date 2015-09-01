

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"








define void @multi_int_induction(i32* %A, i32 %N) {
for.body.lr.ph:
  br label %for.body

for.body:
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %count.09 = phi i32 [ 190, %for.body.lr.ph ], [ %inc, %for.body ]
  %arrayidx2 = getelementptr inbounds i32, i32* %A, i64 %indvars.iv
  store i32 %count.09, i32* %arrayidx2, align 4
  %inc = add nsw i32 %count.09, 1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp ne i32 %lftr.wideiv, %N
  br i1 %exitcond, label %for.body, label %for.end

for.end:
  ret void
}

















define void @scalar_use(float* %a, float %b, i64 %offset, i64 %offset2, i64 %n) {
entry:
  br label %for.body

for.body:
  %iv = phi i64 [ 0, %entry ], [ %iv.next, %for.body ]
  %ind.sum = add i64 %iv, %offset
  %arr.idx = getelementptr inbounds float, float* %a, i64 %ind.sum
  %l1 = load float, float* %arr.idx, align 4
  %ind.sum2 = add i64 %iv, %offset2
  %arr.idx2 = getelementptr inbounds float, float* %a, i64 %ind.sum2
  %l2 = load float, float* %arr.idx2, align 4
  %m = fmul fast float %b, %l2
  %ad = fadd fast float %l1, %m
  store float %ad, float* %arr.idx, align 4
  %iv.next = add nuw nsw i64 %iv, 1
  %exitcond = icmp eq i64 %iv.next, %n
  br i1 %exitcond, label %loopexit, label %for.body

loopexit:
  ret void
}










define i32 @i8_loop() nounwind readnone ssp uwtable {
  br label %1


  %a.0 = phi i32 [ 1, %0 ], [ %2, %1 ]
  %b.0 = phi i8 [ 0, %0 ], [ %3, %1 ]
  %2 = and i32 %a.0, 4
  %3 = add i8 %b.0, -1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %1


  ret i32 %2
}




define i32 @i16_loop() nounwind readnone ssp uwtable {
  br label %1


  %a.0 = phi i32 [ 1, %0 ], [ %2, %1 ]
  %b.0 = phi i16 [ 0, %0 ], [ %3, %1 ]
  %2 = and i32 %a.0, 4
  %3 = add i16 %b.0, -1
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %5, label %1


  ret i32 %2
}












define i32 @max_i32_backedgetaken() nounwind readnone ssp uwtable {

  br label %1


  %a.0 = phi i32 [ 1, %0 ], [ %2, %1 ]
  %b.0 = phi i32 [ 0, %0 ], [ %3, %1 ]
  %2 = and i32 %a.0, 4
  %3 = add i32 %b.0, -1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %1


  ret i32 %2
}













@e = global i8 1, align 1
@d = common global i32 0, align 4
@c = common global i32 0, align 4
define i32 @testoverflowcheck() {
entry:
  %.pr.i = load i8, i8* @e, align 1
  %0 = load i32, i32* @d, align 4
  %c.promoted.i = load i32, i32* @c, align 4
  br label %cond.end.i

cond.end.i:
  %inc4.i = phi i8 [ %.pr.i, %entry ], [ %inc.i, %cond.end.i ]
  %and3.i = phi i32 [ %c.promoted.i, %entry ], [ %and.i, %cond.end.i ]
  %and.i = and i32 %0, %and3.i
  %inc.i = add i8 %inc4.i, 1
  %tobool.i = icmp eq i8 %inc.i, 0
  br i1 %tobool.i, label %loopexit, label %cond.end.i

loopexit:
  ret i32 %and.i
}
