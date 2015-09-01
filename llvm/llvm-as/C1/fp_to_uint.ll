








define void @fp_to_uint_f32_to_i32 (i32 addrspace(1)* %out, float %in) {
  %conv = fptoui float %in to i32
  store i32 %conv, i32 addrspace(1)* %out
  ret void
}







define void @fp_to_uint_v2f32_to_v2i32(<2 x i32> addrspace(1)* %out, <2 x float> %in) {
  %result = fptoui <2 x float> %in to <2 x i32>
  store <2 x i32> %result, <2 x i32> addrspace(1)* %out
  ret void
}











define void @fp_to_uint_v4f32_to_v4i32(<4 x i32> addrspace(1)* %out, <4 x float> addrspace(1)* %in) {
  %value = load <4 x float>, <4 x float> addrspace(1) * %in
  %result = fptoui <4 x float> %value to <4 x i32>
  store <4 x i32> %result, <4 x i32> addrspace(1)* %out
  ret void
}

























define void @fp_to_uint_f32_to_i64(i64 addrspace(1)* %out, float %x) {
  %conv = fptoui float %x to i64
  store i64 %conv, i64 addrspace(1)* %out
  ret void
}














































define void @fp_to_uint_v2f32_to_v2i64(<2 x i64> addrspace(1)* %out, <2 x float> %x) {
  %conv = fptoui <2 x float> %x to <2 x i64>
  store <2 x i64> %conv, <2 x i64> addrspace(1)* %out
  ret void
}
























































































define void @fp_to_uint_v4f32_to_v4i64(<4 x i64> addrspace(1)* %out, <4 x float> %x) {
  %conv = fptoui <4 x float> %x to <4 x i64>
  store <4 x i64> %conv, <4 x i64> addrspace(1)* %out
  ret void
}
