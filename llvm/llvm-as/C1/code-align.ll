











target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"


define signext i32 @foo(i32 signext %x) #0 {
entry:
  %mul = shl nsw i32 %x, 1
  ret i32 %mul










}


define void @loop(i32 signext %x, i32* nocapture %a) #1 {
entry:
  br label %vector.body

















vector.body:                                      
  %index = phi i64 [ 0, %entry ], [ %index.next, %vector.body ]
  %induction45 = or i64 %index, 1
  %0 = getelementptr inbounds i32, i32* %a, i64 %index
  %1 = getelementptr inbounds i32, i32* %a, i64 %induction45
  %2 = load i32, i32* %0, align 4
  %3 = load i32, i32* %1, align 4
  %4 = add nsw i32 %2, 4
  %5 = add nsw i32 %3, 4
  %6 = mul nsw i32 %4, 3
  %7 = mul nsw i32 %5, 3
  store i32 %6, i32* %0, align 4
  store i32 %7, i32* %1, align 4
  %index.next = add i64 %index, 2
  %8 = icmp eq i64 %index.next, 2048
  br i1 %8, label %for.end, label %vector.body

for.end:                                          
  ret void
}


define void @sloop(i32 signext %x, i32* nocapture %a) #1 {
entry:
  br label %for.body














for.body:                                         
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %0, 4
  %mul = mul nsw i32 %add, 3
  store i32 %mul, i32* %arrayidx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 2048
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }

