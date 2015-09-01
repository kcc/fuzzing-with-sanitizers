




define i32 @test1() {
entry:
        br label %loopentry

loopentry:              
        %indvar1 = phi i32 [ 0, %entry ], [ %indvar.next2, %loopentry ]         
        %h.0 = phi i32 [ %tmp.2, %loopentry ], [ 4, %entry ]            
        %tmp.1 = mul i32 %h.0, 3                
        %tmp.2 = add i32 %tmp.1, 1              
        %indvar.next2 = add i32 %indvar1, 1             
        %exitcond3 = icmp ne i32 %indvar.next2, 4               
        br i1 %exitcond3, label %loopentry, label %loopexit

loopexit:               
        ret i32 %tmp.2
}









define i32 @test2(i32 %arg) {
bb:
  %tmp = icmp ugt i32 %arg, 10
  br i1 %tmp, label %bb1, label %bb7

bb1:                                              
  %tmp2 = phi i32 [ %tmp5, %bb1 ], [ 0, %bb ]
  %tmp3 = phi i32 [ %tmp4, %bb1 ], [ %arg, %bb ]
  %tmp4 = add i32 %tmp3, -2
  %tmp5 = add i32 %tmp2, 1
  %tmp6 = icmp ugt i32 %tmp4, 10
  br i1 %tmp6, label %bb1, label %bb7

bb7:                                              
  %tmp8 = phi i32 [ 0, %bb ], [ %tmp5, %bb1 ]
  ret i32 %tmp8
}
