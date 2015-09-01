








define <8 x i16> @sext_16i8_to_8i16(<16 x i8> %A) nounwind uwtable readnone ssp {


























entry:
  %B = shufflevector <16 x i8> %A, <16 x i8> undef, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %C = sext <8 x i8> %B to <8 x i16>
  ret <8 x i16> %C
}

define <16 x i16> @sext_16i8_to_16i16(<16 x i8> %A) nounwind uwtable readnone ssp {
















































entry:
  %B = sext <16 x i8> %A to <16 x i16>
  ret <16 x i16> %B
}

define <4 x i32> @sext_16i8_to_4i32(<16 x i8> %A) nounwind uwtable readnone ssp {




























entry:
  %B = shufflevector <16 x i8> %A, <16 x i8> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %C = sext <4 x i8> %B to <4 x i32>
  ret <4 x i32> %C
}

define <8 x i32> @sext_16i8_to_8i32(<16 x i8> %A) nounwind uwtable readnone ssp {






















































entry:
  %B = shufflevector <16 x i8> %A, <16 x i8> undef, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %C = sext <8 x i8> %B to <8 x i32>
  ret <8 x i32> %C
}

define <2 x i64> @sext_16i8_to_2i64(<16 x i8> %A) nounwind uwtable readnone ssp {


































entry:
  %B = shufflevector <16 x i8> %A, <16 x i8> undef, <2 x i32> <i32 0, i32 1>
  %C = sext <2 x i8> %B to <2 x i64>
  ret <2 x i64> %C
}

define <4 x i64> @sext_16i8_to_4i64(<16 x i8> %A) nounwind uwtable readnone ssp {



































































entry:
  %B = shufflevector <16 x i8> %A, <16 x i8> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %C = sext <4 x i8> %B to <4 x i64>
  ret <4 x i64> %C
}

define <4 x i32> @sext_8i16_to_4i32(<8 x i16> %A) nounwind uwtable readnone ssp {


























entry:
  %B = shufflevector <8 x i16> %A, <8 x i16> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %C = sext <4 x i16> %B to <4 x i32>
  ret <4 x i32> %C
}

define <8 x i32> @sext_8i16_to_8i32(<8 x i16> %A) nounwind uwtable readnone ssp {
















































entry:
  %B = sext <8 x i16> %A to <8 x i32>
  ret <8 x i32> %B
}

define <2 x i64> @sext_8i16_to_2i64(<8 x i16> %A) nounwind uwtable readnone ssp {
































entry:
  %B = shufflevector <8 x i16> %A, <8 x i16> undef, <2 x i32> <i32 0, i32 1>
  %C = sext <2 x i16> %B to <2 x i64>
  ret <2 x i64> %C
}

define <4 x i64> @sext_8i16_to_4i64(<8 x i16> %A) nounwind uwtable readnone ssp {































































entry:
  %B = shufflevector <8 x i16> %A, <8 x i16> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %C = sext <4 x i16> %B to <4 x i64>
  ret <4 x i64> %C
}

define <2 x i64> @sext_4i32_to_2i64(<4 x i32> %A) nounwind uwtable readnone ssp {




























entry:
  %B = shufflevector <4 x i32> %A, <4 x i32> undef, <2 x i32> <i32 0, i32 1>
  %C = sext <2 x i32> %B to <2 x i64>
  ret <2 x i64> %C
}

define <4 x i64> @sext_4i32_to_4i64(<4 x i32> %A) nounwind uwtable readnone ssp {


















































entry:
  %B = sext <4 x i32> %A to <4 x i64>
  ret <4 x i64> %B
}

define <2 x i64> @load_sext_2i8_to_2i64(<2 x i8> *%ptr) {







































entry:
 %X = load <2 x i8>, <2 x i8>* %ptr
 %Y = sext <2 x i8> %X to <2 x i64>
 ret <2 x i64> %Y
}

define <4 x i32> @load_sext_4i8_to_4i32(<4 x i8> *%ptr) {































entry:
 %X = load <4 x i8>, <4 x i8>* %ptr
 %Y = sext <4 x i8> %X to <4 x i32>
 ret <4 x i32> %Y
}

define <4 x i64> @load_sext_4i8_to_4i64(<4 x i8> *%ptr) {






















































entry:
 %X = load <4 x i8>, <4 x i8>* %ptr
 %Y = sext <4 x i8> %X to <4 x i64>
 ret <4 x i64> %Y
}

define <8 x i16> @load_sext_8i8_to_8i16(<8 x i8> *%ptr) {





























entry:
 %X = load <8 x i8>, <8 x i8>* %ptr
 %Y = sext <8 x i8> %X to <8 x i16>
 ret <8 x i16> %Y
}

define <8 x i32> @load_sext_8i8_to_8i32(<8 x i8> *%ptr) {


















































entry:
 %X = load <8 x i8>, <8 x i8>* %ptr
 %Y = sext <8 x i8> %X to <8 x i32>
 ret <8 x i32> %Y
}

define <16 x i16> @load_sext_16i8_to_16i16(<16 x i8> *%ptr) {












































entry:
 %X = load <16 x i8>, <16 x i8>* %ptr
 %Y = sext <16 x i8> %X to <16 x i16>
 ret <16 x i16> %Y
}

define <2 x i64> @load_sext_2i16_to_2i64(<2 x i16> *%ptr) {



































entry:
 %X = load <2 x i16>, <2 x i16>* %ptr
 %Y = sext <2 x i16> %X to <2 x i64>
 ret <2 x i64> %Y
}

define <4 x i32> @load_sext_4i16_to_4i32(<4 x i16> *%ptr) {





























entry:
 %X = load <4 x i16>, <4 x i16>* %ptr
 %Y = sext <4 x i16> %X to <4 x i32>
 ret <4 x i32> %Y
}

define <4 x i64> @load_sext_4i16_to_4i64(<4 x i16> *%ptr) {






















































entry:
 %X = load <4 x i16>, <4 x i16>* %ptr
 %Y = sext <4 x i16> %X to <4 x i64>
 ret <4 x i64> %Y
}

define <8 x i32> @load_sext_8i16_to_8i32(<8 x i16> *%ptr) {












































entry:
 %X = load <8 x i16>, <8 x i16>* %ptr
 %Y = sext <8 x i16> %X to <8 x i32>
 ret <8 x i32> %Y
}

define <2 x i64> @load_sext_2i32_to_2i64(<2 x i32> *%ptr) {































entry:
 %X = load <2 x i32>, <2 x i32>* %ptr
 %Y = sext <2 x i32> %X to <2 x i64>
 ret <2 x i64> %Y
}

define <4 x i64> @load_sext_4i32_to_4i64(<4 x i32> *%ptr) {
















































entry:
 %X = load <4 x i32>, <4 x i32>* %ptr
 %Y = sext <4 x i32> %X to <4 x i64>
 ret <4 x i64> %Y
}

define i32 @sext_2i8_to_i32(<16 x i8> %A) nounwind uwtable readnone ssp {



































entry:
  %Shuf = shufflevector <16 x i8> %A, <16 x i8> undef, <2 x i32> <i32 0, i32 1>
  %Ex = sext <2 x i8> %Shuf to <2 x i16>
  %Bc = bitcast <2 x i16> %Ex to i32
  ret i32 %Bc
}

define <4 x i64> @sext_4i1_to_4i64(<4 x i1> %mask) {






























































  %extmask = sext <4 x i1> %mask to <4 x i64>
  ret <4 x i64> %extmask
}

define <4 x i64> @sext_4i8_to_4i64(<4 x i8> %mask) {






























































  %extmask = sext <4 x i8> %mask to <4 x i64>
  ret <4 x i64> %extmask
}
