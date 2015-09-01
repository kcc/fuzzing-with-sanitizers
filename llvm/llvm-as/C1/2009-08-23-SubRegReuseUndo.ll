




@uint8 = external global i32                      

declare signext i8 @foo(i32, i8 signext) nounwind readnone

declare signext i8 @bar(i32, i8 signext) nounwind readnone

define i32 @uint80(i8 signext %p_52) nounwind {
entry:
  %0 = sext i8 %p_52 to i16                       
  %1 = tail call i32 @func_24(i16 zeroext %0, i8 signext ptrtoint (i8 (i32, i8)* @foo to i8)) nounwind
  %2 = trunc i32 %1 to i8                         
  %3 = or i8 %2, 1                                
  %4 = tail call i32 @safe(i32 1) nounwind        
  %5 = tail call i32 @func_24(i16 zeroext 0, i8 signext undef) nounwind
  %6 = trunc i32 %5 to i8                         
  %7 = xor i8 %3, %p_52                           
  %8 = xor i8 %7, %6                              
  %9 = icmp ne i8 %p_52, 0                        
  %10 = zext i1 %9 to i8                          
  %11 = tail call i32 @func_24(i16 zeroext ptrtoint (i8 (i32, i8)* @bar to i16), i8 signext %10) nounwind
  %12 = tail call i32 @func_24(i16 zeroext 0, i8 signext 1) nounwind
  br i1 undef, label %bb2, label %bb

bb:                                               
  br i1 undef, label %bb2, label %bb3

bb2:                                              
  br label %bb3

bb3:                                              
  %iftmp.2.0 = phi i32 [ 0, %bb2 ], [ 1, %bb ]    
  %13 = icmp ne i32 %11, %iftmp.2.0               
  %14 = tail call i32 @safe(i32 -2) nounwind      
  %15 = zext i1 %13 to i8                         
  %16 = tail call signext i8 @func_53(i8 signext undef, i8 signext 1, i8 signext %15, i8 signext %8) nounwind
  br i1 undef, label %bb5, label %bb4

bb4:                                              
  %17 = load volatile i32, i32* @uint8, align 4        
  br label %bb5

bb5:                                              
  %18 = load volatile i32, i32* @uint8, align 4        
  %19 = sext i8 undef to i16                      
  %20 = tail call i32 @func_24(i16 zeroext %19, i8 signext 1) nounwind
  br i1 undef, label %return, label %bb6.preheader

bb6.preheader:                                    
  %21 = sext i8 %p_52 to i32                      
  %22 = load volatile i32, i32* @uint8, align 4        
  %23 = tail call i32 (...) @safefuncts(i32 %21, i32 1) nounwind
  unreachable

return:                                           
  ret i32 undef
}

declare i32 @func_24(i16 zeroext, i8 signext)

declare i32 @safe(i32)

declare signext i8 @func_53(i8 signext, i8 signext, i8 signext, i8 signext)

declare i32 @safefuncts(...)
