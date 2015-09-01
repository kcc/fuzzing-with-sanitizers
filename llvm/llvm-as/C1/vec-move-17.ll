




define void @f1(<16 x i8> %val, <16 x i1> *%ptr) {

  %trunc = trunc <16 x i8> %val to <16 x i1>
  store <16 x i1> %trunc, <16 x i1> *%ptr
  ret void
}


define void @f2(<8 x i16> %val, <8 x i1> *%ptr) {

  %trunc = trunc <8 x i16> %val to <8 x i1>
  store <8 x i1> %trunc, <8 x i1> *%ptr
  ret void
}


define void @f3(<8 x i16> %val, <8 x i8> *%ptr) {




  %trunc = trunc <8 x i16> %val to <8 x i8>
  store <8 x i8> %trunc, <8 x i8> *%ptr
  ret void
}


define void @f4(<4 x i32> %val, <4 x i1> *%ptr) {

  %trunc = trunc <4 x i32> %val to <4 x i1>
  store <4 x i1> %trunc, <4 x i1> *%ptr
  ret void
}



define void @f5(<4 x i32> %val, <4 x i8> *%ptr) {




  %trunc = trunc <4 x i32> %val to <4 x i8>
  store <4 x i8> %trunc, <4 x i8> *%ptr
  ret void
}


define void @f6(<4 x i32> %val, <4 x i16> *%ptr) {




  %trunc = trunc <4 x i32> %val to <4 x i16>
  store <4 x i16> %trunc, <4 x i16> *%ptr
  ret void
}


define void @f7(<2 x i64> %val, <2 x i1> *%ptr) {

  %trunc = trunc <2 x i64> %val to <2 x i1>
  store <2 x i1> %trunc, <2 x i1> *%ptr
  ret void
}



define void @f8(<2 x i64> %val, <2 x i8> *%ptr) {




  %trunc = trunc <2 x i64> %val to <2 x i8>
  store <2 x i8> %trunc, <2 x i8> *%ptr
  ret void
}



define void @f9(<2 x i64> %val, <2 x i16> *%ptr) {




  %trunc = trunc <2 x i64> %val to <2 x i16>
  store <2 x i16> %trunc, <2 x i16> *%ptr
  ret void
}


define void @f10(<2 x i64> %val, <2 x i32> *%ptr) {




  %trunc = trunc <2 x i64> %val to <2 x i32>
  store <2 x i32> %trunc, <2 x i32> *%ptr
  ret void
}
