









define <4 x float> @test_x86_fmadd_ps(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2) {
  %x = fmul <4 x float> %a0, %a1
  %res = fadd <4 x float> %x, %a2
  ret <4 x float> %res
}







define <4 x float> @test_x86_fmsub_ps(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2) {
  %x = fmul <4 x float> %a0, %a1
  %res = fsub <4 x float> %x, %a2
  ret <4 x float> %res
}







define <4 x float> @test_x86_fnmadd_ps(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2) {
  %x = fmul <4 x float> %a0, %a1
  %res = fsub <4 x float> %a2, %x
  ret <4 x float> %res
}







define <4 x float> @test_x86_fnmsub_ps(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2) {
  %x = fmul <4 x float> %a0, %a1
  %y = fsub <4 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %x
  %res = fsub <4 x float> %y, %a2
  ret <4 x float> %res
}







define <8 x float> @test_x86_fmadd_ps_y(<8 x float> %a0, <8 x float> %a1, <8 x float> %a2) {
  %x = fmul <8 x float> %a0, %a1
  %res = fadd <8 x float> %x, %a2
  ret <8 x float> %res
}







define <8 x float> @test_x86_fmsub_ps_y(<8 x float> %a0, <8 x float> %a1, <8 x float> %a2) {
  %x = fmul <8 x float> %a0, %a1
  %res = fsub <8 x float> %x, %a2
  ret <8 x float> %res
}







define <8 x float> @test_x86_fnmadd_ps_y(<8 x float> %a0, <8 x float> %a1, <8 x float> %a2) {
  %x = fmul <8 x float> %a0, %a1
  %res = fsub <8 x float> %a2, %x
  ret <8 x float> %res
}




define <8 x float> @test_x86_fnmsub_ps_y(<8 x float> %a0, <8 x float> %a1, <8 x float> %a2) {
  %x = fmul <8 x float> %a0, %a1
  %y = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %x
  %res = fsub <8 x float> %y, %a2
  ret <8 x float> %res
}







define <4 x double> @test_x86_fmadd_pd_y(<4 x double> %a0, <4 x double> %a1, <4 x double> %a2) {
  %x = fmul <4 x double> %a0, %a1
  %res = fadd <4 x double> %x, %a2
  ret <4 x double> %res
}







define <4 x double> @test_x86_fmsub_pd_y(<4 x double> %a0, <4 x double> %a1, <4 x double> %a2) {
  %x = fmul <4 x double> %a0, %a1
  %res = fsub <4 x double> %x, %a2
  ret <4 x double> %res
}







define <2 x double> @test_x86_fmsub_pd(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2) {
  %x = fmul <2 x double> %a0, %a1
  %res = fsub <2 x double> %x, %a2
  ret <2 x double> %res
}







define float @test_x86_fnmadd_ss(float %a0, float %a1, float %a2) {
  %x = fmul float %a0, %a1
  %res = fsub float %a2, %x
  ret float %res
}







define double @test_x86_fnmadd_sd(double %a0, double %a1, double %a2) {
  %x = fmul double %a0, %a1
  %res = fsub double %a2, %x
  ret double %res
}







define double @test_x86_fmsub_sd(double %a0, double %a1, double %a2) {
  %x = fmul double %a0, %a1
  %res = fsub double %x, %a2
  ret double %res
}







define float @test_x86_fnmsub_ss(float %a0, float %a1, float %a2) {
  %x = fsub float -0.000000e+00, %a0
  %y = fmul float %x, %a1
  %res = fsub float %y, %a2
  ret float %res
}








define <4 x float> @test_x86_fmadd_ps_load(<4 x float>* %a0, <4 x float> %a1, <4 x float> %a2) {
  %x = load <4 x float>, <4 x float>* %a0
  %y = fmul <4 x float> %x, %a1
  %res = fadd <4 x float> %y, %a2
  ret <4 x float> %res
}








define <4 x float> @test_x86_fmsub_ps_load(<4 x float>* %a0, <4 x float> %a1, <4 x float> %a2) {
  %x = load <4 x float>, <4 x float>* %a0
  %y = fmul <4 x float> %x, %a1
  %res = fsub <4 x float> %y, %a2
  ret <4 x float> %res
}

