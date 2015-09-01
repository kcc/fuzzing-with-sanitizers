










@flags = external global [8192 x i8], align 16 

define void @foo() nounwind {
entry:
  br label %bb

bb:                                               
  br label %bb7

bb7:                                              
  %tmp8 = phi i64 [ %tmp18, %bb17 ], [ 2, %bb ]   
  br label %bb10

bb10:                                             
  br label %bb11

bb11:                                             
  %tmp12 = phi i64 [ %tmp14, %bb11 ], [ 2, %bb10 ] 
  %tmp13 = getelementptr inbounds [8192 x i8], [8192 x i8]* @flags, i64 0, i64 %tmp12 
  store i8 0, i8* %tmp13, align 1
  %tmp14 = add nsw i64 %tmp12, %tmp8              
  %tmp15 = icmp slt i64 %tmp14, 8192              
  br i1 %tmp15, label %bb11, label %bb16

bb16:                                             
  br label %bb17

bb17:                                             
  %tmp18 = add nsw i64 %tmp8, 1                   
  %tmp19 = icmp slt i64 %tmp18, 8192              
  br i1 %tmp19, label %bb7, label %bb20

bb20:                                             
  br label %bb21

bb21:                                             
  ret void
}
