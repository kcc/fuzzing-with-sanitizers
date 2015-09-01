






define void @floor_f32(float addrspace(1)* %out, float %in) {
  %tmp = call float @llvm.floor.f32(float %in) #0
  store float %tmp, float addrspace(1)* %out
  ret void
}





define void @floor_v2f32(<2 x float> addrspace(1)* %out, <2 x float> %in) {
  %tmp = call <2 x float> @llvm.floor.v2f32(<2 x float> %in) #0
  store <2 x float> %tmp, <2 x float> addrspace(1)* %out
  ret void
}











define void @floor_v4f32(<4 x float> addrspace(1)* %out, <4 x float> %in) {
  %tmp = call <4 x float> @llvm.floor.v4f32(<4 x float> %in) #0
  store <4 x float> %tmp, <4 x float> addrspace(1)* %out
  ret void
}


declare float @llvm.floor.f32(float) #0


declare <2 x float> @llvm.floor.v2f32(<2 x float>) #0


declare <4 x float> @llvm.floor.v4f32(<4 x float>) #0

attributes #0 = { nounwind readnone }
