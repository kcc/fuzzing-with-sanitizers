








@0 = private constant [4 x i8] c"%d\0A\00", align 1 

define i32 @main() nounwind {
bb:
  br label %bb1

bb1:                                              
  %t = phi i32 [ 0, %bb ], [ %t19, %bb14 ]        
  %t2 = phi i32 [ 0, %bb ], [ %t18, %bb14 ]       
  %t3 = icmp slt i32 %t, 0                        
  br i1 %t3, label %bb7, label %bb4

bb4:                                              
  %t5 = icmp sgt i32 %t, 255                      
  %t6 = select i1 %t5, i32 255, i32 %t            
  br label %bb7

bb7:                                              
  %t8 = phi i32 [ %t6, %bb4 ], [ 0, %bb1 ]        
  %t9 = sub i32 0, %t                             
  %t10 = icmp slt i32 %t9, 0                      
  br i1 %t10, label %bb14, label %bb11

bb11:                                             
  %t12 = icmp sgt i32 %t9, 255                    
  %t13 = select i1 %t12, i32 255, i32 %t9         
  br label %bb14

bb14:                                             
  %t15 = phi i32 [ %t13, %bb11 ], [ 0, %bb7 ]     
  %t16 = add nsw i32 %t2, 255                     
  %t17 = add nsw i32 %t16, %t8                    
  %t18 = add nsw i32 %t17, %t15                   
  %t19 = add nsw i32 %t, 1                        
  %t20 = icmp slt i32 %t19, 1000000000            
  br i1 %t20, label %bb1, label %bb21

bb21:                                             
  %t22 = call i32 (i8*, ...) @printf(i8* noalias getelementptr inbounds ([4 x i8], [4 x i8]* @0, i32 0, i32 0), i32 %t18) nounwind
  ret i32 0
}

declare i32 @printf(i8* noalias nocapture, ...) nounwind
