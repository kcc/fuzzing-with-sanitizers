



declare float @llvm.fabs.f32(float) #0





define void @fp_to_sint_i32(i32 addrspace(1)* %out, float %in) {
  %conv = fptosi float %in to i32
  store i32 %conv, i32 addrspace(1)* %out
  ret void
}



define void @fp_to_sint_i32_fabs(i32 addrspace(1)* %out, float %in) {
  %in.fabs = call float @llvm.fabs.f32(float %in) #0
  %conv = fptosi float %in.fabs to i32
  store i32 %conv, i32 addrspace(1)* %out
  ret void
}






define void @fp_to_sint_v2i32(<2 x i32> addrspace(1)* %out, <2 x float> %in) {
  %result = fptosi <2 x float> %in to <2 x i32>
  store <2 x i32> %result, <2 x i32> addrspace(1)* %out
  ret void
}










define void @fp_to_sint_v4i32(<4 x i32> addrspace(1)* %out, <4 x float> addrspace(1)* %in) {
  %value = load <4 x float>, <4 x float> addrspace(1) * %in
  %result = fptosi <4 x float> %value to <4 x i32>
  store <4 x i32> %result, <4 x i32> addrspace(1)* %out
  ret void
}



























define void @fp_to_sint_i64 (i64 addrspace(1)* %out, float %in) {
entry:
  %0 = fptosi float %in to i64
  store i64 %0, i64 addrspace(1)* %out
  ret void
}














































define void @fp_to_sint_v2i64(<2 x i64> addrspace(1)* %out, <2 x float> %x) {
  %conv = fptosi <2 x float> %x to <2 x i64>
  store <2 x i64> %conv, <2 x i64> addrspace(1)* %out
  ret void
}
























































































define void @fp_to_sint_v4i64(<4 x i64> addrspace(1)* %out, <4 x float> %x) {
  %conv = fptosi <4 x float> %x to <4 x i64>
  store <4 x i64> %conv, <4 x i64> addrspace(1)* %out
  ret void
}

attributes #0 = { nounwind readnone }
