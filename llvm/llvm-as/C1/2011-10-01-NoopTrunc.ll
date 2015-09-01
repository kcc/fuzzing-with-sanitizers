






target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"








define i32 @test(i8* %arr) nounwind uwtable readnone {
entry:
  br label %for.body

for.body:                                         
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %sum.02 = phi i32 [ 0, %entry ], [ %add, %for.body ]
  %arrayidx = getelementptr inbounds i8, i8* %arr, i64 %indvars.iv
  %0 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %0 to i32
  %add = add nsw i32 %conv, %sum.02
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv1 = trunc i64 %indvars.iv.next to i32
  %exitcond2 = icmp eq i32 %lftr.wideiv1, 19
  br i1 %exitcond2, label %for.end, label %for.body

for.end:                                          
  %add.lcssa = phi i32 [ %add, %for.body ]
  ret i32 %add.lcssa
}
