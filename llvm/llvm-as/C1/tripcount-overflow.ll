
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"






















define i32 @foo(i32 %N) {
entry:
  br label %while.body

while.body:                                       
  %i = phi i32 [ 0, %entry ], [ %inc, %while.body ]
  %cmp = icmp eq i32 %i, %N
  %inc = add i32 %i, 1
  br i1 %cmp, label %while.end, label %while.body

while.end:                                        
  ret i32 %i
}
