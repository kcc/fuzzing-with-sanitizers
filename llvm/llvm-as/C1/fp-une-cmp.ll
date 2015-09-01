

























define float @func(float %x, float %y) nounwind readnone optsize ssp {
entry:
  %0 = fpext float %x to double
  %1 = fpext float %y to double
  %2 = fmul double %0, %1
  %3 = fcmp une double %2, 0.000000e+00
  br i1 %3, label %bb2, label %bb1

bb1:
  %4 = fadd double %2, -1.000000e+00
  br label %bb2

bb2:
  %.0.in = phi double [ %4, %bb1 ], [ %2, %entry ]
  %.0 = fptrunc double %.0.in to float
  ret float %.0
}
