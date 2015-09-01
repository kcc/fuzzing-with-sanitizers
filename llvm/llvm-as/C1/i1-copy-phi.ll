











define void @br_i1_phi(i32 %arg, i1 %arg1) #0 {
bb:
  br i1 %arg1, label %bb2, label %bb3

bb2:                                              
  br label %bb3

bb3:                                              
  %tmp = phi i1 [ true, %bb2 ], [ false, %bb ]
  br i1 %tmp, label %bb4, label %bb6

bb4:                                              
  %tmp5 = mul i32 undef, %arg
  br label %bb6

bb6:                                              
  ret void
}
