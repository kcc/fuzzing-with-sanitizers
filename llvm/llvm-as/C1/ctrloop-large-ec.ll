
target datalayout = "E-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v128:128:128-n32"
target triple = "powerpc-unknown-linux-gnu"

define void @fn1() {
entry:
  br i1 undef, label %for.end, label %for.body

for.body:                                         
  %inc3 = phi i64 [ %inc, %for.body ], [ undef, %entry ]
  %inc = add nsw i64 %inc3, 1
  %tobool = icmp eq i64 %inc, 0
  br i1 %tobool, label %for.end, label %for.body

for.end:                                          
  ret void
}






