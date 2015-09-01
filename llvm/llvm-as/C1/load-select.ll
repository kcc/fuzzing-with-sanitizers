

target datalayout = "e-p:32:32:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-i64:32:32-f32:32:32-f64:32:32-v64:64:64-v128:128:128-a0:0:32-n32"

@a = constant [2 x i32] [i32 3, i32 6]            

define i32 @b(i32 %y) nounwind readonly {



entry:
  %0 = icmp eq i32 %y, 0                          
  %storemerge = select i1 %0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @a, i32 0, i32 1), i32* getelementptr inbounds ([2 x i32], [2 x i32]* @a, i32 0, i32 0) 
  %1 = load i32, i32* %storemerge, align 4             
  ret i32 %1
}
