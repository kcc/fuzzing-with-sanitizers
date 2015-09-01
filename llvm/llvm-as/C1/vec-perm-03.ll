




define <16 x i8> @f1(i8 *%ptr) {



  %scalar = load i8, i8 *%ptr
  %val = insertelement <16 x i8> undef, i8 %scalar, i32 0
  %ret = shufflevector <16 x i8> %val, <16 x i8> undef,
                       <16 x i32> zeroinitializer
  ret <16 x i8> %ret
}


define <16 x i8> @f2(i8 *%base) {



  %ptr = getelementptr i8, i8 *%base, i64 4095
  %scalar = load i8, i8 *%ptr
  %val = insertelement <16 x i8> undef, i8 %scalar, i32 0
  %ret = shufflevector <16 x i8> %val, <16 x i8> undef,
                       <16 x i32> zeroinitializer
  ret <16 x i8> %ret
}


define <16 x i8> @f3(i8 *%base) {




  %ptr = getelementptr i8, i8 *%base, i64 4096
  %scalar = load i8, i8 *%ptr
  %val = insertelement <16 x i8> undef, i8 %scalar, i32 0
  %ret = shufflevector <16 x i8> %val, <16 x i8> undef,
                       <16 x i32> zeroinitializer
  ret <16 x i8> %ret
}


define <8 x i16> @f4(i16 *%ptr) {



  %scalar = load i16, i16 *%ptr
  %val = insertelement <8 x i16> undef, i16 %scalar, i32 0
  %ret = shufflevector <8 x i16> %val, <8 x i16> undef,
                       <8 x i32> zeroinitializer
  ret <8 x i16> %ret
}


define <8 x i16> @f5(i16 *%base) {



  %ptr = getelementptr i16, i16 *%base, i64 2047
  %scalar = load i16, i16 *%ptr
  %val = insertelement <8 x i16> undef, i16 %scalar, i32 0
  %ret = shufflevector <8 x i16> %val, <8 x i16> undef,
                       <8 x i32> zeroinitializer
  ret <8 x i16> %ret
}


define <8 x i16> @f6(i16 *%base) {




  %ptr = getelementptr i16, i16 *%base, i64 2048
  %scalar = load i16, i16 *%ptr
  %val = insertelement <8 x i16> undef, i16 %scalar, i32 0
  %ret = shufflevector <8 x i16> %val, <8 x i16> undef,
                       <8 x i32> zeroinitializer
  ret <8 x i16> %ret
}


define <4 x i32> @f7(i32 *%ptr) {



  %scalar = load i32, i32 *%ptr
  %val = insertelement <4 x i32> undef, i32 %scalar, i32 0
  %ret = shufflevector <4 x i32> %val, <4 x i32> undef,
                       <4 x i32> zeroinitializer
  ret <4 x i32> %ret
}


define <4 x i32> @f8(i32 *%base) {



  %ptr = getelementptr i32, i32 *%base, i64 1023
  %scalar = load i32, i32 *%ptr
  %val = insertelement <4 x i32> undef, i32 %scalar, i32 0
  %ret = shufflevector <4 x i32> %val, <4 x i32> undef,
                       <4 x i32> zeroinitializer
  ret <4 x i32> %ret
}


define <4 x i32> @f9(i32 *%base) {




  %ptr = getelementptr i32, i32 *%base, i64 1024
  %scalar = load i32, i32 *%ptr
  %val = insertelement <4 x i32> undef, i32 %scalar, i32 0
  %ret = shufflevector <4 x i32> %val, <4 x i32> undef,
                       <4 x i32> zeroinitializer
  ret <4 x i32> %ret
}


define <2 x i64> @f10(i64 *%ptr) {



  %scalar = load i64, i64 *%ptr
  %val = insertelement <2 x i64> undef, i64 %scalar, i32 0
  %ret = shufflevector <2 x i64> %val, <2 x i64> undef,
                       <2 x i32> zeroinitializer
  ret <2 x i64> %ret
}


define <2 x i64> @f11(i64 *%base) {



  %ptr = getelementptr i64, i64 *%base, i32 511
  %scalar = load i64, i64 *%ptr
  %val = insertelement <2 x i64> undef, i64 %scalar, i32 0
  %ret = shufflevector <2 x i64> %val, <2 x i64> undef,
                       <2 x i32> zeroinitializer
  ret <2 x i64> %ret
}


define <2 x i64> @f12(i64 *%base) {




  %ptr = getelementptr i64, i64 *%base, i32 512
  %scalar = load i64, i64 *%ptr
  %val = insertelement <2 x i64> undef, i64 %scalar, i32 0
  %ret = shufflevector <2 x i64> %val, <2 x i64> undef,
                       <2 x i32> zeroinitializer
  ret <2 x i64> %ret
}


define <4 x float> @f13(float *%ptr) {



  %scalar = load float, float *%ptr
  %val = insertelement <4 x float> undef, float %scalar, i32 0
  %ret = shufflevector <4 x float> %val, <4 x float> undef,
                       <4 x i32> zeroinitializer
  ret <4 x float> %ret
}


define <4 x float> @f14(float *%base) {



  %ptr = getelementptr float, float *%base, i64 1023
  %scalar = load float, float *%ptr
  %val = insertelement <4 x float> undef, float %scalar, i32 0
  %ret = shufflevector <4 x float> %val, <4 x float> undef,
                       <4 x i32> zeroinitializer
  ret <4 x float> %ret
}


define <4 x float> @f15(float *%base) {




  %ptr = getelementptr float, float *%base, i64 1024
  %scalar = load float, float *%ptr
  %val = insertelement <4 x float> undef, float %scalar, i32 0
  %ret = shufflevector <4 x float> %val, <4 x float> undef,
                       <4 x i32> zeroinitializer
  ret <4 x float> %ret
}


define <2 x double> @f16(double *%ptr) {



  %scalar = load double, double *%ptr
  %val = insertelement <2 x double> undef, double %scalar, i32 0
  %ret = shufflevector <2 x double> %val, <2 x double> undef,
                       <2 x i32> zeroinitializer
  ret <2 x double> %ret
}


define <2 x double> @f17(double *%base) {



  %ptr = getelementptr double, double *%base, i32 511
  %scalar = load double, double *%ptr
  %val = insertelement <2 x double> undef, double %scalar, i32 0
  %ret = shufflevector <2 x double> %val, <2 x double> undef,
                       <2 x i32> zeroinitializer
  ret <2 x double> %ret
}


define <2 x double> @f18(double *%base) {




  %ptr = getelementptr double, double *%base, i32 512
  %scalar = load double, double *%ptr
  %val = insertelement <2 x double> undef, double %scalar, i32 0
  %ret = shufflevector <2 x double> %val, <2 x double> undef,
                       <2 x i32> zeroinitializer
  ret <2 x double> %ret
}


define <16 x i8> @f19(i8 *%base, i64 %index) {



  %ptr1 = getelementptr i8, i8 *%base, i64 %index
  %ptr = getelementptr i8, i8 *%ptr1, i64 1023
  %scalar = load i8, i8 *%ptr
  %val = insertelement <16 x i8> undef, i8 %scalar, i32 0
  %ret = shufflevector <16 x i8> %val, <16 x i8> undef,
                       <16 x i32> zeroinitializer
  ret <16 x i8> %ret
}
