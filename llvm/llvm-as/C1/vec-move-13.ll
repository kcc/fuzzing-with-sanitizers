




define <16 x i8> @f1(i8 %val1, i8 %val2) {





  %vec1 = insertelement <16 x i8> zeroinitializer, i8 %val1, i32 2
  %vec2 = insertelement <16 x i8> %vec1, i8 %val2, i32 12
  ret <16 x i8> %vec2
}


define <8 x i16> @f2(i16 %val1, i16 %val2) {





  %vec1 = insertelement <8 x i16> zeroinitializer, i16 %val1, i32 3
  %vec2 = insertelement <8 x i16> %vec1, i16 %val2, i32 5
  ret <8 x i16> %vec2
}


define <4 x i32> @f3(i32 %val) {




  %ret = insertelement <4 x i32> zeroinitializer, i32 %val, i32 3
  ret <4 x i32> %ret
}


define <2 x i64> @f4(i64 %val) {




  %ret = insertelement <2 x i64> zeroinitializer, i64 %val, i32 1
  ret <2 x i64> %ret
}


define <4 x float> @f5(float %val) {





  %ret = insertelement <4 x float> zeroinitializer, float %val, i32 3
  ret <4 x float> %ret
}


define <2 x double> @f6(double %val) {




  %ret = insertelement <2 x double> zeroinitializer, double %val, i32 1
  ret <2 x double> %ret
}

