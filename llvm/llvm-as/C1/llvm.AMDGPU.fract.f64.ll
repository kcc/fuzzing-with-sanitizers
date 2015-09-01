



declare double @llvm.fabs.f64(double %Val)
declare double @llvm.AMDGPU.fract.f64(double) nounwind readnone











define void @fract_f64(double addrspace(1)* %out, double addrspace(1)* %src) nounwind {
  %val = load double, double addrspace(1)* %src, align 4
  %fract = call double @llvm.AMDGPU.fract.f64(double %val) nounwind readnone
  store double %fract, double addrspace(1)* %out, align 4
  ret void
}











define void @fract_f64_neg(double addrspace(1)* %out, double addrspace(1)* %src) nounwind {
  %val = load double, double addrspace(1)* %src, align 4
  %neg = fsub double 0.0, %val
  %fract = call double @llvm.AMDGPU.fract.f64(double %neg) nounwind readnone
  store double %fract, double addrspace(1)* %out, align 4
  ret void
}











define void @fract_f64_neg_abs(double addrspace(1)* %out, double addrspace(1)* %src) nounwind {
  %val = load double, double addrspace(1)* %src, align 4
  %abs = call double @llvm.fabs.f64(double %val)
  %neg = fsub double 0.0, %abs
  %fract = call double @llvm.AMDGPU.fract.f64(double %neg) nounwind readnone
  store double %fract, double addrspace(1)* %out, align 4
  ret void
}
