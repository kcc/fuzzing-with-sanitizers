








define i32 @t() nounwind {

entry:
  br label %bb2

bb:                                               
  %0 = tail call i32 @rand() nounwind
  %1 = icmp eq i32 %0, 50
  br i1 %1, label %bb3, label %bb1

bb1:                                              
  %tmp = tail call i32 @puts() nounwind
  %indvar.next = add i32 %indvar, 1
  br label %bb2

bb2:                                              




  %indvar = phi i32 [ %indvar.next, %bb1 ], [ 0, %entry ]
  %tries.0 = sub i32 2147483647, %indvar
  %tmp1 = icmp sgt i32 %tries.0, 0
  br i1 %tmp1, label %bb, label %bb3

bb3:                                              
  ret i32 0
}

declare i32 @rand()

declare i32 @puts() nounwind
