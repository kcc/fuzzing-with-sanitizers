





target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-unknown"

define <16 x i8> @shuffle_v16i8_00_00_00_00_00_00_00_00_00_00_00_00_00_00_00_00(<16 x i8> %a, <16 x i8> %b) {






































  %shuffle = shufflevector <16 x i8> %a, <16 x i8> %b, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_00_00_00_00_00_00_00_00_01_01_01_01_01_01_01_01(<16 x i8> %a, <16 x i8> %b) {






















  %shuffle = shufflevector <16 x i8> %a, <16 x i8> %b, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_00_00_00_00_00_00_00_00_08_08_08_08_08_08_08_08(<16 x i8> %a, <16 x i8> %b) {























  %shuffle = shufflevector <16 x i8> %a, <16 x i8> %b, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_00_00_00_00_01_01_01_01_02_02_02_02_03_03_03_03(<16 x i8> %a, <16 x i8> %b) {











  %shuffle = shufflevector <16 x i8> %a, <16 x i8> %b, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_04_04_04_04_05_05_05_05_06_06_06_06_07_07_07_07(<16 x i8> %a, <16 x i8> %b) {











  %shuffle = shufflevector <16 x i8> %a, <16 x i8> %b, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_00_00_00_00_04_04_04_04_08_08_08_08_12_12_12_12(<16 x i8> %a, <16 x i8> %b) {
























  %shuffle = shufflevector <16 x i8> %a, <16 x i8> %b, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_00_00_01_01_02_02_03_03_04_04_05_05_06_06_07_07(<16 x i8> %a, <16 x i8> %b) {









  %shuffle = shufflevector <16 x i8> %a, <16 x i8> %b, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_0101010101010101(<16 x i8> %a, <16 x i8> %b) {

































  %shuffle = shufflevector <16 x i8> %a, <16 x i8> %b, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_00_16_01_17_02_18_03_19_04_20_05_21_06_22_07_23(<16 x i8> %a, <16 x i8> %b) {









  %shuffle = shufflevector <16 x i8> %a, <16 x i8> %b, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_08_24_09_25_10_26_11_27_12_28_13_29_14_30_15_31(<16 x i8> %a, <16 x i8> %b) {









  %shuffle = shufflevector <16 x i8> %a, <16 x i8> %b, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_16_00_16_01_16_02_16_03_16_04_16_05_16_06_16_07(<16 x i8> %a, <16 x i8> %b) {









































  %shuffle = shufflevector <16 x i8> %a, <16 x i8> %b, <16 x i32> <i32 16, i32 0, i32 16, i32 1, i32 16, i32 2, i32 16, i32 3, i32 16, i32 4, i32 16, i32 5, i32 16, i32 6, i32 16, i32 7>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_03_02_01_00_07_06_05_04_11_10_09_08_15_14_13_12(<16 x i8> %a, <16 x i8> %b) {



























  %shuffle = shufflevector <16 x i8> %a, <16 x i8> %b, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_03_02_01_00_07_06_05_04_19_18_17_16_23_22_21_20(<16 x i8> %a, <16 x i8> %b) {





























  %shuffle = shufflevector <16 x i8> %a, <16 x i8> %b, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 19, i32 18, i32 17, i32 16, i32 23, i32 22, i32 21, i32 20>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_03_02_01_00_31_30_29_28_11_10_09_08_23_22_21_20(<16 x i8> %a, <16 x i8> %b) {








































  %shuffle = shufflevector <16 x i8> %a, <16 x i8> %b, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 31, i32 30, i32 29, i32 28, i32 11, i32 10, i32 9, i32 8, i32 23, i32 22, i32 21, i32 20>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_00_17_02_19_04_21_06_23_08_25_10_27_12_29_14_31(<16 x i8> %a, <16 x i8> %b) {




























  %shuffle = shufflevector <16 x i8> %a, <16 x i8> %b, <16 x i32> <i32 0, i32 17, i32 2, i32 19, i32 4, i32 21, i32 6, i32 23, i32 8, i32 25, i32 10, i32 27, i32 12, i32 29, i32 14, i32 31>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_00_01_02_19_04_05_06_23_08_09_10_27_12_13_14_31(<16 x i8> %a, <16 x i8> %b) {




























  %shuffle = shufflevector <16 x i8> %a, <16 x i8> %b, <16 x i32> <i32 0, i32 1, i32 2, i32 19, i32 4, i32 5, i32 6, i32 23, i32 8, i32 9, i32 10, i32 27, i32 12, i32 13, i32 14, i32 31>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_00_01_02_zz_04_05_06_zz_08_09_10_zz_12_13_14_zz(<16 x i8> %a) {









  %shuffle = shufflevector <16 x i8> %a, <16 x i8> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 2, i32 19, i32 4, i32 5, i32 6, i32 23, i32 8, i32 9, i32 10, i32 27, i32 12, i32 13, i32 14, i32 31>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_00_01_02_03_20_05_06_23_08_09_10_11_28_13_14_31(<16 x i8> %a, <16 x i8> %b) {




























  %shuffle = shufflevector <16 x i8> %a, <16 x i8> %b, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 5, i32 6, i32 23, i32 8, i32 9, i32 10, i32 11, i32 28, i32 13, i32 14, i32 31>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_16_17_18_19_04_05_06_07_24_25_10_11_28_13_30_15(<16 x i8> %a, <16 x i8> %b) {





























  %shuffle = shufflevector <16 x i8> %a, <16 x i8> %b, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 10, i32 11, i32 28, i32 13, i32 30, i32 15>
  ret <16 x i8> %shuffle
}

define <16 x i8> @trunc_v4i32_shuffle(<16 x i8> %a) {





















  %shuffle = shufflevector <16 x i8> %a, <16 x i8> undef, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  ret <16 x i8> %shuffle
}

define <16 x i8> @stress_test0(<16 x i8> %s.0.1, <16 x i8> %s.0.2, <16 x i8> %s.0.3, <16 x i8> %s.0.4, <16 x i8> %s.0.5, <16 x i8> %s.0.6, <16 x i8> %s.0.7, <16 x i8> %s.0.8, <16 x i8> %s.0.9) {




entry:
  %s.1.4 = shufflevector <16 x i8> %s.0.4, <16 x i8> %s.0.5, <16 x i32> <i32 1, i32 22, i32 21, i32 28, i32 3, i32 16, i32 6, i32 1, i32 19, i32 29, i32 12, i32 31, i32 2, i32 3, i32 3, i32 6>
  %s.1.5 = shufflevector <16 x i8> %s.0.5, <16 x i8> %s.0.6, <16 x i32> <i32 31, i32 20, i32 12, i32 19, i32 2, i32 15, i32 12, i32 31, i32 2, i32 28, i32 2, i32 30, i32 7, i32 8, i32 17, i32 28>
  %s.1.8 = shufflevector <16 x i8> %s.0.8, <16 x i8> %s.0.9, <16 x i32> <i32 14, i32 10, i32 17, i32 5, i32 17, i32 9, i32 17, i32 21, i32 31, i32 24, i32 16, i32 6, i32 20, i32 28, i32 23, i32 8>
  %s.2.2 = shufflevector <16 x i8> %s.0.3, <16 x i8> %s.0.4, <16 x i32> <i32 20, i32 9, i32 21, i32 11, i32 11, i32 4, i32 3, i32 18, i32 3, i32 30, i32 4, i32 31, i32 11, i32 24, i32 13, i32 29>
  %s.3.2 = shufflevector <16 x i8> %s.2.2, <16 x i8> %s.1.4, <16 x i32> <i32 15, i32 13, i32 5, i32 11, i32 7, i32 17, i32 14, i32 22, i32 22, i32 16, i32 7, i32 24, i32 16, i32 22, i32 7, i32 29>
  %s.5.4 = shufflevector <16 x i8> %s.1.5, <16 x i8> %s.1.8, <16 x i32> <i32 3, i32 13, i32 19, i32 7, i32 23, i32 11, i32 1, i32 9, i32 16, i32 25, i32 2, i32 7, i32 0, i32 21, i32 23, i32 17>
  %s.6.1 = shufflevector <16 x i8> %s.3.2, <16 x i8> %s.3.2, <16 x i32> <i32 11, i32 2, i32 28, i32 31, i32 27, i32 3, i32 9, i32 27, i32 25, i32 25, i32 14, i32 7, i32 12, i32 28, i32 12, i32 23>
  %s.7.1 = shufflevector <16 x i8> %s.6.1, <16 x i8> %s.3.2, <16 x i32> <i32 15, i32 29, i32 14, i32 0, i32 29, i32 15, i32 26, i32 30, i32 6, i32 7, i32 2, i32 8, i32 12, i32 10, i32 29, i32 17>
  %s.7.2 = shufflevector <16 x i8> %s.3.2, <16 x i8> %s.5.4, <16 x i32> <i32 3, i32 29, i32 3, i32 19, i32 undef, i32 20, i32 undef, i32 3, i32 27, i32 undef, i32 undef, i32 11, i32 undef, i32 undef, i32 undef, i32 undef>
  %s.16.0 = shufflevector <16 x i8> %s.7.1, <16 x i8> %s.7.2, <16 x i32> <i32 13, i32 1, i32 16, i32 16, i32 6, i32 7, i32 29, i32 18, i32 19, i32 28, i32 undef, i32 undef, i32 31, i32 1, i32 undef, i32 10>
  ret <16 x i8> %s.16.0
}

define <16 x i8> @undef_test1(<16 x i8> %s.0.5, <16 x i8> %s.0.8, <16 x i8> %s.0.9) noinline nounwind {







entry:
  %s.1.8 = shufflevector <16 x i8> %s.0.8, <16 x i8> undef, <16 x i32> <i32 9, i32 9, i32 undef, i32 undef, i32 undef, i32 2, i32 undef, i32 6, i32 undef, i32 6, i32 undef, i32 14, i32 14, i32 undef, i32 undef, i32 0>
  %s.2.4 = shufflevector <16 x i8> undef, <16 x i8> %s.0.5, <16 x i32> <i32 21, i32 undef, i32 undef, i32 19, i32 undef, i32 undef, i32 29, i32 24, i32 21, i32 23, i32 21, i32 17, i32 19, i32 undef, i32 20, i32 22>
  %s.2.5 = shufflevector <16 x i8> %s.0.5, <16 x i8> undef, <16 x i32> <i32 3, i32 8, i32 undef, i32 7, i32 undef, i32 10, i32 8, i32 0, i32 15, i32 undef, i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 9>
  %s.2.9 = shufflevector <16 x i8> %s.0.9, <16 x i8> undef, <16 x i32> <i32 7, i32 undef, i32 14, i32 7, i32 8, i32 undef, i32 7, i32 8, i32 5, i32 15, i32 undef, i32 1, i32 11, i32 undef, i32 undef, i32 11>
  %s.3.4 = shufflevector <16 x i8> %s.2.4, <16 x i8> %s.0.5, <16 x i32> <i32 5, i32 0, i32 21, i32 6, i32 15, i32 27, i32 22, i32 21, i32 4, i32 22, i32 19, i32 26, i32 9, i32 26, i32 8, i32 29>
  %s.3.9 = shufflevector <16 x i8> %s.2.9, <16 x i8> undef, <16 x i32> <i32 8, i32 6, i32 8, i32 1, i32 undef, i32 4, i32 undef, i32 2, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 6, i32 undef>
  %s.4.7 = shufflevector <16 x i8> %s.1.8, <16 x i8> %s.2.9, <16 x i32> <i32 9, i32 0, i32 22, i32 20, i32 24, i32 7, i32 21, i32 17, i32 20, i32 12, i32 19, i32 23, i32 2, i32 9, i32 17, i32 10>
  %s.4.8 = shufflevector <16 x i8> %s.2.9, <16 x i8> %s.3.9, <16 x i32> <i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 6, i32 10, i32 undef, i32 0, i32 5, i32 undef, i32 9, i32 undef>
  %s.5.7 = shufflevector <16 x i8> %s.4.7, <16 x i8> %s.4.8, <16 x i32> <i32 16, i32 0, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %s.8.4 = shufflevector <16 x i8> %s.3.4, <16 x i8> %s.5.7, <16 x i32> <i32 undef, i32 undef, i32 undef, i32 28, i32 undef, i32 0, i32 undef, i32 undef, i32 undef, i32 undef, i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %s.9.4 = shufflevector <16 x i8> %s.8.4, <16 x i8> undef, <16 x i32> <i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 10, i32 5>
  %s.10.4 = shufflevector <16 x i8> %s.9.4, <16 x i8> undef, <16 x i32> <i32 undef, i32 7, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %s.12.4 = shufflevector <16 x i8> %s.10.4, <16 x i8> undef, <16 x i32> <i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 13, i32 undef, i32 undef, i32 undef>

  ret <16 x i8> %s.12.4
}

define <16 x i8> @PR20540(<8 x i8> %a) {





















  %shuffle = shufflevector <8 x i8> %a, <8 x i8> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_16_zz_zz_zz_zz_zz_zz_zz_zz_zz_zz_zz_zz_zz_zz_zz(i8 %i) {











  %a = insertelement <16 x i8> undef, i8 %i, i32 0
  %shuffle = shufflevector <16 x i8> zeroinitializer, <16 x i8> %a, <16 x i32> <i32 16, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_zz_zz_zz_zz_zz_16_zz_zz_zz_zz_zz_zz_zz_zz_zz_zz(i8 %i) {

























  %a = insertelement <16 x i8> undef, i8 %i, i32 0
  %shuffle = shufflevector <16 x i8> zeroinitializer, <16 x i8> %a, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_zz_uu_uu_zz_uu_uu_zz_zz_zz_zz_zz_zz_zz_zz_zz_16(i8 %i) {

























  %a = insertelement <16 x i8> undef, i8 %i, i32 0
  %shuffle = shufflevector <16 x i8> zeroinitializer, <16 x i8> %a, <16 x i32> <i32 0, i32 undef, i32 undef, i32 3, i32 undef, i32 undef, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 16>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_zz_zz_19_zz_zz_zz_zz_zz_zz_zz_zz_zz_zz_zz_zz_zz(i8 %i) {

























  %a = insertelement <16 x i8> undef, i8 %i, i32 3
  %shuffle = shufflevector <16 x i8> zeroinitializer, <16 x i8> %a, <16 x i32> <i32 0, i32 1, i32 19, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_zz_zz_zz_zz_zz_zz_zz_zz_zz_zz_zz_zz_16_uu_18_uu(<16 x i8> %a) {









  %shuffle = shufflevector <16 x i8> zeroinitializer, <16 x i8> %a, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 undef, i32 18, i32 undef>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_28_uu_30_31_zz_zz_zz_zz_zz_zz_zz_zz_zz_zz_zz_zz(<16 x i8> %a) {









  %shuffle = shufflevector <16 x i8> zeroinitializer, <16 x i8> %a, <16 x i32> <i32 28, i32 undef, i32 30, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 09, i32 0, i32 0, i32 0, i32 0, i32 0>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_31_00_01_02_03_04_05_06_07_08_09_10_11_12_13_14(<16 x i8> %a, <16 x i8> %b) {





















  %shuffle = shufflevector <16 x i8> %a, <16 x i8> %b, <16 x i32> <i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_15_00_01_02_03_04_05_06_07_08_09_10_11_12_13_14(<16 x i8> %a, <16 x i8> %b) {






















  %shuffle = shufflevector <16 x i8> %a, <16 x i8> %b, <16 x i32> <i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_17_18_19_20_21_22_23_24_25_26_27_28_29_30_31_00(<16 x i8> %a, <16 x i8> %b) {





















  %shuffle = shufflevector <16 x i8> %a, <16 x i8> %b, <16 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 0>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_01_02_03_04_05_06_07_08_09_10_11_12_13_14_15_16(<16 x i8> %a, <16 x i8> %b) {























  %shuffle = shufflevector <16 x i8> %a, <16 x i8> %b, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_01_02_03_04_05_06_07_08_09_10_11_12_13_14_15_00(<16 x i8> %a, <16 x i8> %b) {






















  %shuffle = shufflevector <16 x i8> %a, <16 x i8> %b, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_15_16_17_18_19_20_21_22_23_24_25_26_27_28_29_30(<16 x i8> %a, <16 x i8> %b) {























  %shuffle = shufflevector <16 x i8> %a, <16 x i8> %b, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_00_uu_uu_uu_uu_uu_uu_uu_01_uu_uu_uu_uu_uu_uu_uu(<16 x i8> %a) {





















  %shuffle = shufflevector <16 x i8> %a, <16 x i8> zeroinitializer, <16 x i32> <i32 0, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_00_zz_zz_zz_zz_zz_zz_zz_01_zz_zz_zz_zz_zz_zz_zz(<16 x i8> %a) {






















  %shuffle = shufflevector <16 x i8> %a, <16 x i8> zeroinitializer, <16 x i32> <i32 0, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 1, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_00_uu_uu_uu_01_uu_uu_uu_02_uu_uu_uu_03_uu_uu_uu(<16 x i8> %a) {





















  %shuffle = shufflevector <16 x i8> %a, <16 x i8> zeroinitializer, <16 x i32> <i32 0, i32 undef, i32 undef, i32 undef, i32 1, i32 undef, i32 undef, i32 undef, i32 2, i32 undef, i32 undef, i32 undef, i32 3, i32 undef, i32 undef, i32 undef>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_00_zz_zz_zz_01_zz_zz_zz_02_zz_zz_zz_03_zz_zz_zz(<16 x i8> %a) {























  %shuffle = shufflevector <16 x i8> %a, <16 x i8> zeroinitializer, <16 x i32> <i32 0, i32 17, i32 18, i32 19, i32 1, i32 21, i32 22, i32 23, i32 2, i32 25, i32 26, i32 27, i32 3, i32 29, i32 30, i32 31>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_00_uu_01_uu_02_uu_03_uu_04_uu_05_uu_06_uu_07_uu(<16 x i8> %a) {



















  %shuffle = shufflevector <16 x i8> %a, <16 x i8> zeroinitializer, <16 x i32> <i32 0, i32 undef, i32 1, i32 undef, i32 2, i32 undef, i32 3, i32 undef, i32 4, i32 undef, i32 5, i32 undef, i32 6, i32 undef, i32 7, i32 undef>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_00_zz_01_zz_02_zz_03_zz_04_zz_05_zz_06_zz_07_zz(<16 x i8> %a) {





















  %shuffle = shufflevector <16 x i8> %a, <16 x i8> zeroinitializer, <16 x i32> <i32 0, i32 17, i32 1, i32 19, i32 2, i32 21, i32 3, i32 23, i32 4, i32 25, i32 5, i32 27, i32 6, i32 29, i32 7, i32 31>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_uu_10_02_07_22_14_07_02_18_03_01_14_18_09_11_00(<16 x i8> %a, <16 x i8> %b) {





















































entry:
  %shuffle = shufflevector <16 x i8> %a, <16 x i8> %b, <16 x i32> <i32 undef, i32 10, i32 2, i32 7, i32 22, i32 14, i32 7, i32 2, i32 18, i32 3, i32 1, i32 14, i32 18, i32 9, i32 11, i32 0>

  ret <16 x i8> %shuffle
}

define <16 x i8> @stress_test2(<16 x i8> %s.0.0, <16 x i8> %s.0.1, <16 x i8> %s.0.2) {



entry:
  %s.1.0 = shufflevector <16 x i8> %s.0.0, <16 x i8> %s.0.1, <16 x i32> <i32 29, i32 30, i32 2, i32 16, i32 26, i32 21, i32 11, i32 26, i32 26, i32 3, i32 4, i32 5, i32 30, i32 28, i32 15, i32 5>
  %s.1.1 = shufflevector <16 x i8> %s.0.1, <16 x i8> %s.0.2, <16 x i32> <i32 31, i32 1, i32 24, i32 12, i32 28, i32 5, i32 2, i32 9, i32 29, i32 1, i32 31, i32 5, i32 6, i32 17, i32 15, i32 22>
  %s.2.0 = shufflevector <16 x i8> %s.1.0, <16 x i8> %s.1.1, <16 x i32> <i32 22, i32 1, i32 12, i32 3, i32 30, i32 4, i32 30, i32 undef, i32 1, i32 10, i32 14, i32 18, i32 27, i32 13, i32 16, i32 19>

  ret <16 x i8> %s.2.0
}

define void @constant_gets_selected(<4 x i32>* %ptr1, <4 x i32>* %ptr2) {













entry:
  %weird_zero = bitcast <4 x i32> zeroinitializer to <16 x i8>
  %shuffle.i = shufflevector <16 x i8> <i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %weird_zero, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %weirder_zero = bitcast <16 x i8> %shuffle.i to <4 x i32>
  store <4 x i32> %weirder_zero, <4 x i32>* %ptr1, align 16
  store <4 x i32> zeroinitializer, <4 x i32>* %ptr2, align 16
  ret void
}





define <16 x i8> @shuffle_v16i8_zz_00_zz_02_zz_04_zz_06_zz_08_zz_10_zz_12_zz_14(<16 x i8> %a, <16 x i8> %b) {









  %shuffle = shufflevector <16 x i8> %a, <16 x i8> zeroinitializer, <16 x i32><i32 16, i32 0, i32 16, i32 2, i32 16, i32 4, i32 16, i32 6, i32 16, i32 8, i32 16, i32 10, i32 16, i32 12, i32 16, i32 14>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_zz_zz_zz_00_zz_zz_zz_04_zz_zz_zz_08_zz_zz_zz_12(<16 x i8> %a, <16 x i8> %b) {









  %shuffle = shufflevector <16 x i8> %a, <16 x i8> zeroinitializer, <16 x i32><i32 16, i32 16, i32 16, i32 0, i32 16, i32 16, i32 16, i32 4, i32 16, i32 16, i32 16, i32 8, i32 16, i32 16, i32 16, i32 12>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_zz_zz_zz_zz_zz_zz_zz_00_zz_zz_zz_zz_zz_zz_zz_08(<16 x i8> %a, <16 x i8> %b) {









  %shuffle = shufflevector <16 x i8> %a, <16 x i8> zeroinitializer, <16 x i32><i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 0, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 8>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_zz_00_uu_02_03_uu_05_06_zz_08_09_uu_11_12_13_14(<16 x i8> %a, <16 x i8> %b) {









  %shuffle = shufflevector <16 x i8> %a, <16 x i8> zeroinitializer, <16 x i32><i32 16, i32 0, i32 undef, i32 2, i32 3, i32 undef, i32 5, i32 6, i32 16, i32 8, i32 9, i32 undef, i32 11, i32 12, i32 13, i32 14>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_01_uu_uu_uu_uu_zz_uu_zz_uu_zz_11_zz_13_zz_15_zz(<16 x i8> %a, <16 x i8> %b) {









  %shuffle = shufflevector <16 x i8> %a, <16 x i8> zeroinitializer, <16 x i32><i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 16, i32 undef, i32 16, i32 undef, i32 16, i32 11, i32 16, i32 13, i32 16, i32 15, i32 16>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_02_03_zz_zz_06_07_uu_uu_uu_uu_uu_uu_14_15_zz_zz(<16 x i8> %a, <16 x i8> %b) {









  %shuffle = shufflevector <16 x i8> %a, <16 x i8> zeroinitializer, <16 x i32><i32 2, i32 3, i32 16, i32 16, i32 6, i32 7, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 14, i32 15, i32 16, i32 16>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_07_zz_zz_zz_zz_zz_uu_uu_15_uu_uu_uu_uu_uu_zz_zz(<16 x i8> %a, <16 x i8> %b) {









  %shuffle = shufflevector <16 x i8> %a, <16 x i8> zeroinitializer, <16 x i32><i32 7, i32 16, i32 16, i32 16, i32 16, i32 16, i32 undef, i32 undef, i32 15, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 16, i32 16>
  ret <16 x i8> %shuffle
}

define <16 x i8> @PR12412(<16 x i8> %inval1, <16 x i8> %inval2) {































entry:
  %0 = shufflevector <16 x i8> %inval1, <16 x i8> %inval2, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  ret <16 x i8> %0
}

define <16 x i8> @shuffle_v16i8_uu_02_03_zz_uu_06_07_zz_uu_10_11_zz_uu_14_15_zz(<16 x i8> %a) {









  %shuffle = shufflevector <16 x i8> %a, <16 x i8> zeroinitializer, <16 x i32> <i32 undef, i32 2, i32 3, i32 16, i32 undef, i32 6, i32 7, i32 16, i32 undef, i32 10, i32 11, i32 16, i32 undef, i32 14, i32 15, i32 16>
  ret <16 x i8> %shuffle
}

define <16 x i8> @shuffle_v16i8_bitcast_unpack(<16 x i8> %a, <16 x i8> %b) {









  %shuffle8  = shufflevector <16 x i8> %a, <16 x i8> %b, <16 x i32> <i32 7, i32 23, i32 6, i32 22, i32 5, i32 21, i32 4, i32 20, i32 3, i32 19, i32 2, i32 18, i32 1, i32 17, i32 0, i32 16>
  %bitcast32 = bitcast <16 x i8> %shuffle8 to <4 x float>
  %shuffle32 = shufflevector <4 x float> %bitcast32, <4 x float> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %bitcast16 = bitcast <4 x float> %shuffle32 to <8 x i16>
  %shuffle16 = shufflevector <8 x i16> %bitcast16, <8 x i16> undef, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %bitcast8  = bitcast <8 x i16> %shuffle16 to <16 x i8>
  ret <16 x i8> %bitcast8
}

define <16 x i8> @insert_dup_mem_v16i8_i32(i32* %ptr) {


































  %tmp = load i32, i32* %ptr, align 4
  %tmp1 = insertelement <4 x i32> zeroinitializer, i32 %tmp, i32 0
  %tmp2 = bitcast <4 x i32> %tmp1 to <16 x i8>
  %tmp3 = shufflevector <16 x i8> %tmp2, <16 x i8> undef, <16 x i32> zeroinitializer
  ret <16 x i8> %tmp3
}

define <16 x i8> @insert_dup_mem_v16i8_sext_i8(i8* %ptr) {






































  %tmp = load i8, i8* %ptr, align 1
  %tmp1 = sext i8 %tmp to i32
  %tmp2 = insertelement <4 x i32> zeroinitializer, i32 %tmp1, i32 0
  %tmp3 = bitcast <4 x i32> %tmp2 to <16 x i8>
  %tmp4 = shufflevector <16 x i8> %tmp3, <16 x i8> undef, <16 x i32> zeroinitializer
  ret <16 x i8> %tmp4
}
