



define void @foo() nounwind {
entry:
  br i1 undef, label %bb5.i1632, label %bb1.i1605

bb1.i1605:                                        
  br i1 undef, label %bb5.i73.i, label %bb3.i68.i

bb3.i68.i:                                        
  unreachable

bb5.i73.i:                                        
  br i1 undef, label %bb7.i79.i, label %bb6.i76.i

bb6.i76.i:                                        
  unreachable

bb7.i79.i:                                        
  br i1 undef, label %bb.i.i1608, label %bb8.i82.i

bb8.i82.i:                                        
  unreachable

bb.i.i1608:                                       
  br i1 undef, label %bb1.i.dis.preheader_crit_edge.i, label %bb.i.i1608

bb1.i.dis.preheader_crit_edge.i: 
  br label %dis.i

bb3.i.i1610:                                      
  br i1 undef, label %bb5.i.i1613, label %bb4.i.i1611

bb4.i.i1611:                                      
  br label %bb5.i.i1613

bb5.i.i1613:                                      
  unreachable

bb7.i.i1615:                                      
  br i1 undef, label %bb3.i.i1610, label %bb8.i.i

bb8.i.i:                                          
  br i1 undef, label %bb3.i.i1610, label %bb9.i.i

bb9.i.i:                                          
  br label %bb12.i.i

bb12.i.i:                                         
  br i1 undef, label %bb13.i.bb14.i_crit_edge.i, label %bb12.i.i

bb13.i.bb14.i_crit_edge.i:                        
  br i1 undef, label %bb25.i.i, label %bb20.i.i

bb19.i.i:                                         
  br label %bb20.i.i

bb20.i.i:                                         
  %or.cond.i = or i1 undef, undef
  br i1 %or.cond.i, label %bb25.i.i, label %bb19.i.i

bb25.i.i:                                         
  unreachable

bb5.i1632:                                        
  unreachable

dis.i:                     
  br i1 undef, label %bb.i96.i, label %bb1.i102.i

bb.i96.i:                                         
  br label %getfloder.exit.i

bb1.i102.i:                                       
  br label %getfloder.exit.i

getfloder.exit.i:                           
  br i1 undef, label %bb7.i.i1615, label %dis.i
}
