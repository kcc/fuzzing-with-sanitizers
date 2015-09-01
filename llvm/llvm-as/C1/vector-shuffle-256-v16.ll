


target triple = "x86_64-unknown-unknown"

define <16 x i16> @shuffle_v16i16_00_00_00_00_00_00_00_00_00_00_00_00_00_00_00_00(<16 x i16> %a, <16 x i16> %b) {










  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_00_00_00_00_00_00_00_00_00_00_00_00_00_01_00(<16 x i16> %a, <16 x i16> %b) {















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_00_00_00_00_00_00_00_00_00_00_00_00_02_00_00(<16 x i16> %a, <16 x i16> %b) {













  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 0>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_00_00_00_00_00_00_00_00_00_00_00_03_00_00_00(<16 x i16> %a, <16 x i16> %b) {













  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_00_00_00_00_00_00_00_00_00_00_04_00_00_00_00(<16 x i16> %a, <16 x i16> %b) {













  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_00_00_00_00_00_00_00_00_00_05_00_00_00_00_00(<16 x i16> %a, <16 x i16> %b) {













  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_00_00_00_00_00_00_00_00_06_00_00_00_00_00_00(<16 x i16> %a, <16 x i16> %b) {













  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_00_00_00_00_00_00_00_07_00_00_00_00_00_00_00(<16 x i16> %a, <16 x i16> %b) {













  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_00_00_00_00_00_00_08_00_00_00_00_00_00_00_00(<16 x i16> %a, <16 x i16> %b) {

















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_00_00_00_00_00_09_00_00_00_00_00_00_00_00_00(<16 x i16> %a, <16 x i16> %b) {
















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 9, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_00_00_00_00_10_00_00_00_00_00_00_00_00_00_00(<16 x i16> %a, <16 x i16> %b) {















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_00_00_00_11_00_00_00_00_00_00_00_00_00_00_00(<16 x i16> %a, <16 x i16> %b) {















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 11, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_00_00_12_00_00_00_00_00_00_00_00_00_00_00_00(<16 x i16> %a, <16 x i16> %b) {















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 0, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_00_13_00_00_00_00_00_00_00_00_00_00_00_00_00(<16 x i16> %a, <16 x i16> %b) {















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 0, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_14_00_00_00_00_00_00_00_00_00_00_00_00_00_00(<16 x i16> %a, <16 x i16> %b) {















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 14, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_15_00_00_00_00_00_00_00_00_00_00_00_00_00_00_00(<16 x i16> %a, <16 x i16> %b) {















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_00_00_00_00_00_00_00_08_08_08_08_08_08_08_08(<16 x i16> %a, <16 x i16> %b) {













  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_07_07_07_07_07_07_07_07_15_15_15_15_15_15_15_15(<16 x i16> %a, <16 x i16> %b) {













  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_00_00_00_04_04_04_04_08_08_08_08_12_12_12_12(<16 x i16> %a, <16 x i16> %b) {















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_03_03_03_03_07_07_07_07_11_11_11_11_15_15_15_15(<16 x i16> %a, <16 x i16> %b) {















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 11, i32 11, i32 11, i32 11, i32 15, i32 15, i32 15, i32 15>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_00_02_02_04_04_06_06_08_08_10_10_12_12_14_14(<16 x i16> %a, <16 x i16> %b) {















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 0, i32 2, i32 2, i32 4, i32 4, i32 6, i32 6, i32 8, i32 8, i32 10, i32 10, i32 12, i32 12, i32 14, i32 14>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_01_01_03_03_05_05_07_07_09_09_11_11_13_13_15_15(<16 x i16> %a, <16 x i16> %b) {















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7, i32 9, i32 9, i32 11, i32 11, i32 13, i32 13, i32 15, i32 15>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_00_00_00_00_00_01_00_00_00_00_00_00_00_01_00(<16 x i16> %a, <16 x i16> %b) {











  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_00_00_00_00_02_00_00_00_00_00_00_00_02_00_00(<16 x i16> %a, <16 x i16> %b) {











  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 0>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_00_00_00_03_00_00_00_00_00_00_00_03_00_00_00(<16 x i16> %a, <16 x i16> %b) {











  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_00_00_04_00_00_00_00_00_00_00_04_00_00_00_00(<16 x i16> %a, <16 x i16> %b) {











  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_00_05_00_00_00_00_00_00_00_05_00_00_00_00_00(<16 x i16> %a, <16 x i16> %b) {











  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_06_00_00_00_00_00_00_00_06_00_00_00_00_00_00(<16 x i16> %a, <16 x i16> %b) {











  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_07_00_00_00_00_00_00_00_07_00_00_00_00_00_00_00(<16 x i16> %a, <16 x i16> %b) {











  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_17_02_19_04_21_06_23_08_25_10_27_12_29_14_31(<16 x i16> %a, <16 x i16> %b) {













  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 17, i32 2, i32 19, i32 4, i32 21, i32 6, i32 23, i32 8, i32 25, i32 10, i32 27, i32 12, i32 29, i32 14, i32 31>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_16_01_18_03_20_05_22_07_24_09_26_11_28_13_30_15(<16 x i16> %a, <16 x i16> %b) {













  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 16, i32 1, i32 18, i32 3, i32 20, i32 5, i32 22, i32 7, i32 24, i32 9, i32 26, i32 11, i32 28, i32 13, i32 30, i32 15>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_01_18_19_04_05_22_23_08_09_26_27_12_13_30_31(<16 x i16> %a, <16 x i16> %b) {









  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 1, i32 18, i32 19, i32 4, i32 5, i32 22, i32 23, i32 8, i32 9, i32 26, i32 27, i32 12, i32 13, i32 30, i32 31>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_16_17_18_19_04_05_06_07_24_25_26_27_12_13_14_15(<16 x i16> %a, <16 x i16> %b) {









  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 27, i32 12, i32 13, i32 14, i32 15>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_01_02_03_04_05_06_07_08_09_10_11_12_13_14_31(<16 x i16> %a, <16 x i16> %b) {













  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 31>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_16_01_02_03_04_05_06_07_08_09_10_11_12_13_14_15(<16 x i16> %a, <16 x i16> %b) {












  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 16, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_17_02_19_04_21_06_23_24_09_26_11_28_13_30_15(<16 x i16> %a, <16 x i16> %b) {














  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 17, i32 2, i32 19, i32 4, i32 21, i32 6, i32 23, i32 24, i32 9, i32 26, i32 11, i32 28, i32 13, i32 30, i32 15>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_16_01_18_03_20_05_22_07_08_25_10_27_12_29_14_31(<16 x i16> %a, <16 x i16> %b) {














  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 16, i32 1, i32 18, i32 3, i32 20, i32 5, i32 22, i32 7, i32 8, i32 25, i32 10, i32 27, i32 12, i32 29, i32 14, i32 31>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_01_18_19_20_21_06_07_08_09_26_27_12_13_30_31(<16 x i16> %a, <16 x i16> %b) {









  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 1, i32 18, i32 19, i32 20, i32 21, i32 6, i32 7, i32 8, i32 9, i32 26, i32 27, i32 12, i32 13, i32 30, i32 31>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_16_00_16_00_16_00_16_00_16_00_16_00_16_00_16(<16 x i16> %a, <16 x i16> %b) {













  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_16_00_16_00_16_00_16_08_24_08_24_08_24_08_24(<16 x i16> %a, <16 x i16> %b) {

















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 8, i32 24, i32 8, i32 24, i32 8, i32 24, i32 8, i32 24>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_16_16_16_16_04_05_06_07_24_24_24_24_12_13_14_15(<16 x i16> %a, <16 x i16> %b) {


















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 4, i32 5, i32 6, i32 7, i32 24, i32 24, i32 24, i32 24, i32 12, i32 13, i32 14, i32 15>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_19_18_17_16_07_06_05_04_27_26_25_24_15_14_13_12(<16 x i16> %a, <16 x i16> %b) {





















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 19, i32 18, i32 17, i32 16, i32 7, i32 6, i32 5, i32 4, i32 27, i32 26, i32 25, i32 24, i32 15, i32 14, i32 13, i32 12>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_19_18_17_16_03_02_01_00_27_26_25_24_11_10_09_08(<16 x i16> %a, <16 x i16> %b) {



















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 19, i32 18, i32 17, i32 16, i32 3, i32 2, i32 1, i32 0, i32 27, i32 26, i32 25, i32 24, i32 11, i32 10, i32 9, i32 8>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_00_00_00_00_00_01_00_08_08_08_08_08_08_09_08(<16 x i16> %a, <16 x i16> %b) {













  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 9, i32 8>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_00_00_00_00_02_00_00_08_08_08_08_08_10_08_08(<16 x i16> %a, <16 x i16> %b) {













  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 10, i32 8, i32 8>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_00_00_00_03_00_00_00_08_08_08_08_11_08_08_08(<16 x i16> %a, <16 x i16> %b) {













  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 11, i32 8, i32 8, i32 8>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_00_00_04_00_00_00_00_08_08_08_12_08_08_08_08(<16 x i16> %a, <16 x i16> %b) {













  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 12, i32 8, i32 8, i32 8, i32 8>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_00_05_00_00_00_00_00_08_08_13_08_08_08_08_08(<16 x i16> %a, <16 x i16> %b) {













  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 13, i32 8, i32 8, i32 8, i32 8, i32 8>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_06_00_00_00_00_00_00_08_14_08_08_08_08_08_08(<16 x i16> %a, <16 x i16> %b) {













  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 14, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_07_00_00_00_00_00_00_00_15_08_08_08_08_08_08_08(<16 x i16> %a, <16 x i16> %b) {













  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 15, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_16_01_17_02_18_03_19_08_24_09_25_10_26_11_27(<16 x i16> %a, <16 x i16> %b) {













  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_04_20_05_21_06_22_07_23_12_28_13_29_14_30_15_31(<16 x i16> %a, <16 x i16> %b) {













  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_16_01_17_02_18_03_19_12_28_13_29_14_30_15_31(<16 x i16> %a, <16 x i16> %b) {















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_04_20_05_21_06_22_07_23_08_24_09_25_10_26_11_27(<16 x i16> %a, <16 x i16> %b) {















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_00_00_00_00_00_01_00_08_09_08_08_08_08_08_08(<16 x i16> %a, <16 x i16> %b) {












  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 8, i32 9, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_00_00_00_00_02_00_00_08_08_10_08_08_08_08_08(<16 x i16> %a, <16 x i16> %b) {












  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 8, i32 8, i32 10, i32 8, i32 8, i32 8, i32 8, i32 8>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_00_00_00_03_00_00_00_08_08_08_11_08_08_08_08(<16 x i16> %a, <16 x i16> %b) {












  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 11, i32 8, i32 8, i32 8, i32 8>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_00_00_04_00_00_00_00_08_08_08_08_12_08_08_08(<16 x i16> %a, <16 x i16> %b) {












  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 12, i32 8, i32 8, i32 8>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_00_05_00_00_00_00_00_08_08_08_08_08_13_08_08(<16 x i16> %a, <16 x i16> %b) {












  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 13, i32 8, i32 8>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_06_00_00_00_00_00_00_08_08_08_08_08_08_14_08(<16 x i16> %a, <16 x i16> %b) {












  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 14, i32 8>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_07_00_00_00_00_00_00_00_08_08_08_08_08_08_08_15(<16 x i16> %a, <16 x i16> %b) {












  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 15>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_00_02_02_04_04_06_06_14_14_12_12_10_10_08_08(<16 x i16> %a, <16 x i16> %b) {













  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 0, i32 2, i32 2, i32 4, i32 4, i32 6, i32 6, i32 14, i32 14, i32 12, i32 12, i32 10, i32 10, i32 8, i32 8>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_04_04_04_04_00_00_00_00_08_08_08_08_12_12_12_12(<16 x i16> %a, <16 x i16> %b) {













  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_uu_uu_00_00_00_00_00_08_08_uu_uu_08_08_14_08(<16 x i16> %a, <16 x i16> %b) {












  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 undef, i32 undef, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 undef, i32 undef, i32 8, i32 8, i32 14, i32 8>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_07_uu_00_00_00_00_00_00_08_08_uu_uu_08_08_08_15(<16 x i16> %a, <16 x i16> %b) {












  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 7, i32 undef, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 undef, i32 undef, i32 8, i32 8, i32 8, i32 15>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_uu_uu_02_04_04_uu_06_14_14_uu_12_10_10_08_08(<16 x i16> %a, <16 x i16> %b) {













  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 undef, i32 undef, i32 2, i32 4, i32 4, i32 undef, i32 6, i32 14, i32 14, i32 undef, i32 12, i32 10, i32 10, i32 8, i32 8>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_04_04_04_04_uu_uu_uu_uu_08_08_08_uu_uu_12_12_12(<16 x i16> %a, <16 x i16> %b) {














  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 undef, i32 undef, i32 undef, i32 undef, i32 8, i32 8, i32 8, i32 undef, i32 undef, i32 12, i32 12, i32 12>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_00_00_00_04_04_04_04_16_16_16_16_20_20_20_20(<16 x i16> %a, <16 x i16> %b) {















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 16, i32 16, i32 16, i32 16, i32 20, i32 20, i32 20, i32 20>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_08_08_08_08_12_12_12_12_16_16_16_16_20_20_20_20(<16 x i16> %a, <16 x i16> %b) {
















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12, i32 16, i32 16, i32 16, i32 16, i32 20, i32 20, i32 20, i32 20>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_08_08_08_08_12_12_12_12_24_24_24_24_28_28_28_28(<16 x i16> %a, <16 x i16> %b) {

















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12, i32 24, i32 24, i32 24, i32 24, i32 28, i32 28, i32 28, i32 28>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_00_00_00_04_04_04_04_24_24_24_24_28_28_28_28(<16 x i16> %a, <16 x i16> %b) {
















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 24, i32 24, i32 24, i32 24, i32 28, i32 28, i32 28, i32 28>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_16_01_17_02_18_03_19_04_20_05_21_06_22_07_23(<16 x i16> %a, <16 x i16> %b) {













  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_zz_zz_zz_zz_zz_zz_zz_16_zz_zz_zz_zz_zz_zz_zz_24(<16 x i16> %a) {












  %shuffle = shufflevector <16 x i16> zeroinitializer, <16 x i16> %a, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 24>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_17_18_19_20_21_22_23_zz_25_26_27_28_29_30_31_zz(<16 x i16> %a) {












  %shuffle = shufflevector <16 x i16> zeroinitializer, <16 x i16> %a, <16 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 0, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 0>
  ret <16 x i16> %shuffle
}





define <16 x i16> @shuffle_v16i16_zz_00_zz_02_zz_04_zz_06_zz_08_zz_10_zz_12_zz_14(<16 x i16> %a) {












  %shuffle = shufflevector <16 x i16> %a, <16 x i16> zeroinitializer, <16 x i32> <i32 16, i32 0, i32 16, i32 2, i32 16, i32 4, i32 16, i32 6, i32 16, i32 8, i32 16, i32 10, i32 16, i32 12, i32 16, i32 14>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_zz_zz_zz_00_zz_zz_zz_04_zz_zz_zz_08_zz_zz_zz_12(<16 x i16> %a) {












  %shuffle = shufflevector <16 x i16> %a, <16 x i16> zeroinitializer, <16 x i32> <i32 16, i32 16, i32 16, i32 0, i32 16, i32 16, i32 16, i32 4, i32 16, i32 16, i32 16, i32 8, i32 16, i32 16, i32 16, i32 12>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_01_zz_03_zz_05_zz_07_zz_09_zz_11_zz_13_zz_15_zz(<16 x i16> %a) {












  %shuffle = shufflevector <16 x i16> %a, <16 x i16> zeroinitializer, <16 x i32> <i32 1, i32 16, i32 3, i32 16, i32 5, i32 16, i32 7, i32 16, i32 9, i32 16, i32 11, i32 16, i32 13, i32 16, i32 15, i32 16>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_02_03_zz_zz_06_07_zz_zz_10_11_zz_zz_14_15_zz_zz(<16 x i16> %a) {











  %shuffle = shufflevector <16 x i16> %a, <16 x i16> zeroinitializer, <16 x i32> <i32 2, i32 3, i32 16, i32 16, i32 6, i32 7, i32 16, i32 16, i32 10, i32 11, i32 16, i32 16, i32 14, i32 15, i32 16, i32 16>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_16_zz_zz_zz_17_zz_zz_zz_18_zz_zz_zz_19_zz_zz_zz(<16 x i16> %a) {













  %shuffle = shufflevector <16 x i16> zeroinitializer, <16 x i16> %a, <16 x i32> <i32 16, i32 0, i32 0, i32 0, i32 17, i32 0, i32 0, i32 0, i32 18, i32 0, i32 0, i32 0, i32 19, i32 0, i32 0, i32 0>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_16_zz_17_zz_18_zz_19_zz_20_zz_21_zz_22_zz_22_zz(<16 x i16> %a) {












  %shuffle = shufflevector <16 x i16> zeroinitializer, <16 x i16> %a, <16 x i32> <i32 16, i32 0, i32 17, i32 0, i32 18, i32 0, i32 19, i32 0, i32 20, i32 0, i32 21, i32 0, i32 22, i32 0, i32 23, i32 0>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_23_00_01_02_03_04_05_06_31_08_09_10_11_12_13_14(<16 x i16> %a, <16 x i16> %b) {













  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 23, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 31, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_01_02_03_04_05_06_07_16_09_10_11_12_13_14_15_24(<16 x i16> %a, <16 x i16> %b) {













  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_17_18_19_20_21_22_23_00_25_26_27_28_29_30_31_8(<16 x i16> %a, <16 x i16> %b) {













  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 00, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 8>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_07_16_17_18_19_20_21_22_15_24_25_26_27_28_29_30(<16 x i16> %a, <16 x i16> %b) {













  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_01_02_03_04_05_06_07_00_17_18_19_20_21_22_23_16(<16 x i16> %a, <16 x i16> %b) {












  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_07_00_01_02_03_04_05_06_23_16_17_18_19_20_21_22(<16 x i16> %a, <16 x i16> %b) {












  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 23, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_01_00_01_02_03_02_11_08_09_08_09_10_11_10_11(<16 x i16> %a, <16 x i16> %b) {



















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 2, i32 3, i32 2, i32 11, i32 8, i32 9, i32 8, i32 9, i32 10, i32 11, i32 10, i32 11>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_06_07_04_05_02_03_00_09_14_15_12_13_10_11_08_09(<16 x i16> %a, <16 x i16> %b) {

















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 6, i32 7, i32 4, i32 5, i32 2, i32 3, i32 0, i32 9, i32 14, i32 15, i32 12, i32 13, i32 10, i32 11, i32 8, i32 9>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_04_05_06_07_16_17_18_27_12_13_14_15_24_25_26_27(<16 x i16> %a, <16 x i16> %b) {




















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 27, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_00_00_00_00_00_00_08_08_08_08_08_08_08_08_08(<16 x i16> %a, <16 x i16> %b) {

















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_00_00_00_04_04_04_12_08_08_08_08_12_12_12_12(<16 x i16> %a, <16 x i16> %b) {























  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 12, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_uu_00_uu_01_uu_02_uu_11_uu_08_uu_09_uu_10_uu_11(<16 x i16> %a, <16 x i16> %b) {



















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 undef, i32 0, i32 undef, i32 1, i32 undef, i32 2, i32 undef, i32 11, i32 undef, i32 8, i32 undef, i32 9, i32 undef, i32 10, i32 undef, i32 11>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_uu_04_uu_05_uu_06_uu_15_uu_12_uu_13_uu_14_uu_15(<16 x i16> %a, <16 x i16> %b) {



















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 undef, i32 4, i32 undef, i32 5, i32 undef, i32 6, i32 undef, i32 15, i32 undef, i32 12, i32 undef, i32 13, i32 undef, i32 14, i32 undef, i32 15>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_03_01_02_00_06_07_04_13_11_09_10_08_14_15_12_13(<16 x i16> %a, <16 x i16> %b) {





















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 3, i32 1, i32 2, i32 0, i32 6, i32 7, i32 4, i32 13, i32 11, i32 9, i32 10, i32 8, i32 14, i32 15, i32 12, i32 13>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_04_04_04_04_00_00_00_08_12_12_12_12_08_08_08_08(<16 x i16> %a, <16 x i16> %b) {



















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 0, i32 0, i32 0, i32 8, i32 12, i32 12, i32 12, i32 12, i32 8, i32 8, i32 8, i32 8>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_02_03_00_01_06_07_04_13_10_11_08_09_14_15_12_13(<16 x i16> %a, <16 x i16> %b) {

















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 13, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_02_03_00_02_06_07_04_13_10_11_08_10_14_15_12_13(<16 x i16> %a, <16 x i16> %b) {





















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 2, i32 3, i32 0, i32 2, i32 6, i32 7, i32 4, i32 13, i32 10, i32 11, i32 8, i32 10, i32 14, i32 15, i32 12, i32 13>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_02_03_00_01_06_07_04_15_10_11_08_09_14_15_12_15(<16 x i16> %a, <16 x i16> %b) {



















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 15, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 15>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_07_05_06_04_03_01_02_08_15_13_14_12_11_09_10_08(<16 x i16> %a, <16 x i16> %b) {



















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 7, i32 5, i32 6, i32 4, i32 3, i32 1, i32 2, i32 8, i32 15, i32 13, i32 14, i32 12, i32 11, i32 9, i32 10, i32 8>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_01_00_05_04_05_04_01_08_09_08_13_12_13_12_09_08(<16 x i16> %a, <16 x i16> %b) {



















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 1, i32 0, i32 5, i32 4, i32 5, i32 4, i32 1, i32 8, i32 9, i32 8, i32 13, i32 12, i32 13, i32 12, i32 9, i32 8>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_05_04_01_00_05_04_01_08_13_12_09_08_13_12_09_08(<16 x i16> %a, <16 x i16> %b) {



















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 5, i32 4, i32 1, i32 0, i32 5, i32 4, i32 1, i32 8, i32 13, i32 12, i32 9, i32 8, i32 13, i32 12, i32 9, i32 8>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_05_04_01_00_01_00_05_12_13_12_09_08_09_08_13_12(<16 x i16> %a, <16 x i16> %b) {



















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 5, i32 4, i32 1, i32 0, i32 1, i32 0, i32 5, i32 12, i32 13, i32 12, i32 9, i32 8, i32 9, i32 8, i32 13, i32 12>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_04_04_00_00_04_04_08_08_12_12_08_08_12_12_08(<16 x i16> %a, <16 x i16> %b) {



















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 4, i32 4, i32 0, i32 0, i32 4, i32 4, i32 8, i32 8, i32 12, i32 12, i32 8, i32 8, i32 12, i32 12, i32 8>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_04_00_00_04_04_00_00_12_12_08_08_12_12_08_08_12(<16 x i16> %a, <16 x i16> %b) {



















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 4, i32 0, i32 0, i32 4, i32 4, i32 0, i32 0, i32 12, i32 12, i32 8, i32 8, i32 12, i32 12, i32 8, i32 8, i32 12>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_02_06_04_00_05_01_07_11_10_14_12_08_13_09_15_11(<16 x i16> %a, <16 x i16> %b) {



















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 2, i32 6, i32 4, i32 0, i32 5, i32 1, i32 7, i32 11, i32 10, i32 14, i32 12, i32 8, i32 13, i32 9, i32 15, i32 11>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_02_00_06_04_05_01_07_11_10_08_14_12_13_09_15_11(<16 x i16> %a, <16 x i16> %b) {



















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 2, i32 0, i32 6, i32 4, i32 5, i32 1, i32 7, i32 11, i32 10, i32 8, i32 14, i32 12, i32 13, i32 9, i32 15, i32 11>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_02_06_04_00_01_03_07_13_10_14_12_08_09_11_15_13(<16 x i16> %a, <16 x i16> %b) {



















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 2, i32 6, i32 4, i32 0, i32 1, i32 3, i32 7, i32 13, i32 10, i32 14, i32 12, i32 8, i32 9, i32 11, i32 15, i32 13>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_06_06_07_05_01_06_04_11_14_14_15_13_09_14_12_11(<16 x i16> %a, <16 x i16> %b) {



















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 6, i32 6, i32 7, i32 5, i32 1, i32 6, i32 4, i32 11, i32 14, i32 14, i32 15, i32 13, i32 9, i32 14, i32 12, i32 11>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_00_04_04_04_04_04_12_08_08_12_12_12_12_12_12(<16 x i16> %a, <16 x i16> %b) {



















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 12, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_04_04_00_00_04_04_04_12_12_12_08_08_12_12_12_12(<16 x i16> %a, <16 x i16> %b) {



















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 4, i32 4, i32 0, i32 0, i32 4, i32 4, i32 4, i32 12, i32 12, i32 12, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_04_04_00_04_04_04_12_08_12_12_08_12_12_12_12(<16 x i16> %a, <16 x i16> %b) {



















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 4, i32 4, i32 0, i32 4, i32 4, i32 4, i32 12, i32 8, i32 12, i32 12, i32 8, i32 12, i32 12, i32 12, i32 12>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_04_04_00_00_00_00_08_08_12_12_08_08_08_08_08(<16 x i16> %a, <16 x i16> %b) {



















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 4, i32 4, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 12, i32 12, i32 8, i32 8, i32 8, i32 8, i32 8>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_04_04_00_04_05_06_15_08_12_12_08_12_13_14_15(<16 x i16> %a, <16 x i16> %b) {





















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 4, i32 4, i32 0, i32 4, i32 5, i32 6, i32 15, i32 8, i32 12, i32 12, i32 8, i32 12, i32 13, i32 14, i32 15>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_uu_04_04_04_04_04_12_08_uu_12_12_12_12_12_12(<16 x i16> %a, <16 x i16> %b) {



















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 undef, i32 4, i32 4, i32 4, i32 4, i32 4, i32 12, i32 8, i32 undef, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_04_04_uu_00_04_04_04_12_12_12_uu_08_12_12_12_12(<16 x i16> %a, <16 x i16> %b) {



















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 4, i32 4, i32 undef, i32 0, i32 4, i32 4, i32 4, i32 12, i32 12, i32 12, i32 undef, i32 8, i32 12, i32 12, i32 12, i32 12>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_uu_04_04_00_04_04_04_12_uu_12_12_08_12_12_12_12(<16 x i16> %a, <16 x i16> %b) {



















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 undef, i32 4, i32 4, i32 0, i32 4, i32 4, i32 4, i32 12, i32 undef, i32 12, i32 12, i32 8, i32 12, i32 12, i32 12, i32 12>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_01_02_07_uu_uu_uu_uu_08_09_10_15_uu_uu_uu_uu(<16 x i16> %a, <16 x i16> %b) {













  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 1, i32 2, i32 7, i32 undef, i32 undef, i32 undef, i32 undef, i32 8, i32 9, i32 10, i32 15, i32 undef, i32 undef, i32 undef, i32 undef>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_uu_uu_uu_uu_04_05_06_11_uu_uu_uu_uu_12_13_14_11(<16 x i16> %a, <16 x i16> %b) {

















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 undef, i32 undef, i32 undef, i32 undef, i32 4, i32 5, i32 6, i32 11, i32 undef, i32 undef, i32 undef, i32 undef, i32 12, i32 13, i32 14, i32 11>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_04_05_06_03_uu_uu_uu_uu_12_13_14_11_uu_uu_uu_uu(<16 x i16> %a, <16 x i16> %b) {













  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 4, i32 5, i32 6, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 12, i32 13, i32 14, i32 11, i32 undef, i32 undef, i32 undef, i32 undef>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_01_02_07_04_05_06_11_08_09_10_15_12_13_14_11(<16 x i16> %a, <16 x i16> %b) {



















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 11>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_04_05_06_03_00_01_02_15_12_13_14_11_08_09_10_15(<16 x i16> %a, <16 x i16> %b) {

















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 4, i32 5, i32 6, i32 3, i32 0, i32 1, i32 2, i32 15, i32 12, i32 13, i32 14, i32 11, i32 8, i32 9, i32 10, i32 15>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_03_07_01_00_02_07_03_13_11_15_09_08_10_15_11_13(<16 x i16> %a, <16 x i16> %b) {



















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 3, i32 7, i32 1, i32 0, i32 2, i32 7, i32 3, i32 13, i32 11, i32 15, i32 9, i32 8, i32 10, i32 15, i32 11, i32 13>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_16_01_17_02_18_03_27_08_24_09_25_10_26_11_27(<16 x i16> %a, <16 x i16> %b) {






















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 27, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_20_01_21_02_22_03_31_08_28_09_29_10_30_11_31(<16 x i16> %a, <16 x i16> %b) {






















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 20, i32 1, i32 21, i32 2, i32 22, i32 3, i32 31, i32 8, i32 28, i32 9, i32 29, i32 10, i32 30, i32 11, i32 31>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_04_20_05_21_06_22_07_31_12_28_13_29_14_30_15_31(<16 x i16> %a, <16 x i16> %b) {






















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 31, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_04_16_05_17_06_18_07_27_12_24_13_25_14_26_15_27(<16 x i16> %a, <16 x i16> %b) {






















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 4, i32 16, i32 5, i32 17, i32 6, i32 18, i32 7, i32 27, i32 12, i32 24, i32 13, i32 25, i32 14, i32 26, i32 15, i32 27>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_16_01_17_06_22_07_31_08_24_09_25_14_30_15_31(<16 x i16> %a, <16 x i16> %b) {





























  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 6, i32 22, i32 7, i32 31, i32 8, i32 24, i32 9, i32 25, i32 14, i32 30, i32 15, i32 31>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_20_01_21_06_16_07_25_08_28_09_29_14_24_15_25(<16 x i16> %a, <16 x i16> %b) {


























  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 20, i32 1, i32 21, i32 6, i32 16, i32 7, i32 25, i32 8, i32 28, i32 9, i32 29, i32 14, i32 24, i32 15, i32 25>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_01_00_17_16_03_02_19_26_09_08_25_24_11_10_27_26(<16 x i16> %a, <16 x i16> %b) {

























  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 1, i32 0, i32 17, i32 16, i32 3, i32 2, i32 19, i32 26, i32 9, i32 8, i32 25, i32 24, i32 11, i32 10, i32 27, i32 26>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_16_00_17_01_18_02_19_11_24_08_25_09_26_10_27_11(<16 x i16> %a, <16 x i16> %b) {






















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 11, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_20_04_21_05_22_06_23_15_28_12_29_13_30_14_31_15(<16 x i16> %a, <16 x i16> %b) {






















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 15, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_02_01_03_20_22_21_31_08_10_09_11_28_30_29_31(<16 x i16> %a, <16 x i16> %b) {


























  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 2, i32 1, i32 3, i32 20, i32 22, i32 21, i32 31, i32 8, i32 10, i32 9, i32 11, i32 28, i32 30, i32 29, i32 31>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_04_04_03_18_uu_uu_uu_uu_12_12_11_26_uu_uu_uu_uu(<16 x i16> %a, <16 x i16> %b) {



















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 4, i32 4, i32 3, i32 18, i32 undef, i32 undef, i32 undef, i32 undef, i32 12, i32 12, i32 11, i32 26, i32 undef, i32 undef, i32 undef, i32 undef>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_03_02_21_uu_uu_uu_uu_08_11_10_29_uu_uu_uu_uu(<16 x i16> %a, <16 x i16> %b) {

















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 3, i32 2, i32 21, i32 undef, i32 undef, i32 undef, i32 undef, i32 8, i32 11, i32 10, i32 29, i32 undef, i32 undef, i32 undef, i32 undef>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_uu_uu_uu_21_uu_uu_uu_uu_uu_uu_uu_29_uu_uu_uu_uu(<16 x i16> %a, <16 x i16> %b) {









  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 undef, i32 undef, i32 undef, i32 21, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 29, i32 undef, i32 undef, i32 undef, i32 undef>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_01_02_21_uu_uu_uu_uu_08_09_10_29_uu_uu_uu_uu(<16 x i16> %a, <16 x i16> %b) {
















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 1, i32 2, i32 21, i32 undef, i32 undef, i32 undef, i32 undef, i32 8, i32 9, i32 10, i32 29, i32 undef, i32 undef, i32 undef, i32 undef>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_uu_uu_uu_uu_20_21_22_11_uu_uu_uu_uu_28_29_30_11(<16 x i16> %a, <16 x i16> %b) {















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 undef, i32 undef, i32 undef, i32 undef, i32 20, i32 21, i32 22, i32 11, i32 undef, i32 undef, i32 undef, i32 undef, i32 28, i32 29, i32 30, i32 11>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_20_21_22_03_uu_uu_uu_uu_28_29_30_11_uu_uu_uu_uu(<16 x i16> %a, <16 x i16> %b) {
















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 20, i32 21, i32 22, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 28, i32 29, i32 30, i32 11, i32 undef, i32 undef, i32 undef, i32 undef>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_01_02_21_20_21_22_11_08_09_10_29_28_29_30_11(<16 x i16> %a, <16 x i16> %b) {






















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 1, i32 2, i32 21, i32 20, i32 21, i32 22, i32 11, i32 8, i32 9, i32 10, i32 29, i32 28, i32 29, i32 30, i32 11>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_00_17_02_03_20_21_22_15_08_25_10_11_28_29_30_15(<16 x i16> %a, <16 x i16> %b) {















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 0, i32 17, i32 2, i32 3, i32 20, i32 21, i32 22, i32 15, i32 8, i32 25, i32 10, i32 11, i32 28, i32 29, i32 30, i32 15>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_uu_uu_uu_01_uu_05_07_25_uu_uu_uu_09_uu_13_15_25(<16 x i16> %a, <16 x i16> %b) {






















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 undef, i32 undef, i32 undef, i32 1, i32 undef, i32 5, i32 7, i32 25, i32 undef, i32 undef, i32 undef, i32 9, i32 undef, i32 13, i32 15, i32 25>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_uu_uu_04_uu_16_18_20_uu_uu_uu_12_uu_24_26_28_uu(<16 x i16> %a, <16 x i16> %b) {




















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 undef, i32 undef, i32 4, i32 undef, i32 16, i32 18, i32 20, i32 undef, i32 undef, i32 undef, i32 12, i32 undef, i32 24, i32 26, i32 28, i32 undef>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_21_22_23_00_01_02_03_12_29_30_31_08_09_10_11_12(<16 x i16> %a, <16 x i16> %b) {





















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 21, i32 22, i32 23, i32 0, i32 1, i32 2, i32 3, i32 12, i32 29, i32 30, i32 31, i32 8, i32 9, i32 10, i32 11, i32 12>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_uu_22_uu_uu_01_02_03_uu_uu_30_uu_uu_09_10_11_uu(<16 x i16> %a, <16 x i16> %b) {













  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 undef, i32 22, i32 undef, i32 undef, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 30, i32 undef, i32 undef, i32 9, i32 10, i32 11, i32 undef>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_05_06_07_00_01_02_03_12_13_14_15_08_09_10_11_12(<16 x i16> %a, <16 x i16> %b) {

















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 12>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_uu_06_uu_uu_01_02_03_uu_uu_14_uu_uu_09_10_11_uu(<16 x i16> %a, <16 x i16> %b) {












  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 undef, i32 6, i32 undef, i32 undef, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 14, i32 undef, i32 undef, i32 9, i32 10, i32 11, i32 undef>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_uu_uu_uu_uu_01_02_03_uu_uu_uu_uu_uu_09_10_11_uu(<16 x i16> %a, <16 x i16> %b) {












  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 undef, i32 undef, i32 undef, i32 undef, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 9, i32 10, i32 11, i32 undef>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_19_20_21_22_23_00_01_10_27_28_29_30_31_08_09_10(<16 x i16> %a, <16 x i16> %b) {





















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 19, i32 20, i32 21, i32 22, i32 23, i32 0, i32 1, i32 10, i32 27, i32 28, i32 29, i32 30, i32 31, i32 8, i32 9, i32 10>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_uu_20_21_22_uu_uu_01_uu_uu_28_29_30_uu_uu_09_uu(<16 x i16> %a, <16 x i16> %b) {













  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 undef, i32 20, i32 21, i32 22, i32 undef, i32 undef, i32 1, i32 undef, i32 undef, i32 28, i32 29, i32 30, i32 undef, i32 undef, i32 9, i32 undef>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_03_04_05_06_07_00_01_10_11_12_13_14_15_08_09_10(<16 x i16> %a, <16 x i16> %b) {

















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_uu_04_05_06_uu_uu_01_uu_uu_12_13_14_uu_uu_09_uu(<16 x i16> %a, <16 x i16> %b) {












  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 undef, i32 4, i32 5, i32 6, i32 undef, i32 undef, i32 1, i32 undef, i32 undef, i32 12, i32 13, i32 14, i32 undef, i32 undef, i32 9, i32 undef>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_uu_04_05_06_uu_uu_uu_uu_uu_12_13_14_uu_uu_uu_uu(<16 x i16> %a, <16 x i16> %b) {












  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 undef, i32 4, i32 5, i32 6, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 12, i32 13, i32 14, i32 undef, i32 undef, i32 undef, i32 undef>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_03_04_05_06_07_16_17_26_11_12_13_14_15_24_25_26(<16 x i16> %a, <16 x i16> %b) {





















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 26, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_uu_04_05_06_uu_uu_17_uu_uu_12_13_14_uu_uu_25_uu(<16 x i16> %a, <16 x i16> %b) {













  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 undef, i32 4, i32 5, i32 6, i32 undef, i32 undef, i32 17, i32 undef, i32 undef, i32 12, i32 13, i32 14, i32 undef, i32 undef, i32 25, i32 undef>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_05_06_07_16_17_18_19_28_13_14_15_24_25_26_27_28(<16 x i16> %a, <16 x i16> %b) {





















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 28, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_uu_06_uu_uu_17_18_19_uu_uu_14_uu_uu_25_26_27_uu(<16 x i16> %a, <16 x i16> %b) {













  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 undef, i32 6, i32 undef, i32 undef, i32 17, i32 18, i32 19, i32 undef, i32 undef, i32 14, i32 undef, i32 undef, i32 25, i32 26, i32 27, i32 undef>
  ret <16 x i16> %shuffle
}

define <16 x i16> @shuffle_v16i16_23_uu_03_uu_20_20_05_uu_31_uu_11_uu_28_28_13_uu(<16 x i16> %a, <16 x i16> %b) {


















  %shuffle = shufflevector <16 x i16> %a, <16 x i16> %b, <16 x i32> <i32 23, i32 undef, i32 3, i32 undef, i32 20, i32 20, i32 5, i32 undef, i32 31, i32 undef, i32 11, i32 undef, i32 28, i32 28, i32 13, i32 undef>
  ret <16 x i16> %shuffle
}

define <16 x i16> @insert_v16i16_0elt_into_zero_vector(i16* %ptr) {





  %val = load i16, i16* %ptr
  %i0 = insertelement <16 x i16> zeroinitializer, i16 %val, i32 0
  ret <16 x i16> %i0
}

define <16 x i16> @concat_v16i16_0_1_2_3_4_5_6_7_24_25_26_27_28_29_30_31(<16 x i16> %a, <16 x i16> %b) {









  %alo = shufflevector <16 x i16> %a, <16 x i16> undef, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %bhi = shufflevector <16 x i16> %b, <16 x i16> undef, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %shuf = shufflevector <8 x i16> %alo, <8 x i16> %bhi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  ret <16 x i16> %shuf
}

define <16 x i16> @concat_v16i16_8_9_10_11_12_13_14_15_24_25_26_27_28_29_30_31_bc(<16 x i16> %a, <16 x i16> %b) {




  %ahi = shufflevector <16 x i16> %a, <16 x i16> undef, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %bhi = shufflevector <16 x i16> %b, <16 x i16> undef, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %bc0hi = bitcast <8 x i16> %ahi to <16 x i8>
  %bc1hi = bitcast <8 x i16> %bhi to <16 x i8>
  %shuffle8 = shufflevector <16 x i8> %bc0hi, <16 x i8> %bc1hi, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %shuffle16 = bitcast <32 x i8> %shuffle8 to <16 x i16>
  ret <16 x i16> %shuffle16
}

define <16 x i16> @insert_dup_mem_v16i16_i32(i32* %ptr) {











  %tmp = load i32, i32* %ptr, align 4
  %tmp1 = insertelement <4 x i32> zeroinitializer, i32 %tmp, i32 0
  %tmp2 = bitcast <4 x i32> %tmp1 to <8 x i16>
  %tmp3 = shufflevector <8 x i16> %tmp2, <8 x i16> undef, <16 x i32> zeroinitializer
  ret <16 x i16> %tmp3
}

define <16 x i16> @insert_dup_mem_v16i16_sext_i16(i16* %ptr) {














  %tmp = load i16, i16* %ptr, align 2
  %tmp1 = sext i16 %tmp to i32
  %tmp2 = insertelement <4 x i32> zeroinitializer, i32 %tmp1, i32 0
  %tmp3 = bitcast <4 x i32> %tmp2 to <8 x i16>
  %tmp4 = shufflevector <8 x i16> %tmp3, <8 x i16> undef, <16 x i32> zeroinitializer
  ret <16 x i16> %tmp4
}
