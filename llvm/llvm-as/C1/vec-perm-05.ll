




define <16 x i8> @f1(<16 x i8> %val1, <16 x i8> %val2) {



  %ret = shufflevector <16 x i8> %val1, <16 x i8> %val2,
                       <16 x i32> <i32 8, i32 24, i32 9, i32 25,
                                   i32 10, i32 26, i32 11, i32 27,
                                   i32 12, i32 28, i32 13, i32 29,
                                   i32 14, i32 30, i32 15, i32 31>
  ret <16 x i8> %ret
}


define <16 x i8> @f2(<16 x i8> %val1, <16 x i8> %val2) {



  %ret = shufflevector <16 x i8> %val1, <16 x i8> %val2,
                       <16 x i32> <i32 24, i32 8, i32 25, i32 9,
                                   i32 26, i32 10, i32 27, i32 11,
                                   i32 28, i32 12, i32 29, i32 13,
                                   i32 30, i32 14, i32 31, i32 15>
  ret <16 x i8> %ret
}


define <16 x i8> @f3(<16 x i8> %val1, <16 x i8> %val2) {



  %ret = shufflevector <16 x i8> %val1, <16 x i8> %val2,
                       <16 x i32> <i32 8, i32 8, i32 9, i32 9,
                                   i32 10, i32 10, i32 11, i32 11,
                                   i32 12, i32 12, i32 13, i32 13,
                                   i32 14, i32 14, i32 15, i32 15>
  ret <16 x i8> %ret
}



define <16 x i8> @f4(<16 x i8> %val1, <16 x i8> %val2) {



  %ret = shufflevector <16 x i8> %val1, <16 x i8> %val2,
                       <16 x i32> <i32 24, i32 24, i32 25, i32 25,
                                   i32 26, i32 26, i32 27, i32 27,
                                   i32 28, i32 28, i32 29, i32 29,
                                   i32 30, i32 30, i32 31, i32 31>
  ret <16 x i8> %ret
}



define <16 x i8> @f5(<16 x i8> %val) {



  %ret = shufflevector <16 x i8> %val, <16 x i8> %val,
                       <16 x i32> <i32 8, i32 24, i32 25, i32 25,
                                   i32 26, i32 10, i32 11, i32 11,
                                   i32 28, i32 28, i32 13, i32 13,
                                   i32 14, i32 30, i32 31, i32 15>
  ret <16 x i8> %ret
}


define <16 x i8> @f6(<16 x i8> %val1, <16 x i8> %val2) {



  %ret = shufflevector <16 x i8> %val1, <16 x i8> %val2,
                       <16 x i32> <i32 8, i32 undef, i32 9, i32 25,
                                   i32 undef, i32 26, i32 undef, i32 undef,
                                   i32 undef, i32 28, i32 13, i32 29,
                                   i32 undef, i32 30, i32 15, i32 undef>
  ret <16 x i8> %ret
}




define <16 x i8> @f7(<16 x i8> %val) {



  %ret = shufflevector <16 x i8> undef, <16 x i8> %val,
                       <16 x i32> <i32 11, i32 24, i32 25, i32 5,
                                   i32 26, i32 10, i32 27, i32 27,
                                   i32 28, i32 28, i32 29, i32 3,
                                   i32 2, i32 30, i32 9, i32 31>
  ret <16 x i8> %ret
}


define <8 x i16> @f8(<8 x i16> %val1, <8 x i16> %val2) {



  %ret = shufflevector <8 x i16> %val1, <8 x i16> %val2,
                       <8 x i32> <i32 4, i32 12, i32 5, i32 13,
                                  i32 6, i32 14, i32 7, i32 15>
  ret <8 x i16> %ret
}


define <8 x i16> @f9(<8 x i16> %val1, <8 x i16> %val2) {



  %ret = shufflevector <8 x i16> %val1, <8 x i16> %val2,
                       <8 x i32> <i32 12, i32 4, i32 13, i32 5,
                                  i32 14, i32 6, i32 15, i32 7>
  ret <8 x i16> %ret
}


define <4 x i32> @f10(<4 x i32> %val1, <4 x i32> %val2) {



  %ret = shufflevector <4 x i32> %val1, <4 x i32> %val2,
                       <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  ret <4 x i32> %ret
}


define <4 x i32> @f11(<4 x i32> %val1, <4 x i32> %val2) {



  %ret = shufflevector <4 x i32> %val1, <4 x i32> %val2,
                       <4 x i32> <i32 6, i32 2, i32 7, i32 3>
  ret <4 x i32> %ret
}


define <2 x i64> @f12(<2 x i64> %val1, <2 x i64> %val2) {



  %ret = shufflevector <2 x i64> %val1, <2 x i64> %val2,
                       <2 x i32> <i32 1, i32 3>
  ret <2 x i64> %ret
}


define <2 x i64> @f13(<2 x i64> %val1, <2 x i64> %val2) {



  %ret = shufflevector <2 x i64> %val1, <2 x i64> %val2,
                       <2 x i32> <i32 3, i32 1>
  ret <2 x i64> %ret
}


define <4 x float> @f14(<4 x float> %val1, <4 x float> %val2) {



  %ret = shufflevector <4 x float> %val1, <4 x float> %val2,
                       <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  ret <4 x float> %ret
}


define <4 x float> @f15(<4 x float> %val1, <4 x float> %val2) {



  %ret = shufflevector <4 x float> %val1, <4 x float> %val2,
                       <4 x i32> <i32 6, i32 2, i32 7, i32 3>
  ret <4 x float> %ret
}


define <2 x double> @f16(<2 x double> %val1, <2 x double> %val2) {



  %ret = shufflevector <2 x double> %val1, <2 x double> %val2,
                       <2 x i32> <i32 1, i32 3>
  ret <2 x double> %ret
}


define <2 x double> @f17(<2 x double> %val1, <2 x double> %val2) {



  %ret = shufflevector <2 x double> %val1, <2 x double> %val2,
                       <2 x i32> <i32 3, i32 1>
  ret <2 x double> %ret
}
