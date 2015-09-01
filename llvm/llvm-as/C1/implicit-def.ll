



define float @foo(float %a) {
  %ret = fadd float %a, undef
  ret float %ret
}

