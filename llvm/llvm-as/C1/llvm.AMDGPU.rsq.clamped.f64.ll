


declare double @llvm.AMDGPU.rsq.clamped.f64(double) nounwind readnone














define void @rsq_clamped_f64(double addrspace(1)* %out, double %src) nounwind {
  %rsq_clamped = call double @llvm.AMDGPU.rsq.clamped.f64(double %src) nounwind readnone
  store double %rsq_clamped, double addrspace(1)* %out, align 8
  ret void
}
