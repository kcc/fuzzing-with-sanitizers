






target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin10.0.0"

define void @_ZN7QVectorIdE4fillERKdi(double* nocapture %t) nounwind ssp align 2 {
entry:
  %tmp2 = load double, double* %t                         
  br i1 undef, label %if.end, label %if.then

if.then:                                          
  br i1 undef, label %if.end, label %bb.nph

while.cond:                                       
  store double %tmp2, double* undef
  br i1 undef, label %if.end, label %while.cond

bb.nph:                                           
  br label %while.cond

if.end:                                           
  ret void
}
