






define i32 @main() nounwind {
entry:
  br label %for.cond

for.cond:                                         
  %indvar1 = phi i64 [ %indvar.next2, %for.inc ], [ 0, %entry ] 
  %exitcond = icmp ne i64 %indvar1, 1024          
  br i1 %exitcond, label %for.body, label %for.end

for.body:                                         
  br label %for.inc

for.inc:                                          
  %indvar.next2 = add i64 %indvar1, 1             
  br label %for.cond

for.end:                                          
  ret i32 0
}
