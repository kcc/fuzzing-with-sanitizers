




define <16 x i8> @f1(<16 x i8> %val, i8 *%ptr) {



  %element = load i8, i8 *%ptr
  %ret = insertelement <16 x i8> %val, i8 %element, i32 0
  ret <16 x i8> %ret
}


define <16 x i8> @f2(<16 x i8> %val, i8 *%ptr) {



  %element = load i8, i8 *%ptr
  %ret = insertelement <16 x i8> %val, i8 %element, i32 15
  ret <16 x i8> %ret
}


define <16 x i8> @f3(<16 x i8> %val, i8 *%base) {



  %ptr = getelementptr i8, i8 *%base, i32 4095
  %element = load i8, i8 *%ptr
  %ret = insertelement <16 x i8> %val, i8 %element, i32 10
  ret <16 x i8> %ret
}


define <16 x i8> @f4(<16 x i8> %val, i8 *%base) {




  %ptr = getelementptr i8, i8 *%base, i32 4096
  %element = load i8, i8 *%ptr
  %ret = insertelement <16 x i8> %val, i8 %element, i32 5
  ret <16 x i8> %ret
}


define <16 x i8> @f5(<16 x i8> %val, i8 *%ptr, i32 %index) {



  %element = load i8, i8 *%ptr
  %ret = insertelement <16 x i8> %val, i8 %element, i32 %index
  ret <16 x i8> %ret
}


define <8 x i16> @f6(<8 x i16> %val, i16 *%ptr) {



  %element = load i16, i16 *%ptr
  %ret = insertelement <8 x i16> %val, i16 %element, i32 0
  ret <8 x i16> %ret
}


define <8 x i16> @f7(<8 x i16> %val, i16 *%ptr) {



  %element = load i16, i16 *%ptr
  %ret = insertelement <8 x i16> %val, i16 %element, i32 7
  ret <8 x i16> %ret
}


define <8 x i16> @f8(<8 x i16> %val, i16 *%base) {



  %ptr = getelementptr i16, i16 *%base, i32 2047
  %element = load i16, i16 *%ptr
  %ret = insertelement <8 x i16> %val, i16 %element, i32 5
  ret <8 x i16> %ret
}


define <8 x i16> @f9(<8 x i16> %val, i16 *%base) {




  %ptr = getelementptr i16, i16 *%base, i32 2048
  %element = load i16, i16 *%ptr
  %ret = insertelement <8 x i16> %val, i16 %element, i32 1
  ret <8 x i16> %ret
}


define <8 x i16> @f10(<8 x i16> %val, i16 *%ptr, i32 %index) {



  %element = load i16, i16 *%ptr
  %ret = insertelement <8 x i16> %val, i16 %element, i32 %index
  ret <8 x i16> %ret
}


define <4 x i32> @f11(<4 x i32> %val, i32 *%ptr) {



  %element = load i32, i32 *%ptr
  %ret = insertelement <4 x i32> %val, i32 %element, i32 0
  ret <4 x i32> %ret
}


define <4 x i32> @f12(<4 x i32> %val, i32 *%ptr) {



  %element = load i32, i32 *%ptr
  %ret = insertelement <4 x i32> %val, i32 %element, i32 3
  ret <4 x i32> %ret
}


define <4 x i32> @f13(<4 x i32> %val, i32 *%base) {



  %ptr = getelementptr i32, i32 *%base, i32 1023
  %element = load i32, i32 *%ptr
  %ret = insertelement <4 x i32> %val, i32 %element, i32 2
  ret <4 x i32> %ret
}


define <4 x i32> @f14(<4 x i32> %val, i32 *%base) {




  %ptr = getelementptr i32, i32 *%base, i32 1024
  %element = load i32, i32 *%ptr
  %ret = insertelement <4 x i32> %val, i32 %element, i32 1
  ret <4 x i32> %ret
}


define <4 x i32> @f15(<4 x i32> %val, i32 *%ptr, i32 %index) {



  %element = load i32, i32 *%ptr
  %ret = insertelement <4 x i32> %val, i32 %element, i32 %index
  ret <4 x i32> %ret
}


define <2 x i64> @f16(<2 x i64> %val, i64 *%ptr) {



  %element = load i64, i64 *%ptr
  %ret = insertelement <2 x i64> %val, i64 %element, i32 0
  ret <2 x i64> %ret
}


define <2 x i64> @f17(<2 x i64> %val, i64 *%ptr) {



  %element = load i64, i64 *%ptr
  %ret = insertelement <2 x i64> %val, i64 %element, i32 1
  ret <2 x i64> %ret
}


define <2 x i64> @f18(<2 x i64> %val, i64 *%base) {



  %ptr = getelementptr i64, i64 *%base, i32 511
  %element = load i64, i64 *%ptr
  %ret = insertelement <2 x i64> %val, i64 %element, i32 1
  ret <2 x i64> %ret
}


define <2 x i64> @f19(<2 x i64> %val, i64 *%base) {




  %ptr = getelementptr i64, i64 *%base, i32 512
  %element = load i64, i64 *%ptr
  %ret = insertelement <2 x i64> %val, i64 %element, i32 0
  ret <2 x i64> %ret
}


define <2 x i64> @f20(<2 x i64> %val, i64 *%ptr, i32 %index) {



  %element = load i64, i64 *%ptr
  %ret = insertelement <2 x i64> %val, i64 %element, i32 %index
  ret <2 x i64> %ret
}


define <4 x float> @f21(<4 x float> %val, float *%ptr) {



  %element = load float, float *%ptr
  %ret = insertelement <4 x float> %val, float %element, i32 0
  ret <4 x float> %ret
}


define <4 x float> @f22(<4 x float> %val, float *%ptr) {



  %element = load float, float *%ptr
  %ret = insertelement <4 x float> %val, float %element, i32 3
  ret <4 x float> %ret
}


define <4 x float> @f23(<4 x float> %val, float *%base) {



  %ptr = getelementptr float, float *%base, i32 1023
  %element = load float, float *%ptr
  %ret = insertelement <4 x float> %val, float %element, i32 2
  ret <4 x float> %ret
}


define <4 x float> @f24(<4 x float> %val, float *%base) {




  %ptr = getelementptr float, float *%base, i32 1024
  %element = load float, float *%ptr
  %ret = insertelement <4 x float> %val, float %element, i32 1
  ret <4 x float> %ret
}


define <4 x float> @f25(<4 x float> %val, float *%ptr, i32 %index) {



  %element = load float, float *%ptr
  %ret = insertelement <4 x float> %val, float %element, i32 %index
  ret <4 x float> %ret
}


define <2 x double> @f26(<2 x double> %val, double *%ptr) {



  %element = load double, double *%ptr
  %ret = insertelement <2 x double> %val, double %element, i32 0
  ret <2 x double> %ret
}


define <2 x double> @f27(<2 x double> %val, double *%ptr) {



  %element = load double, double *%ptr
  %ret = insertelement <2 x double> %val, double %element, i32 1
  ret <2 x double> %ret
}


define <2 x double> @f28(<2 x double> %val, double *%base) {



  %ptr = getelementptr double, double *%base, i32 511
  %element = load double, double *%ptr
  %ret = insertelement <2 x double> %val, double %element, i32 1
  ret <2 x double> %ret
}


define <2 x double> @f29(<2 x double> %val, double *%base) {




  %ptr = getelementptr double, double *%base, i32 512
  %element = load double, double *%ptr
  %ret = insertelement <2 x double> %val, double %element, i32 0
  ret <2 x double> %ret
}


define <2 x double> @f30(<2 x double> %val, double *%ptr, i32 %index) {



  %element = load double, double *%ptr
  %ret = insertelement <2 x double> %val, double %element, i32 %index
  ret <2 x double> %ret
}


define <4 x i32> @f31(<4 x i32> %val, <4 x i32> %index, i64 %base) {



  %elem = extractelement <4 x i32> %index, i32 0
  %ext = zext i32 %elem to i64
  %add = add i64 %base, %ext
  %ptr = inttoptr i64 %add to i32 *
  %element = load i32, i32 *%ptr
  %ret = insertelement <4 x i32> %val, i32 %element, i32 0
  ret <4 x i32> %ret
}


define <4 x i32> @f32(<4 x i32> %val, <4 x i32> %index, i64 %base) {



  %elem = extractelement <4 x i32> %index, i32 3
  %ext = zext i32 %elem to i64
  %add = add i64 %base, %ext
  %ptr = inttoptr i64 %add to i32 *
  %element = load i32, i32 *%ptr
  %ret = insertelement <4 x i32> %val, i32 %element, i32 3
  ret <4 x i32> %ret
}


define <4 x i32> @f33(<4 x i32> %val, <4 x i32> %index, i64 %base) {



  %elem = extractelement <4 x i32> %index, i32 1
  %ext = zext i32 %elem to i64
  %add1 = add i64 %base, %ext
  %add2 = add i64 %add1, 4095
  %ptr = inttoptr i64 %add2 to i32 *
  %element = load i32, i32 *%ptr
  %ret = insertelement <4 x i32> %val, i32 %element, i32 1
  ret <4 x i32> %ret
}


define <2 x i64> @f34(<2 x i64> %val, <2 x i64> %index, i64 %base) {



  %elem = extractelement <2 x i64> %index, i32 0
  %add = add i64 %base, %elem
  %ptr = inttoptr i64 %add to i64 *
  %element = load i64, i64 *%ptr
  %ret = insertelement <2 x i64> %val, i64 %element, i32 0
  ret <2 x i64> %ret
}


define <2 x i64> @f35(<2 x i64> %val, <2 x i64> %index, i64 %base) {



  %elem = extractelement <2 x i64> %index, i32 1
  %add = add i64 %base, %elem
  %ptr = inttoptr i64 %add to i64 *
  %element = load i64, i64 *%ptr
  %ret = insertelement <2 x i64> %val, i64 %element, i32 1
  ret <2 x i64> %ret
}


define <4 x float> @f36(<4 x float> %val, <4 x i32> %index, i64 %base) {



  %elem = extractelement <4 x i32> %index, i32 0
  %ext = zext i32 %elem to i64
  %add = add i64 %base, %ext
  %ptr = inttoptr i64 %add to float *
  %element = load float, float *%ptr
  %ret = insertelement <4 x float> %val, float %element, i32 0
  ret <4 x float> %ret
}


define <4 x float> @f37(<4 x float> %val, <4 x i32> %index, i64 %base) {



  %elem = extractelement <4 x i32> %index, i32 3
  %ext = zext i32 %elem to i64
  %add = add i64 %base, %ext
  %ptr = inttoptr i64 %add to float *
  %element = load float, float *%ptr
  %ret = insertelement <4 x float> %val, float %element, i32 3
  ret <4 x float> %ret
}


define <2 x double> @f38(<2 x double> %val, <2 x i64> %index, i64 %base) {



  %elem = extractelement <2 x i64> %index, i32 0
  %add = add i64 %base, %elem
  %ptr = inttoptr i64 %add to double *
  %element = load double, double *%ptr
  %ret = insertelement <2 x double> %val, double %element, i32 0
  ret <2 x double> %ret
}


define <2 x double> @f39(<2 x double> %val, <2 x i64> %index, i64 %base) {



  %elem = extractelement <2 x i64> %index, i32 1
  %add = add i64 %base, %elem
  %ptr = inttoptr i64 %add to double *
  %element = load double, double *%ptr
  %ret = insertelement <2 x double> %val, double %element, i32 1
  ret <2 x double> %ret
}
