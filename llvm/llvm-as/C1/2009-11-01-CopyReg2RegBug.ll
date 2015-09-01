

define void @get_initial_mb16x16_cost() nounwind {
entry:
  br i1 undef, label %bb4, label %bb1

bb1:                                              
  br label %bb7

bb4:                                              
  br i1 undef, label %bb7.thread, label %bb5

bb5:                                              
  br label %bb7

bb7.thread:                                       
  br label %bb8

bb7:                                              
  br i1 undef, label %bb8, label %bb10

bb8:                                              
  %0 = phi double [ 5.120000e+02, %bb7.thread ], [ undef, %bb7 ] 
  %1 = fdiv double %0, undef                      
  unreachable

bb10:                                             
  ret void
}
