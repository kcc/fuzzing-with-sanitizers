


define <4 x float> @muladd(<4 x float> %a, <4 x float> %b, <4 x float> %c) nounwind {








  %tmp = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %b, <4 x float> %c, <4 x float> %a) #2
  ret <4 x float> %tmp
}

declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #1

define <2 x float> @muladd2(<2 x float> %a, <2 x float> %b, <2 x float> %c) nounwind {






  %tmp = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %b, <2 x float> %c, <2 x float> %a) #2
  ret <2 x float> %tmp
}

declare <2 x float> @llvm.fma.v2f32(<2 x float>, <2 x float>, <2 x float>) #1

