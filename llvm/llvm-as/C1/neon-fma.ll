




define <2 x float> @test_v2f32(<2 x float> %a, <2 x float> %b, <2 x float> %c) nounwind readnone ssp {
entry:
  %call = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %a, <2 x float> %b, <2 x float> %c) nounwind readnone
  ret <2 x float> %call
}




define <4 x float> @test_v4f32(<4 x float> %a, <4 x float> %b, <4 x float> %c) nounwind readnone ssp {
entry:
  %call = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %a, <4 x float> %b, <4 x float> %c) nounwind readnone
  ret <4 x float> %call
}

declare <2 x float> @llvm.fma.v2f32(<2 x float>, <2 x float>, <2 x float>) nounwind readnone
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) nounwind readnone
