




define <16 x i8> @f1(i8 %val) {



  %ret = insertelement <16 x i8> undef, i8 %val, i32 0
  ret <16 x i8> %ret
}


define <8 x i16> @f2(i16 %val) {



  %ret = insertelement <8 x i16> undef, i16 %val, i32 0
  ret <8 x i16> %ret
}


define <4 x i32> @f3(i32 %val) {



  %ret = insertelement <4 x i32> undef, i32 %val, i32 0
  ret <4 x i32> %ret
}


define <2 x i64> @f4(i64 %val) {



  %ret = insertelement <2 x i64> undef, i64 %val, i32 0
  ret <2 x i64> %ret
}


define <4 x float> @f5(float %val) {



  %ret = insertelement <4 x float> undef, float %val, i32 0
  ret <4 x float> %ret
}


define <2 x double> @f6(double %val) {



  %ret = insertelement <2 x double> undef, double %val, i32 0
  ret <2 x double> %ret
}
