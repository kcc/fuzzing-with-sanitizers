

@y = global double -1.450000e+00, align 8
@x = common global double 0.000000e+00, align 8

@y1 = common global float 0.000000e+00, align 4
@x1 = common global float 0.000000e+00, align 4




define i32 @main() #0 {
entry:
  %0 = load double, double* @y, align 8
  %call = tail call double @fabs(double %0) #2
  store double %call, double* @x, align 8


  %1 = load float, float* @y1, align 4
  %call2 = tail call float @fabsf(float %1) #2
  store float %call2, float* @x1, align 4


  ret i32 0
}


declare double @fabs(double) #1

declare float @fabsf(float) #1

attributes #0 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #1 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #2 = { nounwind optsize readnone }



