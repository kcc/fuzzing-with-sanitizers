






target datalayout = "n8:16:32:64"







define void @dummyIV() nounwind {
entry:
  br label %loop

loop:
  %i.01 = phi i32 [ -39, %entry ], [ %inc, %loop ]
  %conv = sitofp i32 %i.01 to double
  %inc = add nsw i32 %i.01, 1
  br i1 undef, label %loop, label %for.end

for.end:
  unreachable
}





define void @doubleIV() nounwind {
entry:
  br label %loop

loop:
  %i.01 = phi i32 [ -39, %entry ], [ %inc, %loop ]
  %conv = sitofp i32 %i.01 to double
  %div = fdiv double %conv, 4.000000e+01
  %inc = add nsw i32 %i.01, 1
  br i1 undef, label %loop, label %for.end

for.end:
  unreachable
}
