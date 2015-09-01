









define <4 x i32> @swizzle_1(<4 x i32> %v) {




  %1 = shufflevector <4 x i32> %v, <4 x i32> undef, <4 x i32> <i32 3, i32 2, i32 0, i32 1>
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 3, i32 2, i32 0, i32 1>
  ret <4 x i32> %2
}

define <4 x i32> @swizzle_2(<4 x i32> %v) {




  %1 = shufflevector <4 x i32> %v, <4 x i32> undef, <4 x i32> <i32 3, i32 1, i32 0, i32 2>
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 3, i32 1, i32 0, i32 2>
  ret <4 x i32> %2
}

define <4 x i32> @swizzle_3(<4 x i32> %v) {




  %1 = shufflevector <4 x i32> %v, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 1, i32 0>
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 1, i32 0>
  ret <4 x i32> %2
}

define <4 x i32> @swizzle_4(<4 x i32> %v) {




  %1 = shufflevector <4 x i32> %v, <4 x i32> undef, <4 x i32> <i32 2, i32 1, i32 3, i32 0>
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 2, i32 1, i32 3, i32 0>
  ret <4 x i32> %2
}

define <4 x i32> @swizzle_5(<4 x i32> %v) {




  %1 = shufflevector <4 x i32> %v, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  ret <4 x i32> %2
}

define <4 x i32> @swizzle_6(<4 x i32> %v) {




  %1 = shufflevector <4 x i32> %v, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  ret <4 x i32> %2
}

define <4 x i32> @swizzle_7(<4 x i32> %v) {




  %1 = shufflevector <4 x i32> %v, <4 x i32> undef, <4 x i32> <i32 0, i32 3, i32 1, i32 2>
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 0, i32 3, i32 1, i32 2>
  ret <4 x i32> %2
}

define <4 x i32> @swizzle_8(<4 x i32> %v) {




  %1 = shufflevector <4 x i32> %v, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 2, i32 1>
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 2, i32 1>
  ret <4 x i32> %2
}

define <4 x i32> @swizzle_9(<4 x i32> %v) {




  %1 = shufflevector <4 x i32> %v, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  ret <4 x i32> %2
}

define <4 x i32> @swizzle_10(<4 x i32> %v) {




  %1 = shufflevector <4 x i32> %v, <4 x i32> undef, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  ret <4 x i32> %2
}

define <4 x i32> @swizzle_11(<4 x i32> %v) {




  %1 = shufflevector <4 x i32> %v, <4 x i32> undef, <4 x i32> <i32 2, i32 0, i32 3, i32 1>
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 2, i32 0, i32 3, i32 1>
  ret <4 x i32> %2
}

define <4 x i32> @swizzle_12(<4 x i32> %v) {




  %1 = shufflevector <4 x i32> %v, <4 x i32> undef, <4 x i32> <i32 0, i32 2, i32 3, i32 1>
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 0, i32 2, i32 3, i32 1>
  ret <4 x i32> %2
}

define <4 x i32> @swizzle_13(<4 x i32> %v) {




  %1 = shufflevector <4 x i32> %v, <4 x i32> undef, <4 x i32> <i32 1, i32 3, i32 0, i32 2>
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 1, i32 3, i32 0, i32 2>
  ret <4 x i32> %2
}

define <4 x i32> @swizzle_14(<4 x i32> %v) {




  %1 = shufflevector <4 x i32> %v, <4 x i32> undef, <4 x i32> <i32 1, i32 3, i32 2, i32 0>
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 1, i32 3, i32 2, i32 0>
  ret <4 x i32> %2
}

define <4 x float> @swizzle_15(<4 x float> %v) {




  %1 = shufflevector <4 x float> %v, <4 x float> undef, <4 x i32> <i32 3, i32 2, i32 0, i32 1>
  %2 = shufflevector <4 x float> %1, <4 x float> undef, <4 x i32> <i32 3, i32 2, i32 0, i32 1>
  ret <4 x float> %2
}

define <4 x float> @swizzle_16(<4 x float> %v) {




  %1 = shufflevector <4 x float> %v, <4 x float> undef, <4 x i32> <i32 3, i32 1, i32 0, i32 2>
  %2 = shufflevector <4 x float> %1, <4 x float> undef, <4 x i32> <i32 3, i32 1, i32 0, i32 2>
  ret <4 x float> %2
}

define <4 x float> @swizzle_17(<4 x float> %v) {




  %1 = shufflevector <4 x float> %v, <4 x float> undef, <4 x i32> <i32 2, i32 3, i32 1, i32 0>
  %2 = shufflevector <4 x float> %1, <4 x float> undef, <4 x i32> <i32 2, i32 3, i32 1, i32 0>
  ret <4 x float> %2
}

define <4 x float> @swizzle_18(<4 x float> %v) {




  %1 = shufflevector <4 x float> %v, <4 x float> undef, <4 x i32> <i32 2, i32 1, i32 3, i32 0>
  %2 = shufflevector <4 x float> %1, <4 x float> undef, <4 x i32> <i32 2, i32 1, i32 3, i32 0>
  ret <4 x float> %2
}

define <4 x float> @swizzle_19(<4 x float> %v) {




  %1 = shufflevector <4 x float> %v, <4 x float> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %2 = shufflevector <4 x float> %1, <4 x float> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  ret <4 x float> %2
}

define <4 x float> @swizzle_20(<4 x float> %v) {




  %1 = shufflevector <4 x float> %v, <4 x float> undef, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %2 = shufflevector <4 x float> %1, <4 x float> undef, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  ret <4 x float> %2
}

define <4 x float> @swizzle_21(<4 x float> %v) {




  %1 = shufflevector <4 x float> %v, <4 x float> undef, <4 x i32> <i32 0, i32 3, i32 1, i32 2>
  %2 = shufflevector <4 x float> %1, <4 x float> undef, <4 x i32> <i32 0, i32 3, i32 1, i32 2>
  ret <4 x float> %2
}

define <4 x float> @swizzle_22(<4 x float> %v) {




  %1 = shufflevector <4 x float> %v, <4 x float> undef, <4 x i32> <i32 3, i32 0, i32 2, i32 1>
  %2 = shufflevector <4 x float> %1, <4 x float> undef, <4 x i32> <i32 3, i32 0, i32 2, i32 1>
  ret <4 x float> %2
}

define <4 x float> @swizzle_23(<4 x float> %v) {




  %1 = shufflevector <4 x float> %v, <4 x float> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %2 = shufflevector <4 x float> %1, <4 x float> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  ret <4 x float> %2
}

define <4 x float> @swizzle_24(<4 x float> %v) {




  %1 = shufflevector <4 x float> %v, <4 x float> undef, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %2 = shufflevector <4 x float> %1, <4 x float> undef, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  ret <4 x float> %2
}

define <4 x float> @swizzle_25(<4 x float> %v) {




  %1 = shufflevector <4 x float> %v, <4 x float> undef, <4 x i32> <i32 2, i32 0, i32 3, i32 1>
  %2 = shufflevector <4 x float> %1, <4 x float> undef, <4 x i32> <i32 2, i32 0, i32 3, i32 1>
  ret <4 x float> %2
}

define <4 x float> @swizzle_26(<4 x float> %v) {




  %1 = shufflevector <4 x float> %v, <4 x float> undef, <4 x i32> <i32 0, i32 2, i32 3, i32 1>
  %2 = shufflevector <4 x float> %1, <4 x float> undef, <4 x i32> <i32 0, i32 2, i32 3, i32 1>
  ret <4 x float> %2
}

define <4 x float> @swizzle_27(<4 x float> %v) {




  %1 = shufflevector <4 x float> %v, <4 x float> undef, <4 x i32> <i32 1, i32 3, i32 0, i32 2>
  %2 = shufflevector <4 x float> %1, <4 x float> undef, <4 x i32> <i32 1, i32 3, i32 0, i32 2>
  ret <4 x float> %2
}

define <4 x float> @swizzle_28(<4 x float> %v) {




  %1 = shufflevector <4 x float> %v, <4 x float> undef, <4 x i32> <i32 1, i32 3, i32 2, i32 0>
  %2 = shufflevector <4 x float> %1, <4 x float> undef, <4 x i32> <i32 1, i32 3, i32 2, i32 0>
  ret <4 x float> %2
}

define <4 x float> @swizzle_29(<4 x float> %v) {




  %1 = shufflevector <4 x float> %v, <4 x float> undef, <4 x i32> <i32 3, i32 1, i32 2, i32 0>
  %2 = shufflevector <4 x float> %1, <4 x float> undef, <4 x i32> <i32 1, i32 0, i32 2, i32 3>
  ret <4 x float> %2
}




define <8 x i16> @swizzle_30(<8 x i16> %v) {




  %1 = shufflevector <8 x i16> %v, <8 x i16> undef, <8 x i32> <i32 3, i32 1, i32 2, i32 0, i32 7, i32 5, i32 6, i32 4>
  %2 = shufflevector <8 x i16> %1, <8 x i16> undef, <8 x i32> <i32 1, i32 0, i32 2, i32 3, i32 7, i32 5, i32 6, i32 4>
  ret <8 x i16> %2
}

define <8 x i16> @swizzle_31(<8 x i16> %v) {




  %1 = shufflevector <8 x i16> %v, <8 x i16> undef, <8 x i32> <i32 3, i32 0, i32 2, i32 1, i32 7, i32 5, i32 6, i32 4>
  %2 = shufflevector <8 x i16> %1, <8 x i16> undef, <8 x i32> <i32 3, i32 0, i32 2, i32 1, i32 7, i32 5, i32 6, i32 4>
  ret <8 x i16> %2
}

define <8 x i16> @swizzle_32(<8 x i16> %v) {




  %1 = shufflevector <8 x i16> %v, <8 x i16> undef, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 7, i32 5, i32 6, i32 4>
  %2 = shufflevector <8 x i16> %1, <8 x i16> undef, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 7, i32 5, i32 6, i32 4>
  ret <8 x i16> %2
}

define <8 x i16> @swizzle_33(<8 x i16> %v) {





  %1 = shufflevector <8 x i16> %v, <8 x i16> undef, <8 x i32> <i32 4, i32 6, i32 5, i32 7, i32 2, i32 3, i32 1, i32 0>
  %2 = shufflevector <8 x i16> %1, <8 x i16> undef, <8 x i32> <i32 4, i32 6, i32 5, i32 7, i32 2, i32 3, i32 1, i32 0>
  ret <8 x i16> %2
}

define <8 x i16> @swizzle_34(<8 x i16> %v) {





  %1 = shufflevector <8 x i16> %v, <8 x i16> undef, <8 x i32> <i32 4, i32 7, i32 6, i32 5, i32 1, i32 2, i32 0, i32 3>
  %2 = shufflevector <8 x i16> %1, <8 x i16> undef, <8 x i32> <i32 4, i32 7, i32 6, i32 5, i32 1, i32 2, i32 0, i32 3>
  ret <8 x i16> %2
}

define <8 x i16> @swizzle_35(<8 x i16> %v) {





  %1 = shufflevector <8 x i16> %v, <8 x i16> undef, <8 x i32> <i32 7, i32 4, i32 6, i32 5, i32 1, i32 3, i32 0, i32 2>
  %2 = shufflevector <8 x i16> %1, <8 x i16> undef, <8 x i32> <i32 7, i32 4, i32 6, i32 5, i32 1, i32 3, i32 0, i32 2>
  ret <8 x i16> %2
}

define <8 x i16> @swizzle_36(<8 x i16> %v) {





  %1 = shufflevector <8 x i16> %v, <8 x i16> undef, <8 x i32> <i32 4, i32 6, i32 7, i32 5, i32 0, i32 1, i32 3, i32 2>
  %2 = shufflevector <8 x i16> %1, <8 x i16> undef, <8 x i32> <i32 4, i32 6, i32 7, i32 5, i32 0, i32 1, i32 3, i32 2>
  ret <8 x i16> %2
}

define <8 x i16> @swizzle_37(<8 x i16> %v) {




  %1 = shufflevector <8 x i16> %v, <8 x i16> undef, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 7, i32 5, i32 6, i32 4>
  %2 = shufflevector <8 x i16> %1, <8 x i16> undef, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 7, i32 4, i32 6, i32 5>
  ret <8 x i16> %2
}

define <8 x i16> @swizzle_38(<8 x i16> %v) {





  %1 = shufflevector <8 x i16> %v, <8 x i16> undef, <8 x i32> <i32 5, i32 6, i32 4, i32 7, i32 0, i32 2, i32 1, i32 3>
  %2 = shufflevector <8 x i16> %1, <8 x i16> undef, <8 x i32> <i32 5, i32 6, i32 4, i32 7, i32 0, i32 2, i32 1, i32 3>
  ret <8 x i16> %2
}

define <8 x i16> @swizzle_39(<8 x i16> %v) {





  %1 = shufflevector <8 x i16> %v, <8 x i16> undef, <8 x i32> <i32 5, i32 4, i32 6, i32 7, i32 3, i32 2, i32 1, i32 0>
  %2 = shufflevector <8 x i16> %1, <8 x i16> undef, <8 x i32> <i32 5, i32 4, i32 6, i32 7, i32 3, i32 2, i32 1, i32 0>
  ret <8 x i16> %2
}

define <8 x i16> @swizzle_40(<8 x i16> %v) {





  %1 = shufflevector <8 x i16> %v, <8 x i16> undef, <8 x i32> <i32 6, i32 4, i32 7, i32 5, i32 1, i32 0, i32 3, i32 2>
  %2 = shufflevector <8 x i16> %1, <8 x i16> undef, <8 x i32> <i32 6, i32 4, i32 7, i32 5, i32 1, i32 0, i32 3, i32 2>
  ret <8 x i16> %2
}

define <8 x i16> @swizzle_41(<8 x i16> %v) {





  %1 = shufflevector <8 x i16> %v, <8 x i16> undef, <8 x i32> <i32 6, i32 7, i32 5, i32 4, i32 0, i32 1, i32 3, i32 2>
  %2 = shufflevector <8 x i16> %1, <8 x i16> undef, <8 x i32> <i32 6, i32 7, i32 5, i32 4, i32 0, i32 1, i32 3, i32 2>
  ret <8 x i16> %2
}

define <8 x i16> @swizzle_42(<8 x i16> %v) {




  %1 = shufflevector <8 x i16> %v, <8 x i16> undef, <8 x i32> <i32 0, i32 1, i32 3, i32 2, i32 7, i32 6, i32 4, i32 5>
  %2 = shufflevector <8 x i16> %1, <8 x i16> undef, <8 x i32> <i32 0, i32 1, i32 3, i32 2, i32 7, i32 6, i32 4, i32 5>
  ret <8 x i16> %2
}
