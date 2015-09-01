




define <16 x float> @fmafunc(<16 x float> %a, <16 x float> %b, <16 x float> %c) {


















  %ret = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %a, <16 x float> %b, <16 x float> %c)
  ret <16 x float> %ret
}

declare <16 x float> @llvm.fmuladd.v16f32(<16 x float>, <16 x float>, <16 x float>) nounwind readnone
