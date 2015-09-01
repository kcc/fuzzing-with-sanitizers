


define void @vshf_v16i8_0(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = shufflevector <16 x i8> %1, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  
  
  
  store <16 x i8> %2, <16 x i8>* %c
  

  ret void
}

define void @vshf_v16i8_1(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = shufflevector <16 x i8> %1, <16 x i8> undef, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  
  store <16 x i8> %2, <16 x i8>* %c
  

  ret void
}

define void @vshf_v16i8_2(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = shufflevector <16 x i8> %1, <16 x i8> %2, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 16>
  
  
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
}

define void @vshf_v16i8_3(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = shufflevector <16 x i8> %1, <16 x i8> %2, <16 x i32> <i32 17, i32 24, i32 25, i32 18, i32 19, i32 20, i32 28, i32 19, i32 1, i32 8, i32 9, i32 2, i32 3, i32 4, i32 12, i32 3>
  
  
  
  
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
}

define void @vshf_v16i8_4(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = shufflevector <16 x i8> %1, <16 x i8> %1, <16 x i32> <i32 1, i32 17, i32 1, i32 17, i32 1, i32 17, i32 1, i32 17, i32 1, i32 17, i32 1, i32 17, i32 1, i32 17, i32 1, i32 17>
  
  store <16 x i8> %2, <16 x i8>* %c
  

  ret void
}

define void @vshf_v8i16_0(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = shufflevector <8 x i16> %1, <8 x i16> undef, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  
  
  
  store <8 x i16> %2, <8 x i16>* %c
  

  ret void
}

define void @vshf_v8i16_1(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = shufflevector <8 x i16> %1, <8 x i16> undef, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  
  store <8 x i16> %2, <8 x i16>* %c
  

  ret void
}

define void @vshf_v8i16_2(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = shufflevector <8 x i16> %1, <8 x i16> %2, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 8>
  
  
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
}

define void @vshf_v8i16_3(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = shufflevector <8 x i16> %1, <8 x i16> %2, <8 x i32> <i32 1, i32 8, i32 9, i32 2, i32 3, i32 4, i32 12, i32 3>
  
  
  
  
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
}

define void @vshf_v8i16_4(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = shufflevector <8 x i16> %1, <8 x i16> %1, <8 x i32> <i32 1, i32 9, i32 1, i32 9, i32 1, i32 9, i32 1, i32 9>
  
  store <8 x i16> %2, <8 x i16>* %c
  

  ret void
}




define void @vshf_v4i32_0(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  
  store <4 x i32> %2, <4 x i32>* %c
  

  ret void
}

define void @vshf_v4i32_1(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  
  store <4 x i32> %2, <4 x i32>* %c
  

  ret void
}

define void @vshf_v4i32_2(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = shufflevector <4 x i32> %1, <4 x i32> %2, <4 x i32> <i32 4, i32 5, i32 6, i32 4>
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
}

define void @vshf_v4i32_3(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = shufflevector <4 x i32> %1, <4 x i32> %2, <4 x i32> <i32 1, i32 5, i32 6, i32 4>
  
  
  
  
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
}

define void @vshf_v4i32_4(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = shufflevector <4 x i32> %1, <4 x i32> %1, <4 x i32> <i32 1, i32 5, i32 5, i32 1>
  
  
  store <4 x i32> %2, <4 x i32>* %c
  

  ret void
}

define void @vshf_v2i64_0(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = shufflevector <2 x i64> %1, <2 x i64> undef, <2 x i32> <i32 1, i32 0>
  
  
  
  store <2 x i64> %2, <2 x i64>* %c
  

  ret void
}

define void @vshf_v2i64_1(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = shufflevector <2 x i64> %1, <2 x i64> undef, <2 x i32> <i32 1, i32 1>
  
  store <2 x i64> %2, <2 x i64>* %c
  

  ret void
}

define void @vshf_v2i64_2(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = shufflevector <2 x i64> %1, <2 x i64> %2, <2 x i32> <i32 3, i32 2>
  
  
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
}

define void @vshf_v2i64_3(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = shufflevector <2 x i64> %1, <2 x i64> %2, <2 x i32> <i32 1, i32 2>
  
  
  
  
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
}

define void @vshf_v2i64_4(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = shufflevector <2 x i64> %1, <2 x i64> %1, <2 x i32> <i32 1, i32 3>
  
  store <2 x i64> %2, <2 x i64>* %c
  

  ret void
}

define void @shf_v16i8_0(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = shufflevector <16 x i8> %1, <16 x i8> undef, <16 x i32> <i32 1, i32 3, i32 2, i32 0, i32 5, i32 7, i32 6, i32 4, i32 9, i32 11, i32 10, i32 8, i32 13, i32 15, i32 14, i32 12>
  
  store <16 x i8> %2, <16 x i8>* %c
  

  ret void
}

define void @shf_v8i16_0(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = shufflevector <8 x i16> %1, <8 x i16> undef, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  
  store <8 x i16> %2, <8 x i16>* %c
  

  ret void
}

define void @shf_v4i32_0(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  
  store <4 x i32> %2, <4 x i32>* %c
  

  ret void
}



define void @ilvev_v16i8_0(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = shufflevector <16 x i8> %1, <16 x i8> %2,
                     <16 x i32> <i32 0, i32 16, i32 2, i32 18, i32 4, i32 20, i32 6, i32 22, i32 8, i32 24, i32 10, i32 26, i32 12, i32 28, i32 14, i32 30>
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
}

define void @ilvev_v8i16_0(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = shufflevector <8 x i16> %1, <8 x i16> %2, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14>
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
}

define void @ilvev_v4i32_0(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = shufflevector <4 x i32> %1, <4 x i32> %2, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
}

define void @ilvev_v2i64_0(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = shufflevector <2 x i64> %1, <2 x i64> %2, <2 x i32> <i32 0, i32 2>
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
}


define void @ilvev_v16i8_1(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  %3 = shufflevector <16 x i8> %1, <16 x i8> %2,
                     <16 x i32> <i32 0, i32 0, i32 2, i32 2, i32 4, i32 4, i32 6, i32 6, i32 8, i32 8, i32 10, i32 10, i32 12, i32 12, i32 14, i32 14>
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
}

define void @ilvev_v8i16_1(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  %3 = shufflevector <8 x i16> %1, <8 x i16> %2, <8 x i32> <i32 0, i32 0, i32 2, i32 2, i32 4, i32 4, i32 6, i32 6>
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
}

define void @ilvev_v4i32_1(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  %3 = shufflevector <4 x i32> %1, <4 x i32> %2, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
}

define void @ilvev_v2i64_1(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  %3 = shufflevector <2 x i64> %1, <2 x i64> %2, <2 x i32> <i32 0, i32 0>
  
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
}

define void @ilvev_v16i8_2(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = shufflevector <16 x i8> %1, <16 x i8> %2,
                     <16 x i32> <i32 16, i32 16, i32 18, i32 18, i32 20, i32 20, i32 22, i32 22, i32 24, i32 24, i32 26, i32 26, i32 28, i32 28, i32 30, i32 30>
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
}

define void @ilvev_v8i16_2(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = shufflevector <8 x i16> %1, <8 x i16> %2, <8 x i32> <i32 8, i32 8, i32 10, i32 10, i32 12, i32 12, i32 14, i32 14>
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
}

define void @ilvev_v4i32_2(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = shufflevector <4 x i32> %1, <4 x i32> %2, <4 x i32> <i32 4, i32 4, i32 6, i32 6>
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
}

define void @ilvev_v2i64_2(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = shufflevector <2 x i64> %1, <2 x i64> %2, <2 x i32> <i32 2, i32 2>
  
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
}

define void @ilvod_v16i8_0(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = shufflevector <16 x i8> %1, <16 x i8> %2,
                     <16 x i32> <i32 1, i32 17, i32 3, i32 19, i32 5, i32 21, i32 7, i32 23, i32 9, i32 25, i32 11, i32 27, i32 13, i32 29, i32 15, i32 31>
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
}

define void @ilvod_v8i16_0(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = shufflevector <8 x i16> %1, <8 x i16> %2, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15>
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
}

define void @ilvod_v4i32_0(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = shufflevector <4 x i32> %1, <4 x i32> %2, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
}

define void @ilvod_v2i64_0(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = shufflevector <2 x i64> %1, <2 x i64> %2, <2 x i32> <i32 1, i32 3>
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
}

define void @ilvod_v16i8_1(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  %3 = shufflevector <16 x i8> %1, <16 x i8> %2,
                     <16 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7, i32 9, i32 9, i32 11, i32 11, i32 13, i32 13, i32 15, i32 15>
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
}

define void @ilvod_v8i16_1(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  %3 = shufflevector <8 x i16> %1, <8 x i16> %2, <8 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7>
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
}

define void @ilvod_v4i32_1(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  %3 = shufflevector <4 x i32> %1, <4 x i32> %2, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
}

define void @ilvod_v2i64_1(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  %3 = shufflevector <2 x i64> %1, <2 x i64> %2, <2 x i32> <i32 1, i32 1>
  
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
}

define void @ilvod_v16i8_2(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = shufflevector <16 x i8> %1, <16 x i8> %2,
                     <16 x i32> <i32 17, i32 17, i32 19, i32 19, i32 21, i32 21, i32 23, i32 23, i32 25, i32 25, i32 27, i32 27, i32 29, i32 29, i32 31, i32 31>
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
}

define void @ilvod_v8i16_2(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = shufflevector <8 x i16> %1, <8 x i16> %2, <8 x i32> <i32 9, i32 9, i32 11, i32 11, i32 13, i32 13, i32 15, i32 15>
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
}

define void @ilvod_v4i32_2(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = shufflevector <4 x i32> %1, <4 x i32> %2, <4 x i32> <i32 5, i32 5, i32 7, i32 7>
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
}

define void @ilvod_v2i64_2(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = shufflevector <2 x i64> %1, <2 x i64> %2, <2 x i32> <i32 3, i32 3>
  
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
}

define void @ilvr_v16i8_0(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = shufflevector <16 x i8> %1, <16 x i8> %2,
                     <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
}

define void @ilvr_v8i16_0(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = shufflevector <8 x i16> %1, <8 x i16> %2, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
}

define void @ilvr_v4i32_0(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = shufflevector <4 x i32> %1, <4 x i32> %2, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
}

define void @ilvr_v2i64_0(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = shufflevector <2 x i64> %1, <2 x i64> %2, <2 x i32> <i32 0, i32 2>
  
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
}

define void @ilvr_v16i8_1(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = shufflevector <16 x i8> %1, <16 x i8> %2,
                     <16 x i32> <i32 16, i32 16, i32 17, i32 17, i32 18, i32 18, i32 19, i32 19, i32 20, i32 20, i32 21, i32 21, i32 22, i32 22, i32 23, i32 23>
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
}

define void @ilvr_v8i16_1(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = shufflevector <8 x i16> %1, <8 x i16> %2, <8 x i32> <i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11>
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
}

define void @ilvr_v4i32_1(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = shufflevector <4 x i32> %1, <4 x i32> %2, <4 x i32> <i32 4, i32 4, i32 5, i32 5>
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
}

define void @ilvr_v2i64_1(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = shufflevector <2 x i64> %1, <2 x i64> %2, <2 x i32> <i32 2, i32 2>
  
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
}

define void @ilvr_v16i8_2(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  %3 = shufflevector <16 x i8> %1, <16 x i8> %2,
                     <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
}

define void @ilvr_v8i16_2(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  %3 = shufflevector <8 x i16> %1, <8 x i16> %2, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
}

define void @ilvr_v4i32_2(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  %3 = shufflevector <4 x i32> %1, <4 x i32> %2, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
}

define void @ilvr_v2i64_2(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  %3 = shufflevector <2 x i64> %1, <2 x i64> %2, <2 x i32> <i32 0, i32 0>
  
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
}

define void @ilvl_v16i8_0(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = shufflevector <16 x i8> %1, <16 x i8> %2,
                     <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
}

define void @ilvl_v8i16_0(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = shufflevector <8 x i16> %1, <8 x i16> %2, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
}

define void @ilvl_v4i32_0(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = shufflevector <4 x i32> %1, <4 x i32> %2, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
}

define void @ilvl_v2i64_0(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = shufflevector <2 x i64> %1, <2 x i64> %2, <2 x i32> <i32 1, i32 3>
  
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
}

define void @ilvl_v16i8_1(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = shufflevector <16 x i8> %1, <16 x i8> %2,
                     <16 x i32> <i32 24, i32 24, i32 25, i32 25, i32 26, i32 26, i32 27, i32 27, i32 28, i32 28, i32 29, i32 29, i32 30, i32 30, i32 31, i32 31>
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
}

define void @ilvl_v8i16_1(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = shufflevector <8 x i16> %1, <8 x i16> %2, <8 x i32> <i32 12, i32 12, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15>
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
}

define void @ilvl_v4i32_1(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = shufflevector <4 x i32> %1, <4 x i32> %2, <4 x i32> <i32 6, i32 6, i32 7, i32 7>
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
}

define void @ilvl_v2i64_1(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = shufflevector <2 x i64> %1, <2 x i64> %2, <2 x i32> <i32 3, i32 3>
  
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
}

define void @ilvl_v16i8_2(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  %3 = shufflevector <16 x i8> %1, <16 x i8> %2,
                     <16 x i32> <i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15>
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
}

define void @ilvl_v8i16_2(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  %3 = shufflevector <8 x i16> %1, <8 x i16> %2, <8 x i32> <i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
}

define void @ilvl_v4i32_2(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  %3 = shufflevector <4 x i32> %1, <4 x i32> %2, <4 x i32> <i32 2, i32 2, i32 3, i32 3>
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
}

define void @ilvl_v2i64_2(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  %3 = shufflevector <2 x i64> %1, <2 x i64> %2, <2 x i32> <i32 1, i32 1>
  
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
}

define void @pckev_v16i8_0(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = shufflevector <16 x i8> %1, <16 x i8> %2,
                     <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
}

define void @pckev_v8i16_0(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = shufflevector <8 x i16> %1, <8 x i16> %2, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
}

define void @pckev_v4i32_0(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = shufflevector <4 x i32> %1, <4 x i32> %2, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
}

define void @pckev_v2i64_0(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = shufflevector <2 x i64> %1, <2 x i64> %2, <2 x i32> <i32 0, i32 2>
  
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
}

define void @pckev_v16i8_1(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = shufflevector <16 x i8> %1, <16 x i8> %2,
                     <16 x i32> <i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
}

define void @pckev_v8i16_1(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = shufflevector <8 x i16> %1, <8 x i16> %2, <8 x i32> <i32 8, i32 10, i32 12, i32 14, i32 8, i32 10, i32 12, i32 14>
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
}

define void @pckev_v4i32_1(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = shufflevector <4 x i32> %1, <4 x i32> %2, <4 x i32> <i32 4, i32 6, i32 4, i32 6>
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
}

define void @pckev_v2i64_1(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = shufflevector <2 x i64> %1, <2 x i64> %2, <2 x i32> <i32 2, i32 2>
  
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
}

define void @pckev_v16i8_2(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  %3 = shufflevector <16 x i8> %1, <16 x i8> %2,
                     <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
}

define void @pckev_v8i16_2(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  %3 = shufflevector <8 x i16> %1, <8 x i16> %2, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 0, i32 2, i32 4, i32 6>
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
}

define void @pckev_v4i32_2(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  %3 = shufflevector <4 x i32> %1, <4 x i32> %2, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
}

define void @pckev_v2i64_2(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  %3 = shufflevector <2 x i64> %1, <2 x i64> %2, <2 x i32> <i32 0, i32 0>
  
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
}

define void @pckod_v16i8_0(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = shufflevector <16 x i8> %1, <16 x i8> %2,
                     <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
}

define void @pckod_v8i16_0(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = shufflevector <8 x i16> %1, <8 x i16> %2, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
}

define void @pckod_v4i32_0(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = shufflevector <4 x i32> %1, <4 x i32> %2, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
}

define void @pckod_v2i64_0(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = shufflevector <2 x i64> %1, <2 x i64> %2, <2 x i32> <i32 1, i32 3>
  
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
}

define void @pckod_v16i8_1(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = shufflevector <16 x i8> %1, <16 x i8> %2,
                     <16 x i32> <i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
}

define void @pckod_v8i16_1(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = shufflevector <8 x i16> %1, <8 x i16> %2, <8 x i32> <i32 9, i32 11, i32 13, i32 15, i32 9, i32 11, i32 13, i32 15>
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
}

define void @pckod_v4i32_1(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = shufflevector <4 x i32> %1, <4 x i32> %2, <4 x i32> <i32 5, i32 7, i32 5, i32 7>
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
}

define void @pckod_v2i64_1(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = shufflevector <2 x i64> %1, <2 x i64> %2, <2 x i32> <i32 3, i32 3>
  
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
}

define void @pckod_v16i8_2(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  %3 = shufflevector <16 x i8> %1, <16 x i8> %2,
                     <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
}

define void @pckod_v8i16_2(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  %3 = shufflevector <8 x i16> %1, <8 x i16> %2, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 1, i32 3, i32 5, i32 7>
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
}

define void @pckod_v4i32_2(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  %3 = shufflevector <4 x i32> %1, <4 x i32> %2, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
}

define void @pckod_v2i64_2(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  %3 = shufflevector <2 x i64> %1, <2 x i64> %2, <2 x i32> <i32 1, i32 1>
  
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
}

define void @splati_v16i8_0(<16 x i8>* %c, <16 x i8>* %a) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = shufflevector <16 x i8> %1, <16 x i8> undef,
                     <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  
  store <16 x i8> %2, <16 x i8>* %c
  

  ret void
}

define void @splati_v8i16_0(<8 x i16>* %c, <8 x i16>* %a) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = shufflevector <8 x i16> %1, <8 x i16> undef, <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  
  store <8 x i16> %2, <8 x i16>* %c
  

  ret void
}

define void @splati_v4i32_0(<4 x i32>* %c, <4 x i32>* %a) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  
  store <4 x i32> %2, <4 x i32>* %c
  

  ret void
}

define void @splati_v2i64_0(<2 x i64>* %c, <2 x i64>* %a) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = shufflevector <2 x i64> %1, <2 x i64> undef, <2 x i32> <i32 1, i32 1>
  
  store <2 x i64> %2, <2 x i64>* %c
  

  ret void
}
