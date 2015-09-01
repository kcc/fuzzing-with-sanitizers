





declare <8 x float> @llvm.x86.avx.vinsertf128.ps.256(<8 x float>, <4 x float>, i8)

define <8 x float> @lower_half(<4 x float> %v1, <4 x float> %v2, <4 x float> %v3) {
  %1 = shufflevector <4 x float> %v1, <4 x float> %v2, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %2 = tail call <8 x float> @llvm.x86.avx.vinsertf128.ps.256(<8 x float> %1, <4 x float> %v3, i8 0)
  ret <8 x float> %2





}

define <8 x float> @upper_half(<4 x float> %v1, <4 x float> %v2, <4 x float> %v3) {
  %1 = shufflevector <4 x float> %v1, <4 x float> %v2, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %2 = tail call <8 x float> @llvm.x86.avx.vinsertf128.ps.256(<8 x float> %1, <4 x float> %v3, i8 1)
  ret <8 x float> %2





}
