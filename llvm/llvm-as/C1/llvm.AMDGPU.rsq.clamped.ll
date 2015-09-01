




declare float @llvm.AMDGPU.rsq.clamped.f32(float) nounwind readnone












define void @rsq_clamped_f32(float addrspace(1)* %out, float %src) nounwind {
  %rsq_clamped = call float @llvm.AMDGPU.rsq.clamped.f32(float %src) nounwind readnone
  store float %rsq_clamped, float addrspace(1)* %out, align 4
  ret void
}
