


declare arm_apcscc i32 @__maskrune(i32, i32)

define arm_apcscc i32 @strncmpic(i8* nocapture %s1, i8* nocapture %s2, i32 %n) nounwind {
entry:
  br i1 undef, label %bb11, label %bb19

bb11:                                             
  %0 = sext i8 0 to i32                           
  br i1 undef, label %bb.i.i10, label %bb1.i.i11

bb.i.i10:                                         
  br label %isupper144.exit12

bb1.i.i11:                                        
  %1 = tail call arm_apcscc  i32 @__maskrune(i32 %0, i32 32768) nounwind 
  %2 = icmp ne i32 %1, 0                          
  %3 = zext i1 %2 to i32                          
  %.pre = load i8, i8* undef, align 1                 
  br label %isupper144.exit12

isupper144.exit12:                                
  %4 = phi i8 [ %.pre, %bb1.i.i11 ], [ 0, %bb.i.i10 ] 
  %5 = phi i32 [ %3, %bb1.i.i11 ], [ undef, %bb.i.i10 ] 
  %6 = icmp eq i32 %5, 0                          
  %7 = sext i8 %4 to i32                          
  %storemerge1 = select i1 %6, i32 %7, i32 undef  
  %8 = sub nsw i32 %storemerge1, 0                
  ret i32 %8

bb19:                                             
  ret i32 0
}
