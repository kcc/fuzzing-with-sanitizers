


define <3 x float> @addf3(<3 x float> %x) {




entry:
  %add = fadd <3 x float> %x, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>
  ret <3 x float> %add
}


define <4 x float> @cvtf3_f4(<3 x float> %x) {



entry:
  %extractVec = shufflevector <3 x float> %x, <3 x float> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 undef>
  ret <4 x float> %extractVec
}


define <3 x float> @cvtf4_f3(<4 x float> %x) {



entry:
  %extractVec = shufflevector <4 x float> %x, <4 x float> undef, <3 x i32> <i32 0, i32 1, i32 2>
  ret <3 x float> %extractVec
}
