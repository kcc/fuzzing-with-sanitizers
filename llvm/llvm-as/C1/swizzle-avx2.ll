











define <8 x i32> @swizzle_1(<8 x i32> %v) {
  %1 = shufflevector <8 x i32> %v, <8 x i32> undef, <8 x i32> <i32 3, i32 1, i32 2, i32 0, i32 7, i32 5, i32 6, i32 4>
  %2 = shufflevector <8 x i32> %1, <8 x i32> undef, <8 x i32> <i32 1, i32 0, i32 2, i32 3, i32 7, i32 5, i32 6, i32 4>
  ret <8 x i32> %2
}






define <8 x i32> @swizzle_2(<8 x i32> %v) {
  %1 = shufflevector <8 x i32> %v, <8 x i32> undef, <8 x i32> <i32 6, i32 7, i32 4, i32 5, i32 0, i32 1, i32 2, i32 3>
  %2 = shufflevector <8 x i32> %1, <8 x i32> undef, <8 x i32> <i32 6, i32 7, i32 4, i32 5, i32 0, i32 1, i32 2, i32 3>
  ret <8 x i32> %2
}







define <8 x i32> @swizzle_3(<8 x i32> %v) {
  %1 = shufflevector <8 x i32> %v, <8 x i32> undef, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 2, i32 3, i32 0, i32 1>
  %2 = shufflevector <8 x i32> %1, <8 x i32> undef, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 2, i32 3, i32 0, i32 1>
  ret <8 x i32> %2
}







define <8 x i32> @swizzle_4(<8 x i32> %v) {
  %1 = shufflevector <8 x i32> %v, <8 x i32> undef, <8 x i32> <i32 4, i32 7, i32 5, i32 6, i32 3, i32 2, i32 0, i32 1>
  %2 = shufflevector <8 x i32> %1, <8 x i32> undef, <8 x i32> <i32 4, i32 7, i32 5, i32 6, i32 3, i32 2, i32 0, i32 1>
  ret <8 x i32> %2
}






define <8 x i32> @swizzle_5(<8 x i32> %v) {
  %1 = shufflevector <8 x i32> %v, <8 x i32> undef, <8 x i32> <i32 7, i32 4, i32 6, i32 5, i32 0, i32 2, i32 1, i32 3>
  %2 = shufflevector <8 x i32> %1, <8 x i32> undef, <8 x i32> <i32 7, i32 4, i32 6, i32 5, i32 0, i32 2, i32 1, i32 3>
  ret <8 x i32> %2
}






define <8 x i32> @swizzle_6(<8 x i32> %v) {
  %1 = shufflevector <8 x i32> %v, <8 x i32> undef, <8 x i32> <i32 2, i32 1, i32 3, i32 0, i32 4, i32 7, i32 6, i32 5>
  %2 = shufflevector <8 x i32> %1, <8 x i32> undef, <8 x i32> <i32 2, i32 1, i32 3, i32 0, i32 4, i32 7, i32 6, i32 5>
  ret <8 x i32> %2
}






define <8 x i32> @swizzle_7(<8 x i32> %v) {
  %1 = shufflevector <8 x i32> %v, <8 x i32> undef, <8 x i32> <i32 0, i32 3, i32 1, i32 2, i32 5, i32 4, i32 6, i32 7>
  %2 = shufflevector <8 x i32> %1, <8 x i32> undef, <8 x i32> <i32 0, i32 3, i32 1, i32 2, i32 5, i32 4, i32 6, i32 7>
  ret <8 x i32> %2
}






