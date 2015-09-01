


define float @foo1(float %a) #0 {

  %b = fcmp ogt float %a, 0.000000e+00
  %c = select i1 %b, float %a, float 0.000000e+00
  %d = fcmp olt float %c, 1.000000e+00
  %f = select i1 %d, float %c, float 1.000000e+00
  ret float %f
}


define float @foo2(float %a) #0 {

  %b = fcmp ogt float %a, 0.000000e+00
  %c = select i1 %b, float %a, float 0.000000e+00
  %d = fcmp olt float %c, 1.000000e+00
  %e = select i1 %b, float %a, float 0.000000e+00
  %f = select i1 %d, float %e, float 1.000000e+00
  ret float %f
}


define <2 x i32> @foo3(<2 x i1> %vec_bool, i1 %bool, <2 x i32> %V) {



  %sel0 = select <2 x i1> %vec_bool, <2 x i32> zeroinitializer, <2 x i32> %V
  %sel1 = select i1 %bool, <2 x i32> %sel0, <2 x i32> %V
  ret <2 x i32> %sel1
}

attributes #0 = { nounwind readnone ssp uwtable }
