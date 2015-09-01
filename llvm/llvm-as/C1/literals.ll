











define void @i32_literal(i32 addrspace(1)* %out, i32 %in) {
entry:
  %0 = add i32 5, %in
  store i32 %0, i32 addrspace(1)* %out
  ret void
}











define void @float_literal(float addrspace(1)* %out, float %in) {
entry:
  %0 = fadd float 5.0, %in
  store float %0, float addrspace(1)* %out
  ret void
}








define void @inline_literal_reg_sequence(<4 x i32> addrspace(1)* %out) {
entry:
  store <4 x i32> <i32 0, i32 0, i32 0, i32 0>, <4 x i32> addrspace(1)* %out
  ret void
}






define void @inline_literal_dot4(float addrspace(1)* %out) {
entry:
  %0 = call float @llvm.AMDGPU.dp4(<4 x float> <float 1.0, float 1.0, float 1.0, float 1.0>, <4 x float> <float 1.0, float 1.0, float 1.0, float 1.0>)
  store float %0, float addrspace(1)* %out
  ret void
}

declare float @llvm.AMDGPU.dp4(<4 x float>, <4 x float>) #1

attributes #1 = { readnone }
