

define fastcc void @prepOutput() nounwind {
bb:                                               
  br label %bb.i1

bb.i1:                                            
  br i1 undef, label %bb7.i, label %bb.nph.i

bb.nph.i:                                         
  br label %bb3.i

bb3.i:                                            
  %tmp10.i = trunc i64 undef to i32               
  br i1 undef, label %bb4.i, label %bb5.i6

bb4.i:                                            
  br label %bb5.i6

bb5.i6:                                           
  %0 = phi i32 [ undef, %bb4.i ], [ undef, %bb3.i ] 
  %1 = icmp slt i32 %0, %tmp10.i                  
  br i1 %1, label %bb7.i, label %bb3.i

bb7.i:                                            
  br label %bb.i1
}
