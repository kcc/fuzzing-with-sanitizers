

target datalayout = "e-m:e-p:32:32-i1:32-i64:64-a:0-n32"





















define void @test(i8* nocapture %dst, i32 %stride, i32 %bs) {
entry:
  %cmp20 = icmp sgt i32 %bs, -1
  br i1 %cmp20, label %for.cond1.preheader.lr.ph, label %for.end9

for.cond1.preheader.lr.ph:
  %cmp218 = icmp slt i32 0, %bs
  br label %for.cond1.preheader

for.cond1.preheader:
  %r.021 = phi i32 [ %bs, %for.cond1.preheader.lr.ph ], [ %dec, %for.inc8 ]
  br i1 %cmp218, label %for.body3.lr.ph, label %for.inc8

for.body3.lr.ph:
  %add = add nsw i32 %r.021, 1
  %mul = mul nsw i32 %add, %stride
  %add4 = add i32 %mul, -1
  %mul5 = mul nsw i32 %r.021, %stride
  br label %for.body3

for.body3:
  %c.019 = phi i32 [ 0, %for.body3.lr.ph ], [ %inc, %for.body3 ]
  %sub = add i32 %add4, %c.019
  %arrayidx = getelementptr inbounds i8, i8* %dst, i32 %sub
  %0 = load i8, i8* %arrayidx, align 1
  %add6 = add nsw i32 %c.019, %mul5
  %arrayidx7 = getelementptr inbounds i8, i8* %dst, i32 %add6
  store i8 %0, i8* %arrayidx7, align 1
  %inc = add nsw i32 %c.019, 1
  %cmp2 = icmp slt i32 %inc, %bs
  br i1 %cmp2, label %for.body3, label %for.cond1.for.inc8_crit_edge

for.cond1.for.inc8_crit_edge:
  br label %for.inc8

for.inc8:
  %dec = add nsw i32 %r.021, -1
  %cmp = icmp sgt i32 %dec, -1
  br i1 %cmp, label %for.cond1.preheader, label %for.cond.for.end9_crit_edge

for.cond.for.end9_crit_edge:
  br label %for.end9

for.end9:
  ret void
}
