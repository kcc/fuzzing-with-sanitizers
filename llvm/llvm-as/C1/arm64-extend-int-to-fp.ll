

define <4 x float> @foo(<4 x i16> %a) nounwind {




  %vcvt.i = uitofp <4 x i16> %a to <4 x float>
  ret <4 x float> %vcvt.i
}

define <4 x float> @bar(<4 x i16> %a) nounwind {




  %vcvt.i = sitofp <4 x i16> %a to <4 x float>
  ret <4 x float> %vcvt.i
}
