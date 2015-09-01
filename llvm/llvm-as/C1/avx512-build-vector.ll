

define <16 x i32> @test2(<16 x i32> %x) {




   %res = add <16 x i32><i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>, %x
   ret <16 x i32>%res
}

define <16 x float> @test3(<4 x float> %a) {











  %b = extractelement <4 x float> %a, i32 2
  %c = insertelement <16 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %b, i32 5
  %b1 = extractelement <4 x float> %a, i32 0
  %c1 = insertelement <16 x float> %c, float %b1, i32 6
  ret <16 x float>%c1
}
