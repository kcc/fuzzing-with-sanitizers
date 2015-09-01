
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32"
target triple = "i386-pc-linux-gnu"










%struct.anon = type { [72 x i32], i32 }

@mp2grad_ = external global %struct.anon

define void @chomp2g_setup_(i32 %n, i32 %m) nounwind {
entry:
  br label %bb1

bb1:                                              
  %indvar11 = phi i32 [ %indvar.next12, %bb6 ], [ 0, %entry ] 
  %tmp21 = add i32 %indvar11, 1                   
  %t = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @mp2grad_, i32 0, i32 1)
  %tmp15 = mul i32 %n, %t                      
  %tmp16 = add i32 %tmp21, %tmp15                 
  %tmp17 = shl i32 %tmp16, 3                      
  %tmp18 = add i32 %tmp17, -8                     
  br label %bb2

bb2:                                              
  %indvar = phi i32 [ 0, %bb1 ], [ %indvar.next, %bb2 ] 
  %tmp19 = add i32 %tmp18, %indvar                
  %scevgep = getelementptr %struct.anon, %struct.anon* @mp2grad_, i32 0, i32 0, i32 %tmp19 
  store i32 0, i32* %scevgep
  %indvar.next = add i32 %indvar, 1               
  %c = icmp ne i32 %indvar.next, %m
  br i1 %c, label %bb2, label %bb6

bb6:                                              
  %indvar.next12 = add i32 %indvar11, 1           
  br label %bb1
}
