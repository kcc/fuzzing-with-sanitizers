





@a = internal global double 3.4
define double @foo() nounwind {
  %a = load double, double* @a
  ret double %a
  


}
