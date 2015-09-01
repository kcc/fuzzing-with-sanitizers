



define void @blam(i32 addrspace(1)* nocapture %arg, float %arg1, float %arg2) {

bb:
  br label %bb3


bb3:                                              
  %tmp = phi i64 [ 0, %bb ], [ %tmp8, %bb7 ]
  %tmp4 = fcmp ult float %arg1, 3.500000e+00


  br i1 %tmp4, label %bb7, label %bb5


bb5:                                              
  %tmp6 = fcmp olt float 0.000000e+00, %arg2

  br i1 %tmp6, label %bb10, label %bb7





bb7:                                              
  %tmp8 = add nuw nsw i64 %tmp, 1
  %tmp9 = icmp slt i64 %tmp8, 5

  br i1 %tmp9, label %bb3, label %bb10





bb10:                                             
  %tmp11 = phi i32 [ 15, %bb5 ], [ 255, %bb7 ]
  store i32 %tmp11, i32 addrspace(1)* %arg, align 4
  ret void
}
