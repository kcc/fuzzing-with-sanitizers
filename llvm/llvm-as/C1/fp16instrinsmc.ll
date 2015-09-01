


@x = global float 1.500000e+00, align 4
@xn = global float -1.900000e+01, align 4
@negone = global float -1.000000e+00, align 4
@one = global float 1.000000e+00, align 4
@xd = global double 0x40048B0A8EA4481E, align 8
@xdn = global double 0xC0311F9ADD373963, align 8
@negoned = global double -1.000000e+00, align 8
@oned = global float 1.000000e+00, align 4
@y = common global float 0.000000e+00, align 4
@yd = common global double 0.000000e+00, align 8


define void @foo1() #0 {








entry:
  %0 = load float, float* @x, align 4
  %1 = load float, float* @one, align 4
  %call = call float @copysignf(float %0, float %1) #2
  store float %call, float* @y, align 4
  ret void
}


declare float @copysignf(float, float) #1


define void @foo2() #0 {



entry:
  %0 = load float, float* @x, align 4
  %1 = load float, float* @negone, align 4
  %call = call float @copysignf(float %0, float %1) #2
  store float %call, float* @y, align 4
  ret void
}


define void @foo3() #0 {
entry:








  %0 = load double, double* @xd, align 8
  %1 = load float, float* @oned, align 4
  %conv = fpext float %1 to double
  %call = call double @copysign(double %0, double %conv) #2
  store double %call, double* @yd, align 8
  ret void
}


declare double @copysign(double, double) #1


define void @foo4() #0 {
entry:



  %0 = load double, double* @xd, align 8
  %1 = load double, double* @negoned, align 8
  %call = call double @copysign(double %0, double %1) #2
  store double %call, double* @yd, align 8
  ret void
}


define void @foo5() #0 {
entry:
  %0 = load float, float* @xn, align 4
  %call = call float @fabsf(float %0) #2
  store float %call, float* @y, align 4
  ret void
}


declare float @fabsf(float) #1


define void @foo6() #0 {
entry:
  %0 = load double, double* @xdn, align 8
  %call = call double @fabs(double %0) #2
  store double %call, double* @yd, align 8
  ret void
}


declare double @fabs(double) #1


define void @foo7() #0 {
entry:
  %0 = load float, float* @x, align 4
  %call = call float @sinf(float %0) #3


  store float %call, float* @y, align 4
  ret void
}


declare float @sinf(float) #0


define void @foo8() #0 {
entry:
  %0 = load double, double* @xd, align 8
  %call = call double @sin(double %0) #3


  store double %call, double* @yd, align 8
  ret void
}


declare double @sin(double) #0


define void @foo9() #0 {
entry:
  %0 = load float, float* @x, align 4
  %call = call float @cosf(float %0) #3


  store float %call, float* @y, align 4
  ret void
}


declare float @cosf(float) #0


define void @foo10() #0 {
entry:
  %0 = load double, double* @xd, align 8
  %call = call double @cos(double %0) #3


  store double %call, double* @yd, align 8
  ret void
}


declare double @cos(double) #0


define void @foo11() #0 {
entry:
  %0 = load float, float* @x, align 4
  %call = call float @sqrtf(float %0) #3


  store float %call, float* @y, align 4
  ret void
}


declare float @sqrtf(float) #0


define void @foo12() #0 {
entry:
  %0 = load double, double* @xd, align 8
  %call = call double @sqrt(double %0) #3


  store double %call, double* @yd, align 8
  ret void
}


declare double @sqrt(double) #0


define void @foo13() #0 {
entry:
  %0 = load float, float* @x, align 4
  %call = call float @floorf(float %0) #2


  store float %call, float* @y, align 4
  ret void
}


declare float @floorf(float) #1


define void @foo14() #0 {
entry:
  %0 = load double, double* @xd, align 8
  %call = call double @floor(double %0) #2


  store double %call, double* @yd, align 8
  ret void
}


declare double @floor(double) #1


define void @foo15() #0 {
entry:
  %0 = load float, float* @x, align 4
  %call = call float @nearbyintf(float %0) #2


  store float %call, float* @y, align 4
  ret void
}


declare float @nearbyintf(float) #1


define void @foo16() #0 {
entry:
  %0 = load double, double* @xd, align 8
  %call = call double @nearbyint(double %0) #2


  store double %call, double* @yd, align 8
  ret void
}


declare double @nearbyint(double) #1


define void @foo17() #0 {
entry:
  %0 = load float, float* @x, align 4
  %call = call float @ceilf(float %0) #2


  store float %call, float* @y, align 4
  ret void
}


declare float @ceilf(float) #1


define void @foo18() #0 {
entry:
  %0 = load double, double* @xd, align 8
  %call = call double @ceil(double %0) #2


  store double %call, double* @yd, align 8
  ret void
}


declare double @ceil(double) #1


define void @foo19() #0 {
entry:
  %0 = load float, float* @x, align 4
  %call = call float @rintf(float %0) #2


  store float %call, float* @y, align 4
  ret void
}


declare float @rintf(float) #1


define void @foo20() #0 {
entry:
  %0 = load double, double* @xd, align 8
  %call = call double @rint(double %0) #2


  store double %call, double* @yd, align 8
  ret void
}


declare double @rint(double) #1


define void @foo21() #0 {
entry:
  %0 = load float, float* @x, align 4
  %call = call float @truncf(float %0) #2


  store float %call, float* @y, align 4
  ret void
}


declare float @truncf(float) #1


define void @foo22() #0 {
entry:
  %0 = load double, double* @xd, align 8
  %call = call double @trunc(double %0) #2


  store double %call, double* @yd, align 8
  ret void
}


declare double @trunc(double) #1


define void @foo23() #0 {
entry:
  %0 = load float, float* @x, align 4
  %call = call float @log2f(float %0) #3


  store float %call, float* @y, align 4
  ret void
}


declare float @log2f(float) #0


define void @foo24() #0 {
entry:
  %0 = load double, double* @xd, align 8
  %call = call double @log2(double %0) #3


  store double %call, double* @yd, align 8
  ret void
}


declare double @log2(double) #0


define void @foo25() #0 {
entry:
  %0 = load float, float* @x, align 4
  %call = call float @exp2f(float %0) #3


  store float %call, float* @y, align 4
  ret void
}


declare float @exp2f(float) #0


define void @foo26() #0 {
entry:
  %0 = load double, double* @xd, align 8
  %call = call double @exp2(double %0) #3


  store double %call, double* @yd, align 8
  ret void
}


declare double @exp2(double) #0

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }
