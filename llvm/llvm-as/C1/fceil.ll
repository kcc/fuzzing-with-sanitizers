



declare float @llvm.ceil.f32(float) nounwind readnone
declare <2 x float> @llvm.ceil.v2f32(<2 x float>) nounwind readnone
declare <3 x float> @llvm.ceil.v3f32(<3 x float>) nounwind readnone
declare <4 x float> @llvm.ceil.v4f32(<4 x float>) nounwind readnone
declare <8 x float> @llvm.ceil.v8f32(<8 x float>) nounwind readnone
declare <16 x float> @llvm.ceil.v16f32(<16 x float>) nounwind readnone





define void @fceil_f32(float addrspace(1)* %out, float %x) {
  %y = call float @llvm.ceil.f32(float %x) nounwind readnone
  store float %y, float addrspace(1)* %out
  ret void
}







define void @fceil_v2f32(<2 x float> addrspace(1)* %out, <2 x float> %x) {
  %y = call <2 x float> @llvm.ceil.v2f32(<2 x float> %x) nounwind readnone
  store <2 x float> %y, <2 x float> addrspace(1)* %out
  ret void
}











define void @fceil_v3f32(<3 x float> addrspace(1)* %out, <3 x float> %x) {
  %y = call <3 x float> @llvm.ceil.v3f32(<3 x float> %x) nounwind readnone
  store <3 x float> %y, <3 x float> addrspace(1)* %out
  ret void
}











define void @fceil_v4f32(<4 x float> addrspace(1)* %out, <4 x float> %x) {
  %y = call <4 x float> @llvm.ceil.v4f32(<4 x float> %x) nounwind readnone
  store <4 x float> %y, <4 x float> addrspace(1)* %out
  ret void
}




















define void @fceil_v8f32(<8 x float> addrspace(1)* %out, <8 x float> %x) {
  %y = call <8 x float> @llvm.ceil.v8f32(<8 x float> %x) nounwind readnone
  store <8 x float> %y, <8 x float> addrspace(1)* %out
  ret void
}






































define void @fceil_v16f32(<16 x float> addrspace(1)* %out, <16 x float> %x) {
  %y = call <16 x float> @llvm.ceil.v16f32(<16 x float> %x) nounwind readnone
  store <16 x float> %y, <16 x float> addrspace(1)* %out
  ret void
}
