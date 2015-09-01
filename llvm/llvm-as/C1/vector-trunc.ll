





define <8 x i32> @trunc8i64_8i32(<8 x i64> %a) {


















































entry:
  %0 = trunc <8 x i64> %a to <8 x i32>
  ret <8 x i32> %0
}

define <8 x i16> @trunc8i64_8i16(<8 x i64> %a) {



















































































entry:
  %0 = trunc <8 x i64> %a to <8 x i16>
  ret <8 x i16> %0
}

define <8 x i16> @trunc8i32_8i16(<8 x i32> %a) {











































entry:
  %0 = trunc <8 x i32> %a to <8 x i16>
  ret <8 x i16> %0
}

define <8 x i32> @trunc2x4i64_8i32(<4 x i64> %a, <4 x i64> %b) {


















































entry:
  %0 = trunc <4 x i64> %a to <4 x i32>
  %1 = trunc <4 x i64> %b to <4 x i32>
  %2 = shufflevector <4 x i32> %0, <4 x i32> %1, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  ret <8 x i32> %2
}

define <8 x i16> @trunc2x4i64_8i16(<4 x i64> %a, <4 x i64> %b) {




















































































entry:
  %0 = trunc <4 x i64> %a to <4 x i16>
  %1 = trunc <4 x i64> %b to <4 x i16>
  %2 = shufflevector <4 x i16> %0, <4 x i16> %1, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  ret <8 x i16> %2
}

define <4 x i32> @trunc2x2i64_4i32(<2 x i64> %a, <2 x i64> %b) {


































entry:
  %0 = trunc <2 x i64> %a to <2 x i32>
  %1 = trunc <2 x i64> %b to <2 x i32>
  %2 = shufflevector <2 x i32> %0, <2 x i32> %1, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  ret <4 x i32> %2
}

define i64 @trunc2i64_i64(<2 x i64> %inval) {











entry:
  %0 = trunc <2 x i64> %inval to <2 x i32>
  %1 = bitcast <2 x i32> %0 to i64
  ret i64 %1
}

define <8 x i16> @trunc2x4i32_8i16(<4 x i32> %a, <4 x i32> %b) {


































entry:
  %0 = trunc <4 x i32> %a to <4 x i16>
  %1 = trunc <4 x i32> %b to <4 x i16>
  %2 = shufflevector <4 x i16> %0, <4 x i16> %1, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  ret <8 x i16> %2
}


define i64 @trunc4i32_i64(<4 x i32> %inval) {

























entry:
  %0 = trunc <4 x i32> %inval to <4 x i16>
  %1 = bitcast <4 x i16> %0 to i64
  ret i64 %1
}

define <16 x i8> @trunc2x8i16_16i8(<8 x i16> %a, <8 x i16> %b) {































entry:
  %0 = trunc <8 x i16> %a to <8 x i8>
  %1 = trunc <8 x i16> %b to <8 x i8>
  %2 = shufflevector <8 x i8> %0, <8 x i8> %1, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  ret <16 x i8> %2
}


define i64 @trunc8i16_i64(<8 x i16> %inval) {
























entry:
  %0 = trunc <8 x i16> %inval to <8 x i8>
  %1 = bitcast <8 x i8> %0 to i64
  ret i64 %1
}

define <16 x i8> @trunc16i64_16i8_const() {










entry:
  %0 = trunc <16 x i64> zeroinitializer to <16 x i8>
  %1 = shufflevector <16 x i8> %0, <16 x i8> %0, <16 x i32> <i32 28, i32 30, i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 undef, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26>
  ret <16 x i8> %1
}
