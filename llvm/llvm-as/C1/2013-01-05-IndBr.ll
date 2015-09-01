




target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128-n8:16:32-S128"






define void @test() nounwind ssp {
bb:
  br label %bb190

bb8:                                              
  %tmp = phi i8 [ %tmp14, %bb11 ], [ 25, %bb190 ]
  %tmp9 = phi i8 [ %tmp12, %bb11 ], [ 25, %bb190 ]
  %tmp10 = add i8 %tmp, -5
  indirectbr i8* undef, [label %bb11, label %bb15]

bb11:                                             
  %tmp12 = add i8 %tmp9, 1
  %tmp13 = add i8 %tmp9, -19
  %tmp14 = add i8 %tmp, 1
  indirectbr i8* undef, [label %bb8]

bb15:                                             
  indirectbr i8* undef, [label %bb16]

bb16:                                             
  indirectbr i8* undef, [label %bb37, label %bb190]


bb37:                                             
  indirectbr i8* undef, [label %bb38]

bb38:                                             
  ret void

bb190:                                            
  indirectbr i8* undef, [label %bb37, label %bb8]
}
