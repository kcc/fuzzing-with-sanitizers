


define void @f() {
entry:
  br label %for.pre

notintree:                                        
  br label %ret

for.pre:                                          
  br label %for

for:                                              
  %indvar = phi i64 [ 0, %for.pre ], [ %indvar.next, %for.inc ]
  %exitcond = icmp ne i64 %indvar, 200
  br i1 %exitcond, label %for.inc, label %ret

for.inc:                                          
  %indvar.next = add i64 %indvar, 1
  br label %for

ret:                                              
  ret void
}




