



target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios"




define void @tst1(i1 %tst, i32 %true) {
entry:
  br i1 %tst, label %for.end, label %for.body

for.body:                                         
  %result.09 = phi i32 [ %add2.result.0, %for.body ], [ 1, %entry ]
  %i.08 = phi i32 [ %inc, %for.body ], [ 2, %entry ]
  %and = and i32 %i.08, 1
  %cmp1 = icmp eq i32 %and, 0
  %add2.result.0 = select i1 %cmp1, i32 %true, i32 %result.09
  %inc = add nsw i32 %i.08, 1
  %cmp = icmp slt i32 %i.08, %true
  br i1 %cmp, label %for.body, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       
  %add2.result.0.lcssa = phi i32 [ %add2.result.0, %for.body ]
  br label %for.end

for.end:                                          
  ret void
}
