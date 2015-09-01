










define <4 x i32> @f(<4 x i32> %in) {
  %1 = insertelement <4 x i32> %in, i32 255, i32 3
  ret <4 x i32> %1
}






define <8 x i16> @g(<8 x i16> %in) {
  %1 = insertelement <8 x i16> %in, i16 255, i32 7
  ret <8 x i16> %1
}






define <16 x i8> @h(<16 x i8> %in) {
  %1 = insertelement <16 x i8> %in, i8 255, i32 15
  ret <16 x i8> %1
}
