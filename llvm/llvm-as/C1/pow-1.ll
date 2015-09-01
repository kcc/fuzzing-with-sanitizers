












declare float @powf(float, float) nounwind readonly
declare double @pow(double, double) nounwind readonly



define float @test_simplify1(float %x) {

  %retval = call float @powf(float 1.0, float %x)
  ret float %retval

}

define double @test_simplify2(double %x) {

  %retval = call double @pow(double 1.0, double %x)
  ret double %retval

}



define float @test_simplify3(float %x) {

  %retval = call float @powf(float 2.0, float %x)

  ret float %retval

}

define double @test_simplify4(double %x) {

  %retval = call double @pow(double 2.0, double %x)

  ret double %retval

}



define float @test_simplify5(float %x) {

  %retval = call float @powf(float %x, float 0.0)
  ret float %retval

}

define double @test_simplify6(double %x) {

  %retval = call double @pow(double %x, double 0.0)
  ret double %retval

}



define float @test_simplify7(float %x) {

  %retval = call float @powf(float %x, float 0.5)




  ret float %retval

}

define double @test_simplify8(double %x) {

  %retval = call double @pow(double %x, double 0.5)




  ret double %retval

}



define float @test_simplify9(float %x) {

  %retval = call float @powf(float 0xFFF0000000000000, float 0.5)
  ret float %retval

}

define double @test_simplify10(double %x) {

  %retval = call double @pow(double 0xFFF0000000000000, double 0.5)
  ret double %retval

}



define float @test_simplify11(float %x) {

  %retval = call float @powf(float %x, float 1.0)
  ret float %retval

}

define double @test_simplify12(double %x) {

  %retval = call double @pow(double %x, double 1.0)
  ret double %retval

}



define float @test_simplify13(float %x) {

  %retval = call float @powf(float %x, float 2.0)

  ret float %retval

}

define double @test_simplify14(double %x) {

  %retval = call double @pow(double %x, double 2.0)

  ret double %retval

}



define float @test_simplify15(float %x) {

  %retval = call float @powf(float %x, float -1.0)

  ret float %retval

}

define double @test_simplify16(double %x) {

  %retval = call double @pow(double %x, double -1.0)

  ret double %retval

}

declare double @llvm.pow.f64(double %Val, double %Power)
define double @test_simplify17(double %x) {

  %retval = call double @llvm.pow.f64(double %x, double 0.5)




  ret double %retval

}



define float @test_simplify18(float %x) {

  %retval = call float @powf(float 10.0, float %x)

  ret float %retval


}

define double @test_simplify19(double %x) {

  %retval = call double @pow(double 10.0, double %x)

  ret double %retval


}



