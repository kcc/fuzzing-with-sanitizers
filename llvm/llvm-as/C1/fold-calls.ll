




define double @foo() {
  %t = call double @sin(double 0x7FF0000000000000)
  ret double %t
}




define double @bar() {
  %t = call double @sin(double 0.0)
  ret double %t
}

declare double @sin(double)
