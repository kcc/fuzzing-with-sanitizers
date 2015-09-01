
target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

@phasor = external constant [4096 x i32]


define void @test(i32* nocapture %out, i32 zeroext %step_size) #0 {
entry:
  %shl = shl i32 %step_size, 2
  %idxprom = zext i32 %shl to i64
  br label %for.body







for.body:                                         
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %0 = trunc i64 %indvars.iv to i32
  %shl1 = shl i32 %0, %step_size
  %idxprom2 = sext i32 %shl1 to i64
  %arrayidx.sum = add nsw i64 %idxprom2, %idxprom
  %arrayidx3 = getelementptr inbounds [4096 x i32], [4096 x i32]* @phasor, i64 0, i64 %arrayidx.sum
  %1 = load i32, i32* %arrayidx3, align 4
  %arrayidx5 = getelementptr inbounds i32, i32* %out, i64 %indvars.iv
  store i32 %1, i32* %arrayidx5, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %cmp = icmp slt i64 %indvars.iv.next, 1020
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          
  ret void
}

attributes #0 = { nounwind }

