














declare float @qux(float %y)

define float @array(float %a) nounwind {
  %n = fmul float %a, 9.0
  %m = call float @qux(float %n)
  %o = fmul float %m, 9.0
  ret float %o
}
