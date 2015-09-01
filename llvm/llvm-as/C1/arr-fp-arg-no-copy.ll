
target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"


define void @bar() #0 {
entry:
  tail call void @xxx([2 x i64] [i64 4607182418800017408, i64 4611686018427387904]) #0
  ret void








}

declare void @xxx([2 x i64])

attributes #0 = { nounwind }

