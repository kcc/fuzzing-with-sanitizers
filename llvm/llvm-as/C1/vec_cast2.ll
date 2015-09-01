


define <8 x float> @foo1_8(<8 x i8> %src) {




















  %res = sitofp <8 x i8> %src to <8 x float>
  ret <8 x float> %res
}

define <4 x float> @foo1_4(<4 x i8> %src) {












  %res = sitofp <4 x i8> %src to <4 x float>
  ret <4 x float> %res
}

define <8 x float> @foo2_8(<8 x i8> %src) {

















  %res = uitofp <8 x i8> %src to <8 x float>
  ret <8 x float> %res
}

define <4 x float> @foo2_4(<4 x i8> %src) {











  %res = uitofp <4 x i8> %src to <4 x float>
  ret <4 x float> %res
}

define <8 x i8> @foo3_8(<8 x float> %src) {






































  %res = fptosi <8 x float> %src to <8 x i8>
  ret <8 x i8> %res
}

define <4 x i8> @foo3_4(<4 x float> %src) {



















  %res = fptosi <4 x float> %src to <4 x i8>
  ret <4 x i8> %res
}

