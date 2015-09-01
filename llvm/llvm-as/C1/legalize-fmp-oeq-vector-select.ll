


define <4 x float> @bug(float %a) nounwind {
entry:
  %cmp = fcmp oeq float %a, 0.000000e+00          
  %temp = select i1 %cmp, <4 x float> <float 1.000000e+00, float 0.000000e+00,
float 0.000000e+00, float 0.000000e+00>, <4 x float> zeroinitializer
  ret <4 x float> %temp
}

