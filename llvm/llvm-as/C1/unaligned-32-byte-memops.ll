





define <8 x float> @load32bytes(<8 x float>* %Ap) {















  %A = load <8 x float>, <8 x float>* %Ap, align 16
  ret <8 x float> %A
}



define void @store32bytes(<8 x float> %A, <8 x float>* %P) {


















  store <8 x float> %A, <8 x float>* %P, align 16
  ret void
}



define <8 x float> @combine_16_byte_loads_no_intrinsic(<4 x float>* %ptr) {















  %ptr1 = getelementptr inbounds <4 x float>, <4 x float>* %ptr, i64 3
  %ptr2 = getelementptr inbounds <4 x float>, <4 x float>* %ptr, i64 4
  %v1 = load <4 x float>, <4 x float>* %ptr1, align 1
  %v2 = load <4 x float>, <4 x float>* %ptr2, align 1
  %v3 = shufflevector <4 x float> %v1, <4 x float> %v2, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  ret <8 x float> %v3
}



define <8 x float> @combine_16_byte_loads_aligned(<4 x float>* %ptr) {














  %ptr1 = getelementptr inbounds <4 x float>, <4 x float>* %ptr, i64 3
  %ptr2 = getelementptr inbounds <4 x float>, <4 x float>* %ptr, i64 4
  %v1 = load <4 x float>, <4 x float>* %ptr1, align 32
  %v2 = load <4 x float>, <4 x float>* %ptr2, align 1
  %v3 = shufflevector <4 x float> %v1, <4 x float> %v2, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  ret <8 x float> %v3
}



define <8 x float> @combine_16_byte_loads_no_intrinsic_swap(<4 x float>* %ptr) {















  %ptr1 = getelementptr inbounds <4 x float>, <4 x float>* %ptr, i64 4
  %ptr2 = getelementptr inbounds <4 x float>, <4 x float>* %ptr, i64 5
  %v1 = load <4 x float>, <4 x float>* %ptr1, align 1
  %v2 = load <4 x float>, <4 x float>* %ptr2, align 1
  %v3 = shufflevector <4 x float> %v2, <4 x float> %v1, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  ret <8 x float> %v3
}





define <4 x i64> @combine_16_byte_loads_i64(<2 x i64>* %ptr, <4 x i64> %x) {




















  %ptr1 = getelementptr inbounds <2 x i64>, <2 x i64>* %ptr, i64 5
  %ptr2 = getelementptr inbounds <2 x i64>, <2 x i64>* %ptr, i64 6
  %v1 = load <2 x i64>, <2 x i64>* %ptr1, align 1
  %v2 = load <2 x i64>, <2 x i64>* %ptr2, align 1
  %v3 = shufflevector <2 x i64> %v1, <2 x i64> %v2, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %v4 = add <4 x i64> %v3, %x
  ret <4 x i64> %v4
}

define <8 x i32> @combine_16_byte_loads_i32(<4 x i32>* %ptr, <8 x i32> %x) {




















  %ptr1 = getelementptr inbounds <4 x i32>, <4 x i32>* %ptr, i64 6
  %ptr2 = getelementptr inbounds <4 x i32>, <4 x i32>* %ptr, i64 7
  %v1 = load <4 x i32>, <4 x i32>* %ptr1, align 1
  %v2 = load <4 x i32>, <4 x i32>* %ptr2, align 1
  %v3 = shufflevector <4 x i32> %v1, <4 x i32> %v2, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %v4 = add <8 x i32> %v3, %x
  ret <8 x i32> %v4
}

define <16 x i16> @combine_16_byte_loads_i16(<8 x i16>* %ptr, <16 x i16> %x) {




















  %ptr1 = getelementptr inbounds <8 x i16>, <8 x i16>* %ptr, i64 7
  %ptr2 = getelementptr inbounds <8 x i16>, <8 x i16>* %ptr, i64 8
  %v1 = load <8 x i16>, <8 x i16>* %ptr1, align 1
  %v2 = load <8 x i16>, <8 x i16>* %ptr2, align 1
  %v3 = shufflevector <8 x i16> %v1, <8 x i16> %v2, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %v4 = add <16 x i16> %v3, %x
  ret <16 x i16> %v4
}

define <32 x i8> @combine_16_byte_loads_i8(<16 x i8>* %ptr, <32 x i8> %x) {




















  %ptr1 = getelementptr inbounds <16 x i8>, <16 x i8>* %ptr, i64 8
  %ptr2 = getelementptr inbounds <16 x i8>, <16 x i8>* %ptr, i64 9
  %v1 = load <16 x i8>, <16 x i8>* %ptr1, align 1
  %v2 = load <16 x i8>, <16 x i8>* %ptr2, align 1
  %v3 = shufflevector <16 x i8> %v1, <16 x i8> %v2, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %v4 = add <32 x i8> %v3, %x
  ret <32 x i8> %v4
}

define <4 x double> @combine_16_byte_loads_double(<2 x double>* %ptr, <4 x double> %x) {
















  %ptr1 = getelementptr inbounds <2 x double>, <2 x double>* %ptr, i64 9
  %ptr2 = getelementptr inbounds <2 x double>, <2 x double>* %ptr, i64 10
  %v1 = load <2 x double>, <2 x double>* %ptr1, align 1
  %v2 = load <2 x double>, <2 x double>* %ptr2, align 1
  %v3 = shufflevector <2 x double> %v1, <2 x double> %v2, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %v4 = fadd <4 x double> %v3, %x
  ret <4 x double> %v4
}

