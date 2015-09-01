






define i32 @test1(i32* nocapture %a) nounwind uwtable readonly {
entry:
  br label %for.body

for.body:                                         
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %sum.01 = phi i32 [ 0, %entry ], [ %add, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4

  
  
  %1 = add nsw i32 %0, 2
  %2 = add nsw i32 %1, 4
  %3 = add nsw i32 %2, 4
  %4 = add nsw i32 %3, 4
  %5 = add nsw i32 %4, 4
  %6 = add nsw i32 %5, 4
  %7 = add nsw i32 %6, 4
  %8 = add nsw i32 %7, 4
  %9 = add nsw i32 %8, 4
  %10 = add nsw i32 %9, 4
  %ca = icmp sgt i32 %10, -7
  call void @llvm.assume(i1 %ca)

  %add = add nsw i32 %0, %sum.01
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 5
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret i32 %add
}

declare void @llvm.assume(i1) nounwind

