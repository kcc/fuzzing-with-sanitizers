

declare float @llvm.AMDGPU.rcp.f32(float) nounwind readnone
declare double @llvm.AMDGPU.rcp.f64(double) nounwind readnone



define float @test_constant_fold_rcp_f32_1() nounwind {
  %val = call float @llvm.AMDGPU.rcp.f32(float 1.0) nounwind readnone
  ret float %val
}



define double @test_constant_fold_rcp_f64_1() nounwind {
  %val = call double @llvm.AMDGPU.rcp.f64(double 1.0) nounwind readnone
  ret double %val
}



define float @test_constant_fold_rcp_f32_half() nounwind {
  %val = call float @llvm.AMDGPU.rcp.f32(float 0.5) nounwind readnone
  ret float %val
}



define double @test_constant_fold_rcp_f64_half() nounwind {
  %val = call double @llvm.AMDGPU.rcp.f64(double 0.5) nounwind readnone
  ret double %val
}



define float @test_constant_fold_rcp_f32_43() nounwind {
 %val = call float @llvm.AMDGPU.rcp.f32(float 4.300000e+01) nounwind readnone
 ret float %val
}



define double @test_constant_fold_rcp_f64_43() nounwind {
  %val = call double @llvm.AMDGPU.rcp.f64(double 4.300000e+01) nounwind readnone
  ret double %val
}

