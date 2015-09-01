



define double @test1() {
  %t = sitofp i32 undef to double
  ret double %t


}




define i32 @test2() nounwind readnone ssp {

init:
  br label %control.outer.outer

control.outer.loopexit.us-lcssa:                  
  br label %control.outer.loopexit

control.outer.loopexit:                           
  br label %control.outer.outer.backedge

control.outer.outer:                              
  %switchCond.0.ph.ph = phi i32 [ 2, %init ], [ 3, %control.outer.outer.backedge ] 
  %i.0.ph.ph = phi i32 [ undef, %init ], [ %i.0.ph.ph.be, %control.outer.outer.backedge ] 
  %tmp4 = icmp eq i32 %i.0.ph.ph, 0               
  br i1 %tmp4, label %control.outer.outer.split.us, label %control.outer.outer.control.outer.outer.split_crit_edge

control.outer.outer.control.outer.outer.split_crit_edge: 
  br label %control.outer

control.outer.outer.split.us:                     
  br label %control.outer.us

control.outer.us:                                 
  %A.0.ph.us = phi i32 [ %switchCond.0.us, %bb3.us ], [ 4, %control.outer.outer.split.us ] 
  %switchCond.0.ph.us = phi i32 [ %A.0.ph.us, %bb3.us ], [ %switchCond.0.ph.ph, %control.outer.outer.split.us ] 
  br label %control.us

bb3.us:                                           
  br label %control.outer.us

bb0.us:                                           
  br label %control.us




control.us:                                       
  %switchCond.0.us = phi i32 [ %A.0.ph.us, %bb0.us ], [ %switchCond.0.ph.us, %control.outer.us ] 
  switch i32 %switchCond.0.us, label %control.outer.loopexit.us-lcssa.us [
    i32 0, label %bb0.us
    i32 1, label %bb1.us-lcssa.us
    i32 3, label %bb3.us
    i32 4, label %bb4.us-lcssa.us
  ]

control.outer.loopexit.us-lcssa.us:               
  br label %control.outer.loopexit

bb1.us-lcssa.us:                                  
  br label %bb1

bb4.us-lcssa.us:                                  
  br label %bb4

control.outer:                                    
  %A.0.ph = phi i32 [ %nextId17, %bb3 ], [ 4, %control.outer.outer.control.outer.outer.split_crit_edge ] 
  %switchCond.0.ph = phi i32 [ 0, %bb3 ], [ %switchCond.0.ph.ph, %control.outer.outer.control.outer.outer.split_crit_edge ] 
  br label %control

control:                                          
  %switchCond.0 = phi i32 [ %A.0.ph, %bb0 ], [ %switchCond.0.ph, %control.outer ] 
  switch i32 %switchCond.0, label %control.outer.loopexit.us-lcssa [
    i32 0, label %bb0
    i32 1, label %bb1.us-lcssa
    i32 3, label %bb3
    i32 4, label %bb4.us-lcssa
  ]

bb4.us-lcssa:                                     
  br label %bb4

bb4:                                              
  br label %control.outer.outer.backedge

control.outer.outer.backedge:                     
  %i.0.ph.ph.be = phi i32 [ 1, %bb4 ], [ 0, %control.outer.loopexit ] 
  br label %control.outer.outer

bb3:                                              
  %nextId17 = add i32 %switchCond.0, -2           
  br label %control.outer

bb0:                                              
  br label %control

bb1.us-lcssa:                                     
  br label %bb1

bb1:                                              
  ret i32 0
}



define i32 @test3() {
  %t = xor i32 undef, undef
  ret i32 %t


}


define double @test4(double %x) {
  %t = fadd double %x, undef
  ret double %t


}


define i32 @test5() {
  %t = sext i8 undef to i32
  ret i32 %t


}


define i32 @test6() {
  %t = ashr i32 undef, 31
  ret i32 %t


}


define i32 @test7() {
  %t = lshr i32 undef, 31
  ret i32 %t


}


define i1 @test8() {
  %t = icmp eq i32 undef, -1
  ret i1 %t


}


define i1 @test9() {
  %t = icmp ugt i32 undef, -1
  ret i1 %t


}


define i64 @test10() { 
entry:
  %e = extractvalue { i64, i64 } undef, 1
  ret i64 %e


}
