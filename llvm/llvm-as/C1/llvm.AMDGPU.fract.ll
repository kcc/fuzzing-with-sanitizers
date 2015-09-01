




declare float @llvm.fabs.f32(float  %Val)
declare float @llvm.AMDGPU.fract.f32(float) nounwind readnone


declare float @llvm.AMDIL.fraction.f32(float) nounwind readnone







define void @fract_f32(float addrspace(1)* %out, float addrspace(1)* %src) nounwind {
  %val = load float, float addrspace(1)* %src, align 4
  %fract = call float @llvm.AMDGPU.fract.f32(float %val) nounwind readnone
  store float %fract, float addrspace(1)* %out, align 4
  ret void
}







define void @fract_f32_legacy_amdil(float addrspace(1)* %out, float addrspace(1)* %src) nounwind {
  %val = load float, float addrspace(1)* %src, align 4
  %fract = call float @llvm.AMDIL.fraction.f32(float %val) nounwind readnone
  store float %fract, float addrspace(1)* %out, align 4
  ret void
}







define void @fract_f32_neg(float addrspace(1)* %out, float addrspace(1)* %src) nounwind {
  %val = load float, float addrspace(1)* %src, align 4
  %neg = fsub float 0.0, %val
  %fract = call float @llvm.AMDGPU.fract.f32(float %neg) nounwind readnone
  store float %fract, float addrspace(1)* %out, align 4
  ret void
}







define void @fract_f32_neg_abs(float addrspace(1)* %out, float addrspace(1)* %src) nounwind {
  %val = load float, float addrspace(1)* %src, align 4
  %abs = call float @llvm.fabs.f32(float %val)
  %neg = fsub float 0.0, %abs
  %fract = call float @llvm.AMDGPU.fract.f32(float %neg) nounwind readnone
  store float %fract, float addrspace(1)* %out, align 4
  ret void
}
