




target datalayout = "e-p:64:64:64-p1:16:16:16-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"




define void @Z4() nounwind {

bb:
  br label %bb3

bb1:                                              
  br i1 undef, label %bb10, label %bb2

bb2:                                              
  %t = add i16 %t4, 1                         
  br label %bb3

bb3:                                              
  %t4 = phi i16 [ %t, %bb2 ], [ 0, %bb ]      
  br label %bb1






bb10:                                             
  %t7 = icmp eq i16 %t4, 0                    
  %t3 = add i16 %t4, 16                     
  br label %bb14











bb14:                                             
  %t2 = getelementptr inbounds i8, i8 addrspace(1)* undef, i16 %t4 
  store i8 undef, i8 addrspace(1)* %t2
  %t6 = load float addrspace(1)*, float addrspace(1)* addrspace(1)* undef
  %t8 = bitcast float addrspace(1)* %t6 to i8 addrspace(1)*              
  %t9 = getelementptr inbounds i8, i8 addrspace(1)* %t8, i16 %t3 
  store i8 undef, i8 addrspace(1)* %t9
  br label %bb14
}

