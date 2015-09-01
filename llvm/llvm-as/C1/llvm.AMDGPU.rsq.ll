



declare float @llvm.AMDGPU.rsq.f32(float) nounwind readnone




define void @rsq_f32(float addrspace(1)* %out, float %src) nounwind {
  %rsq = call float @llvm.AMDGPU.rsq.f32(float %src) nounwind readnone
  store float %rsq, float addrspace(1)* %out, align 4
  ret void
}





define void @rsq_f32_constant_4.0(float addrspace(1)* %out) nounwind {
  %rsq = call float @llvm.AMDGPU.rsq.f32(float 4.0) nounwind readnone
  store float %rsq, float addrspace(1)* %out, align 4
  ret void
}




define void @rsq_f32_constant_100.0(float addrspace(1)* %out) nounwind {
  %rsq = call float @llvm.AMDGPU.rsq.f32(float 100.0) nounwind readnone
  store float %rsq, float addrspace(1)* %out, align 4
  ret void
}
