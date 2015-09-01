









target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"



define void @func(i16* nocapture %pb, float* nocapture readonly %pf) #0 {
entry:
  %0 = bitcast float* %pf to <8 x float>*
  %1 = load <8 x float>, <8 x float>* %0, align 4
  %2 = fmul <8 x float> %1, <float 8.000000e+00, float 8.000000e+00, float 8.000000e+00, float 8.000000e+00, float 8.000000e+00, float 8.000000e+00, float 8.000000e+00, float 8.000000e+00>
  %3 = fptosi <8 x float> %2 to <8 x i16>
  %4 = bitcast i16* %pb to <8 x i16>*
  store <8 x i16> %3, <8 x i16>* %4, align 2
  ret void
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-realign-stack" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
