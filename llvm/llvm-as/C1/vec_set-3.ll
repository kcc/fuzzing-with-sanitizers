

define <4 x float> @test(float %a) {




entry:
  %tmp = insertelement <4 x float> zeroinitializer, float %a, i32 1
  %tmp5 = insertelement <4 x float> %tmp, float 0.000000e+00, i32 2
  %tmp6 = insertelement <4 x float> %tmp5, float 0.000000e+00, i32 3
  ret <4 x float> %tmp6
}

define <2 x i64> @test2(i32 %a) {





entry:
  %tmp7 = insertelement <4 x i32> zeroinitializer, i32 %a, i32 2
  %tmp9 = insertelement <4 x i32> %tmp7, i32 0, i32 3
  %tmp10 = bitcast <4 x i32> %tmp9 to <2 x i64>
  ret <2 x i64> %tmp10
}

define <4 x float> @test3(<4 x float> %A) {




  %tmp0 = extractelement <4 x float> %A, i32 0
  %tmp1 = insertelement <4 x float> <float 0.000000e+00, float undef, float undef, float undef >, float %tmp0, i32 1
  %tmp2 = insertelement <4 x float> %tmp1, float 0.000000e+00, i32 2
  ret <4 x float> %tmp2
}
