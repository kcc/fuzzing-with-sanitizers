



declare double @llvm.pow.f64(double %Val, double %Power)

define double @test_simplify_unavailable(double %x) {

  %retval = call double @llvm.pow.f64(double %x, double 0.5)

  ret double %retval
}
