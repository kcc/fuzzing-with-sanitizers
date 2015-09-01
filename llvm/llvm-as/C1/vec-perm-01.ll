




define <16 x i8> @f1(<16 x i8> %val) {



  %ret = shufflevector <16 x i8> %val, <16 x i8> undef,
                       <16 x i32> zeroinitializer
  ret <16 x i8> %ret
}


define <16 x i8> @f2(<16 x i8> %val) {



  %ret = shufflevector <16 x i8> %val, <16 x i8> undef,
                       <16 x i32> <i32 15, i32 15, i32 15, i32 15,
                                   i32 15, i32 15, i32 15, i32 15,
                                   i32 15, i32 15, i32 15, i32 15,
                                   i32 15, i32 15, i32 15, i32 15>
  ret <16 x i8> %ret
}



define <16 x i8> @f3(<16 x i8> %val) {



  %ret = shufflevector <16 x i8> undef, <16 x i8> %val,
                       <16 x i32> <i32 20, i32 20, i32 20, i32 20,
                                   i32 20, i32 20, i32 20, i32 20,
                                   i32 20, i32 20, i32 20, i32 20,
                                   i32 20, i32 20, i32 20, i32 20>
  ret <16 x i8> %ret
}


define <8 x i16> @f4(<8 x i16> %val) {



  %ret = shufflevector <8 x i16> %val, <8 x i16> undef,
                       <8 x i32> zeroinitializer
  ret <8 x i16> %ret
}


define <8 x i16> @f5(<8 x i16> %val) {



  %ret = shufflevector <8 x i16> %val, <8 x i16> undef,
                       <8 x i32> <i32 7, i32 7, i32 7, i32 7,
                                  i32 7, i32 7, i32 7, i32 7>
  ret <8 x i16> %ret
}



define <8 x i16> @f6(<8 x i16> %val) {



  %ret = shufflevector <8 x i16> undef, <8 x i16> %val,
                       <8 x i32> <i32 10, i32 10, i32 10, i32 10,
                                  i32 10, i32 10, i32 10, i32 10>
  ret <8 x i16> %ret
}


define <4 x i32> @f7(<4 x i32> %val) {



  %ret = shufflevector <4 x i32> %val, <4 x i32> undef,
                       <4 x i32> zeroinitializer
  ret <4 x i32> %ret
}


define <4 x i32> @f8(<4 x i32> %val) {



  %ret = shufflevector <4 x i32> %val, <4 x i32> undef,
                       <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  ret <4 x i32> %ret
}



define <4 x i32> @f9(<4 x i32> %val) {



  %ret = shufflevector <4 x i32> undef, <4 x i32> %val,
                       <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  ret <4 x i32> %ret
}


define <2 x i64> @f10(<2 x i64> %val) {



  %ret = shufflevector <2 x i64> %val, <2 x i64> undef,
                       <2 x i32> zeroinitializer
  ret <2 x i64> %ret
}


define <2 x i64> @f11(<2 x i64> %val) {



  %ret = shufflevector <2 x i64> %val, <2 x i64> undef,
                       <2 x i32> <i32 1, i32 1>
  ret <2 x i64> %ret
}


define <4 x float> @f12(<4 x float> %val) {



  %ret = shufflevector <4 x float> %val, <4 x float> undef,
                       <4 x i32> zeroinitializer
  ret <4 x float> %ret
}


define <4 x float> @f13(<4 x float> %val) {



  %ret = shufflevector <4 x float> %val, <4 x float> undef,
                       <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  ret <4 x float> %ret
}



define <4 x float> @f14(<4 x float> %val) {



  %ret = shufflevector <4 x float> undef, <4 x float> %val,
                       <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  ret <4 x float> %ret
}


define <2 x double> @f15(<2 x double> %val) {



  %ret = shufflevector <2 x double> %val, <2 x double> undef,
                       <2 x i32> zeroinitializer
  ret <2 x double> %ret
}


define <2 x double> @f16(<2 x double> %val) {



  %ret = shufflevector <2 x double> %val, <2 x double> undef,
                       <2 x i32> <i32 1, i32 1>
  ret <2 x double> %ret
}
