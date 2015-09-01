


define void @PR13378() nounwind {









entry:
  %0 = load <4 x float>, <4 x float>* undef, align 4
  store <4 x float> zeroinitializer, <4 x float>* undef, align 4
  store <4 x float> %0, <4 x float>* undef, align 4
  %1 = insertelement <4 x float> %0, float 1.000000e+00, i32 3
  store <4 x float> %1, <4 x float>* undef, align 4
  unreachable
}
