




define void @f1(<16 x i8> %val, <16 x i8> *%ptr) {



  store <16 x i8> %val, <16 x i8> *%ptr
  ret void
}


define void @f2(<8 x i16> %val, <8 x i16> *%ptr) {



  store <8 x i16> %val, <8 x i16> *%ptr
  ret void
}


define void @f3(<4 x i32> %val, <4 x i32> *%ptr) {



  store <4 x i32> %val, <4 x i32> *%ptr
  ret void
}


define void @f4(<2 x i64> %val, <2 x i64> *%ptr) {



  store <2 x i64> %val, <2 x i64> *%ptr
  ret void
}


define void @f5(<4 x float> %val, <4 x float> *%ptr) {



  store <4 x float> %val, <4 x float> *%ptr
  ret void
}


define void @f6(<2 x double> %val, <2 x double> *%ptr) {



  store <2 x double> %val, <2 x double> *%ptr
  ret void
}


define void @f7(<16 x i8> %val, <16 x i8> *%base) {



  %ptr = getelementptr <16 x i8>, <16 x i8> *%base, i64 255
  store <16 x i8> %val, <16 x i8> *%ptr
  ret void
}


define void @f8(<16 x i8> %val, i8 *%base) {



  %addr = getelementptr i8, i8 *%base, i64 4095
  %ptr = bitcast i8 *%addr to <16 x i8> *
  store <16 x i8> %val, <16 x i8> *%ptr, align 1
  ret void
}


define void @f9(<16 x i8> %val, <16 x i8> *%base) {




  %ptr = getelementptr <16 x i8>, <16 x i8> *%base, i64 256
  store <16 x i8> %val, <16 x i8> *%ptr
  ret void
}


define void @f10(<16 x i8> %val, <16 x i8> *%base) {




  %ptr = getelementptr <16 x i8>, <16 x i8> *%base, i64 -1
  store <16 x i8> %val, <16 x i8> *%ptr
  ret void
}


define void @f11(<16 x i8> %val, i8 *%base, i64 %index) {



  %addr = getelementptr i8, i8 *%base, i64 %index
  %ptr = bitcast i8 *%addr to <16 x i8> *
  store <16 x i8> %val, <16 x i8> *%ptr, align 1
  ret void
}


define void @f12(<2 x i8> %val, <2 x i8> *%ptr) {



  store <2 x i8> %val, <2 x i8> *%ptr
  ret void
}


define void @f13(<4 x i8> %val, <4 x i8> *%ptr) {



  store <4 x i8> %val, <4 x i8> *%ptr
  ret void
}


define void @f14(<8 x i8> %val, <8 x i8> *%ptr) {



  store <8 x i8> %val, <8 x i8> *%ptr
  ret void
}


define void @f15(<2 x i16> %val, <2 x i16> *%ptr) {



  store <2 x i16> %val, <2 x i16> *%ptr
  ret void
}


define void @f16(<4 x i16> %val, <4 x i16> *%ptr) {



  store <4 x i16> %val, <4 x i16> *%ptr
  ret void
}


define void @f17(<2 x i32> %val, <2 x i32> *%ptr) {



  store <2 x i32> %val, <2 x i32> *%ptr
  ret void
}


define void @f18(<2 x float> %val, <2 x float> *%ptr) {



  store <2 x float> %val, <2 x float> *%ptr
  ret void
}
