












define <2 x i32> @test_v2i32(<2 x i32> %a, <2 x i32> %b) {
  %1 = shufflevector <2 x i32> %a, <2 x i32> %b, <2 x i32> <i32 0, i32 3>
  ret <2 x i32> %1
}







define <2 x float> @test_v2f32(<2 x float> %a, <2 x float> %b) {
  %1 = shufflevector <2 x float> %a, <2 x float> %b, <2 x i32> <i32 0, i32 3>
  ret <2 x float> %1
}







define <2 x i32> @test_v2i32_2(<2 x i32> %a, <2 x i32> %b) {
  %1 = shufflevector <2 x i32> %a, <2 x i32> %b, <2 x i32> <i32 2, i32 1>
  ret <2 x i32> %1
}







define <2 x float> @test_v2f32_2(<2 x float> %a, <2 x float> %b) {
  %1 = shufflevector <2 x float> %a, <2 x float> %b, <2 x i32> <i32 2, i32 1>
  ret <2 x float> %1
}










define <2 x i64> @test_v2i64(<2 x i64> %a, <2 x i64> %b) {
  %1 = shufflevector <2 x i64> %a, <2 x i64> %b, <2 x i32> <i32 0, i32 3>
  ret <2 x i64> %1
}







define <2 x double> @test_v2f64(<2 x double> %a, <2 x double> %b) {
  %1 = shufflevector <2 x double> %a, <2 x double> %b, <2 x i32> <i32 0, i32 3>
  ret <2 x double> %1
}








define <2 x i64> @test_v2i64_2(<2 x i64> %a, <2 x i64> %b) {
  %1 = shufflevector <2 x i64> %a, <2 x i64> %b, <2 x i32> <i32 2, i32 1>
  ret <2 x i64> %1
}








define <2 x double> @test_v2f64_2(<2 x double> %a, <2 x double> %b) {
  %1 = shufflevector <2 x double> %a, <2 x double> %b, <2 x i32> <i32 2, i32 1>
  ret <2 x double> %1
}









define <4 x i32> @test_v4i32(<4 x i32> %a, <4 x i32> %b) {
  %1 = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  ret <4 x i32> %1
}








define <4 x i32> @test_v4i32_2(<4 x i32> %a, <4 x i32> %b) {
  %1 = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 4, i32 1, i32 6, i32 3>
  ret <4 x i32> %1
}








define <4 x float> @test_v4f32(<4 x float> %a, <4 x float> %b) {
  %1 = shufflevector <4 x float> %a, <4 x float> %b, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  ret <4 x float> %1
}








define <4 x float> @test_v4f32_2(<4 x float> %a, <4 x float> %b) {
  %1 = shufflevector <4 x float> %a, <4 x float> %b, <4 x i32> <i32 4, i32 1, i32 6, i32 3>
  ret <4 x float> %1
}







define <4 x i64> @test_v4i64(<4 x i64> %a, <4 x i64> %b) {
  %1 = shufflevector <4 x i64> %a, <4 x i64> %b, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  ret <4 x i64> %1
}








define <4 x i64> @test_v4i64_2(<4 x i64> %a, <4 x i64> %b) {
  %1 = shufflevector <4 x i64> %a, <4 x i64> %b, <4 x i32> <i32 4, i32 1, i32 6, i32 3>
  ret <4 x i64> %1
}








define <4 x double> @test_v4f64(<4 x double> %a, <4 x double> %b) {
  %1 = shufflevector <4 x double> %a, <4 x double> %b, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  ret <4 x double> %1
}








define <4 x double> @test_v4f64_2(<4 x double> %a, <4 x double> %b) {
  %1 = shufflevector <4 x double> %a, <4 x double> %b, <4 x i32> <i32 4, i32 1, i32 6, i32 3>
  ret <4 x double> %1
}









define <8 x i16> @test_v8i16(<8 x i16> %a, <8 x i16> %b) {
  %1 = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 4, i32 13, i32 6, i32 15>
  ret <8 x i16> %1
}








define <8 x i16> @test_v8i16_2(<8 x i16> %a, <8 x i16> %b) {
  %1 = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 8, i32 1, i32 10, i32 3, i32 12, i32 5, i32 14, i32 7>
  ret <8 x i16> %1
}








define <8 x i32> @test_v8i32(<8 x i32> %a, <8 x i32> %b) {
  %1 = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 4, i32 13, i32 6, i32 15>
  ret <8 x i32> %1
}








define <8 x i32> @test_v8i32_2(<8 x i32> %a, <8 x i32> %b) {
  %1 = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 8, i32 1, i32 10, i32 3, i32 12, i32 5, i32 14, i32 7>
  ret <8 x i32> %1
}








define <8 x float> @test_v8f32(<8 x float> %a, <8 x float> %b) {
  %1 = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 4, i32 13, i32 6, i32 15>
  ret <8 x float> %1
}








define <8 x float> @test_v8f32_2(<8 x float> %a, <8 x float> %b) {
  %1 = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 8, i32 1, i32 10, i32 3, i32 12, i32 5, i32 14, i32 7>
  ret <8 x float> %1
}









define <16 x i8> @test_v16i8(<16 x i8> %a, <16 x i8> %b) {
  %1 = shufflevector <16 x i8> %a, <16 x i8> %b, <16 x i32> <i32 0, i32 17, i32 2, i32 19, i32 4, i32 21, i32 6, i32 23, i32 8, i32 25, i32 10, i32 27, i32 12, i32 29, i32 14, i32 31>
  ret <16 x i8> %1
}








define <16 x i8> @test_v16i8_2(<16 x i8> %a, <16 x i8> %b) {
  %1 = shufflevector <16 x i8> %a, <16 x i8> %b, <16 x i32> <i32 16, i32 1, i32 18, i32 3, i32 20, i32 5, i32 22, i32 7, i32 24, i32 9, i32 26, i32 11, i32 28, i32 13, i32 30, i32 15>
  ret <16 x i8> %1
}








define <16 x i16> @test_v16i16(<16 x i16> %a, <16 x i16> %b) {
  %1 = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 17, i32 2, i32 19, i32 4, i32 21, i32 6, i32 23, i32 8, i32 25, i32 10, i32 27, i32 12, i32 29, i32 14, i32 31>
  ret <16 x i16> %1
}








define <16 x i16> @test_v16i16_2(<16 x i16> %a, <16 x i16> %b) {
  %1 = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 16, i32 1, i32 18, i32 3, i32 20, i32 5, i32 22, i32 7, i32 24, i32 9, i32 26, i32 11, i32 28, i32 13, i32 30, i32 15>
  ret <16 x i16> %1
}







define <32 x i8> @test_v32i8(<32 x i8> %a, <32 x i8> %b) {
  %1 = shufflevector <32 x i8> %a, <32 x i8> %b, <32 x i32> <i32 0, i32 33, i32 2, i32 35, i32 4, i32 37, i32 6, i32 39, i32 8, i32 41, i32 10, i32 43, i32 12, i32 45, i32 14, i32 47, i32 16, i32 49, i32 18, i32 51, i32 20, i32 53, i32 22, i32 55, i32 24, i32 57, i32 26, i32 59, i32 28, i32 61, i32 30, i32 63>
  ret <32 x i8> %1
}








define <32 x i8> @test_v32i8_2(<32 x i8> %a, <32 x i8> %b) {
  %1 = shufflevector <32 x i8> %a, <32 x i8> %b, <32 x i32> <i32 32, i32 1, i32 34, i32 3, i32 36, i32 5, i32 38, i32 7, i32 40, i32 9, i32 42, i32 11, i32 44, i32 13, i32 46, i32 15, i32 48, i32 17, i32 50, i32 19, i32 52, i32 21, i32 54, i32 23, i32 56, i32 25, i32 58, i32 27, i32 60, i32 29, i32 62, i32 31>
  ret <32 x i8> %1
}







