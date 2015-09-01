




define <16 x i8> @f1(<16 x i8> %dummy, <16 x i8> %val1, <16 x i8> %val2) {



  %ret = sub <16 x i8> %val1, %val2
  ret <16 x i8> %ret
}


define <8 x i16> @f2(<8 x i16> %dummy, <8 x i16> %val1, <8 x i16> %val2) {



  %ret = sub <8 x i16> %val1, %val2
  ret <8 x i16> %ret
}


define <4 x i32> @f3(<4 x i32> %dummy, <4 x i32> %val1, <4 x i32> %val2) {



  %ret = sub <4 x i32> %val1, %val2
  ret <4 x i32> %ret
}


define <2 x i64> @f4(<2 x i64> %dummy, <2 x i64> %val1, <2 x i64> %val2) {



  %ret = sub <2 x i64> %val1, %val2
  ret <2 x i64> %ret
}





define <4 x float> @f5(<4 x float> %val1, <4 x float> %val2) {


















  %ret = fsub <4 x float> %val1, %val2
  ret <4 x float> %ret
}


define <2 x double> @f6(<2 x double> %dummy, <2 x double> %val1,
                        <2 x double> %val2) {



  %ret = fsub <2 x double> %val1, %val2
  ret <2 x double> %ret
}


define double @f7(<2 x double> %val1, <2 x double> %val2) {



  %scalar1 = extractelement <2 x double> %val1, i32 0
  %scalar2 = extractelement <2 x double> %val2, i32 0
  %ret = fsub double %scalar1, %scalar2
  ret double %ret
}


define <2 x i8> @f8(<2 x i8> %dummy, <2 x i8> %val1, <2 x i8> %val2) {



  %ret = sub <2 x i8> %val1, %val2
  ret <2 x i8> %ret
}


define <4 x i8> @f9(<4 x i8> %dummy, <4 x i8> %val1, <4 x i8> %val2) {



  %ret = sub <4 x i8> %val1, %val2
  ret <4 x i8> %ret
}


define <8 x i8> @f10(<8 x i8> %dummy, <8 x i8> %val1, <8 x i8> %val2) {



  %ret = sub <8 x i8> %val1, %val2
  ret <8 x i8> %ret
}


define <2 x i16> @f11(<2 x i16> %dummy, <2 x i16> %val1, <2 x i16> %val2) {



  %ret = sub <2 x i16> %val1, %val2
  ret <2 x i16> %ret
}


define <4 x i16> @f12(<4 x i16> %dummy, <4 x i16> %val1, <4 x i16> %val2) {



  %ret = sub <4 x i16> %val1, %val2
  ret <4 x i16> %ret
}


define <2 x i32> @f13(<2 x i32> %dummy, <2 x i32> %val1, <2 x i32> %val2) {



  %ret = sub <2 x i32> %val1, %val2
  ret <2 x i32> %ret
}


define <2 x float> @f14(<2 x float> %val1, <2 x float> %val2) {

  %ret = fsub <2 x float> %val1, %val2
  ret <2 x float> %ret
}
