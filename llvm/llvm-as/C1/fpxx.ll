

















declare double @dbl()




define double @test1(double %d, ...) {
  ret double %d





















}

define double @test2(i32 %i, double %d) {
  ret double %d




















}

define double @test3(float %f1, float %f2, double %d) {
  ret double %d




















}

define double @test4(float %f, double %d, ...) {
  ret double %d




















}

define double @test5() {
  ret double 0.000000e+00




















}

define double @test6(double %a, double %b, ...) {
  %1 = fsub double %a, %b
  ret double %1



































}

define double @move_from1(double %d) {
  %1 = call double @dbl()
  %2 = call double @test2(i32 0, double %1)
  ret double %2
































}
