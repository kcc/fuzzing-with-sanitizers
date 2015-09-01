





define <8 x i16> @zext_16i8_to_8i16(<16 x i8> %A) nounwind uwtable readnone ssp {





















entry:
  %B = shufflevector <16 x i8> %A, <16 x i8> undef, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %C = zext <8 x i8> %B to <8 x i16>
  ret <8 x i16> %C
}


define <16 x i16> @zext_16i8_to_16i16(<16 x i8> %A) {




































entry:
  %B = zext <16 x i8> %A to <16 x i16>
  ret <16 x i16> %B
}

define <4 x i32> @zext_16i8_to_4i32(<16 x i8> %A) nounwind uwtable readnone ssp {























entry:
  %B = shufflevector <16 x i8> %A, <16 x i8> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %C = zext <4 x i8> %B to <4 x i32>
  ret <4 x i32> %C
}

define <8 x i32> @zext_16i8_to_8i32(<16 x i8> %A) nounwind uwtable readnone ssp {











































entry:
  %B = shufflevector <16 x i8> %A, <16 x i8> undef, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %C = zext <8 x i8> %B to <8 x i32>
  ret <8 x i32> %C
}

define <2 x i64> @zext_16i8_to_2i64(<16 x i8> %A) nounwind uwtable readnone ssp {






















entry:
  %B = shufflevector <16 x i8> %A, <16 x i8> undef, <2 x i32> <i32 0, i32 1>
  %C = zext <2 x i8> %B to <2 x i64>
  ret <2 x i64> %C
}

define <4 x i64> @zext_16i8_to_4i64(<16 x i8> %A) nounwind uwtable readnone ssp {













































entry:
  %B = shufflevector <16 x i8> %A, <16 x i8> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %C = zext <4 x i8> %B to <4 x i64>
  ret <4 x i64> %C
}

define <4 x i32> @zext_8i16_to_4i32(<8 x i16> %A) nounwind uwtable readnone ssp {





















entry:
  %B = shufflevector <8 x i16> %A, <8 x i16> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %C = zext <4 x i16> %B to <4 x i32>
  ret <4 x i32> %C
}

define <8 x i32> @zext_8i16_to_8i32(<8 x i16> %A) nounwind uwtable readnone ssp {




































entry:
  %B = zext <8 x i16> %A to <8 x i32>
  ret <8 x i32>%B
}

define <2 x i64> @zext_8i16_to_2i64(<8 x i16> %A) nounwind uwtable readnone ssp {























entry:
  %B = shufflevector <8 x i16> %A, <8 x i16> undef, <2 x i32> <i32 0, i32 1>
  %C = zext <2 x i16> %B to <2 x i64>
  ret <2 x i64> %C
}

define <4 x i64> @zext_8i16_to_4i64(<8 x i16> %A) nounwind uwtable readnone ssp {














































entry:
  %B = shufflevector <8 x i16> %A, <8 x i16> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %C = zext <4 x i16> %B to <4 x i64>
  ret <4 x i64> %C
}

define <2 x i64> @zext_4i32_to_2i64(<4 x i32> %A) nounwind uwtable readnone ssp {





















entry:
  %B = shufflevector <4 x i32> %A, <4 x i32> undef, <2 x i32> <i32 0, i32 1>
  %C = zext <2 x i32> %B to <2 x i64>
  ret <2 x i64> %C
}

define <4 x i64> @zext_4i32_to_4i64(<4 x i32> %A) nounwind uwtable readnone ssp {




































entry:
  %B = zext <4 x i32> %A to <4 x i64>
  ret <4 x i64>%B
}

define <2 x i64> @load_zext_2i8_to_2i64(<2 x i8> *%ptr) {


























entry:
 %X = load <2 x i8>, <2 x i8>* %ptr
 %Y = zext <2 x i8> %X to <2 x i64>
 ret <2 x i64> %Y
}

define <4 x i32> @load_zext_4i8_to_4i32(<4 x i8> *%ptr) {

























entry:
 %X = load <4 x i8>, <4 x i8>* %ptr
 %Y = zext <4 x i8> %X to <4 x i32>
 ret <4 x i32> %Y
}

define <4 x i64> @load_zext_4i8_to_4i64(<4 x i8> *%ptr) {







































entry:
 %X = load <4 x i8>, <4 x i8>* %ptr
 %Y = zext <4 x i8> %X to <4 x i64>
 ret <4 x i64> %Y
}

define <8 x i16> @load_zext_8i8_to_8i16(<8 x i8> *%ptr) {























entry:
 %X = load <8 x i8>, <8 x i8>* %ptr
 %Y = zext <8 x i8> %X to <8 x i16>
 ret <8 x i16> %Y
}

define <8 x i32> @load_zext_8i8_to_8i32(<8 x i8> *%ptr) {






































entry:
 %X = load <8 x i8>, <8 x i8>* %ptr
 %Y = zext <8 x i8> %X to <8 x i32>
 ret <8 x i32> %Y
}

define <16 x i16> @load_zext_16i8_to_16i16(<16 x i8> *%ptr) {



































entry:
 %X = load <16 x i8>, <16 x i8>* %ptr
 %Y = zext <16 x i8> %X to <16 x i16>
 ret <16 x i16> %Y
}

define <2 x i64> @load_zext_2i16_to_2i64(<2 x i16> *%ptr) {

























entry:
 %X = load <2 x i16>, <2 x i16>* %ptr
 %Y = zext <2 x i16> %X to <2 x i64>
 ret <2 x i64> %Y
}

define <4 x i32> @load_zext_4i16_to_4i32(<4 x i16> *%ptr) {























entry:
 %X = load <4 x i16>, <4 x i16>* %ptr
 %Y = zext <4 x i16> %X to <4 x i32>
 ret <4 x i32> %Y
}

define <4 x i64> @load_zext_4i16_to_4i64(<4 x i16> *%ptr) {





































entry:
 %X = load <4 x i16>, <4 x i16>* %ptr
 %Y = zext <4 x i16> %X to <4 x i64>
 ret <4 x i64> %Y
}

define <8 x i32> @load_zext_8i16_to_8i32(<8 x i16> *%ptr) {



































entry:
 %X = load <8 x i16>, <8 x i16>* %ptr
 %Y = zext <8 x i16> %X to <8 x i32>
 ret <8 x i32> %Y
}

define <2 x i64> @load_zext_2i32_to_2i64(<2 x i32> *%ptr) {























entry:
 %X = load <2 x i32>, <2 x i32>* %ptr
 %Y = zext <2 x i32> %X to <2 x i64>
 ret <2 x i64> %Y
}

define <4 x i64> @load_zext_4i32_to_4i64(<4 x i32> *%ptr) {



































entry:
 %X = load <4 x i32>, <4 x i32>* %ptr
 %Y = zext <4 x i32> %X to <4 x i64>
 ret <4 x i64> %Y
}

define <8 x i32> @zext_8i8_to_8i32(<8 x i8> %z) {











































entry:
  %t = zext <8 x i8> %z to <8 x i32>
  ret <8 x i32> %t
}

define <8 x i32> @shuf_zext_8i16_to_8i32(<8 x i16> %A) nounwind uwtable readnone ssp {




































entry:
  %B = shufflevector <8 x i16> %A, <8 x i16> zeroinitializer, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  %Z = bitcast <16 x i16> %B to <8 x i32>
  ret <8 x i32> %Z
}

define <4 x i64> @shuf_zext_4i32_to_4i64(<4 x i32> %A) nounwind uwtable readnone ssp {





































entry:
  %B = shufflevector <4 x i32> %A, <4 x i32> zeroinitializer, <8 x i32> <i32 0, i32 4, i32 1, i32 4, i32 2, i32 4, i32 3, i32 4>
  %Z = bitcast <8 x i32> %B to <4 x i64>
  ret <4 x i64> %Z
}

define <8 x i32> @shuf_zext_8i8_to_8i32(<8 x i8> %A) {














































entry:
  %B = shufflevector <8 x i8> %A, <8 x i8> zeroinitializer, <32 x i32> <i32 0, i32 8, i32 8, i32 8, i32 1, i32 8, i32 8, i32 8, i32 2, i32 8, i32 8, i32 8, i32 3, i32 8, i32 8, i32 8, i32 4, i32 8, i32 8, i32 8, i32 5, i32 8, i32 8, i32 8, i32 6, i32 8, i32 8, i32 8, i32 7, i32 8, i32 8, i32 8>
  %Z = bitcast <32 x i8> %B to <8 x i32>
  ret <8 x i32> %Z
}

define <2 x i64> @shuf_zext_16i8_to_2i64_offset6(<16 x i8> %A) nounwind uwtable readnone ssp {























entry:
  %B = shufflevector <16 x i8> %A, <16 x i8> zeroinitializer, <16 x i32> <i32 6, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 7, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %Z = bitcast <16 x i8> %B to <2 x i64>
  ret <2 x i64> %Z
}

define <4 x i64> @shuf_zext_16i8_to_4i64_offset11(<16 x i8> %A) nounwind uwtable readnone ssp {








































entry:
  %B = shufflevector <16 x i8> %A, <16 x i8> zeroinitializer, <32 x i32> <i32 11, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 12, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 13, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 14, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %Z = bitcast <32 x i8> %B to <4 x i64>
  ret <4 x i64> %Z
}

define <2 x i64> @shuf_zext_8i16_to_2i64_offset6(<8 x i16> %A) nounwind uwtable readnone ssp {
























entry:
  %B = shufflevector <8 x i16> %A, <8 x i16> zeroinitializer, <8 x i32> <i32 3, i32 8, i32 8, i32 8, i32 4, i32 8, i32 8, i32 8>
  %Z = bitcast <8 x i16> %B to <2 x i64>
  ret <2 x i64> %Z
}

define <4 x i64> @shuf_zext_8i16_to_4i64_offset2(<8 x i16> %A) nounwind uwtable readnone ssp {
















































entry:
  %B = shufflevector <8 x i16> %A, <8 x i16> zeroinitializer, <16 x i32> <i32 2, i32 8, i32 8, i32 8, i32 3, i32 8, i32 8, i32 8, i32 4, i32 8, i32 8, i32 8, i32 5, i32 8, i32 8, i32 8>
  %Z = bitcast <16 x i16> %B to <4 x i64>
  ret <4 x i64> %Z
}

define <4 x i32> @shuf_zext_8i16_to_4i32_offset1(<8 x i16> %A) nounwind uwtable readnone ssp {













entry:
  %B = shufflevector <8 x i16> %A, <8 x i16> zeroinitializer, <8 x i32> <i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8>
  %Z = bitcast <8 x i16> %B to <4 x i32>
  ret <4 x i32> %Z
}

define <8 x i32> @shuf_zext_8i16_to_8i32_offset3(<8 x i16> %A) nounwind uwtable readnone ssp {


























entry:
  %B = shufflevector <8 x i16> %A, <8 x i16> zeroinitializer, <16 x i32> <i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8, i32 undef, i32 8, i32 undef, i32 8, i32 undef, i32 8>
  %Z = bitcast <16 x i16> %B to <8 x i32>
  ret <8 x i32> %Z
}

define <2 x i64> @shuf_zext_4i32_to_2i64_offset2(<4 x i32> %A) nounwind uwtable readnone ssp {











entry:
  %B = shufflevector <4 x i32> %A, <4 x i32> zeroinitializer, <4 x i32> <i32 2, i32 4, i32 3, i32 4>
  %Z = bitcast <4 x i32> %B to <2 x i64>
  ret <2 x i64> %Z
}

define <4 x i64> @shuf_zext_4i32_to_4i64_offset1(<4 x i32> %A) nounwind uwtable readnone ssp {







































entry:
  %B = shufflevector <4 x i32> %A, <4 x i32> zeroinitializer, <8 x i32> <i32 undef, i32 4, i32 2, i32 4, i32 3, i32 4, i32 undef, i32 4>
  %Z = bitcast <8 x i32> %B to <4 x i64>
  ret <4 x i64> %Z
}
