
target datalayout = "e-p:32:32:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-i64:32:32-f32:32:32-f64:32:32-v64:64:64-v128:128:128-a0:0:32"
target triple = "thumbv7-elf"

define void @aaa() nounwind {
entry:
  %0 = fmul <4 x float> undef, <float 1.000000e+00, float 1.000000e+01, float 1.000000e+02, float 0x3EB0C6F7A0000000> 
  %tmp31 = extractelement <4 x float> %0, i32 0   
  %1 = fpext float %tmp31 to double               
  %2 = fsub double 1.000000e+00, %1               
  %3 = fdiv double %2, 1.000000e+00               
  %4 = tail call double @fabs(double %3) nounwind readnone 
  %5 = fcmp ogt double %4, 1.000000e-05           
  br i1 %5, label %bb, label %bb7

bb:                                               
  unreachable

bb7:                                              
  unreachable
}

declare double @fabs(double)
