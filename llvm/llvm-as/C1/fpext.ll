




@f = global float 0x40147E6B80000000, align 4
@d_f = common global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [6 x i8] c"%f  \0A\00", align 1


define void @dv() #0 {
entry:
  %0 = load float, float* @f, align 4
  %conv = fpext float %0 to double

  store double %conv, double* @d_f, align 8
  ret void
}


attributes #1 = { nounwind }
