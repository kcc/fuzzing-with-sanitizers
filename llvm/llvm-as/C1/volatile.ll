


@x = external global double

define void @foo() nounwind  {
  %a = load volatile double, double* @x
  store volatile double 0.0, double* @x
  store volatile double 0.0, double* @x
  %b = load volatile double, double* @x
  ret void
}

define void @bar() nounwind  {
  %c = load volatile double, double* @x
  ret void
}
