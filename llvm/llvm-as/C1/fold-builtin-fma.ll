





declare double @llvm.fma.f64(double, double, double)


define double @PR20832()  {
  %1 = call double @llvm.fma.f64(double 7.0, double 8.0, double 0.0)
  ret double %1
}




define double @test_all_finite()  {
  %1 = call double @llvm.fma.f64(double 7.0, double 8.0, double 5.0)
  ret double %1
}




define double @test_NaN_addend()  {
  %1 = call double @llvm.fma.f64(double 7.0, double 8.0, double 0x7FF8000000000000)
  ret double %1
}



define double @test_NaN_addend_2()  {
  %1 = call double @llvm.fma.f64(double 7.0, double 8.0, double 0xFFF8000000000000)
  ret double %1
}




define double @test_Inf_addend()  {
  %1 = call double @llvm.fma.f64(double 7.0, double 8.0, double 0x7FF0000000000000)
  ret double %1
}



define double @test_Inf_addend_2()  {
  %1 = call double @llvm.fma.f64(double 7.0, double 8.0, double 0xFFF0000000000000)
  ret double %1
}




define double @test_NaN_1()  {
  %1 = call double @llvm.fma.f64(double 0x7FF8000000000000, double 8.0, double 0.0)
  ret double %1
}




define double @test_NaN_2()  {
  %1 = call double @llvm.fma.f64(double 7.0, double 0x7FF8000000000000, double 0.0)
  ret double %1
}




define double @test_NaN_3()  {
  %1 = call double @llvm.fma.f64(double 0xFFF8000000000000, double 8.0, double 0.0)
  ret double %1
}




define double @test_NaN_4()  {
  %1 = call double @llvm.fma.f64(double 7.0, double 0xFFF8000000000000, double 0.0)
  ret double %1
}





define double @test_Inf_1()  {
  %1 = call double @llvm.fma.f64(double 0x7FF0000000000000, double 8.0, double 0.0)
  ret double %1
}




define double @test_Inf_2()  {
  %1 = call double @llvm.fma.f64(double 7.0, double 0x7FF0000000000000, double 0.0)
  ret double %1
}




define double @test_Inf_3()  {
  %1 = call double @llvm.fma.f64(double 0xFFF0000000000000, double 8.0, double 0.0)
  ret double %1
}




define double @test_Inf_4()  {
  %1 = call double @llvm.fma.f64(double 7.0, double 0xFFF0000000000000, double 0.0)
  ret double %1
}



