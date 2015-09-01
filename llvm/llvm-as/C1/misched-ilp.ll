















define float @ilpsched(float %a, float %b, float %c, float %d, float %e, float %f) nounwind uwtable readnone ssp {
entry:
  %add = fadd float %a, %b
  %add1 = fadd float %c, %d
  %add2 = fadd float %e, %f
  %add3 = fsub float %add1, %add2
  %add4 = fadd float %add, %add3
  ret float %add4
}
