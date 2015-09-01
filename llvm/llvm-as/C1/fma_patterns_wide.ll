











define <16 x float> @test_x86_fmadd_ps_y_wide(<16 x float> %a0, <16 x float> %a1, <16 x float> %a2) {
  %x = fmul <16 x float> %a0, %a1
  %res = fadd <16 x float> %x, %a2
  ret <16 x float> %res
}









define <16 x float> @test_x86_fmsub_ps_y_wide(<16 x float> %a0, <16 x float> %a1, <16 x float> %a2) {
  %x = fmul <16 x float> %a0, %a1
  %res = fsub <16 x float> %x, %a2
  ret <16 x float> %res
}









define <16 x float> @test_x86_fnmadd_ps_y_wide(<16 x float> %a0, <16 x float> %a1, <16 x float> %a2) {
  %x = fmul <16 x float> %a0, %a1
  %res = fsub <16 x float> %a2, %x
  ret <16 x float> %res
}





define <16 x float> @test_x86_fnmsub_ps_y_wide(<16 x float> %a0, <16 x float> %a1, <16 x float> %a2) {
  %x = fmul <16 x float> %a0, %a1
  %y = fsub <16 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %x
  %res = fsub <16 x float> %y, %a2
  ret <16 x float> %res
}









define <8 x double> @test_x86_fmadd_pd_y_wide(<8 x double> %a0, <8 x double> %a1, <8 x double> %a2) {
  %x = fmul <8 x double> %a0, %a1
  %res = fadd <8 x double> %x, %a2
  ret <8 x double> %res
}









define <8 x double> @test_x86_fmsub_pd_y_wide(<8 x double> %a0, <8 x double> %a1, <8 x double> %a2) {
  %x = fmul <8 x double> %a0, %a1
  %res = fsub <8 x double> %x, %a2
  ret <8 x double> %res
}
