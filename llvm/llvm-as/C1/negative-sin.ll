


declare double @sin(double %f)

define double @foo(double %e)
{
  %f = fsub double 0.0, %e
  %g = call double @sin(double %f) readonly
  %h = fsub double 0.0, %g
  ret double %h
}
