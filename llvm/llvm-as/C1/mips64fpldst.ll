




@f0 = common global float 0.000000e+00, align 4
@d0 = common global double 0.000000e+00, align 8
@f1 = common global float 0.000000e+00, align 4
@d1 = common global double 0.000000e+00, align 8

define float @funcfl1() nounwind readonly {
entry:






  %0 = load float, float* @f0, align 4
  ret float %0
}

define double @funcfl2() nounwind readonly {
entry:






  %0 = load double, double* @d0, align 8 
  ret double %0
}

define void @funcfs1() nounwind {
entry:






  %0 = load float, float* @f1, align 4 
  store float %0, float* @f0, align 4 
  ret void
}

define void @funcfs2() nounwind {
entry:






  %0 = load double, double* @d1, align 8 
  store double %0, double* @d0, align 8 
  ret void
}

