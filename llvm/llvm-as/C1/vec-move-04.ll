




define <16 x i8> @f1(<16 x i8> %val, i8 %element) {



  %ret = insertelement <16 x i8> %val, i8 %element, i32 0
  ret <16 x i8> %ret
}


define <16 x i8> @f2(<16 x i8> %val, i8 %element) {



  %ret = insertelement <16 x i8> %val, i8 %element, i32 15
  ret <16 x i8> %ret
}


define <16 x i8> @f3(<16 x i8> %val, i8 %element, i32 %index) {



  %ret = insertelement <16 x i8> %val, i8 %element, i32 %index
  ret <16 x i8> %ret
}


define <8 x i16> @f4(<8 x i16> %val, i16 %element) {



  %ret = insertelement <8 x i16> %val, i16 %element, i32 0
  ret <8 x i16> %ret
}


define <8 x i16> @f5(<8 x i16> %val, i16 %element) {



  %ret = insertelement <8 x i16> %val, i16 %element, i32 7
  ret <8 x i16> %ret
}


define <8 x i16> @f6(<8 x i16> %val, i16 %element, i32 %index) {



  %ret = insertelement <8 x i16> %val, i16 %element, i32 %index
  ret <8 x i16> %ret
}


define <4 x i32> @f7(<4 x i32> %val, i32 %element) {



  %ret = insertelement <4 x i32> %val, i32 %element, i32 0
  ret <4 x i32> %ret
}


define <4 x i32> @f8(<4 x i32> %val, i32 %element) {



  %ret = insertelement <4 x i32> %val, i32 %element, i32 3
  ret <4 x i32> %ret
}


define <4 x i32> @f9(<4 x i32> %val, i32 %element, i32 %index) {



  %ret = insertelement <4 x i32> %val, i32 %element, i32 %index
  ret <4 x i32> %ret
}


define <2 x i64> @f10(<2 x i64> %val, i64 %element) {



  %ret = insertelement <2 x i64> %val, i64 %element, i32 0
  ret <2 x i64> %ret
}


define <2 x i64> @f11(<2 x i64> %val, i64 %element) {



  %ret = insertelement <2 x i64> %val, i64 %element, i32 1
  ret <2 x i64> %ret
}


define <2 x i64> @f12(<2 x i64> %val, i64 %element, i32 %index) {



  %ret = insertelement <2 x i64> %val, i64 %element, i32 %index
  ret <2 x i64> %ret
}


define <4 x float> @f13(<4 x float> %val, float %element) {




  %ret = insertelement <4 x float> %val, float %element, i32 0
  ret <4 x float> %ret
}


define <4 x float> @f14(<4 x float> %val, float %element) {




  %ret = insertelement <4 x float> %val, float %element, i32 3
  ret <4 x float> %ret
}


define <4 x float> @f15(<4 x float> %val, float %element, i32 %index) {




  %ret = insertelement <4 x float> %val, float %element, i32 %index
  ret <4 x float> %ret
}


define <2 x double> @f16(<2 x double> %val, double %element) {



  %ret = insertelement <2 x double> %val, double %element, i32 0
  ret <2 x double> %ret
}


define <2 x double> @f17(<2 x double> %val, double %element) {



  %ret = insertelement <2 x double> %val, double %element, i32 1
  ret <2 x double> %ret
}


define <2 x double> @f18(<2 x double> %val, double %element, i32 %index) {




  %ret = insertelement <2 x double> %val, double %element, i32 %index
  ret <2 x double> %ret
}


define <16 x i8> @f19(<16 x i8> %val, i8 %element, i32 %index) {



  %add = add i32 %index, 1
  %ret = insertelement <16 x i8> %val, i8 %element, i32 %add
  ret <16 x i8> %ret
}
