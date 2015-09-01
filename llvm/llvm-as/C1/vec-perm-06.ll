




define <16 x i8> @f1(<16 x i8> %val1, <16 x i8> %val2) {



  %ret = shufflevector <16 x i8> %val1, <16 x i8> %val2,
                       <16 x i32> <i32 1, i32 3, i32 5, i32 7,
                                   i32 9, i32 11, i32 13, i32 15,
                                   i32 17, i32 19, i32 21, i32 23,
                                   i32 25, i32 27, i32 29, i32 31>
  ret <16 x i8> %ret
}


define <16 x i8> @f2(<16 x i8> %val1, <16 x i8> %val2) {



  %ret = shufflevector <16 x i8> %val1, <16 x i8> %val2,
                       <16 x i32> <i32 17, i32 19, i32 21, i32 23,
                                   i32 25, i32 27, i32 29, i32 31,
                                   i32 1, i32 3, i32 5, i32 7,
                                   i32 9, i32 11, i32 13, i32 15>
  ret <16 x i8> %ret
}


define <16 x i8> @f3(<16 x i8> %val1, <16 x i8> %val2) {



  %ret = shufflevector <16 x i8> %val1, <16 x i8> %val2,
                       <16 x i32> <i32 1, i32 3, i32 5, i32 7,
                                   i32 9, i32 11, i32 13, i32 15,
                                   i32 1, i32 3, i32 5, i32 7,
                                   i32 9, i32 11, i32 13, i32 15>
  ret <16 x i8> %ret
}



define <16 x i8> @f4(<16 x i8> %val1, <16 x i8> %val2) {



  %ret = shufflevector <16 x i8> %val1, <16 x i8> %val2,
                       <16 x i32> <i32 17, i32 19, i32 21, i32 23,
                                   i32 25, i32 27, i32 29, i32 31,
                                   i32 17, i32 19, i32 21, i32 23,
                                   i32 25, i32 27, i32 29, i32 31>
  ret <16 x i8> %ret
}



define <16 x i8> @f5(<16 x i8> %val) {



  %ret = shufflevector <16 x i8> %val, <16 x i8> %val,
                       <16 x i32> <i32 1, i32 3, i32 5, i32 7,
                                   i32 9, i32 11, i32 13, i32 15,
                                   i32 17, i32 19, i32 21, i32 23,
                                   i32 25, i32 27, i32 29, i32 31>
  ret <16 x i8> %ret
}


define <16 x i8> @f6(<16 x i8> %val1, <16 x i8> %val2) {



  %ret = shufflevector <16 x i8> %val1, <16 x i8> %val2,
                       <16 x i32> <i32 1, i32 undef, i32 5, i32 7,
                                   i32 undef, i32 11, i32 undef, i32 undef,
                                   i32 undef, i32 19, i32 21, i32 23,
                                   i32 undef, i32 27, i32 29, i32 undef>
  ret <16 x i8> %ret
}




define <16 x i8> @f7(<16 x i8> %val) {



  %ret = shufflevector <16 x i8> undef, <16 x i8> %val,
                       <16 x i32> <i32 7, i32 1, i32 9, i32 15,
                                   i32 15, i32 3, i32 5, i32 1,
                                   i32 17, i32 19, i32 21, i32 23,
                                   i32 25, i32 27, i32 29, i32 31>
  ret <16 x i8> %ret
}


define <8 x i16> @f8(<8 x i16> %val1, <8 x i16> %val2) {



  %ret = shufflevector <8 x i16> %val1, <8 x i16> %val2,
                       <8 x i32> <i32 1, i32 3, i32 5, i32 7,
                                  i32 9, i32 11, i32 13, i32 15>
  ret <8 x i16> %ret
}


define <8 x i16> @f9(<8 x i16> %val1, <8 x i16> %val2) {



  %ret = shufflevector <8 x i16> %val1, <8 x i16> %val2,
                       <8 x i32> <i32 9, i32 11, i32 13, i32 15,
                                  i32 1, i32 3, i32 5, i32 7>
  ret <8 x i16> %ret
}


define <4 x i32> @f10(<4 x i32> %val1, <4 x i32> %val2) {



  %ret = shufflevector <4 x i32> %val1, <4 x i32> %val2,
                       <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  ret <4 x i32> %ret
}


define <4 x i32> @f11(<4 x i32> %val1, <4 x i32> %val2) {



  %ret = shufflevector <4 x i32> %val1, <4 x i32> %val2,
                       <4 x i32> <i32 5, i32 7, i32 1, i32 3>
  ret <4 x i32> %ret
}


define <4 x float> @f12(<4 x float> %val1, <4 x float> %val2) {



  %ret = shufflevector <4 x float> %val1, <4 x float> %val2,
                       <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  ret <4 x float> %ret
}


define <4 x float> @f13(<4 x float> %val1, <4 x float> %val2) {



  %ret = shufflevector <4 x float> %val1, <4 x float> %val2,
                       <4 x i32> <i32 5, i32 7, i32 1, i32 3>
  ret <4 x float> %ret
}
