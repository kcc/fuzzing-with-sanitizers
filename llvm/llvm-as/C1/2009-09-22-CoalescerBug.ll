

define i32 @main(i32 %argc, i8** nocapture %argv) nounwind ssp {
entry:
  br i1 undef, label %bb, label %bb1

bb:                                               
  ret i32 3

bb1:                                              
  br i1 undef, label %bb3, label %bb2

bb2:                                              
  ret i32 3

bb3:                                              
  br i1 undef, label %bb.i18, label %quantum_getwidth.exit

bb.i18:                                           
  br i1 undef, label %bb.i18, label %quantum_getwidth.exit

quantum_getwidth.exit:                            
  br i1 undef, label %bb4, label %bb6.preheader

bb4:                                              
  unreachable

bb6.preheader:                                    
  br i1 undef, label %bb.i1, label %bb1.i2

bb.i1:                                            
  unreachable

bb1.i2:                                           
  br i1 undef, label %bb2.i, label %bb3.i4

bb2.i:                                            
  unreachable

bb3.i4:                                           
  br i1 undef, label %quantum_new_qureg.exit, label %bb4.i

bb4.i:                                            
  unreachable

quantum_new_qureg.exit:                           
  br i1 undef, label %bb9, label %bb11.thread

bb11.thread:                                      
  %.cast.i = zext i32 undef to i64                
  br label %bb.i37

bb9:                                              
  unreachable

bb.i37:                                           
  %0 = load i64, i64* undef, align 8                   
  %1 = shl i64 %0, %.cast.i                       
  store i64 %1, i64* undef, align 8
  br i1 undef, label %bb.i37, label %quantum_addscratch.exit

quantum_addscratch.exit:                          
  br i1 undef, label %bb12.preheader, label %bb14

bb12.preheader:                                   
  unreachable

bb14:                                             
  br i1 undef, label %bb17, label %bb.nph

bb.nph:                                           
  unreachable

bb17:                                             
  br i1 undef, label %bb1.i7, label %quantum_measure.exit

bb1.i7:                                           
  br label %quantum_measure.exit

quantum_measure.exit:                             
  switch i32 undef, label %bb21 [
    i32 -1, label %bb18
    i32 0, label %bb20
  ]

bb18:                                             
  unreachable

bb20:                                             
  unreachable

bb21:                                             
  br i1 undef, label %quantum_frac_approx.exit, label %bb1.i

bb1.i:                                            
  unreachable

quantum_frac_approx.exit:                         
  br i1 undef, label %bb25, label %bb26

bb25:                                             
  unreachable

bb26:                                             
  br i1 undef, label %quantum_gcd.exit, label %bb.i

bb.i:                                             
  br i1 undef, label %quantum_gcd.exit, label %bb.i

quantum_gcd.exit:                                 
  br i1 undef, label %bb32, label %bb33

bb32:                                             
  br i1 undef, label %bb.i.i, label %quantum_delete_qureg.exit

bb.i.i:                                           
  ret i32 0

quantum_delete_qureg.exit:                        
  ret i32 0

bb33:                                             
  unreachable
}
