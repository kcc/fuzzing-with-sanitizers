














target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define void @f(i32* %A, i32 %N) {
bb:
  br label %bb1

bb1:                                              
  %i.0 = phi i32 [ 0, %bb ], [ %tmp23, %bb2 ]
  %i.0.1 = sext i32 %i.0 to i64
  %tmp = icmp slt i32 %i.0, %N
  br i1 %tmp, label %bb2, label %bb24

bb2:                                              
  %tmp3 = add nuw nsw i32 %i.0, 3
  %tmp4 = icmp slt i32 %tmp3, %N
  %tmp5 = sext i32 %tmp3 to i64
  %tmp6 = sext i32 %N to i64
  %tmp9 = select i1 %tmp4, i64 %tmp5, i64 %tmp6



  %tmp11 = getelementptr inbounds i32, i32* %A, i64 %tmp9
  %tmp12 = load i32, i32* %tmp11, align 4
  %tmp13 = shl nsw i32 %tmp12, 1
  %tmp14 = icmp sge i32 3, %i.0
  %tmp17 = add nsw i64 %i.0.1, -3
  %tmp19 = select i1 %tmp14, i64 0, i64 %tmp17



  %tmp21 = getelementptr inbounds i32, i32* %A, i64 %tmp19
  store i32 %tmp13, i32* %tmp21, align 4
  %tmp23 = add nuw nsw i32 %i.0, 1
  br label %bb1

bb24:                                             
  ret void
}
