






@a = internal global double 3.4
define double* @foo() nounwind {
  %a = getelementptr double, double* @a, i64 0
  ret double* %a
  



}
