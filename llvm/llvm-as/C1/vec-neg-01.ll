




define <16 x i8> @f1(<16 x i8> %dummy, <16 x i8> %val) {



  %ret = sub <16 x i8> zeroinitializer, %val
  ret <16 x i8> %ret
}


define <8 x i16> @f2(<8 x i16> %dummy, <8 x i16> %val) {



  %ret = sub <8 x i16> zeroinitializer, %val
  ret <8 x i16> %ret
}


define <4 x i32> @f3(<4 x i32> %dummy, <4 x i32> %val) {



  %ret = sub <4 x i32> zeroinitializer, %val
  ret <4 x i32> %ret
}


define <2 x i64> @f4(<2 x i64> %dummy, <2 x i64> %val) {



  %ret = sub <2 x i64> zeroinitializer, %val
  ret <2 x i64> %ret
}


define <2 x double> @f5(<2 x double> %dummy, <2 x double> %val) {



  %ret = fsub <2 x double> <double -0.0, double -0.0>, %val
  ret <2 x double> %ret
}


define double @f6(<2 x double> %val) {



  %scalar = extractelement <2 x double> %val, i32 0
  %ret = fsub double -0.0, %scalar
  ret double %ret
}
