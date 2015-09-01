


define void @a() nounwind {
entry:
  br i1 undef, label %bb37, label %bb1.i

bb1.i:                                            
  %indvar = phi i64 [ %indvar.next, %bb1.i ], [ 0, %entry ] 
  %indvar.next = add i64 %indvar, 1               
  %exitcond = icmp eq i64 %indvar.next, 576       
  br i1 %exitcond, label %bb37, label %bb1.i

bb37:                                             
  br label %return


return:                                           
  ret void
}
