
























declare double @dbl()

define double @call1(double %d, ...) {
  ret double %d


















}

define double @call2(i32 %i, double %d) {
  ret double %d
















}

define double @call3(float %f1, float %f2, double %d) {
  ret double %d
















}

define double @call4(float %f, double %d, ...) {
  ret double %d
















}

define double @call5(double %a, double %b, ...) {
  %1 = fsub double %a, %b
  ret double %1

























}

define double @move_from(double %d) {
  %1 = call double @dbl()
  %2 = call double @call2(i32 0, double %1)
  ret double %2

















}
