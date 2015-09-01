


declare float @llvm.AMDGPU.legacy.rsq(float) nounwind readnone




define void @rsq_legacy_f32(float addrspace(1)* %out, float %src) nounwind {
  %rsq = call float @llvm.AMDGPU.legacy.rsq(float %src) nounwind readnone
  store float %rsq, float addrspace(1)* %out, align 4
  ret void
}
