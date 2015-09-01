

@x = common global float 0.000000e+00, align 4

define void @foo() nounwind {
entry:
  %0 = load float, float* @x, align 4
  %1 = load float, float* @x, align 4
  %mul = fmul float %0, %1
  store float %mul, float* @x, align 4

  ret void
}
