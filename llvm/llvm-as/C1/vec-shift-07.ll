




define <16 x i8> @f1(<16 x i8> %val) {




  %trunc = trunc <16 x i8> %val to <16 x i1>
  %ret = sext <16 x i1> %trunc to <16 x i8>
  ret <16 x i8> %ret
}


define <8 x i16> @f2(<8 x i16> %val) {




  %trunc = trunc <8 x i16> %val to <8 x i1>
  %ret = sext <8 x i1> %trunc to <8 x i16>
  ret <8 x i16> %ret
}


define <8 x i16> @f3(<8 x i16> %val) {




  %trunc = trunc <8 x i16> %val to <8 x i8>
  %ret = sext <8 x i8> %trunc to <8 x i16>
  ret <8 x i16> %ret
}


define <4 x i32> @f4(<4 x i32> %val) {




  %trunc = trunc <4 x i32> %val to <4 x i1>
  %ret = sext <4 x i1> %trunc to <4 x i32>
  ret <4 x i32> %ret
}


define <4 x i32> @f5(<4 x i32> %val) {




  %trunc = trunc <4 x i32> %val to <4 x i8>
  %ret = sext <4 x i8> %trunc to <4 x i32>
  ret <4 x i32> %ret
}


define <4 x i32> @f6(<4 x i32> %val) {




  %trunc = trunc <4 x i32> %val to <4 x i16>
  %ret = sext <4 x i16> %trunc to <4 x i32>
  ret <4 x i32> %ret
}


define <2 x i64> @f7(<2 x i64> %val) {




  %trunc = trunc <2 x i64> %val to <2 x i1>
  %ret = sext <2 x i1> %trunc to <2 x i64>
  ret <2 x i64> %ret
}


define <2 x i64> @f8(<2 x i64> %val) {



  %trunc = trunc <2 x i64> %val to <2 x i8>
  %ret = sext <2 x i8> %trunc to <2 x i64>
  ret <2 x i64> %ret
}


define <2 x i64> @f9(<2 x i64> %val) {



  %trunc = trunc <2 x i64> %val to <2 x i16>
  %ret = sext <2 x i16> %trunc to <2 x i64>
  ret <2 x i64> %ret
}


define <2 x i64> @f10(<2 x i64> %val) {



  %trunc = trunc <2 x i64> %val to <2 x i32>
  %ret = sext <2 x i32> %trunc to <2 x i64>
  ret <2 x i64> %ret
}


define <2 x i64> @f11(<2 x i64> %val) {



  %shl = shl <2 x i64> %val, <i64 56, i64 56>
  %ret = ashr <2 x i64> %shl, <i64 56, i64 56>
  ret <2 x i64> %ret
}


define <2 x i64> @f12(<2 x i64> %val) {



  %shl = shl <2 x i64> %val, <i64 48, i64 48>
  %ret = ashr <2 x i64> %shl, <i64 48, i64 48>
  ret <2 x i64> %ret
}


define <2 x i64> @f13(<2 x i64> %val) {



  %shl = shl <2 x i64> %val, <i64 32, i64 32>
  %ret = ashr <2 x i64> %shl, <i64 32, i64 32>
  ret <2 x i64> %ret
}


define <2 x i64> @f14(<16 x i8> %val) {



  %elt0 = extractelement <16 x i8> %val, i32 7
  %elt1 = extractelement <16 x i8> %val, i32 15
  %ext0 = sext i8 %elt0 to i64
  %ext1 = sext i8 %elt1 to i64
  %vec0 = insertelement <2 x i64> undef, i64 %ext0, i32 0
  %vec1 = insertelement <2 x i64> %vec0, i64 %ext1, i32 1
  ret <2 x i64> %vec1
}


define <2 x i64> @f15(<16 x i16> %val) {



  %elt0 = extractelement <16 x i16> %val, i32 3
  %elt1 = extractelement <16 x i16> %val, i32 7
  %ext0 = sext i16 %elt0 to i64
  %ext1 = sext i16 %elt1 to i64
  %vec0 = insertelement <2 x i64> undef, i64 %ext0, i32 0
  %vec1 = insertelement <2 x i64> %vec0, i64 %ext1, i32 1
  ret <2 x i64> %vec1
}


define <2 x i64> @f16(<16 x i32> %val) {



  %elt0 = extractelement <16 x i32> %val, i32 1
  %elt1 = extractelement <16 x i32> %val, i32 3
  %ext0 = sext i32 %elt0 to i64
  %ext1 = sext i32 %elt1 to i64
  %vec0 = insertelement <2 x i64> undef, i64 %ext0, i32 0
  %vec1 = insertelement <2 x i64> %vec0, i64 %ext1, i32 1
  ret <2 x i64> %vec1
}
