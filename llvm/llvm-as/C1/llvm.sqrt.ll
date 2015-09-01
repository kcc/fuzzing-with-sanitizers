








define void @sqrt_f32(float addrspace(1)* %out, float %in) {
entry:
  %0 = call float @llvm.sqrt.f32(float %in)
  store float %0, float addrspace(1)* %out
  ret void
}









define void @sqrt_v2f32(<2 x float> addrspace(1)* %out, <2 x float> %in) {
entry:
  %0 = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %in)
  store <2 x float> %0, <2 x float> addrspace(1)* %out
  ret void
}















define void @sqrt_v4f32(<4 x float> addrspace(1)* %out, <4 x float> %in) {
entry:
  %0 = call <4 x float> @llvm.sqrt.v4f32(<4 x float> %in)
  store <4 x float> %0, <4 x float> addrspace(1)* %out
  ret void
}




define void @elim_redun_check(float addrspace(1)* %out, float %in) {
entry:
  %sqrt = call float @llvm.sqrt.f32(float %in)
  %cmp = fcmp olt float %in, -0.000000e+00
  %res = select i1 %cmp, float 0x7FF8000000000000, float %sqrt
  store float %res, float addrspace(1)* %out
  ret void
}




define void @elim_redun_check_ult(float addrspace(1)* %out, float %in) {
entry:
  %sqrt = call float @llvm.sqrt.f32(float %in)
  %cmp = fcmp ult float %in, -0.000000e+00
  %res = select i1 %cmp, float 0x7FF8000000000000, float %sqrt
  store float %res, float addrspace(1)* %out
  ret void
}





define void @elim_redun_check_v2(<2 x float> addrspace(1)* %out, <2 x float> %in) {
entry:
  %sqrt = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %in)
  %cmp = fcmp olt <2 x float> %in, <float -0.000000e+00, float -0.000000e+00>
  %res = select <2 x i1> %cmp, <2 x float> <float 0x7FF8000000000000, float 0x7FF8000000000000>, <2 x float> %sqrt
  store <2 x float> %res, <2 x float> addrspace(1)* %out
  ret void
}





define void @elim_redun_check_v2_ult(<2 x float> addrspace(1)* %out, <2 x float> %in) {
entry:
  %sqrt = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %in)
  %cmp = fcmp ult <2 x float> %in, <float -0.000000e+00, float -0.000000e+00>
  %res = select <2 x i1> %cmp, <2 x float> <float 0x7FF8000000000000, float 0x7FF8000000000000>, <2 x float> %sqrt
  store <2 x float> %res, <2 x float> addrspace(1)* %out
  ret void
}

declare float @llvm.sqrt.f32(float %in)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float> %in)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float> %in)
