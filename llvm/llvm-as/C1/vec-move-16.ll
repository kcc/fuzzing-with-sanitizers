




define <16 x i8> @f1(<16 x i1> *%ptr) {

  %val = load <16 x i1>, <16 x i1> *%ptr
  %ret = zext <16 x i1> %val to <16 x i8>
  ret <16 x i8> %ret
}


define <8 x i16> @f2(<8 x i1> *%ptr) {

  %val = load <8 x i1>, <8 x i1> *%ptr
  %ret = zext <8 x i1> %val to <8 x i16>
  ret <8 x i16> %ret
}


define <8 x i16> @f3(<8 x i8> *%ptr) {




  %val = load <8 x i8>, <8 x i8> *%ptr
  %ret = zext <8 x i8> %val to <8 x i16>
  ret <8 x i16> %ret
}


define <4 x i32> @f4(<4 x i1> *%ptr) {

  %val = load <4 x i1>, <4 x i1> *%ptr
  %ret = zext <4 x i1> %val to <4 x i32>
  ret <4 x i32> %ret
}


define <4 x i32> @f5(<4 x i8> *%ptr) {





  %val = load <4 x i8>, <4 x i8> *%ptr
  %ret = zext <4 x i8> %val to <4 x i32>
  ret <4 x i32> %ret
}


define <4 x i32> @f6(<4 x i16> *%ptr) {




  %val = load <4 x i16>, <4 x i16> *%ptr
  %ret = zext <4 x i16> %val to <4 x i32>
  ret <4 x i32> %ret
}


define <2 x i64> @f7(<2 x i1> *%ptr) {

  %val = load <2 x i1>, <2 x i1> *%ptr
  %ret = zext <2 x i1> %val to <2 x i64>
  ret <2 x i64> %ret
}


define <2 x i64> @f8(<2 x i8> *%ptr) {






  %val = load <2 x i8>, <2 x i8> *%ptr
  %ret = zext <2 x i8> %val to <2 x i64>
  ret <2 x i64> %ret
}


define <2 x i64> @f9(<2 x i16> *%ptr) {





  %val = load <2 x i16>, <2 x i16> *%ptr
  %ret = zext <2 x i16> %val to <2 x i64>
  ret <2 x i64> %ret
}


define <2 x i64> @f10(<2 x i32> *%ptr) {




  %val = load <2 x i32>, <2 x i32> *%ptr
  %ret = zext <2 x i32> %val to <2 x i64>
  ret <2 x i64> %ret
}
