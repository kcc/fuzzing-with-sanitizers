



















define float @FOO0float(float %a, float %b, float %c) nounwind readnone {
entry:
































  %mul = fmul float %a, %b
  %add = fadd float %mul, %c
  %add1 = fadd float %add, 0.000000e+00
  ret float %add1
}

define float @FOO1float(float %a, float %b, float %c) nounwind readnone {
entry:
































  %mul = fmul float %a, %b
  %sub = fsub float %mul, %c
  %add = fadd float %sub, 0.000000e+00
  ret float %add
}

define float @FOO2float(float %a, float %b, float %c) nounwind readnone {
entry:







































  %mul = fmul float %a, %b
  %add = fadd float %mul, %c
  %sub = fsub float 0.000000e+00, %add
  ret float %sub
}

define float @FOO3float(float %a, float %b, float %c) nounwind readnone {
entry:































  %mul = fmul float %a, %b
  %sub = fsub float %mul, %c
  %sub1 = fsub float 0.000000e+00, %sub
  ret float %sub1
}

define double @FOO10double(double %a, double %b, double %c) nounwind readnone {
entry:

































  %mul = fmul double %a, %b
  %add = fadd double %mul, %c
  %add1 = fadd double %add, 0.000000e+00
  ret double %add1
}

define double @FOO11double(double %a, double %b, double %c) nounwind readnone {
entry:

































  %mul = fmul double %a, %b
  %sub = fsub double %mul, %c
  %add = fadd double %sub, 0.000000e+00
  ret double %add
}

define double @FOO12double(double %a, double %b, double %c) nounwind readnone {
entry:








































  %mul = fmul double %a, %b
  %add = fadd double %mul, %c
  %sub = fsub double 0.000000e+00, %add
  ret double %sub
}

define double @FOO13double(double %a, double %b, double %c) nounwind readnone {
entry:








































  %mul = fmul double %a, %b
  %sub = fsub double %mul, %c
  %sub1 = fsub double 0.000000e+00, %sub
  ret double %sub1
}
