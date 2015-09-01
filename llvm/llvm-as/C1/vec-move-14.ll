




define <16 x i8> @f1(i8 *%ptr) {



  %val = load i8, i8 *%ptr
  %ret = insertelement <16 x i8> zeroinitializer, i8 %val, i32 7
  ret <16 x i8> %ret
}


define <16 x i8> @f2(i8 *%base) {



  %ptr = getelementptr i8, i8 *%base, i64 4095
  %val = load i8, i8 *%ptr
  %ret = insertelement <16 x i8> zeroinitializer, i8 %val, i32 7
  ret <16 x i8> %ret
}


define <16 x i8> @f3(i8 *%base) {



  %ptr = getelementptr i8, i8 *%base, i64 4096
  %val = load i8, i8 *%ptr
  %ret = insertelement <16 x i8> zeroinitializer, i8 %val, i32 7
  ret <16 x i8> %ret
}


define <16 x i8> @f4(i8 *%base, i64 %index) {



  %ptr = getelementptr i8, i8 *%base, i64 %index
  %val = load i8, i8 *%ptr
  %ret = insertelement <16 x i8> zeroinitializer, i8 %val, i32 7
  ret <16 x i8> %ret
}


define <8 x i16> @f5(i16 *%ptr) {



  %val = load i16, i16 *%ptr
  %ret = insertelement <8 x i16> zeroinitializer, i16 %val, i32 3
  ret <8 x i16> %ret
}


define <4 x i32> @f6(i32 *%ptr) {



  %val = load i32, i32 *%ptr
  %ret = insertelement <4 x i32> zeroinitializer, i32 %val, i32 1
  ret <4 x i32> %ret
}


define <2 x i64> @f7(i64 *%ptr) {



  %val = load i64, i64 *%ptr
  %ret = insertelement <2 x i64> zeroinitializer, i64 %val, i32 0
  ret <2 x i64> %ret
}


define <4 x float> @f8(float *%ptr) {



  %val = load float, float *%ptr
  %ret = insertelement <4 x float> zeroinitializer, float %val, i32 1
  ret <4 x float> %ret
}


define <2 x double> @f9(double *%ptr) {



  %val = load double, double *%ptr
  %ret = insertelement <2 x double> zeroinitializer, double %val, i32 0
  ret <2 x double> %ret
}
