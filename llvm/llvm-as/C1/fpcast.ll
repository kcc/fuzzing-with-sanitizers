


define i8 @test1() {
        %x = fptoui float 2.550000e+02 to i8            
        ret i8 %x

}

define i8 @test2() {
        %x = fptosi float -1.000000e+00 to i8           
        ret i8 %x

}


define half @test3(float %a) {


  %b = call float @llvm.fabs.f32(float %a)
  %c = fptrunc float %b to half
  ret half %c
}


define half @test4(float %a) {


  %b = fsub float -0.0, %a
  %c = fptrunc float %b to half
  ret half %c
}


define half @test4-fast(float %a) {


  %b = fsub fast float -0.0, %a
  %c = fptrunc float %b to half
  ret half %c
}


define half @test5(float %a, float %b, float %c) {




  %d = fcmp ogt float %a, %b
  %e = select i1 %d, float %c, float 1.0
  %f = fptrunc float %e to half
  ret half %f
}

declare float @llvm.fabs.f32(float) nounwind readonly

define <1 x float> @test6(<1 x double> %V) {
  %frem = frem <1 x double> %V, %V
  %trunc = fptrunc <1 x double> %frem to <1 x float>
  ret <1 x float> %trunc




}

define float @test7(double %V) {
  %frem = frem double %V, 1.000000e+00
  %trunc = fptrunc double %frem to float
  ret float %trunc




}

define float @test8(float %V) {
  %fext = fpext float %V to double
  %frem = frem double %fext, 1.000000e-01
  %trunc = fptrunc double %frem to float
  ret float %trunc





}



define half @test_fptrunc_fptrunc(double %V) {
  %t1 = fptrunc double %V to float
  %t2 = fptrunc float %t1 to half
  ret half %t2
}
