


declare float @llvm.AMDGPU.div.fixup.f32(float, float, float) nounwind readnone
declare double @llvm.AMDGPU.div.fixup.f64(double, double, double) nounwind readnone













define void @test_div_fixup_f32(float addrspace(1)* %out, float %a, float %b, float %c) nounwind {
  %result = call float @llvm.AMDGPU.div.fixup.f32(float %a, float %b, float %c) nounwind readnone
  store float %result, float addrspace(1)* %out, align 4
  ret void
}



define void @test_div_fixup_f64(double addrspace(1)* %out, double %a, double %b, double %c) nounwind {
  %result = call double @llvm.AMDGPU.div.fixup.f64(double %a, double %b, double %c) nounwind readnone
  store double %result, double addrspace(1)* %out, align 8
  ret void
}
