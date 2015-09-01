




declare float @llvm.copysign.f32(float, float) nounwind readnone
declare <2 x float> @llvm.copysign.v2f32(<2 x float>, <2 x float>) nounwind readnone
declare <4 x float> @llvm.copysign.v4f32(<4 x float>, <4 x float>) nounwind readnone















define void @test_copysign_f32(float addrspace(1)* %out, float %mag, float %sign) nounwind {
  %result = call float @llvm.copysign.f32(float %mag, float %sign)
  store float %result, float addrspace(1)* %out, align 4
  ret void
}






define void @test_copysign_v2f32(<2 x float> addrspace(1)* %out, <2 x float> %mag, <2 x float> %sign) nounwind {
  %result = call <2 x float> @llvm.copysign.v2f32(<2 x float> %mag, <2 x float> %sign)
  store <2 x float> %result, <2 x float> addrspace(1)* %out, align 8
  ret void
}








define void @test_copysign_v4f32(<4 x float> addrspace(1)* %out, <4 x float> %mag, <4 x float> %sign) nounwind {
  %result = call <4 x float> @llvm.copysign.v4f32(<4 x float> %mag, <4 x float> %sign)
  store <4 x float> %result, <4 x float> addrspace(1)* %out, align 16
  ret void
}

