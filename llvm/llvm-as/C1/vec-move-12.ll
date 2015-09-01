




define <16 x i8> @f1(i8 *%ptr) {



  %val = load i8, i8 *%ptr
  %ret = insertelement <16 x i8> undef, i8 %val, i32 12
  ret <16 x i8> %ret
}


define <16 x i8> @f2(i8 *%ptr) {



  %val = load i8, i8 *%ptr
  %ret = insertelement <16 x i8> undef, i8 %val, i32 7
  ret <16 x i8> %ret
}


define <16 x i8> @f3(i8 *%ptr) {



  %val = load i8, i8 *%ptr
  %ret = insertelement <16 x i8> undef, i8 %val, i32 15
  ret <16 x i8> %ret
}


define <8 x i16> @f4(i16 *%ptr) {



  %val = load i16, i16 *%ptr
  %ret = insertelement <8 x i16> undef, i16 %val, i32 5
  ret <8 x i16> %ret
}


define <8 x i16> @f5(i16 *%ptr) {



  %val = load i16, i16 *%ptr
  %ret = insertelement <8 x i16> undef, i16 %val, i32 3
  ret <8 x i16> %ret
}


define <8 x i16> @f6(i16 *%ptr) {



  %val = load i16, i16 *%ptr
  %ret = insertelement <8 x i16> undef, i16 %val, i32 7
  ret <8 x i16> %ret
}


define <4 x i32> @f7(i32 *%ptr) {



  %val = load i32, i32 *%ptr
  %ret = insertelement <4 x i32> undef, i32 %val, i32 2
  ret <4 x i32> %ret
}


define <4 x i32> @f8(i32 *%ptr) {



  %val = load i32, i32 *%ptr
  %ret = insertelement <4 x i32> undef, i32 %val, i32 1
  ret <4 x i32> %ret
}


define <4 x i32> @f9(i32 *%ptr) {



  %val = load i32, i32 *%ptr
  %ret = insertelement <4 x i32> undef, i32 %val, i32 3
  ret <4 x i32> %ret
}


define <2 x i64> @f10(i64 *%ptr) {



  %val = load i64, i64 *%ptr
  %ret = insertelement <2 x i64> undef, i64 %val, i32 1
  ret <2 x i64> %ret
}


define <4 x float> @f11(float *%ptr) {



  %val = load float, float *%ptr
  %ret = insertelement <4 x float> undef, float %val, i32 2
  ret <4 x float> %ret
}


define <2 x double> @f12(double *%ptr) {



  %val = load double, double *%ptr
  %ret = insertelement <2 x double> undef, double %val, i32 1
  ret <2 x double> %ret
}
