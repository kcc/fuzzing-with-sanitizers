















define i32 @test0(i32 %n, i32 %m, i32* nocapture %a, i32* nocapture %b) {
entry:
  %cmp = icmp sgt i32 %n, 0
  br i1 %cmp, label %L0, label %L1, !prof !0

L0:                                          
  store i32 12, i32* %a, align 4
  store i32 18, i32* %b, align 4
  %cmp1 = icmp eq i32 %m, 8
  br i1 %cmp1, label %L2, label %L3, !prof !1

L1:                                          
  store i32 14, i32* %a, align 4
  store i32 18, i32* %b, align 4
  %cmp3 = icmp eq i32 %m, 8
  br i1 %cmp3, label %L2, label %L3, !prof !2

L2:                                               
  br label %L3

L3:                                           
  %retval.0 = phi i32 [ 100, %L2 ], [ 6, %L1 ], [ 6, %L0 ]
  ret i32 %retval.0
}

!0 = !{!"branch_weights", i32 200, i32 800}
!1 = !{!"branch_weights", i32 600, i32 400}
!2 = !{!"branch_weights", i32 300, i32 700}
