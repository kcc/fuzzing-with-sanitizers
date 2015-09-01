



declare float @llvm.fabs.f32(float) nounwind readnone
declare float @llvm.AMDGPU.clamp.f32(float, float, float) nounwind readnone
declare float @llvm.AMDIL.clamp.f32(float, float, float) nounwind readnone








define void @clamp_0_1_f32(float addrspace(1)* %out, float %src) nounwind {
  %clamp = call float @llvm.AMDGPU.clamp.f32(float %src, float 0.0, float 1.0) nounwind readnone
  store float %clamp, float addrspace(1)* %out, align 4
  ret void
}






define void @clamp_fabs_0_1_f32(float addrspace(1)* %out, float %src) nounwind {
  %src.fabs = call float @llvm.fabs.f32(float %src) nounwind readnone
  %clamp = call float @llvm.AMDGPU.clamp.f32(float %src.fabs, float 0.0, float 1.0) nounwind readnone
  store float %clamp, float addrspace(1)* %out, align 4
  ret void
}






define void @clamp_fneg_0_1_f32(float addrspace(1)* %out, float %src) nounwind {
  %src.fneg = fsub float -0.0, %src
  %clamp = call float @llvm.AMDGPU.clamp.f32(float %src.fneg, float 0.0, float 1.0) nounwind readnone
  store float %clamp, float addrspace(1)* %out, align 4
  ret void
}






define void @clamp_fneg_fabs_0_1_f32(float addrspace(1)* %out, float %src) nounwind {
  %src.fabs = call float @llvm.fabs.f32(float %src) nounwind readnone
  %src.fneg.fabs = fsub float -0.0, %src.fabs
  %clamp = call float @llvm.AMDGPU.clamp.f32(float %src.fneg.fabs, float 0.0, float 1.0) nounwind readnone
  store float %clamp, float addrspace(1)* %out, align 4
  ret void
}





define void @clamp_0_1_amdil_legacy_f32(float addrspace(1)* %out, float %src) nounwind {
  %clamp = call float @llvm.AMDIL.clamp.f32(float %src, float 0.0, float 1.0) nounwind readnone
  store float %clamp, float addrspace(1)* %out, align 4
  ret void
}
