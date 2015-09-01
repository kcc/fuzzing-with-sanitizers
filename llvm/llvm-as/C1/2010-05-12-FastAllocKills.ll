
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin"

























define fastcc i32 @sqlite3AtoF(i8* %z, double* nocapture %pResult) nounwind ssp {
entry:
  br i1 undef, label %bb2, label %bb1.i.i

bb1.i.i:                                          
  unreachable

bb2:                                              
  br i1 undef, label %isdigit339.exit11.preheader, label %bb13

isdigit339.exit11.preheader:                      
  br i1 undef, label %bb12, label %bb10

bb10:                                             
  %divisor.041 = phi x86_fp80 [ %0, %bb10 ], [ 0xK3FFF8000000000000000, %isdigit339.exit11.preheader ] 
  %0 = fmul x86_fp80 %divisor.041, 0xK4002A000000000000000 
  br i1 false, label %bb12, label %bb10

bb12:                                             
  %divisor.0.lcssa = phi x86_fp80 [ 0xK3FFF8000000000000000, %isdigit339.exit11.preheader ], [ %0, %bb10 ] 
  br label %bb13

bb13:                                             
  br i1 undef, label %bb34, label %bb36

bb34:                                             
  br label %bb36

bb36:                                             
  ret i32 undef
}
