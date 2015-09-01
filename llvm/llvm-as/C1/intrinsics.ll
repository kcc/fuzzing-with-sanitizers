


define ptx_device float @test_fabsf(float %f) {


	%x = call float @llvm.fabs.f32(float %f)
	ret float %x
}

define ptx_device double @test_fabs(double %d) {


	%x = call double @llvm.fabs.f64(double %d)
	ret double %x
}

define float @test_nvvm_sqrt(float %a) {


  %val = call float @llvm.nvvm.sqrt.f(float %a)
  ret float %val
}


declare float @llvm.fabs.f32(float)
declare double @llvm.fabs.f64(double)
declare float @llvm.nvvm.sqrt.f(float)
