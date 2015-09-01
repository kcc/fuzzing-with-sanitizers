





target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-unknown"

define <8 x i16> @shuffle_v8i16_01012323(<8 x i16> %a, <8 x i16> %b) {









  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 2, i32 3, i32 2, i32 3>
  ret <8 x i16> %shuffle
}
define <8 x i16> @shuffle_v8i16_67452301(<8 x i16> %a, <8 x i16> %b) {









  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 6, i32 7, i32 4, i32 5, i32 2, i32 3, i32 0, i32 1>
  ret <8 x i16> %shuffle
}
define <8 x i16> @shuffle_v8i16_456789AB(<8 x i16> %a, <8 x i16> %b) {





















  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_00000000(<8 x i16> %a, <8 x i16> %b) {


























  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
  ret <8 x i16> %shuffle
}
define <8 x i16> @shuffle_v8i16_00004444(<8 x i16> %a, <8 x i16> %b) {











  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  ret <8 x i16> %shuffle
}
define <8 x i16> @shuffle_v8i16_u0u1u2u3(<8 x i16> %a, <8 x i16> %b) {









  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 undef, i32 0, i32 undef, i32 1, i32 undef, i32 2, i32 undef, i32 3>
  ret <8 x i16> %shuffle
}
define <8 x i16> @shuffle_v8i16_u4u5u6u7(<8 x i16> %a, <8 x i16> %b) {









  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 undef, i32 4, i32 undef, i32 5, i32 undef, i32 6, i32 undef, i32 7>
  ret <8 x i16> %shuffle
}
define <8 x i16> @shuffle_v8i16_31206745(<8 x i16> %a, <8 x i16> %b) {











  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 3, i32 1, i32 2, i32 0, i32 6, i32 7, i32 4, i32 5>
  ret <8 x i16> %shuffle
}
define <8 x i16> @shuffle_v8i16_44440000(<8 x i16> %a, <8 x i16> %b) {





















  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 0, i32 0, i32 0, i32 0>
  ret <8 x i16> %shuffle
}
define <8 x i16> @shuffle_v8i16_23016745(<8 x i16> %a, <8 x i16> %b) {









  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  ret <8 x i16> %shuffle
}
define <8 x i16> @shuffle_v8i16_23026745(<8 x i16> %a, <8 x i16> %b) {











  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 2, i32 3, i32 0, i32 2, i32 6, i32 7, i32 4, i32 5>
  ret <8 x i16> %shuffle
}
define <8 x i16> @shuffle_v8i16_23016747(<8 x i16> %a, <8 x i16> %b) {











  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 7>
  ret <8 x i16> %shuffle
}
define <8 x i16> @shuffle_v8i16_75643120(<8 x i16> %a, <8 x i16> %b) {





















  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 7, i32 5, i32 6, i32 4, i32 3, i32 1, i32 2, i32 0>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_10545410(<8 x i16> %a, <8 x i16> %b) {





















  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 1, i32 0, i32 5, i32 4, i32 5, i32 4, i32 1, i32 0>
  ret <8 x i16> %shuffle
}
define <8 x i16> @shuffle_v8i16_54105410(<8 x i16> %a, <8 x i16> %b) {





















  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 5, i32 4, i32 1, i32 0, i32 5, i32 4, i32 1, i32 0>
  ret <8 x i16> %shuffle
}
define <8 x i16> @shuffle_v8i16_54101054(<8 x i16> %a, <8 x i16> %b) {





















  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 5, i32 4, i32 1, i32 0, i32 1, i32 0, i32 5, i32 4>
  ret <8 x i16> %shuffle
}
define <8 x i16> @shuffle_v8i16_04400440(<8 x i16> %a, <8 x i16> %b) {





















  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 0, i32 4, i32 4, i32 0, i32 0, i32 4, i32 4, i32 0>
  ret <8 x i16> %shuffle
}
define <8 x i16> @shuffle_v8i16_40044004(<8 x i16> %a, <8 x i16> %b) {





















  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 4, i32 0, i32 0, i32 4, i32 4, i32 0, i32 0, i32 4>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_26405173(<8 x i16> %a, <8 x i16> %b) {























  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 2, i32 6, i32 4, i32 0, i32 5, i32 1, i32 7, i32 3>
  ret <8 x i16> %shuffle
}
define <8 x i16> @shuffle_v8i16_20645173(<8 x i16> %a, <8 x i16> %b) {























  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 2, i32 0, i32 6, i32 4, i32 5, i32 1, i32 7, i32 3>
  ret <8 x i16> %shuffle
}
define <8 x i16> @shuffle_v8i16_26401375(<8 x i16> %a, <8 x i16> %b) {






















  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 2, i32 6, i32 4, i32 0, i32 1, i32 3, i32 7, i32 5>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_66751643(<8 x i16> %a, <8 x i16> %b) {























  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 6, i32 6, i32 7, i32 5, i32 1, i32 6, i32 4, i32 3>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_60514754(<8 x i16> %a, <8 x i16> %b) {






















  %shuffle = shufflevector <8 x i16> %a, <8 x i16> undef, <8 x i32> <i32 6, i32 0, i32 5, i32 1, i32 4, i32 7, i32 5, i32 4>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_00444444(<8 x i16> %a, <8 x i16> %b) {





















  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  ret <8 x i16> %shuffle
}
define <8 x i16> @shuffle_v8i16_44004444(<8 x i16> %a, <8 x i16> %b) {





















  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 4, i32 4, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  ret <8 x i16> %shuffle
}
define <8 x i16> @shuffle_v8i16_04404444(<8 x i16> %a, <8 x i16> %b) {





















  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 0, i32 4, i32 4, i32 0, i32 4, i32 4, i32 4, i32 4>
  ret <8 x i16> %shuffle
}
define <8 x i16> @shuffle_v8i16_04400000(<8 x i16> %a, <8 x i16> %b) {





















  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 0, i32 4, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0>
  ret <8 x i16> %shuffle
}
define <8 x i16> @shuffle_v8i16_04404567(<8 x i16> %a, <8 x i16> %b) {











  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 0, i32 4, i32 4, i32 0, i32 4, i32 5, i32 6, i32 7>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_0X444444(<8 x i16> %a, <8 x i16> %b) {





















  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 0, i32 undef, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  ret <8 x i16> %shuffle
}
define <8 x i16> @shuffle_v8i16_44X04444(<8 x i16> %a, <8 x i16> %b) {





















  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 4, i32 4, i32 undef, i32 0, i32 4, i32 4, i32 4, i32 4>
  ret <8 x i16> %shuffle
}
define <8 x i16> @shuffle_v8i16_X4404444(<8 x i16> %a, <8 x i16> %b) {





















  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 undef, i32 4, i32 4, i32 0, i32 4, i32 4, i32 4, i32 4>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_0127XXXX(<8 x i16> %a, <8 x i16> %b) {





















  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 0, i32 1, i32 2, i32 7, i32 undef, i32 undef, i32 undef, i32 undef>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_XXXX4563(<8 x i16> %a, <8 x i16> %b) {





















  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 undef, i32 undef, i32 undef, i32 undef, i32 4, i32 5, i32 6, i32 3>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_4563XXXX(<8 x i16> %a, <8 x i16> %b) {





















  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 4, i32 5, i32 6, i32 3, i32 undef, i32 undef, i32 undef, i32 undef>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_01274563(<8 x i16> %a, <8 x i16> %b) {





















  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 3>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_45630127(<8 x i16> %a, <8 x i16> %b) {





















  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 4, i32 5, i32 6, i32 3, i32 0, i32 1, i32 2, i32 7>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_37102735(<8 x i16> %a, <8 x i16> %b) {
























  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 3, i32 7, i32 1, i32 0, i32 2, i32 7, i32 3, i32 5>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_08192a3b(<8 x i16> %a, <8 x i16> %b) {









  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_0c1d2e3f(<8 x i16> %a, <8 x i16> %b) {











  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_4c5d6e7f(<8 x i16> %a, <8 x i16> %b) {









  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_48596a7b(<8 x i16> %a, <8 x i16> %b) {











  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 4, i32 8, i32 5, i32 9, i32 6, i32 10, i32 7, i32 11>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_08196e7f(<8 x i16> %a, <8 x i16> %b) {













  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 6, i32 14, i32 7, i32 15>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_0c1d6879(<8 x i16> %a, <8 x i16> %b) {













  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 6, i32 8, i32 7, i32 9>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_109832ba(<8 x i16> %a, <8 x i16> %b) {













  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 1, i32 0, i32 9, i32 8, i32 3, i32 2, i32 11, i32 10>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_8091a2b3(<8 x i16> %a, <8 x i16> %b) {










  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  ret <8 x i16> %shuffle
}
define <8 x i16> @shuffle_v8i16_c4d5e6f7(<8 x i16> %a, <8 x i16> %b) {










  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_0213cedf(<8 x i16> %a, <8 x i16> %b) {















  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 12, i32 14, i32 13, i32 15>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_443aXXXX(<8 x i16> %a, <8 x i16> %b) {






























  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 4, i32 4, i32 3, i32 10, i32 undef, i32 undef, i32 undef, i32 undef>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_032dXXXX(<8 x i16> %a, <8 x i16> %b) {

































  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 0, i32 3, i32 2, i32 13, i32 undef, i32 undef, i32 undef, i32 undef>
  ret <8 x i16> %shuffle
}
define <8 x i16> @shuffle_v8i16_XXXdXXXX(<8 x i16> %a, <8 x i16> %b) {









  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 undef, i32 undef, i32 undef, i32 13, i32 undef, i32 undef, i32 undef, i32 undef>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_012dXXXX(<8 x i16> %a, <8 x i16> %b) {



























  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 0, i32 1, i32 2, i32 13, i32 undef, i32 undef, i32 undef, i32 undef>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_XXXXcde3(<8 x i16> %a, <8 x i16> %b) {


































  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 undef, i32 undef, i32 undef, i32 undef, i32 12, i32 13, i32 14, i32 3>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_cde3XXXX(<8 x i16> %a, <8 x i16> %b) {




























  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 12, i32 13, i32 14, i32 3, i32 undef, i32 undef, i32 undef, i32 undef>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_012dcde3(<8 x i16> %a, <8 x i16> %b) {




































  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 0, i32 1, i32 2, i32 13, i32 12, i32 13, i32 14, i32 3>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_0923cde7(<8 x i16> %a, <8 x i16> %b) {

























  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 0, i32 9, i32 2, i32 3, i32 12, i32 13, i32 14, i32 7>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_XXX1X579(<8 x i16> %a, <8 x i16> %b) {










































  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 undef, i32 undef, i32 undef, i32 1, i32 undef, i32 5, i32 7, i32 9>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_XX4X8acX(<8 x i16> %a, <8 x i16> %b) {




































  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 undef, i32 undef, i32 4, i32 undef, i32 8, i32 10, i32 12, i32 undef>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_8zzzzzzz(i16 %i) {











  %a = insertelement <8 x i16> undef, i16 %i, i32 0
  %shuffle = shufflevector <8 x i16> zeroinitializer, <8 x i16> %a, <8 x i32> <i32 8, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_z8zzzzzz(i16 %i) {











  %a = insertelement <8 x i16> undef, i16 %i, i32 0
  %shuffle = shufflevector <8 x i16> zeroinitializer, <8 x i16> %a, <8 x i32> <i32 2, i32 8, i32 3, i32 7, i32 6, i32 5, i32 4, i32 3>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_zzzzz8zz(i16 %i) {











  %a = insertelement <8 x i16> undef, i16 %i, i32 0
  %shuffle = shufflevector <8 x i16> zeroinitializer, <8 x i16> %a, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 0, i32 0>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_zuuzuuz8(i16 %i) {











  %a = insertelement <8 x i16> undef, i16 %i, i32 0
  %shuffle = shufflevector <8 x i16> zeroinitializer, <8 x i16> %a, <8 x i32> <i32 0, i32 undef, i32 undef, i32 3, i32 undef, i32 undef, i32 6, i32 8>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_zzBzzzzz(i16 %i) {











  %a = insertelement <8 x i16> undef, i16 %i, i32 3
  %shuffle = shufflevector <8 x i16> zeroinitializer, <8 x i16> %a, <8 x i32> <i32 0, i32 1, i32 11, i32 3, i32 4, i32 5, i32 6, i32 7>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_def01234(<8 x i16> %a, <8 x i16> %b) {





















  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_ueuu123u(<8 x i16> %a, <8 x i16> %b) {





















  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 undef, i32 14, i32 undef, i32 undef, i32 1, i32 2, i32 3, i32 undef>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_56701234(<8 x i16> %a, <8 x i16> %b) {






















  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_u6uu123u(<8 x i16> %a, <8 x i16> %b) {






















  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 undef, i32 6, i32 undef, i32 undef, i32 1, i32 2, i32 3, i32 undef>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_uuuu123u(<8 x i16> %a, <8 x i16> %b) {









  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 undef, i32 undef, i32 undef, i32 undef, i32 1, i32 2, i32 3, i32 undef>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_bcdef012(<8 x i16> %a, <8 x i16> %b) {





















  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_ucdeuu1u(<8 x i16> %a, <8 x i16> %b) {





















  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 undef, i32 12, i32 13, i32 14, i32 undef, i32 undef, i32 1, i32 undef>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_34567012(<8 x i16> %a, <8 x i16> %b) {






















  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_u456uu1u(<8 x i16> %a, <8 x i16> %b) {






















  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 undef, i32 4, i32 5, i32 6, i32 undef, i32 undef, i32 1, i32 undef>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_u456uuuu(<8 x i16> %a, <8 x i16> %b) {









  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 undef, i32 4, i32 5, i32 6, i32 undef, i32 undef, i32 undef, i32 undef>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_3456789a(<8 x i16> %a, <8 x i16> %b) {























  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_u456uu9u(<8 x i16> %a, <8 x i16> %b) {























  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 undef, i32 4, i32 5, i32 6, i32 undef, i32 undef, i32 9, i32 undef>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_56789abc(<8 x i16> %a, <8 x i16> %b) {























  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_u6uu9abu(<8 x i16> %a, <8 x i16> %b) {























  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 undef, i32 6, i32 undef, i32 undef, i32 9, i32 10, i32 11, i32 undef>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_0uuu1uuu(<8 x i16> %a) {





















  %shuffle = shufflevector <8 x i16> %a, <8 x i16> zeroinitializer, <8 x i32> <i32 0, i32 undef, i32 undef, i32 undef, i32 1, i32 undef, i32 undef, i32 undef>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_0zzz1zzz(<8 x i16> %a) {























  %shuffle = shufflevector <8 x i16> %a, <8 x i16> zeroinitializer, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 1, i32 13, i32 14, i32 15>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_0u1u2u3u(<8 x i16> %a) {



















  %shuffle = shufflevector <8 x i16> %a, <8 x i16> zeroinitializer, <8 x i32> <i32 0, i32 undef, i32 1, i32 undef, i32 2, i32 undef, i32 3, i32 undef>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_0z1z2z3z(<8 x i16> %a) {





















  %shuffle = shufflevector <8 x i16> %a, <8 x i16> zeroinitializer, <8 x i32> <i32 0, i32 9, i32 1, i32 11, i32 2, i32 13, i32 3, i32 15>
  ret <8 x i16> %shuffle
}




define <8 x i16> @shuffle_v8i16_z0z2z4z6(<8 x i16> %a) {









  %shuffle = shufflevector <8 x i16> %a, <8 x i16> zeroinitializer, <8 x i32><i32 8, i32 0, i32 8, i32 2, i32 8, i32 4, i32 8, i32 6>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_zzz0zzz4(<8 x i16> %a) {









  %shuffle = shufflevector <8 x i16> %a, <8 x i16> zeroinitializer, <8 x i32><i32 8, i32 8, i32 8, i32 0, i32 8, i32 8, i32 8, i32 4>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_zz01zX4X(<8 x i16> %a) {









  %shuffle = shufflevector <8 x i16> %a, <8 x i16> zeroinitializer, <8 x i32><i32 8, i32 8, i32 0, i32 1, i32 8, i32 undef, i32 4, i32 undef>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_z0X2z456(<8 x i16> %a) {









  %shuffle = shufflevector <8 x i16> %a, <8 x i16> zeroinitializer, <8 x i32><i32 8, i32 0, i32 undef, i32 2, i32 8, i32 4, i32 5, i32 6>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_1z3zXz7z(<8 x i16> %a) {









  %shuffle = shufflevector <8 x i16> %a, <8 x i16> zeroinitializer, <8 x i32><i32 1, i32 8, i32 3, i32 8, i32 undef, i32 8, i32 7, i32 8>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_1X3z567z(<8 x i16> %a) {









  %shuffle = shufflevector <8 x i16> %a, <8 x i16> zeroinitializer, <8 x i32><i32 1, i32 undef, i32 3, i32 8, i32 5, i32 6, i32 7, i32 8>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_23zz67zz(<8 x i16> %a) {









  %shuffle = shufflevector <8 x i16> %a, <8 x i16> zeroinitializer, <8 x i32><i32 2, i32 3, i32 8, i32 8, i32 6, i32 7, i32 8, i32 8>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_3zXXXzzz(<8 x i16> %a) {









  %shuffle = shufflevector <8 x i16> %a, <8 x i16> zeroinitializer, <8 x i32><i32 3, i32 8, i32 undef, i32 undef, i32 undef, i32 8, i32 8, i32 8>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_01u3zzuz(<8 x i16> %a) {









  %shuffle = shufflevector <8 x i16> %a, <8 x i16> zeroinitializer, <8 x i32> <i32 0, i32 1, i32 undef, i32 3, i32 8, i32 8, i32 undef, i32 8>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_0z234567(<8 x i16> %a) {





















  %shuffle = shufflevector <8 x i16> %a, <8 x i16> zeroinitializer, <8 x i32> <i32 0, i32 9, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_0zzzz5z7(<8 x i16> %a) {





















  %shuffle = shufflevector <8 x i16> %a, <8 x i16> zeroinitializer, <8 x i32> <i32 0, i32 8, i32 8, i32 8, i32 8, i32 5, i32 8, i32 7>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_0123456z(<8 x i16> %a) {





















  %shuffle = shufflevector <8 x i16> %a, <8 x i16> zeroinitializer, <8 x i32> <i32 0, i32 9, i32 2, i32 3, i32 4, i32 5, i32 6, i32 15>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_fu3ucc5u(<8 x i16> %a, <8 x i16> %b) {














  %shuffle = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 15, i32 undef, i32 3, i32 undef, i32 12, i32 12, i32 5, i32 undef>
  ret <8 x i16> %shuffle
}

define <8 x i16> @shuffle_v8i16_8012345u(<8 x i16> %a) {









  %shuffle = shufflevector <8 x i16> %a, <8 x i16> zeroinitializer, <8 x i32> <i32 8, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 undef>

  ret <8 x i16> %shuffle
}

define <8 x i16> @insert_dup_mem_v8i16_i32(i32* %ptr) {






























  %tmp = load i32, i32* %ptr, align 4
  %tmp1 = insertelement <4 x i32> zeroinitializer, i32 %tmp, i32 0
  %tmp2 = bitcast <4 x i32> %tmp1 to <8 x i16>
  %tmp3 = shufflevector <8 x i16> %tmp2, <8 x i16> undef, <8 x i32> zeroinitializer
  ret <8 x i16> %tmp3
}

define <8 x i16> @insert_dup_mem_v8i16_sext_i16(i16* %ptr) {




































  %tmp = load i16, i16* %ptr, align 2
  %tmp1 = sext i16 %tmp to i32
  %tmp2 = insertelement <4 x i32> zeroinitializer, i32 %tmp1, i32 0
  %tmp3 = bitcast <4 x i32> %tmp2 to <8 x i16>
  %tmp4 = shufflevector <8 x i16> %tmp3, <8 x i16> undef, <8 x i32> zeroinitializer
  ret <8 x i16> %tmp4
}
