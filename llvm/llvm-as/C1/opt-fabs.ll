




define float @my_fabsf(float %x) nounwind {
entry:
  %x.addr = alloca float, align 4
  store float %x, float* %x.addr, align 4
  %0 = load float, float* %x.addr, align 4
  %call = call float @fabsf(float %0) readnone
  ret float %call
}

declare float @fabsf(float)
