

target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"


define void @bar(void (...)* nocapture %x) #0 {
entry:
  %callee.knr.cast = bitcast void (...)* %x to void ()*
  br label %for.body
























for.body:                                         
  %i.02 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  tail call void %callee.knr.cast() #0
  %inc = add nuw nsw i32 %i.02, 1
  %exitcond = icmp eq i32 %inc, 1600000000
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}

attributes #0 = { nounwind }

