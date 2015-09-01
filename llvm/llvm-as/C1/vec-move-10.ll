




define void @f1(<16 x i8> %val, i8 *%ptr) {



  %element = extractelement <16 x i8> %val, i32 0
  store i8 %element, i8 *%ptr
  ret void
}


define void @f2(<16 x i8> %val, i8 *%ptr) {



  %element = extractelement <16 x i8> %val, i32 15
  store i8 %element, i8 *%ptr
  ret void
}



define void @f3(<16 x i8> %val, i8 *%ptr) {



  %element = extractelement <16 x i8> %val, i32 16
  store i8 %element, i8 *%ptr
  ret void
}


define void @f4(<16 x i8> %val, i8 *%base) {



  %ptr = getelementptr i8, i8 *%base, i32 4095
  %element = extractelement <16 x i8> %val, i32 10
  store i8 %element, i8 *%ptr
  ret void
}


define void @f5(<16 x i8> %val, i8 *%base) {




  %ptr = getelementptr i8, i8 *%base, i32 4096
  %element = extractelement <16 x i8> %val, i32 5
  store i8 %element, i8 *%ptr
  ret void
}


define void @f6(<16 x i8> %val, i8 *%ptr, i32 %index) {



  %element = extractelement <16 x i8> %val, i32 %index
  store i8 %element, i8 *%ptr
  ret void
}


define void @f7(<8 x i16> %val, i16 *%ptr) {



  %element = extractelement <8 x i16> %val, i32 0
  store i16 %element, i16 *%ptr
  ret void
}


define void @f8(<8 x i16> %val, i16 *%ptr) {



  %element = extractelement <8 x i16> %val, i32 7
  store i16 %element, i16 *%ptr
  ret void
}



define void @f9(<8 x i16> %val, i16 *%ptr) {



  %element = extractelement <8 x i16> %val, i32 8
  store i16 %element, i16 *%ptr
  ret void
}


define void @f10(<8 x i16> %val, i16 *%base) {



  %ptr = getelementptr i16, i16 *%base, i32 2047
  %element = extractelement <8 x i16> %val, i32 5
  store i16 %element, i16 *%ptr
  ret void
}


define void @f11(<8 x i16> %val, i16 *%base) {




  %ptr = getelementptr i16, i16 *%base, i32 2048
  %element = extractelement <8 x i16> %val, i32 1
  store i16 %element, i16 *%ptr
  ret void
}


define void @f12(<8 x i16> %val, i16 *%ptr, i32 %index) {



  %element = extractelement <8 x i16> %val, i32 %index
  store i16 %element, i16 *%ptr
  ret void
}


define void @f13(<4 x i32> %val, i32 *%ptr) {



  %element = extractelement <4 x i32> %val, i32 0
  store i32 %element, i32 *%ptr
  ret void
}


define void @f14(<4 x i32> %val, i32 *%ptr) {



  %element = extractelement <4 x i32> %val, i32 3
  store i32 %element, i32 *%ptr
  ret void
}



define void @f15(<4 x i32> %val, i32 *%ptr) {



  %element = extractelement <4 x i32> %val, i32 4
  store i32 %element, i32 *%ptr
  ret void
}


define void @f16(<4 x i32> %val, i32 *%base) {



  %ptr = getelementptr i32, i32 *%base, i32 1023
  %element = extractelement <4 x i32> %val, i32 2
  store i32 %element, i32 *%ptr
  ret void
}


define void @f17(<4 x i32> %val, i32 *%base) {




  %ptr = getelementptr i32, i32 *%base, i32 1024
  %element = extractelement <4 x i32> %val, i32 1
  store i32 %element, i32 *%ptr
  ret void
}


define void @f18(<4 x i32> %val, i32 *%ptr, i32 %index) {



  %element = extractelement <4 x i32> %val, i32 %index
  store i32 %element, i32 *%ptr
  ret void
}


define void @f19(<2 x i64> %val, i64 *%ptr) {



  %element = extractelement <2 x i64> %val, i32 0
  store i64 %element, i64 *%ptr
  ret void
}


define void @f20(<2 x i64> %val, i64 *%ptr) {



  %element = extractelement <2 x i64> %val, i32 1
  store i64 %element, i64 *%ptr
  ret void
}



define void @f21(<2 x i64> %val, i64 *%ptr) {



  %element = extractelement <2 x i64> %val, i32 2
  store i64 %element, i64 *%ptr
  ret void
}


define void @f22(<2 x i64> %val, i64 *%base) {



  %ptr = getelementptr i64, i64 *%base, i32 511
  %element = extractelement <2 x i64> %val, i32 1
  store i64 %element, i64 *%ptr
  ret void
}


define void @f23(<2 x i64> %val, i64 *%base) {




  %ptr = getelementptr i64, i64 *%base, i32 512
  %element = extractelement <2 x i64> %val, i32 0
  store i64 %element, i64 *%ptr
  ret void
}


define void @f24(<2 x i64> %val, i64 *%ptr, i32 %index) {



  %element = extractelement <2 x i64> %val, i32 %index
  store i64 %element, i64 *%ptr
  ret void
}


define void @f25(<4 x float> %val, float *%ptr) {



  %element = extractelement <4 x float> %val, i32 0
  store float %element, float *%ptr
  ret void
}


define void @f26(<4 x float> %val, float *%ptr) {



  %element = extractelement <4 x float> %val, i32 3
  store float %element, float *%ptr
  ret void
}



define void @f27(<4 x float> %val, float *%ptr) {



  %element = extractelement <4 x float> %val, i32 4
  store float %element, float *%ptr
  ret void
}


define void @f28(<4 x float> %val, float *%base) {



  %ptr = getelementptr float, float *%base, i32 1023
  %element = extractelement <4 x float> %val, i32 2
  store float %element, float *%ptr
  ret void
}


define void @f29(<4 x float> %val, float *%base) {




  %ptr = getelementptr float, float *%base, i32 1024
  %element = extractelement <4 x float> %val, i32 1
  store float %element, float *%ptr
  ret void
}


define void @f30(<4 x float> %val, float *%ptr, i32 %index) {



  %element = extractelement <4 x float> %val, i32 %index
  store float %element, float *%ptr
  ret void
}


define void @f32(<2 x double> %val, double *%ptr) {



  %element = extractelement <2 x double> %val, i32 0
  store double %element, double *%ptr
  ret void
}


define void @f33(<2 x double> %val, double *%ptr) {



  %element = extractelement <2 x double> %val, i32 1
  store double %element, double *%ptr
  ret void
}


define void @f34(<2 x double> %val, double *%base) {



  %ptr = getelementptr double, double *%base, i32 511
  %element = extractelement <2 x double> %val, i32 1
  store double %element, double *%ptr
  ret void
}


define void @f35(<2 x double> %val, double *%base) {




  %ptr = getelementptr double, double *%base, i32 512
  %element = extractelement <2 x double> %val, i32 0
  store double %element, double *%ptr
  ret void
}


define void @f36(<2 x double> %val, double *%ptr, i32 %index) {



  %element = extractelement <2 x double> %val, i32 %index
  store double %element, double *%ptr
  ret void
}


define void @f37(<4 x i32> %val, <4 x i32> %index, i64 %base) {



  %elem = extractelement <4 x i32> %index, i32 0
  %ext = zext i32 %elem to i64
  %add = add i64 %base, %ext
  %ptr = inttoptr i64 %add to i32 *
  %element = extractelement <4 x i32> %val, i32 0
  store i32 %element, i32 *%ptr
  ret void
}


define void @f38(<4 x i32> %val, <4 x i32> %index, i64 %base) {



  %elem = extractelement <4 x i32> %index, i32 3
  %ext = zext i32 %elem to i64
  %add = add i64 %base, %ext
  %ptr = inttoptr i64 %add to i32 *
  %element = extractelement <4 x i32> %val, i32 3
  store i32 %element, i32 *%ptr
  ret void
}


define void @f39(<4 x i32> %val, <4 x i32> %index, i64 %base) {



  %elem = extractelement <4 x i32> %index, i32 1
  %ext = zext i32 %elem to i64
  %add1 = add i64 %base, %ext
  %add2 = add i64 %add1, 4095
  %ptr = inttoptr i64 %add2 to i32 *
  %element = extractelement <4 x i32> %val, i32 1
  store i32 %element, i32 *%ptr
  ret void
}


define void @f40(<2 x i64> %val, <2 x i64> %index, i64 %base) {



  %elem = extractelement <2 x i64> %index, i32 0
  %add = add i64 %base, %elem
  %ptr = inttoptr i64 %add to i64 *
  %element = extractelement <2 x i64> %val, i32 0
  store i64 %element, i64 *%ptr
  ret void
}


define void @f41(<2 x i64> %val, <2 x i64> %index, i64 %base) {



  %elem = extractelement <2 x i64> %index, i32 1
  %add = add i64 %base, %elem
  %ptr = inttoptr i64 %add to i64 *
  %element = extractelement <2 x i64> %val, i32 1
  store i64 %element, i64 *%ptr
  ret void
}


define void @f42(<4 x float> %val, <4 x i32> %index, i64 %base) {



  %elem = extractelement <4 x i32> %index, i32 0
  %ext = zext i32 %elem to i64
  %add = add i64 %base, %ext
  %ptr = inttoptr i64 %add to float *
  %element = extractelement <4 x float> %val, i32 0
  store float %element, float *%ptr
  ret void
}


define void @f43(<4 x float> %val, <4 x i32> %index, i64 %base) {



  %elem = extractelement <4 x i32> %index, i32 3
  %ext = zext i32 %elem to i64
  %add = add i64 %base, %ext
  %ptr = inttoptr i64 %add to float *
  %element = extractelement <4 x float> %val, i32 3
  store float %element, float *%ptr
  ret void
}


define void @f44(<2 x double> %val, <2 x i64> %index, i64 %base) {



  %elem = extractelement <2 x i64> %index, i32 0
  %add = add i64 %base, %elem
  %ptr = inttoptr i64 %add to double *
  %element = extractelement <2 x double> %val, i32 0
  store double %element, double *%ptr
  ret void
}


define void @f45(<2 x double> %val, <2 x i64> %index, i64 %base) {



  %elem = extractelement <2 x i64> %index, i32 1
  %add = add i64 %base, %elem
  %ptr = inttoptr i64 %add to double *
  %element = extractelement <2 x double> %val, i32 1
  store double %element, double *%ptr
  ret void
}
