

define <2 x i32> @c1(<2 x float> %a) nounwind readnone ssp {



  %vcvt.i = fptosi <2 x float> %a to <2 x i32>
  ret <2 x i32> %vcvt.i
}

define <2 x i32> @c2(<2 x float> %a) nounwind readnone ssp {



  %vcvt.i = fptoui <2 x float> %a to <2 x i32>
  ret <2 x i32> %vcvt.i
}

define <4 x i32> @c3(<4 x float> %a) nounwind readnone ssp {



  %vcvt.i = fptosi <4 x float> %a to <4 x i32>
  ret <4 x i32> %vcvt.i
}

define <4 x i32> @c4(<4 x float> %a) nounwind readnone ssp {



  %vcvt.i = fptoui <4 x float> %a to <4 x i32>
  ret <4 x i32> %vcvt.i
}

