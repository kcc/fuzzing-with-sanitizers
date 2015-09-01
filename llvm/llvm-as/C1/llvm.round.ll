





















define void @round_f32(float addrspace(1)* %out, float %x) #0 {
  %result = call float @llvm.round.f32(float %x) #1
  store float %result, float addrspace(1)* %out
  ret void
}









define void @round_v2f32(<2 x float> addrspace(1)* %out, <2 x float> %in) #0 {
  %result = call <2 x float> @llvm.round.v2f32(<2 x float> %in) #1
  store <2 x float> %result, <2 x float> addrspace(1)* %out
  ret void
}




define void @round_v4f32(<4 x float> addrspace(1)* %out, <4 x float> %in) #0 {
  %result = call <4 x float> @llvm.round.v4f32(<4 x float> %in) #1
  store <4 x float> %result, <4 x float> addrspace(1)* %out
  ret void
}




define void @round_v8f32(<8 x float> addrspace(1)* %out, <8 x float> %in) #0 {
  %result = call <8 x float> @llvm.round.v8f32(<8 x float> %in) #1
  store <8 x float> %result, <8 x float> addrspace(1)* %out
  ret void
}

declare float @llvm.round.f32(float) #1
declare <2 x float> @llvm.round.v2f32(<2 x float>) #1
declare <4 x float> @llvm.round.v4f32(<4 x float>) #1
declare <8 x float> @llvm.round.v8f32(<8 x float>) #1

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }
