





define <4 x i32> @load_zmov_4i32_to_0zzz(<4 x i32> *%ptr) {










entry:
  %X = load <4 x i32>, <4 x i32>* %ptr
  %Y = shufflevector <4 x i32> %X, <4 x i32> zeroinitializer, <4 x i32> <i32 0, i32 4, i32 4, i32 4>
  ret <4 x i32>%Y
}

define <2 x i64> @load_zmov_2i64_to_0z(<2 x i64> *%ptr) {










entry:
  %X = load <2 x i64>, <2 x i64>* %ptr
  %Y = shufflevector <2 x i64> %X, <2 x i64> zeroinitializer, <2 x i32> <i32 0, i32 2>
  ret <2 x i64>%Y
}
