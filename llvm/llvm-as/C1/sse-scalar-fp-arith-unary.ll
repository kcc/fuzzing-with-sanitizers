







define <4 x float> @recip(<4 x float> %x) {









  %y = tail call <4 x float> @llvm.x86.sse.rcp.ss(<4 x float> %x)
  %shuf = shufflevector <4 x float> %y, <4 x float> %x, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  ret <4 x float> %shuf
}

define <4 x float> @recip_square_root(<4 x float> %x) {









  %y = tail call <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %x)
  %shuf = shufflevector <4 x float> %y, <4 x float> %x, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  ret <4 x float> %shuf
}

define <4 x float> @square_root(<4 x float> %x) {









  %y = tail call <4 x float> @llvm.x86.sse.sqrt.ss(<4 x float> %x)
  %shuf = shufflevector <4 x float> %y, <4 x float> %x, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  ret <4 x float> %shuf
}

define <2 x double> @square_root_double(<2 x double> %x) {









  %y = tail call <2 x double> @llvm.x86.sse2.sqrt.sd(<2 x double> %x)
  %shuf = shufflevector <2 x double> %y, <2 x double> %x, <2 x i32> <i32 0, i32 3>
  ret <2 x double> %shuf
}

declare <4 x float> @llvm.x86.sse.rcp.ss(<4 x float>)
declare <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float>)
declare <4 x float> @llvm.x86.sse.sqrt.ss(<4 x float>)
declare <2 x double> @llvm.x86.sse2.sqrt.sd(<2 x double>)

