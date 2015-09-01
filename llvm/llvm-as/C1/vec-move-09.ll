




define <16 x i8> @f1(<16 x i8> %val) {



  %ret = insertelement <16 x i8> %val, i8 0, i32 0
  ret <16 x i8> %ret
}


define <16 x i8> @f2(<16 x i8> %val) {



  %ret = insertelement <16 x i8> %val, i8 100, i32 15
  ret <16 x i8> %ret
}


define <16 x i8> @f3(<16 x i8> %val) {



  %ret = insertelement <16 x i8> %val, i8 127, i32 10
  ret <16 x i8> %ret
}


define <16 x i8> @f4(<16 x i8> %val) {



  %ret = insertelement <16 x i8> %val, i8 128, i32 11
  ret <16 x i8> %ret
}


define <16 x i8> @f5(<16 x i8> %val) {



  %ret = insertelement <16 x i8> %val, i8 255, i32 12
  ret <16 x i8> %ret
}


define <16 x i8> @f6(<16 x i8> %val, i32 %index) {



  %ret = insertelement <16 x i8> %val, i8 0, i32 %index
  ret <16 x i8> %ret
}


define <8 x i16> @f7(<8 x i16> %val) {



  %ret = insertelement <8 x i16> %val, i16 0, i32 0
  ret <8 x i16> %ret
}


define <8 x i16> @f8(<8 x i16> %val) {



  %ret = insertelement <8 x i16> %val, i16 0, i32 7
  ret <8 x i16> %ret
}


define <8 x i16> @f9(<8 x i16> %val) {



  %ret = insertelement <8 x i16> %val, i16 32767, i32 4
  ret <8 x i16> %ret
}


define <8 x i16> @f10(<8 x i16> %val) {



  %ret = insertelement <8 x i16> %val, i16 32768, i32 5
  ret <8 x i16> %ret
}


define <8 x i16> @f11(<8 x i16> %val) {



  %ret = insertelement <8 x i16> %val, i16 65535, i32 6
  ret <8 x i16> %ret
}


define <8 x i16> @f12(<8 x i16> %val, i32 %index) {



  %ret = insertelement <8 x i16> %val, i16 0, i32 %index
  ret <8 x i16> %ret
}


define <4 x i32> @f13(<4 x i32> %val) {



  %ret = insertelement <4 x i32> %val, i32 0, i32 0
  ret <4 x i32> %ret
}


define <4 x i32> @f14(<4 x i32> %val) {



  %ret = insertelement <4 x i32> %val, i32 0, i32 3
  ret <4 x i32> %ret
}


define <4 x i32> @f15(<4 x i32> %val) {



  %ret = insertelement <4 x i32> %val, i32 32767, i32 1
  ret <4 x i32> %ret
}


define <4 x i32> @f16(<4 x i32> %val) {



  %ret = insertelement <4 x i32> %val, i32 32768, i32 1
  ret <4 x i32> %ret
}


define <4 x i32> @f17(<4 x i32> %val) {



  %ret = insertelement <4 x i32> %val, i32 -32768, i32 2
  ret <4 x i32> %ret
}


define <4 x i32> @f18(<4 x i32> %val) {



  %ret = insertelement <4 x i32> %val, i32 -32769, i32 2
  ret <4 x i32> %ret
}


define <4 x i32> @f19(<4 x i32> %val, i32 %index) {



  %ret = insertelement <4 x i32> %val, i32 0, i32 %index
  ret <4 x i32> %ret
}


define <2 x i64> @f20(<2 x i64> %val) {



  %ret = insertelement <2 x i64> %val, i64 0, i32 0
  ret <2 x i64> %ret
}


define <2 x i64> @f21(<2 x i64> %val) {



  %ret = insertelement <2 x i64> %val, i64 0, i32 1
  ret <2 x i64> %ret
}


define <2 x i64> @f22(<2 x i64> %val) {



  %ret = insertelement <2 x i64> %val, i64 32767, i32 1
  ret <2 x i64> %ret
}


define <2 x i64> @f23(<2 x i64> %val) {



  %ret = insertelement <2 x i64> %val, i64 32768, i32 1
  ret <2 x i64> %ret
}


define <2 x i64> @f24(<2 x i64> %val) {



  %ret = insertelement <2 x i64> %val, i64 -32768, i32 0
  ret <2 x i64> %ret
}


define <2 x i64> @f25(<2 x i64> %val) {



  %ret = insertelement <2 x i64> %val, i64 -32769, i32 0
  ret <2 x i64> %ret
}


define <2 x i64> @f26(<2 x i64> %val, i32 %index) {



  %ret = insertelement <2 x i64> %val, i64 0, i32 %index
  ret <2 x i64> %ret
}


define <4 x float> @f27(<4 x float> %val) {



  %ret = insertelement <4 x float> %val, float 0.0, i32 0
  ret <4 x float> %ret
}


define <4 x float> @f28(<4 x float> %val) {



  %ret = insertelement <4 x float> %val, float 0.0, i32 3
  ret <4 x float> %ret
}


define <4 x float> @f29(<4 x float> %val) {



  %ret = insertelement <4 x float> %val, float 1.0, i32 1
  ret <4 x float> %ret
}


define <2 x double> @f30(<2 x double> %val) {



  %ret = insertelement <2 x double> %val, double 0.0, i32 0
  ret <2 x double> %ret
}


define <2 x double> @f31(<2 x double> %val) {



  %ret = insertelement <2 x double> %val, double 0.0, i32 1
  ret <2 x double> %ret
}


define <2 x double> @f32(<2 x double> %val) {



  %ret = insertelement <2 x double> %val, double 1.0, i32 1
  ret <2 x double> %ret
}
