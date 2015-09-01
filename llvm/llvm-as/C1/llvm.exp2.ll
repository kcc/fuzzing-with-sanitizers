












define void @test(float addrspace(1)* %out, float %in) {
entry:
   %0 = call float @llvm.exp2.f32(float %in)
   store float %0, float addrspace(1)* %out
   ret void
}

















define void @testv2(<2 x float> addrspace(1)* %out, <2 x float> %in) {
entry:
  %0 = call <2 x float> @llvm.exp2.v2f32(<2 x float> %in)
  store <2 x float> %0, <2 x float> addrspace(1)* %out
  ret void
}




























define void @testv4(<4 x float> addrspace(1)* %out, <4 x float> %in) {
entry:
  %0 = call <4 x float> @llvm.exp2.v4f32(<4 x float> %in)
  store <4 x float> %0, <4 x float> addrspace(1)* %out
  ret void
}

declare float @llvm.exp2.f32(float) readnone
declare <2 x float> @llvm.exp2.v2f32(<2 x float>) readnone
declare <4 x float> @llvm.exp2.v4f32(<4 x float>) readnone
