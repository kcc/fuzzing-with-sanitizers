












define <2 x float> @test4(<2 x float> %A, <2 x float> %B) nounwind {









entry:
  %tmp7 = extractelement <2 x float> %A, i32 0
  %tmp5 = extractelement <2 x float> %A, i32 1
  %tmp3 = extractelement <2 x float> %B, i32 0
  %tmp1 = extractelement <2 x float> %B, i32 1
  %add.r = fadd float %tmp7, %tmp3
  %add.i = fsub float %tmp5, %tmp1
  %tmp11 = insertelement <2 x float> undef, float %add.r, i32 0
  %tmp9 = insertelement <2 x float> %tmp11, float %add.i, i32 1
  ret <2 x float> %tmp9
}







define <4 x float> @vselect(<4 x float>*%p, <4 x i32> %q) {


entry:
  %a1 = icmp eq <4 x i32> %q, zeroinitializer
  %a14 = select <4 x i1> %a1, <4 x float> <float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+0> , <4 x float> zeroinitializer
  ret <4 x float> %a14
}
