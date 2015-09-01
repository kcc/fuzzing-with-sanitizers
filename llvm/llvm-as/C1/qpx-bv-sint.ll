target datalayout = "E-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f128:128:128-v128:128:128-n32:64"
target triple = "powerpc64-bgq-linux"


define void @s452() nounwind {
entry:
  br label %for.body4

for.body4:                                        
  %conv.4 = sitofp i32 undef to double
  %conv.5 = sitofp i32 undef to double
  %mul.4.v.i0.1 = insertelement <2 x double> undef, double %conv.4, i32 0
  %mul.4.v.i0.2 = insertelement <2 x double> %mul.4.v.i0.1, double %conv.5, i32 1
  %mul.4 = fmul <2 x double> %mul.4.v.i0.2, undef
  %add7.4 = fadd <2 x double> undef, %mul.4
  store <2 x double> %add7.4, <2 x double>* undef, align 16
  br i1 undef, label %for.end, label %for.body4

for.end:                                          
  unreachable











}

