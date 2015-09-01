

@x = global float 1.000000e+00, align 4
@y = global float 2.000000e+00, align 4
@zz = common global float 0.000000e+00, align 4
@z = common global float 0.000000e+00, align 4

define float @fv() #0 {
entry:
  ret float 1.000000e+00
}












define double @dv() #0 {
entry:
  ret double 2.000000e+00
}












define void @vf(float %x) #0 {
entry:
  %x.addr = alloca float, align 4
  store float %x, float* %x.addr, align 4
  ret void
}












define void @vd(double %x) #0 {
entry:
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  ret void
}












define void @foo1() #0 {
entry:
  store float 1.000000e+00, float* @zz, align 4
  %0 = load float, float* @y, align 4
  %1 = load float, float* @x, align 4
  %add = fadd float %0, %1
  store float %add, float* @z, align 4
  ret void
}












define void @foo2() #0 {
entry:
  %0 = load float, float* @x, align 4
  call void @vf(float %0)
  ret void
}













define void @foo3() #0 {
entry:
  %call = call float @fv()
  store float %call, float* @x, align 4
  ret void
}












attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

define void @vv() #0 {
entry:
  ret void
}










