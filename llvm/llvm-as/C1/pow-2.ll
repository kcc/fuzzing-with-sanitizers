



declare float @pow(double, double)



define float @test_no_simplify1(double %x) {

  %retval = call float @pow(double 1.0, double %x)

  ret float %retval
}
