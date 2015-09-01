




target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"

define void @Z4() nounwind {

bb:
  br label %bb3

bb1:                                              
  br i1 undef, label %bb10, label %bb2

bb2:                                              
  %t = add i64 %t4, 1                         
  br label %bb3

bb3:                                              
  %t4 = phi i64 [ %t, %bb2 ], [ 0, %bb ]      
  br label %bb1






bb10:                                             
  %t7 = icmp eq i64 %t4, 0                    
  %t3 = add i64 %t4, 16                     
  br label %bb14











bb14:                                             
  %t2 = getelementptr inbounds i8, i8* undef, i64 %t4 
  store i8 undef, i8* %t2
  %t6 = load float*, float** undef
  %t8 = bitcast float* %t6 to i8*              
  %t9 = getelementptr inbounds i8, i8* %t8, i64 %t3 
  store i8 undef, i8* %t9
  br label %bb14
}

define fastcc void @TransformLine() nounwind {

bb:
  br label %loop0






loop0:                                            
  %i0 = phi i32 [ %i0.next, %loop0 ], [ 0, %bb ]  
  %i0.next = add i32 %i0, 1                       
  br i1 false, label %loop0, label %bb0

bb0:                                              
  br label %loop1







loop1:                                            
  %i1 = phi i32 [ 0, %bb0 ], [ %i1.next, %bb5 ]   
  %t0 = add i32 %i0, %i1                          
  br i1 false, label %bb2, label %bb6




bb2:                                              
  br i1 true, label %bb6, label %bb5




bb5:                                              
  %i1.next = add i32 %i1, 1                       
  br i1 true, label %bb6, label %loop1















  







bb6:                                              
  %p8 = phi i32 [ %t0, %bb5 ], [ undef, %loop1 ], [ undef, %bb2 ] 
  %p9 = phi i32 [ undef, %bb5 ], [ %i1, %loop1 ], [ %i1, %bb2 ] 
  unreachable
}
