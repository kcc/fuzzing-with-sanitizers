



define void @truncStore.v2i64(<2 x i64> %a, <2 x i32>* %result) {



  %b = trunc <2 x i64> %a to <2 x i32>
  store <2 x i32> %b, <2 x i32>* %result
  ret void
}

define void @truncStore.v4i32(<4 x i32> %a, <4 x i16>* %result) {



  %b = trunc <4 x i32> %a to <4 x i16>
  store <4 x i16> %b, <4 x i16>* %result
  ret void
}

define void @truncStore.v8i16(<8 x i16> %a, <8 x i8>* %result) {



  %b = trunc <8 x i16> %a to <8 x i8>
  store <8 x i8> %b, <8 x i8>* %result
  ret void
}



define <4 x i32> @loadSExt.v4i8(<4 x i8>* %ref) {


  %a = load <4 x i8>, <4 x i8>* %ref
  %conv = sext <4 x i8> %a to <4 x i32>
  ret <4 x i32> %conv
}

define <4 x i32> @loadZExt.v4i8(<4 x i8>* %ref) {


  %a = load <4 x i8>, <4 x i8>* %ref
  %conv = zext <4 x i8> %a to <4 x i32>
  ret <4 x i32> %conv
}

define i32 @loadExt.i32(<4 x i8>* %ref) {


  %a = load <4 x i8>, <4 x i8>* %ref
  %vecext = extractelement <4 x i8> %a, i32 0
  %conv = zext i8 %vecext to i32
  ret i32 %conv
}
