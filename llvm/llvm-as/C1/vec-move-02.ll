




define <16 x i8> @f1(<16 x i8> *%ptr) {



  %ret = load <16 x i8>, <16 x i8> *%ptr
  ret <16 x i8> %ret
}


define <8 x i16> @f2(<8 x i16> *%ptr) {



  %ret = load <8 x i16>, <8 x i16> *%ptr
  ret <8 x i16> %ret
}


define <4 x i32> @f3(<4 x i32> *%ptr) {



  %ret = load <4 x i32>, <4 x i32> *%ptr
  ret <4 x i32> %ret
}


define <2 x i64> @f4(<2 x i64> *%ptr) {



  %ret = load <2 x i64>, <2 x i64> *%ptr
  ret <2 x i64> %ret
}


define <4 x float> @f5(<4 x float> *%ptr) {



  %ret = load <4 x float>, <4 x float> *%ptr
  ret <4 x float> %ret
}


define <2 x double> @f6(<2 x double> *%ptr) {



  %ret = load <2 x double>, <2 x double> *%ptr
  ret <2 x double> %ret
}


define <16 x i8> @f7(<16 x i8> *%base) {



  %ptr = getelementptr <16 x i8>, <16 x i8> *%base, i64 255
  %ret = load <16 x i8>, <16 x i8> *%ptr
  ret <16 x i8> %ret
}


define <16 x i8> @f8(i8 *%base) {



  %addr = getelementptr i8, i8 *%base, i64 4095
  %ptr = bitcast i8 *%addr to <16 x i8> *
  %ret = load <16 x i8>, <16 x i8> *%ptr, align 1
  ret <16 x i8> %ret
}


define <16 x i8> @f9(<16 x i8> *%base) {




  %ptr = getelementptr <16 x i8>, <16 x i8> *%base, i64 256
  %ret = load <16 x i8>, <16 x i8> *%ptr
  ret <16 x i8> %ret
}


define <16 x i8> @f10(<16 x i8> *%base) {




  %ptr = getelementptr <16 x i8>, <16 x i8> *%base, i64 -1
  %ret = load <16 x i8>, <16 x i8> *%ptr
  ret <16 x i8> %ret
}


define <16 x i8> @f11(i8 *%base, i64 %index) {



  %addr = getelementptr i8, i8 *%base, i64 %index
  %ptr = bitcast i8 *%addr to <16 x i8> *
  %ret = load <16 x i8>, <16 x i8> *%ptr, align 1
  ret <16 x i8> %ret
}


define <2 x i8> @f12(<2 x i8> *%ptr) {



  %ret = load <2 x i8>, <2 x i8> *%ptr
  ret <2 x i8> %ret
}


define <4 x i8> @f13(<4 x i8> *%ptr) {



  %ret = load <4 x i8>, <4 x i8> *%ptr
  ret <4 x i8> %ret
}


define <8 x i8> @f14(<8 x i8> *%ptr) {



  %ret = load <8 x i8>, <8 x i8> *%ptr
  ret <8 x i8> %ret
}


define <2 x i16> @f15(<2 x i16> *%ptr) {



  %ret = load <2 x i16>, <2 x i16> *%ptr
  ret <2 x i16> %ret
}


define <4 x i16> @f16(<4 x i16> *%ptr) {



  %ret = load <4 x i16>, <4 x i16> *%ptr
  ret <4 x i16> %ret
}


define <2 x i32> @f17(<2 x i32> *%ptr) {



  %ret = load <2 x i32>, <2 x i32> *%ptr
  ret <2 x i32> %ret
}


define <2 x float> @f18(<2 x float> *%ptr) {



  %ret = load <2 x float>, <2 x float> *%ptr
  ret <2 x float> %ret
}
