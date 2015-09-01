




define <16 x i8> @f1(<16 x i8> %val) {




  %trunc = trunc <16 x i8> %val to <16 x i1>
  %ret = zext <16 x i1> %trunc to <16 x i8>
  ret <16 x i8> %ret
}


define <8 x i16> @f2(<8 x i16> %val) {




  %trunc = trunc <8 x i16> %val to <8 x i1>
  %ret = zext <8 x i1> %trunc to <8 x i16>
  ret <8 x i16> %ret
}


define <8 x i16> @f3(<8 x i16> %val) {




  %trunc = trunc <8 x i16> %val to <8 x i8>
  %ret = zext <8 x i8> %trunc to <8 x i16>
  ret <8 x i16> %ret
}


define <4 x i32> @f4(<4 x i32> %val) {




  %trunc = trunc <4 x i32> %val to <4 x i1>
  %ret = zext <4 x i1> %trunc to <4 x i32>
  ret <4 x i32> %ret
}


define <4 x i32> @f5(<4 x i32> %val) {




  %trunc = trunc <4 x i32> %val to <4 x i8>
  %ret = zext <4 x i8> %trunc to <4 x i32>
  ret <4 x i32> %ret
}


define <4 x i32> @f6(<4 x i32> %val) {




  %trunc = trunc <4 x i32> %val to <4 x i16>
  %ret = zext <4 x i16> %trunc to <4 x i32>
  ret <4 x i32> %ret
}


define <2 x i64> @f7(<2 x i64> %val) {




  %trunc = trunc <2 x i64> %val to <2 x i1>
  %ret = zext <2 x i1> %trunc to <2 x i64>
  ret <2 x i64> %ret
}


define <2 x i64> @f8(<2 x i64> %val) {




  %trunc = trunc <2 x i64> %val to <2 x i8>
  %ret = zext <2 x i8> %trunc to <2 x i64>
  ret <2 x i64> %ret
}


define <2 x i64> @f9(<2 x i64> %val) {




  %trunc = trunc <2 x i64> %val to <2 x i16>
  %ret = zext <2 x i16> %trunc to <2 x i64>
  ret <2 x i64> %ret
}


define <2 x i64> @f10(<2 x i64> %val) {




  %trunc = trunc <2 x i64> %val to <2 x i32>
  %ret = zext <2 x i32> %trunc to <2 x i64>
  ret <2 x i64> %ret
}
