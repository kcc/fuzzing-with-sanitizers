








define void @uint_to_fp_i32_to_f32(float addrspace(1)* %out, i32 %in) {
  %result = uitofp i32 %in to float
  store float %result, float addrspace(1)* %out
  ret void
}








define void @uint_to_fp_v2i32_to_v2f32(<2 x float> addrspace(1)* %out, <2 x i32> %in) {
  %result = uitofp <2 x i32> %in to <2 x float>
  store <2 x float> %result, <2 x float> addrspace(1)* %out
  ret void
}












define void @uint_to_fp_v4i32_to_v4f32(<4 x float> addrspace(1)* %out, <4 x i32> addrspace(1)* %in) {
  %value = load <4 x i32>, <4 x i32> addrspace(1) * %in
  %result = uitofp <4 x i32> %value to <4 x float>
  store <4 x float> %result, <4 x float> addrspace(1)* %out
  ret void
}









define void @uint_to_fp_i64_to_f32(float addrspace(1)* %out, i64 %in) {
entry:
  %0 = uitofp i64 %in to float
  store float %0, float addrspace(1)* %out
  ret void
}






define void @uint_to_fp_i1_to_f32(float addrspace(1)* %out, i32 %in) {
  %cmp = icmp eq i32 %in, 0
  %fp = uitofp i1 %cmp to float
  store float %fp, float addrspace(1)* %out, align 4
  ret void
}





define void @uint_to_fp_i1_to_f32_load(float addrspace(1)* %out, i1 %in) {
  %fp = uitofp i1 %in to float
  store float %fp, float addrspace(1)* %out, align 4
  ret void
}
