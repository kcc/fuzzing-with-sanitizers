




@xi = common global i32 0, align 4
@x = common global float 0.000000e+00, align 4
@xd = common global double 0.000000e+00, align 8


define void @it() #0 {
entry:
  %call = call i32 @i(i32 1)
  store i32 %call, i32* @xi, align 4
  ret void








}

declare i32 @i(i32) #1


define void @ft() #0 {
entry:
  %call = call float @f()
  store float %call, float* @x, align 4
  ret void




}

declare float @f() #1


define void @dt() #0 {
entry:
  %call = call double @d()
  store double %call, double* @xd, align 8
  ret void




}

declare double @d() #1


define void @fft() #0 {
entry:
  %0 = load float, float* @x, align 4
  %call = call float @ff(float %0)
  store float %call, float* @x, align 4
  ret void




}

declare float @ff(float) #1


define void @vft() #0 {
entry:
  %0 = load float, float* @x, align 4
  call void @vf(float %0)
  ret void








}

declare void @vf(float) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }


