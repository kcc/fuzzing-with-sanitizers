


define fastcc void @t() nounwind ssp {
entry:
  br i1 undef, label %bb, label %bb4

bb:                                               
  br i1 undef, label %return, label %bb3

bb3:                                              
  unreachable

bb4:                                              
  br i1 undef, label %bb.nph, label %return

bb.nph:                                           
  br label %bb5

bb5:                                              
  %indvar = phi i64 [ 0, %bb.nph ], [ %tmp12, %bb9 ] 
  %tmp12 = add i64 %indvar, 1                     
  %tmp13 = trunc i64 %tmp12 to i32                
  br i1 undef, label %bb9, label %bb6

bb6:                                              
  br i1 undef, label %bb9, label %bb7

bb7:                                              
  br i1 undef, label %bb9, label %bb8

bb8:                                              
  unreachable

bb9:                                              
  br i1 undef, label %bb5, label %return

return:                                           
  ret void
}
