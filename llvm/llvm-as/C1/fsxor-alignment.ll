






define void @foo(float* %p, float* %q, float %s, float %y) {
  %ss = fsub float -0.0, %s
  %yy = fsub float -0.0, %y
  store float %ss, float* %p
  store float %yy, float* %q
  ret void
}
