




define i8 @f1(<16 x i8> %val) {



  %ret = extractelement <16 x i8> %val, i32 0
  ret i8 %ret
}


define i8 @f2(<16 x i8> %val) {



  %ret = extractelement <16 x i8> %val, i32 15
  ret i8 %ret
}



define i8 @f3(<16 x i8> %val) {



  %ret = extractelement <16 x i8> %val, i32 100000
  ret i8 %ret
}


define i8 @f4(<16 x i8> %val, i32 %index) {



  %ret = extractelement <16 x i8> %val, i32 %index
  ret i8 %ret
}


define i16 @f5(<8 x i16> %val) {



  %ret = extractelement <8 x i16> %val, i32 0
  ret i16 %ret
}


define i16 @f6(<8 x i16> %val) {



  %ret = extractelement <8 x i16> %val, i32 7
  ret i16 %ret
}



define i16 @f7(<8 x i16> %val) {



  %ret = extractelement <8 x i16> %val, i32 100000
  ret i16 %ret
}


define i16 @f8(<8 x i16> %val, i32 %index) {



  %ret = extractelement <8 x i16> %val, i32 %index
  ret i16 %ret
}


define i32 @f9(<4 x i32> %val) {



  %ret = extractelement <4 x i32> %val, i32 0
  ret i32 %ret
}


define i32 @f10(<4 x i32> %val) {



  %ret = extractelement <4 x i32> %val, i32 3
  ret i32 %ret
}



define i32 @f11(<4 x i32> %val) {



  %ret = extractelement <4 x i32> %val, i32 100000
  ret i32 %ret
}


define i32 @f12(<4 x i32> %val, i32 %index) {



  %ret = extractelement <4 x i32> %val, i32 %index
  ret i32 %ret
}


define i64 @f13(<2 x i64> %val) {



  %ret = extractelement <2 x i64> %val, i32 0
  ret i64 %ret
}


define i64 @f14(<2 x i64> %val) {



  %ret = extractelement <2 x i64> %val, i32 1
  ret i64 %ret
}



define i64 @f15(<2 x i64> %val) {



  %ret = extractelement <2 x i64> %val, i32 100000
  ret i64 %ret
}


define i64 @f16(<2 x i64> %val, i32 %index) {



  %ret = extractelement <2 x i64> %val, i32 %index
  ret i64 %ret
}


define float @f17(<4 x float> %val) {



  %ret = extractelement <4 x float> %val, i32 0
  ret float %ret
}


define float @f18(<4 x float> %val) {



  %ret = extractelement <4 x float> %val, i32 1
  ret float %ret
}


define float @f19(<4 x float> %val) {



  %ret = extractelement <4 x float> %val, i32 2
  ret float %ret
}


define float @f20(<4 x float> %val) {



  %ret = extractelement <4 x float> %val, i32 3
  ret float %ret
}



define float @f21(<4 x float> %val) {
  %ret = extractelement <4 x float> %val, i32 100000
  ret float %ret
}


define float @f22(<4 x float> %val, i32 %index) {




  %ret = extractelement <4 x float> %val, i32 %index
  ret float %ret
}


define double @f23(<2 x double> %val) {



  %ret = extractelement <2 x double> %val, i32 0
  ret double %ret
}


define double @f24(<2 x double> %val) {



  %ret = extractelement <2 x double> %val, i32 1
  ret double %ret
}



define double @f25(<2 x double> %val) {
  %ret = extractelement <2 x double> %val, i32 100000
  ret double %ret
}


define double @f26(<2 x double> %val, i32 %index) {




  %ret = extractelement <2 x double> %val, i32 %index
  ret double %ret
}


define i8 @f27(<16 x i8> %val, i32 %index) {



  %add = add i32 %index, 1
  %ret = extractelement <16 x i8> %val, i32 %add
  ret i8 %ret
}
