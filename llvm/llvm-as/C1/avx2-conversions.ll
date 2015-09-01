

define <4 x i32> @trunc4(<4 x i64> %A) nounwind {






  %B = trunc <4 x i64> %A to <4 x i32>
  ret <4 x i32>%B
}

define <8 x i16> @trunc8(<8 x i32> %A) nounwind {






  %B = trunc <8 x i32> %A to <8 x i16>
  ret <8 x i16>%B
}

define <4 x i64> @sext4(<4 x i32> %A) nounwind {




  %B = sext <4 x i32> %A to <4 x i64>
  ret <4 x i64>%B
}

define <8 x i32> @sext8(<8 x i16> %A) nounwind {




  %B = sext <8 x i16> %A to <8 x i32>
  ret <8 x i32>%B
}

define <4 x i64> @zext4(<4 x i32> %A) nounwind {




  %B = zext <4 x i32> %A to <4 x i64>
  ret <4 x i64>%B
}

define <8 x i32> @zext8(<8 x i16> %A) nounwind {




  %B = zext <8 x i16> %A to <8 x i32>
  ret <8 x i32>%B
}

define <8 x i32> @zext_8i8_8i32(<8 x i8> %A) nounwind {





  %B = zext <8 x i8> %A to <8 x i32>
  ret <8 x i32>%B
}

define <16 x i16> @zext_16i8_16i16(<16 x i8> %z) {




  %t = zext <16 x i8> %z to <16 x i16>
  ret <16 x i16> %t
}

define <16 x i16> @sext_16i8_16i16(<16 x i8> %z) {




  %t = sext <16 x i8> %z to <16 x i16>
  ret <16 x i16> %t
}

define <16 x i8> @trunc_16i16_16i8(<16 x i16> %z) {









  %t = trunc <16 x i16> %z to <16 x i8>
  ret <16 x i8> %t
}

define <4 x i64> @load_sext_test1(<4 x i32> *%ptr) {




 %X = load <4 x i32>, <4 x i32>* %ptr
 %Y = sext <4 x i32> %X to <4 x i64>
 ret <4 x i64>%Y
}

define <4 x i64> @load_sext_test2(<4 x i8> *%ptr) {




 %X = load <4 x i8>, <4 x i8>* %ptr
 %Y = sext <4 x i8> %X to <4 x i64>
 ret <4 x i64>%Y
}

define <4 x i64> @load_sext_test3(<4 x i16> *%ptr) {




 %X = load <4 x i16>, <4 x i16>* %ptr
 %Y = sext <4 x i16> %X to <4 x i64>
 ret <4 x i64>%Y
}

define <8 x i32> @load_sext_test4(<8 x i16> *%ptr) {




 %X = load <8 x i16>, <8 x i16>* %ptr
 %Y = sext <8 x i16> %X to <8 x i32>
 ret <8 x i32>%Y
}

define <8 x i32> @load_sext_test5(<8 x i8> *%ptr) {




 %X = load <8 x i8>, <8 x i8>* %ptr
 %Y = sext <8 x i8> %X to <8 x i32>
 ret <8 x i32>%Y
}
