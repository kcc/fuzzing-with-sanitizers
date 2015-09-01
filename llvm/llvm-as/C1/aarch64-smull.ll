

define <8 x i16> @smull_v8i8_v8i16(<8 x i8>* %A, <8 x i8>* %B) nounwind {


  %tmp1 = load <8 x i8>, <8 x i8>* %A
  %tmp2 = load <8 x i8>, <8 x i8>* %B
  %tmp3 = sext <8 x i8> %tmp1 to <8 x i16>
  %tmp4 = sext <8 x i8> %tmp2 to <8 x i16>
  %tmp5 = mul <8 x i16> %tmp3, %tmp4
  ret <8 x i16> %tmp5
}

define <4 x i32> @smull_v4i16_v4i32(<4 x i16>* %A, <4 x i16>* %B) nounwind {


  %tmp1 = load <4 x i16>, <4 x i16>* %A
  %tmp2 = load <4 x i16>, <4 x i16>* %B
  %tmp3 = sext <4 x i16> %tmp1 to <4 x i32>
  %tmp4 = sext <4 x i16> %tmp2 to <4 x i32>
  %tmp5 = mul <4 x i32> %tmp3, %tmp4
  ret <4 x i32> %tmp5
}

define <2 x i64> @smull_v2i32_v2i64(<2 x i32>* %A, <2 x i32>* %B) nounwind {


  %tmp1 = load <2 x i32>, <2 x i32>* %A
  %tmp2 = load <2 x i32>, <2 x i32>* %B
  %tmp3 = sext <2 x i32> %tmp1 to <2 x i64>
  %tmp4 = sext <2 x i32> %tmp2 to <2 x i64>
  %tmp5 = mul <2 x i64> %tmp3, %tmp4
  ret <2 x i64> %tmp5
}

define <8 x i16> @umull_v8i8_v8i16(<8 x i8>* %A, <8 x i8>* %B) nounwind {


  %tmp1 = load <8 x i8>, <8 x i8>* %A
  %tmp2 = load <8 x i8>, <8 x i8>* %B
  %tmp3 = zext <8 x i8> %tmp1 to <8 x i16>
  %tmp4 = zext <8 x i8> %tmp2 to <8 x i16>
  %tmp5 = mul <8 x i16> %tmp3, %tmp4
  ret <8 x i16> %tmp5
}

define <4 x i32> @umull_v4i16_v4i32(<4 x i16>* %A, <4 x i16>* %B) nounwind {


  %tmp1 = load <4 x i16>, <4 x i16>* %A
  %tmp2 = load <4 x i16>, <4 x i16>* %B
  %tmp3 = zext <4 x i16> %tmp1 to <4 x i32>
  %tmp4 = zext <4 x i16> %tmp2 to <4 x i32>
  %tmp5 = mul <4 x i32> %tmp3, %tmp4
  ret <4 x i32> %tmp5
}

define <2 x i64> @umull_v2i32_v2i64(<2 x i32>* %A, <2 x i32>* %B) nounwind {


  %tmp1 = load <2 x i32>, <2 x i32>* %A
  %tmp2 = load <2 x i32>, <2 x i32>* %B
  %tmp3 = zext <2 x i32> %tmp1 to <2 x i64>
  %tmp4 = zext <2 x i32> %tmp2 to <2 x i64>
  %tmp5 = mul <2 x i64> %tmp3, %tmp4
  ret <2 x i64> %tmp5
}

define <8 x i16> @smlal_v8i8_v8i16(<8 x i16>* %A, <8 x i8>* %B, <8 x i8>* %C) nounwind {


  %tmp1 = load <8 x i16>, <8 x i16>* %A
  %tmp2 = load <8 x i8>, <8 x i8>* %B
  %tmp3 = load <8 x i8>, <8 x i8>* %C
  %tmp4 = sext <8 x i8> %tmp2 to <8 x i16>
  %tmp5 = sext <8 x i8> %tmp3 to <8 x i16>
  %tmp6 = mul <8 x i16> %tmp4, %tmp5
  %tmp7 = add <8 x i16> %tmp1, %tmp6
  ret <8 x i16> %tmp7
}

define <4 x i32> @smlal_v4i16_v4i32(<4 x i32>* %A, <4 x i16>* %B, <4 x i16>* %C) nounwind {


  %tmp1 = load <4 x i32>, <4 x i32>* %A
  %tmp2 = load <4 x i16>, <4 x i16>* %B
  %tmp3 = load <4 x i16>, <4 x i16>* %C
  %tmp4 = sext <4 x i16> %tmp2 to <4 x i32>
  %tmp5 = sext <4 x i16> %tmp3 to <4 x i32>
  %tmp6 = mul <4 x i32> %tmp4, %tmp5
  %tmp7 = add <4 x i32> %tmp1, %tmp6
  ret <4 x i32> %tmp7
}

define <2 x i64> @smlal_v2i32_v2i64(<2 x i64>* %A, <2 x i32>* %B, <2 x i32>* %C) nounwind {


  %tmp1 = load <2 x i64>, <2 x i64>* %A
  %tmp2 = load <2 x i32>, <2 x i32>* %B
  %tmp3 = load <2 x i32>, <2 x i32>* %C
  %tmp4 = sext <2 x i32> %tmp2 to <2 x i64>
  %tmp5 = sext <2 x i32> %tmp3 to <2 x i64>
  %tmp6 = mul <2 x i64> %tmp4, %tmp5
  %tmp7 = add <2 x i64> %tmp1, %tmp6
  ret <2 x i64> %tmp7
}

define <8 x i16> @umlal_v8i8_v8i16(<8 x i16>* %A, <8 x i8>* %B, <8 x i8>* %C) nounwind {


  %tmp1 = load <8 x i16>, <8 x i16>* %A
  %tmp2 = load <8 x i8>, <8 x i8>* %B
  %tmp3 = load <8 x i8>, <8 x i8>* %C
  %tmp4 = zext <8 x i8> %tmp2 to <8 x i16>
  %tmp5 = zext <8 x i8> %tmp3 to <8 x i16>
  %tmp6 = mul <8 x i16> %tmp4, %tmp5
  %tmp7 = add <8 x i16> %tmp1, %tmp6
  ret <8 x i16> %tmp7
}

define <4 x i32> @umlal_v4i16_v4i32(<4 x i32>* %A, <4 x i16>* %B, <4 x i16>* %C) nounwind {


  %tmp1 = load <4 x i32>, <4 x i32>* %A
  %tmp2 = load <4 x i16>, <4 x i16>* %B
  %tmp3 = load <4 x i16>, <4 x i16>* %C
  %tmp4 = zext <4 x i16> %tmp2 to <4 x i32>
  %tmp5 = zext <4 x i16> %tmp3 to <4 x i32>
  %tmp6 = mul <4 x i32> %tmp4, %tmp5
  %tmp7 = add <4 x i32> %tmp1, %tmp6
  ret <4 x i32> %tmp7
}

define <2 x i64> @umlal_v2i32_v2i64(<2 x i64>* %A, <2 x i32>* %B, <2 x i32>* %C) nounwind {


  %tmp1 = load <2 x i64>, <2 x i64>* %A
  %tmp2 = load <2 x i32>, <2 x i32>* %B
  %tmp3 = load <2 x i32>, <2 x i32>* %C
  %tmp4 = zext <2 x i32> %tmp2 to <2 x i64>
  %tmp5 = zext <2 x i32> %tmp3 to <2 x i64>
  %tmp6 = mul <2 x i64> %tmp4, %tmp5
  %tmp7 = add <2 x i64> %tmp1, %tmp6
  ret <2 x i64> %tmp7
}

define <8 x i16> @smlsl_v8i8_v8i16(<8 x i16>* %A, <8 x i8>* %B, <8 x i8>* %C) nounwind {


  %tmp1 = load <8 x i16>, <8 x i16>* %A
  %tmp2 = load <8 x i8>, <8 x i8>* %B
  %tmp3 = load <8 x i8>, <8 x i8>* %C
  %tmp4 = sext <8 x i8> %tmp2 to <8 x i16>
  %tmp5 = sext <8 x i8> %tmp3 to <8 x i16>
  %tmp6 = mul <8 x i16> %tmp4, %tmp5
  %tmp7 = sub <8 x i16> %tmp1, %tmp6
  ret <8 x i16> %tmp7
}

define <4 x i32> @smlsl_v4i16_v4i32(<4 x i32>* %A, <4 x i16>* %B, <4 x i16>* %C) nounwind {


  %tmp1 = load <4 x i32>, <4 x i32>* %A
  %tmp2 = load <4 x i16>, <4 x i16>* %B
  %tmp3 = load <4 x i16>, <4 x i16>* %C
  %tmp4 = sext <4 x i16> %tmp2 to <4 x i32>
  %tmp5 = sext <4 x i16> %tmp3 to <4 x i32>
  %tmp6 = mul <4 x i32> %tmp4, %tmp5
  %tmp7 = sub <4 x i32> %tmp1, %tmp6
  ret <4 x i32> %tmp7
}

define <2 x i64> @smlsl_v2i32_v2i64(<2 x i64>* %A, <2 x i32>* %B, <2 x i32>* %C) nounwind {


  %tmp1 = load <2 x i64>, <2 x i64>* %A
  %tmp2 = load <2 x i32>, <2 x i32>* %B
  %tmp3 = load <2 x i32>, <2 x i32>* %C
  %tmp4 = sext <2 x i32> %tmp2 to <2 x i64>
  %tmp5 = sext <2 x i32> %tmp3 to <2 x i64>
  %tmp6 = mul <2 x i64> %tmp4, %tmp5
  %tmp7 = sub <2 x i64> %tmp1, %tmp6
  ret <2 x i64> %tmp7
}

define <8 x i16> @umlsl_v8i8_v8i16(<8 x i16>* %A, <8 x i8>* %B, <8 x i8>* %C) nounwind {


  %tmp1 = load <8 x i16>, <8 x i16>* %A
  %tmp2 = load <8 x i8>, <8 x i8>* %B
  %tmp3 = load <8 x i8>, <8 x i8>* %C
  %tmp4 = zext <8 x i8> %tmp2 to <8 x i16>
  %tmp5 = zext <8 x i8> %tmp3 to <8 x i16>
  %tmp6 = mul <8 x i16> %tmp4, %tmp5
  %tmp7 = sub <8 x i16> %tmp1, %tmp6
  ret <8 x i16> %tmp7
}

define <4 x i32> @umlsl_v4i16_v4i32(<4 x i32>* %A, <4 x i16>* %B, <4 x i16>* %C) nounwind {


  %tmp1 = load <4 x i32>, <4 x i32>* %A
  %tmp2 = load <4 x i16>, <4 x i16>* %B
  %tmp3 = load <4 x i16>, <4 x i16>* %C
  %tmp4 = zext <4 x i16> %tmp2 to <4 x i32>
  %tmp5 = zext <4 x i16> %tmp3 to <4 x i32>
  %tmp6 = mul <4 x i32> %tmp4, %tmp5
  %tmp7 = sub <4 x i32> %tmp1, %tmp6
  ret <4 x i32> %tmp7
}

define <2 x i64> @umlsl_v2i32_v2i64(<2 x i64>* %A, <2 x i32>* %B, <2 x i32>* %C) nounwind {


  %tmp1 = load <2 x i64>, <2 x i64>* %A
  %tmp2 = load <2 x i32>, <2 x i32>* %B
  %tmp3 = load <2 x i32>, <2 x i32>* %C
  %tmp4 = zext <2 x i32> %tmp2 to <2 x i64>
  %tmp5 = zext <2 x i32> %tmp3 to <2 x i64>
  %tmp6 = mul <2 x i64> %tmp4, %tmp5
  %tmp7 = sub <2 x i64> %tmp1, %tmp6
  ret <2 x i64> %tmp7
}


define <8 x i16> @smull_extvec_v8i8_v8i16(<8 x i8> %arg) nounwind {


  %tmp3 = sext <8 x i8> %arg to <8 x i16>
  %tmp4 = mul <8 x i16> %tmp3, <i16 -12, i16 -12, i16 -12, i16 -12, i16 -12, i16 -12, i16 -12, i16 -12>
  ret <8 x i16> %tmp4
}

define <8 x i16> @smull_noextvec_v8i8_v8i16(<8 x i8> %arg) nounwind {




  %tmp3 = sext <8 x i8> %arg to <8 x i16>
  %tmp4 = mul <8 x i16> %tmp3, <i16 -999, i16 -999, i16 -999, i16 -999, i16 -999, i16 -999, i16 -999, i16 -999>
  ret <8 x i16> %tmp4
}

define <4 x i32> @smull_extvec_v4i16_v4i32(<4 x i16> %arg) nounwind {


  %tmp3 = sext <4 x i16> %arg to <4 x i32>
  %tmp4 = mul <4 x i32> %tmp3, <i32 -12, i32 -12, i32 -12, i32 -12>
  ret <4 x i32> %tmp4
}

define <2 x i64> @smull_extvec_v2i32_v2i64(<2 x i32> %arg) nounwind {


  %tmp3 = sext <2 x i32> %arg to <2 x i64>
  %tmp4 = mul <2 x i64> %tmp3, <i64 -1234, i64 -1234>
  ret <2 x i64> %tmp4
}

define <8 x i16> @umull_extvec_v8i8_v8i16(<8 x i8> %arg) nounwind {


  %tmp3 = zext <8 x i8> %arg to <8 x i16>
  %tmp4 = mul <8 x i16> %tmp3, <i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12>
  ret <8 x i16> %tmp4
}

define <8 x i16> @umull_noextvec_v8i8_v8i16(<8 x i8> %arg) nounwind {




  %tmp3 = zext <8 x i8> %arg to <8 x i16>
  %tmp4 = mul <8 x i16> %tmp3, <i16 999, i16 999, i16 999, i16 999, i16 999, i16 999, i16 999, i16 999>
  ret <8 x i16> %tmp4
}

define <4 x i32> @umull_extvec_v4i16_v4i32(<4 x i16> %arg) nounwind {


  %tmp3 = zext <4 x i16> %arg to <4 x i32>
  %tmp4 = mul <4 x i32> %tmp3, <i32 1234, i32 1234, i32 1234, i32 1234>
  ret <4 x i32> %tmp4
}

define <2 x i64> @umull_extvec_v2i32_v2i64(<2 x i32> %arg) nounwind {


  %tmp3 = zext <2 x i32> %arg to <2 x i64>
  %tmp4 = mul <2 x i64> %tmp3, <i64 1234, i64 1234>
  ret <2 x i64> %tmp4
}

define i16 @smullWithInconsistentExtensions(<8 x i8> %vec) {




  %1 = sext <8 x i8> %vec to <8 x i16>
  %2 = mul <8 x i16> %1, <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>
  %3 = extractelement <8 x i16> %2, i32 0
  ret i16 %3
}

define void @distribute(i16* %dst, i8* %src, i32 %mul) nounwind {
entry:



  %0 = trunc i32 %mul to i8
  %1 = insertelement <8 x i8> undef, i8 %0, i32 0
  %2 = shufflevector <8 x i8> %1, <8 x i8> undef, <8 x i32> zeroinitializer
  %3 = tail call <16 x i8> @llvm.aarch64.neon.vld1.v16i8(i8* %src, i32 1)
  %4 = bitcast <16 x i8> %3 to <2 x double>
  %5 = extractelement <2 x double> %4, i32 1
  %6 = bitcast double %5 to <8 x i8>
  %7 = zext <8 x i8> %6 to <8 x i16>
  %8 = zext <8 x i8> %2 to <8 x i16>
  %9 = extractelement <2 x double> %4, i32 0
  %10 = bitcast double %9 to <8 x i8>
  %11 = zext <8 x i8> %10 to <8 x i16>
  %12 = add <8 x i16> %7, %11
  %13 = mul <8 x i16> %12, %8
  %14 = bitcast i16* %dst to i8*
  tail call void @llvm.aarch64.neon.vst1.v8i16(i8* %14, <8 x i16> %13, i32 2)
  ret void
}

declare <16 x i8> @llvm.aarch64.neon.vld1.v16i8(i8*, i32) nounwind readonly

declare void @llvm.aarch64.neon.vst1.v8i16(i8*, <8 x i16>, i32) nounwind

