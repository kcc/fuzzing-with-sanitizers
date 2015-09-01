









declare float @llvm.AMDGPU.rcp.f32(float) nounwind readnone
declare double @llvm.AMDGPU.rcp.f64(double) nounwind readnone

declare float @llvm.sqrt.f32(float) nounwind readnone




define void @rcp_f32(float addrspace(1)* %out, float %src) nounwind {
  %rcp = call float @llvm.AMDGPU.rcp.f32(float %src) nounwind readnone
  store float %rcp, float addrspace(1)* %out, align 4
  ret void
}









define void @rcp_pat_f32(float addrspace(1)* %out, float %src) nounwind {
  %rcp = fdiv float 1.0, %src
  store float %rcp, float addrspace(1)* %out, align 4
  ret void
}







define void @rsq_rcp_pat_f32(float addrspace(1)* %out, float %src) nounwind {
  %sqrt = call float @llvm.sqrt.f32(float %src) nounwind readnone
  %rcp = call float @llvm.AMDGPU.rcp.f32(float %sqrt) nounwind readnone
  store float %rcp, float addrspace(1)* %out, align 4
  ret void
}
