


define float @foo(float %x) nounwind {
entry:

  %x.addr = alloca float, align 4
  store float %x, float* %x.addr, align 4
  %0 = load float, float* %x.addr, align 4
  %sub = fsub float -0.000000e+00, %0
  ret float %sub
}

define float @bar(float %x) nounwind {
entry:

  %sub = fsub float -0.000000e+00, %x
  ret float %sub
}

define float @baz(float %x) nounwind {
entry:

  %conv1 = fmul float %x, -1.000000e+00
  ret float %conv1
}
