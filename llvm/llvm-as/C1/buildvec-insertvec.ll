

define void @foo(<3 x float> %in, <4 x i8>* nocapture %out) nounwind {








  %t0 = fptoui <3 x float> %in to <3 x i8>
  %t1 = shufflevector <3 x i8> %t0, <3 x i8> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 undef>
  %t2 = insertelement <4 x i8> %t1, i8 -1, i32 3
  store <4 x i8> %t2, <4 x i8>* %out, align 4
  ret void
}







define <4 x float> @test_negative_zero_1(<4 x float> %A) {










entry:
  %0 = extractelement <4 x float> %A, i32 0
  %1 = insertelement <4 x float> undef, float %0, i32 0
  %2 = insertelement <4 x float> %1, float -0.0, i32 1
  %3 = extractelement <4 x float> %A, i32 2
  %4 = insertelement <4 x float> %2, float %3, i32 2
  %5 = insertelement <4 x float> %4, float 0.0, i32 3
  ret <4 x float> %5
}

define <2 x double> @test_negative_zero_2(<2 x double> %A) {




entry:
  %0 = extractelement <2 x double> %A, i32 0
  %1 = insertelement <2 x double> undef, double %0, i32 0
  %2 = insertelement <2 x double> %1, double -0.0, i32 1
  ret <2 x double> %2
}
