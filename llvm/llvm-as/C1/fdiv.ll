















define void @fdiv_f32(float addrspace(1)* %out, float %a, float %b) {
entry:
  %0 = fdiv float %a, %b
  store float %0, float addrspace(1)* %out
  ret void
}













define void @fdiv_v2f32(<2 x float> addrspace(1)* %out, <2 x float> %a, <2 x float> %b) {
entry:
  %0 = fdiv <2 x float> %a, %b
  store <2 x float> %0, <2 x float> addrspace(1)* %out
  ret void
}



















define void @fdiv_v4f32(<4 x float> addrspace(1)* %out, <4 x float> addrspace(1)* %in) {
  %b_ptr = getelementptr <4 x float>, <4 x float> addrspace(1)* %in, i32 1
  %a = load <4 x float>, <4 x float> addrspace(1) * %in
  %b = load <4 x float>, <4 x float> addrspace(1) * %b_ptr
  %result = fdiv <4 x float> %a, %b
  store <4 x float> %result, <4 x float> addrspace(1)* %out
  ret void
}
