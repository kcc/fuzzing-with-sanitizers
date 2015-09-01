





target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128"
target triple = "x86_64-unknown-linux-gnu"

define double @fn1(i8* %arg, i64 %arg1) {
Entry:
  br i1 undef, label %Body, label %Exit

Exit:                                             
  ret double undef

Body:                                             
  br i1 false, label %Brancher7, label %Body3

Body3:                                            
  br label %Body3

Body6:                                            
  %tmp = fcmp oeq double 0xC04FBB2E40000000, undef 
  br i1 %tmp, label %Body3, label %Brancher7

Brancher7:                                        
  %tmp2 = icmp ult i32 undef, 10                  
  br i1 %tmp2, label %Body6, label %Exit
}
