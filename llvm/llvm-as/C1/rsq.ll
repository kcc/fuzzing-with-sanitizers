


declare i32 @llvm.r600.read.tidig.x() nounwind readnone
declare float @llvm.sqrt.f32(float) nounwind readnone
declare double @llvm.sqrt.f64(double) nounwind readnone




define void @rsq_f32(float addrspace(1)* noalias %out, float addrspace(1)* noalias %in) nounwind {
  %val = load float, float addrspace(1)* %in, align 4
  %sqrt = call float @llvm.sqrt.f32(float %val) nounwind readnone
  %div = fdiv float 1.0, %sqrt
  store float %div, float addrspace(1)* %out, align 4
  ret void
}





define void @rsq_f64(double addrspace(1)* noalias %out, double addrspace(1)* noalias %in) nounwind {
  %val = load double, double addrspace(1)* %in, align 4
  %sqrt = call double @llvm.sqrt.f64(double %val) nounwind readnone
  %div = fdiv double 1.0, %sqrt
  store double %div, double addrspace(1)* %out, align 4
  ret void
}




define void @rsq_f32_sgpr(float addrspace(1)* noalias %out, float %val) nounwind {
  %sqrt = call float @llvm.sqrt.f32(float %val) nounwind readnone
  %div = fdiv float 1.0, %sqrt
  store float %div, float addrspace(1)* %out, align 4
  ret void
}


















define void @rsqrt_fmul(float addrspace(1)* %out, float addrspace(1)* %in) {
  %tid = call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %out.gep = getelementptr float, float addrspace(1)* %out, i32 %tid
  %gep.0 = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr float, float addrspace(1)* %gep.0, i32 1
  %gep.2 = getelementptr float, float addrspace(1)* %gep.0, i32 2

  %a = load float, float addrspace(1)* %gep.0
  %b = load float, float addrspace(1)* %gep.1
  %c = load float, float addrspace(1)* %gep.2

  %x = call float @llvm.sqrt.f32(float %a)
  %y = fmul float %x, %b
  %z = fdiv float %c, %y
  store float %z, float addrspace(1)* %out.gep
  ret void
}
