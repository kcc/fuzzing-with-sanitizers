


define <8 x i16> @smull8h(<8 x i8>* %A, <8 x i8>* %B) nounwind {


  %tmp1 = load <8 x i8>, <8 x i8>* %A
  %tmp2 = load <8 x i8>, <8 x i8>* %B
  %tmp3 = call <8 x i16> @llvm.aarch64.neon.smull.v8i16(<8 x i8> %tmp1, <8 x i8> %tmp2)
  ret <8 x i16> %tmp3
}

define <4 x i32> @smull4s(<4 x i16>* %A, <4 x i16>* %B) nounwind {


  %tmp1 = load <4 x i16>, <4 x i16>* %A
  %tmp2 = load <4 x i16>, <4 x i16>* %B
  %tmp3 = call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %tmp1, <4 x i16> %tmp2)
  ret <4 x i32> %tmp3
}

define <2 x i64> @smull2d(<2 x i32>* %A, <2 x i32>* %B) nounwind {


  %tmp1 = load <2 x i32>, <2 x i32>* %A
  %tmp2 = load <2 x i32>, <2 x i32>* %B
  %tmp3 = call <2 x i64> @llvm.aarch64.neon.smull.v2i64(<2 x i32> %tmp1, <2 x i32> %tmp2)
  ret <2 x i64> %tmp3
}

declare <8 x i16>  @llvm.aarch64.neon.smull.v8i16(<8 x i8>, <8 x i8>) nounwind readnone
declare <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16>, <4 x i16>) nounwind readnone
declare <2 x i64> @llvm.aarch64.neon.smull.v2i64(<2 x i32>, <2 x i32>) nounwind readnone

define <8 x i16> @umull8h(<8 x i8>* %A, <8 x i8>* %B) nounwind {


  %tmp1 = load <8 x i8>, <8 x i8>* %A
  %tmp2 = load <8 x i8>, <8 x i8>* %B
  %tmp3 = call <8 x i16> @llvm.aarch64.neon.umull.v8i16(<8 x i8> %tmp1, <8 x i8> %tmp2)
  ret <8 x i16> %tmp3
}

define <4 x i32> @umull4s(<4 x i16>* %A, <4 x i16>* %B) nounwind {


  %tmp1 = load <4 x i16>, <4 x i16>* %A
  %tmp2 = load <4 x i16>, <4 x i16>* %B
  %tmp3 = call <4 x i32> @llvm.aarch64.neon.umull.v4i32(<4 x i16> %tmp1, <4 x i16> %tmp2)
  ret <4 x i32> %tmp3
}

define <2 x i64> @umull2d(<2 x i32>* %A, <2 x i32>* %B) nounwind {


  %tmp1 = load <2 x i32>, <2 x i32>* %A
  %tmp2 = load <2 x i32>, <2 x i32>* %B
  %tmp3 = call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %tmp1, <2 x i32> %tmp2)
  ret <2 x i64> %tmp3
}

declare <8 x i16>  @llvm.aarch64.neon.umull.v8i16(<8 x i8>, <8 x i8>) nounwind readnone
declare <4 x i32> @llvm.aarch64.neon.umull.v4i32(<4 x i16>, <4 x i16>) nounwind readnone
declare <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32>, <2 x i32>) nounwind readnone

define <4 x i32> @sqdmull4s(<4 x i16>* %A, <4 x i16>* %B) nounwind {


  %tmp1 = load <4 x i16>, <4 x i16>* %A
  %tmp2 = load <4 x i16>, <4 x i16>* %B
  %tmp3 = call <4 x i32> @llvm.aarch64.neon.sqdmull.v4i32(<4 x i16> %tmp1, <4 x i16> %tmp2)
  ret <4 x i32> %tmp3
}

define <2 x i64> @sqdmull2d(<2 x i32>* %A, <2 x i32>* %B) nounwind {


  %tmp1 = load <2 x i32>, <2 x i32>* %A
  %tmp2 = load <2 x i32>, <2 x i32>* %B
  %tmp3 = call <2 x i64> @llvm.aarch64.neon.sqdmull.v2i64(<2 x i32> %tmp1, <2 x i32> %tmp2)
  ret <2 x i64> %tmp3
}

define <4 x i32> @sqdmull2_4s(<8 x i16>* %A, <8 x i16>* %B) nounwind {


  %load1 = load <8 x i16>, <8 x i16>* %A
  %load2 = load <8 x i16>, <8 x i16>* %B
  %tmp1 = shufflevector <8 x i16> %load1, <8 x i16> undef, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %tmp2 = shufflevector <8 x i16> %load2, <8 x i16> undef, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %tmp3 = call <4 x i32> @llvm.aarch64.neon.sqdmull.v4i32(<4 x i16> %tmp1, <4 x i16> %tmp2)
  ret <4 x i32> %tmp3
}

define <2 x i64> @sqdmull2_2d(<4 x i32>* %A, <4 x i32>* %B) nounwind {


  %load1 = load <4 x i32>, <4 x i32>* %A
  %load2 = load <4 x i32>, <4 x i32>* %B
  %tmp1 = shufflevector <4 x i32> %load1, <4 x i32> undef, <2 x i32> <i32 2, i32 3>
  %tmp2 = shufflevector <4 x i32> %load2, <4 x i32> undef, <2 x i32> <i32 2, i32 3>
  %tmp3 = call <2 x i64> @llvm.aarch64.neon.sqdmull.v2i64(<2 x i32> %tmp1, <2 x i32> %tmp2)
  ret <2 x i64> %tmp3
}


declare <4 x i32> @llvm.aarch64.neon.sqdmull.v4i32(<4 x i16>, <4 x i16>) nounwind readnone
declare <2 x i64> @llvm.aarch64.neon.sqdmull.v2i64(<2 x i32>, <2 x i32>) nounwind readnone

define <8 x i16> @pmull8h(<8 x i8>* %A, <8 x i8>* %B) nounwind {


  %tmp1 = load <8 x i8>, <8 x i8>* %A
  %tmp2 = load <8 x i8>, <8 x i8>* %B
  %tmp3 = call <8 x i16> @llvm.aarch64.neon.pmull.v8i16(<8 x i8> %tmp1, <8 x i8> %tmp2)
  ret <8 x i16> %tmp3
}

declare <8 x i16> @llvm.aarch64.neon.pmull.v8i16(<8 x i8>, <8 x i8>) nounwind readnone

define <4 x i16> @sqdmulh_4h(<4 x i16>* %A, <4 x i16>* %B) nounwind {


  %tmp1 = load <4 x i16>, <4 x i16>* %A
  %tmp2 = load <4 x i16>, <4 x i16>* %B
  %tmp3 = call <4 x i16> @llvm.aarch64.neon.sqdmulh.v4i16(<4 x i16> %tmp1, <4 x i16> %tmp2)
  ret <4 x i16> %tmp3
}

define <8 x i16> @sqdmulh_8h(<8 x i16>* %A, <8 x i16>* %B) nounwind {


  %tmp1 = load <8 x i16>, <8 x i16>* %A
  %tmp2 = load <8 x i16>, <8 x i16>* %B
  %tmp3 = call <8 x i16> @llvm.aarch64.neon.sqdmulh.v8i16(<8 x i16> %tmp1, <8 x i16> %tmp2)
  ret <8 x i16> %tmp3
}

define <2 x i32> @sqdmulh_2s(<2 x i32>* %A, <2 x i32>* %B) nounwind {


  %tmp1 = load <2 x i32>, <2 x i32>* %A
  %tmp2 = load <2 x i32>, <2 x i32>* %B
  %tmp3 = call <2 x i32> @llvm.aarch64.neon.sqdmulh.v2i32(<2 x i32> %tmp1, <2 x i32> %tmp2)
  ret <2 x i32> %tmp3
}

define <4 x i32> @sqdmulh_4s(<4 x i32>* %A, <4 x i32>* %B) nounwind {


  %tmp1 = load <4 x i32>, <4 x i32>* %A
  %tmp2 = load <4 x i32>, <4 x i32>* %B
  %tmp3 = call <4 x i32> @llvm.aarch64.neon.sqdmulh.v4i32(<4 x i32> %tmp1, <4 x i32> %tmp2)
  ret <4 x i32> %tmp3
}

define i32 @sqdmulh_1s(i32* %A, i32* %B) nounwind {


  %tmp1 = load i32, i32* %A
  %tmp2 = load i32, i32* %B
  %tmp3 = call i32 @llvm.aarch64.neon.sqdmulh.i32(i32 %tmp1, i32 %tmp2)
  ret i32 %tmp3
}

declare <4 x i16> @llvm.aarch64.neon.sqdmulh.v4i16(<4 x i16>, <4 x i16>) nounwind readnone
declare <8 x i16> @llvm.aarch64.neon.sqdmulh.v8i16(<8 x i16>, <8 x i16>) nounwind readnone
declare <2 x i32> @llvm.aarch64.neon.sqdmulh.v2i32(<2 x i32>, <2 x i32>) nounwind readnone
declare <4 x i32> @llvm.aarch64.neon.sqdmulh.v4i32(<4 x i32>, <4 x i32>) nounwind readnone
declare i32 @llvm.aarch64.neon.sqdmulh.i32(i32, i32) nounwind readnone

define <4 x i16> @sqrdmulh_4h(<4 x i16>* %A, <4 x i16>* %B) nounwind {


  %tmp1 = load <4 x i16>, <4 x i16>* %A
  %tmp2 = load <4 x i16>, <4 x i16>* %B
  %tmp3 = call <4 x i16> @llvm.aarch64.neon.sqrdmulh.v4i16(<4 x i16> %tmp1, <4 x i16> %tmp2)
  ret <4 x i16> %tmp3
}

define <8 x i16> @sqrdmulh_8h(<8 x i16>* %A, <8 x i16>* %B) nounwind {


  %tmp1 = load <8 x i16>, <8 x i16>* %A
  %tmp2 = load <8 x i16>, <8 x i16>* %B
  %tmp3 = call <8 x i16> @llvm.aarch64.neon.sqrdmulh.v8i16(<8 x i16> %tmp1, <8 x i16> %tmp2)
  ret <8 x i16> %tmp3
}

define <2 x i32> @sqrdmulh_2s(<2 x i32>* %A, <2 x i32>* %B) nounwind {


  %tmp1 = load <2 x i32>, <2 x i32>* %A
  %tmp2 = load <2 x i32>, <2 x i32>* %B
  %tmp3 = call <2 x i32> @llvm.aarch64.neon.sqrdmulh.v2i32(<2 x i32> %tmp1, <2 x i32> %tmp2)
  ret <2 x i32> %tmp3
}

define <4 x i32> @sqrdmulh_4s(<4 x i32>* %A, <4 x i32>* %B) nounwind {


  %tmp1 = load <4 x i32>, <4 x i32>* %A
  %tmp2 = load <4 x i32>, <4 x i32>* %B
  %tmp3 = call <4 x i32> @llvm.aarch64.neon.sqrdmulh.v4i32(<4 x i32> %tmp1, <4 x i32> %tmp2)
  ret <4 x i32> %tmp3
}

define i32 @sqrdmulh_1s(i32* %A, i32* %B) nounwind {


  %tmp1 = load i32, i32* %A
  %tmp2 = load i32, i32* %B
  %tmp3 = call i32 @llvm.aarch64.neon.sqrdmulh.i32(i32 %tmp1, i32 %tmp2)
  ret i32 %tmp3
}

declare <4 x i16> @llvm.aarch64.neon.sqrdmulh.v4i16(<4 x i16>, <4 x i16>) nounwind readnone
declare <8 x i16> @llvm.aarch64.neon.sqrdmulh.v8i16(<8 x i16>, <8 x i16>) nounwind readnone
declare <2 x i32> @llvm.aarch64.neon.sqrdmulh.v2i32(<2 x i32>, <2 x i32>) nounwind readnone
declare <4 x i32> @llvm.aarch64.neon.sqrdmulh.v4i32(<4 x i32>, <4 x i32>) nounwind readnone
declare i32 @llvm.aarch64.neon.sqrdmulh.i32(i32, i32) nounwind readnone

define <2 x float> @fmulx_2s(<2 x float>* %A, <2 x float>* %B) nounwind {


  %tmp1 = load <2 x float>, <2 x float>* %A
  %tmp2 = load <2 x float>, <2 x float>* %B
  %tmp3 = call <2 x float> @llvm.aarch64.neon.fmulx.v2f32(<2 x float> %tmp1, <2 x float> %tmp2)
  ret <2 x float> %tmp3
}

define <4 x float> @fmulx_4s(<4 x float>* %A, <4 x float>* %B) nounwind {


  %tmp1 = load <4 x float>, <4 x float>* %A
  %tmp2 = load <4 x float>, <4 x float>* %B
  %tmp3 = call <4 x float> @llvm.aarch64.neon.fmulx.v4f32(<4 x float> %tmp1, <4 x float> %tmp2)
  ret <4 x float> %tmp3
}

define <2 x double> @fmulx_2d(<2 x double>* %A, <2 x double>* %B) nounwind {


  %tmp1 = load <2 x double>, <2 x double>* %A
  %tmp2 = load <2 x double>, <2 x double>* %B
  %tmp3 = call <2 x double> @llvm.aarch64.neon.fmulx.v2f64(<2 x double> %tmp1, <2 x double> %tmp2)
  ret <2 x double> %tmp3
}

declare <2 x float> @llvm.aarch64.neon.fmulx.v2f32(<2 x float>, <2 x float>) nounwind readnone
declare <4 x float> @llvm.aarch64.neon.fmulx.v4f32(<4 x float>, <4 x float>) nounwind readnone
declare <2 x double> @llvm.aarch64.neon.fmulx.v2f64(<2 x double>, <2 x double>) nounwind readnone

define <4 x i32> @smlal4s(<4 x i16>* %A, <4 x i16>* %B, <4 x i32>* %C) nounwind {


  %tmp1 = load <4 x i16>, <4 x i16>* %A
  %tmp2 = load <4 x i16>, <4 x i16>* %B
  %tmp3 = load <4 x i32>, <4 x i32>* %C
  %tmp4 = call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %tmp1, <4 x i16> %tmp2)
  %tmp5 = add <4 x i32> %tmp3, %tmp4
  ret <4 x i32> %tmp5
}

define <2 x i64> @smlal2d(<2 x i32>* %A, <2 x i32>* %B, <2 x i64>* %C) nounwind {


  %tmp1 = load <2 x i32>, <2 x i32>* %A
  %tmp2 = load <2 x i32>, <2 x i32>* %B
  %tmp3 = load <2 x i64>, <2 x i64>* %C
  %tmp4 = call <2 x i64> @llvm.aarch64.neon.smull.v2i64(<2 x i32> %tmp1, <2 x i32> %tmp2)
  %tmp5 = add <2 x i64> %tmp3, %tmp4
  ret <2 x i64> %tmp5
}

define <4 x i32> @smlsl4s(<4 x i16>* %A, <4 x i16>* %B, <4 x i32>* %C) nounwind {


  %tmp1 = load <4 x i16>, <4 x i16>* %A
  %tmp2 = load <4 x i16>, <4 x i16>* %B
  %tmp3 = load <4 x i32>, <4 x i32>* %C
  %tmp4 = call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %tmp1, <4 x i16> %tmp2)
  %tmp5 = sub <4 x i32> %tmp3, %tmp4
  ret <4 x i32> %tmp5
}

define <2 x i64> @smlsl2d(<2 x i32>* %A, <2 x i32>* %B, <2 x i64>* %C) nounwind {


  %tmp1 = load <2 x i32>, <2 x i32>* %A
  %tmp2 = load <2 x i32>, <2 x i32>* %B
  %tmp3 = load <2 x i64>, <2 x i64>* %C
  %tmp4 = call <2 x i64> @llvm.aarch64.neon.smull.v2i64(<2 x i32> %tmp1, <2 x i32> %tmp2)
  %tmp5 = sub <2 x i64> %tmp3, %tmp4
  ret <2 x i64> %tmp5
}

declare <4 x i32> @llvm.aarch64.neon.sqadd.v4i32(<4 x i32>, <4 x i32>)
declare <2 x i64> @llvm.aarch64.neon.sqadd.v2i64(<2 x i64>, <2 x i64>)
declare <4 x i32> @llvm.aarch64.neon.sqsub.v4i32(<4 x i32>, <4 x i32>)
declare <2 x i64> @llvm.aarch64.neon.sqsub.v2i64(<2 x i64>, <2 x i64>)

define <4 x i32> @sqdmlal4s(<4 x i16>* %A, <4 x i16>* %B, <4 x i32>* %C) nounwind {


  %tmp1 = load <4 x i16>, <4 x i16>* %A
  %tmp2 = load <4 x i16>, <4 x i16>* %B
  %tmp3 = load <4 x i32>, <4 x i32>* %C
  %tmp4 = call <4 x i32> @llvm.aarch64.neon.sqdmull.v4i32(<4 x i16> %tmp1, <4 x i16> %tmp2)
  %tmp5 = call <4 x i32> @llvm.aarch64.neon.sqadd.v4i32(<4 x i32> %tmp3, <4 x i32> %tmp4)
  ret <4 x i32> %tmp5
}

define <2 x i64> @sqdmlal2d(<2 x i32>* %A, <2 x i32>* %B, <2 x i64>* %C) nounwind {


  %tmp1 = load <2 x i32>, <2 x i32>* %A
  %tmp2 = load <2 x i32>, <2 x i32>* %B
  %tmp3 = load <2 x i64>, <2 x i64>* %C
  %tmp4 = call <2 x i64> @llvm.aarch64.neon.sqdmull.v2i64(<2 x i32> %tmp1, <2 x i32> %tmp2)
  %tmp5 = call <2 x i64> @llvm.aarch64.neon.sqadd.v2i64(<2 x i64> %tmp3, <2 x i64> %tmp4)
  ret <2 x i64> %tmp5
}

define <4 x i32> @sqdmlal2_4s(<8 x i16>* %A, <8 x i16>* %B, <4 x i32>* %C) nounwind {


  %load1 = load <8 x i16>, <8 x i16>* %A
  %load2 = load <8 x i16>, <8 x i16>* %B
  %tmp3 = load <4 x i32>, <4 x i32>* %C
  %tmp1 = shufflevector <8 x i16> %load1, <8 x i16> undef, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %tmp2 = shufflevector <8 x i16> %load2, <8 x i16> undef, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %tmp4 = call <4 x i32> @llvm.aarch64.neon.sqdmull.v4i32(<4 x i16> %tmp1, <4 x i16> %tmp2)
  %tmp5 = call <4 x i32> @llvm.aarch64.neon.sqadd.v4i32(<4 x i32> %tmp3, <4 x i32> %tmp4)
  ret <4 x i32> %tmp5
}

define <2 x i64> @sqdmlal2_2d(<4 x i32>* %A, <4 x i32>* %B, <2 x i64>* %C) nounwind {


  %load1 = load <4 x i32>, <4 x i32>* %A
  %load2 = load <4 x i32>, <4 x i32>* %B
  %tmp3 = load <2 x i64>, <2 x i64>* %C
  %tmp1 = shufflevector <4 x i32> %load1, <4 x i32> undef, <2 x i32> <i32 2, i32 3>
  %tmp2 = shufflevector <4 x i32> %load2, <4 x i32> undef, <2 x i32> <i32 2, i32 3>
  %tmp4 = call <2 x i64> @llvm.aarch64.neon.sqdmull.v2i64(<2 x i32> %tmp1, <2 x i32> %tmp2)
  %tmp5 = call <2 x i64> @llvm.aarch64.neon.sqadd.v2i64(<2 x i64> %tmp3, <2 x i64> %tmp4)
  ret <2 x i64> %tmp5
}

define <4 x i32> @sqdmlsl4s(<4 x i16>* %A, <4 x i16>* %B, <4 x i32>* %C) nounwind {


  %tmp1 = load <4 x i16>, <4 x i16>* %A
  %tmp2 = load <4 x i16>, <4 x i16>* %B
  %tmp3 = load <4 x i32>, <4 x i32>* %C
  %tmp4 = call <4 x i32> @llvm.aarch64.neon.sqdmull.v4i32(<4 x i16> %tmp1, <4 x i16> %tmp2)
  %tmp5 = call <4 x i32> @llvm.aarch64.neon.sqsub.v4i32(<4 x i32> %tmp3, <4 x i32> %tmp4)
  ret <4 x i32> %tmp5
}

define <2 x i64> @sqdmlsl2d(<2 x i32>* %A, <2 x i32>* %B, <2 x i64>* %C) nounwind {


  %tmp1 = load <2 x i32>, <2 x i32>* %A
  %tmp2 = load <2 x i32>, <2 x i32>* %B
  %tmp3 = load <2 x i64>, <2 x i64>* %C
  %tmp4 = call <2 x i64> @llvm.aarch64.neon.sqdmull.v2i64(<2 x i32> %tmp1, <2 x i32> %tmp2)
  %tmp5 = call <2 x i64> @llvm.aarch64.neon.sqsub.v2i64(<2 x i64> %tmp3, <2 x i64> %tmp4)
  ret <2 x i64> %tmp5
}

define <4 x i32> @sqdmlsl2_4s(<8 x i16>* %A, <8 x i16>* %B, <4 x i32>* %C) nounwind {


  %load1 = load <8 x i16>, <8 x i16>* %A
  %load2 = load <8 x i16>, <8 x i16>* %B
  %tmp3 = load <4 x i32>, <4 x i32>* %C
  %tmp1 = shufflevector <8 x i16> %load1, <8 x i16> undef, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %tmp2 = shufflevector <8 x i16> %load2, <8 x i16> undef, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %tmp4 = call <4 x i32> @llvm.aarch64.neon.sqdmull.v4i32(<4 x i16> %tmp1, <4 x i16> %tmp2)
  %tmp5 = call <4 x i32> @llvm.aarch64.neon.sqsub.v4i32(<4 x i32> %tmp3, <4 x i32> %tmp4)
  ret <4 x i32> %tmp5
}

define <2 x i64> @sqdmlsl2_2d(<4 x i32>* %A, <4 x i32>* %B, <2 x i64>* %C) nounwind {


  %load1 = load <4 x i32>, <4 x i32>* %A
  %load2 = load <4 x i32>, <4 x i32>* %B
  %tmp3 = load <2 x i64>, <2 x i64>* %C
  %tmp1 = shufflevector <4 x i32> %load1, <4 x i32> undef, <2 x i32> <i32 2, i32 3>
  %tmp2 = shufflevector <4 x i32> %load2, <4 x i32> undef, <2 x i32> <i32 2, i32 3>
  %tmp4 = call <2 x i64> @llvm.aarch64.neon.sqdmull.v2i64(<2 x i32> %tmp1, <2 x i32> %tmp2)
  %tmp5 = call <2 x i64> @llvm.aarch64.neon.sqsub.v2i64(<2 x i64> %tmp3, <2 x i64> %tmp4)
  ret <2 x i64> %tmp5
}

define <4 x i32> @umlal4s(<4 x i16>* %A, <4 x i16>* %B, <4 x i32>* %C) nounwind {


  %tmp1 = load <4 x i16>, <4 x i16>* %A
  %tmp2 = load <4 x i16>, <4 x i16>* %B
  %tmp3 = load <4 x i32>, <4 x i32>* %C
  %tmp4 = call <4 x i32> @llvm.aarch64.neon.umull.v4i32(<4 x i16> %tmp1, <4 x i16> %tmp2)
  %tmp5 = add <4 x i32> %tmp3, %tmp4
  ret <4 x i32> %tmp5
}

define <2 x i64> @umlal2d(<2 x i32>* %A, <2 x i32>* %B, <2 x i64>* %C) nounwind {


  %tmp1 = load <2 x i32>, <2 x i32>* %A
  %tmp2 = load <2 x i32>, <2 x i32>* %B
  %tmp3 = load <2 x i64>, <2 x i64>* %C
  %tmp4 = call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %tmp1, <2 x i32> %tmp2)
  %tmp5 = add <2 x i64> %tmp3, %tmp4
  ret <2 x i64> %tmp5
}

define <4 x i32> @umlsl4s(<4 x i16>* %A, <4 x i16>* %B, <4 x i32>* %C) nounwind {


  %tmp1 = load <4 x i16>, <4 x i16>* %A
  %tmp2 = load <4 x i16>, <4 x i16>* %B
  %tmp3 = load <4 x i32>, <4 x i32>* %C
  %tmp4 = call <4 x i32> @llvm.aarch64.neon.umull.v4i32(<4 x i16> %tmp1, <4 x i16> %tmp2)
  %tmp5 = sub <4 x i32> %tmp3, %tmp4
  ret <4 x i32> %tmp5
}

define <2 x i64> @umlsl2d(<2 x i32>* %A, <2 x i32>* %B, <2 x i64>* %C) nounwind {


  %tmp1 = load <2 x i32>, <2 x i32>* %A
  %tmp2 = load <2 x i32>, <2 x i32>* %B
  %tmp3 = load <2 x i64>, <2 x i64>* %C
  %tmp4 = call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %tmp1, <2 x i32> %tmp2)
  %tmp5 = sub <2 x i64> %tmp3, %tmp4
  ret <2 x i64> %tmp5
}

define <2 x float> @fmla_2s(<2 x float>* %A, <2 x float>* %B, <2 x float>* %C) nounwind {


  %tmp1 = load <2 x float>, <2 x float>* %A
  %tmp2 = load <2 x float>, <2 x float>* %B
  %tmp3 = load <2 x float>, <2 x float>* %C
  %tmp4 = call <2 x float> @llvm.fma.v2f32(<2 x float> %tmp1, <2 x float> %tmp2, <2 x float> %tmp3)
  ret <2 x float> %tmp4
}

define <4 x float> @fmla_4s(<4 x float>* %A, <4 x float>* %B, <4 x float>* %C) nounwind {


  %tmp1 = load <4 x float>, <4 x float>* %A
  %tmp2 = load <4 x float>, <4 x float>* %B
  %tmp3 = load <4 x float>, <4 x float>* %C
  %tmp4 = call <4 x float> @llvm.fma.v4f32(<4 x float> %tmp1, <4 x float> %tmp2, <4 x float> %tmp3)
  ret <4 x float> %tmp4
}

define <2 x double> @fmla_2d(<2 x double>* %A, <2 x double>* %B, <2 x double>* %C) nounwind {


  %tmp1 = load <2 x double>, <2 x double>* %A
  %tmp2 = load <2 x double>, <2 x double>* %B
  %tmp3 = load <2 x double>, <2 x double>* %C
  %tmp4 = call <2 x double> @llvm.fma.v2f64(<2 x double> %tmp1, <2 x double> %tmp2, <2 x double> %tmp3)
  ret <2 x double> %tmp4
}

declare <2 x float> @llvm.fma.v2f32(<2 x float>, <2 x float>, <2 x float>) nounwind readnone
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) nounwind readnone
declare <2 x double> @llvm.fma.v2f64(<2 x double>, <2 x double>, <2 x double>) nounwind readnone

define <2 x float> @fmls_2s(<2 x float>* %A, <2 x float>* %B, <2 x float>* %C) nounwind {


  %tmp1 = load <2 x float>, <2 x float>* %A
  %tmp2 = load <2 x float>, <2 x float>* %B
  %tmp3 = load <2 x float>, <2 x float>* %C
  %tmp4 = fsub <2 x float> <float -0.0, float -0.0>, %tmp2
  %tmp5 = call <2 x float> @llvm.fma.v2f32(<2 x float> %tmp1, <2 x float> %tmp4, <2 x float> %tmp3)
  ret <2 x float> %tmp5
}

define <4 x float> @fmls_4s(<4 x float>* %A, <4 x float>* %B, <4 x float>* %C) nounwind {


  %tmp1 = load <4 x float>, <4 x float>* %A
  %tmp2 = load <4 x float>, <4 x float>* %B
  %tmp3 = load <4 x float>, <4 x float>* %C
  %tmp4 = fsub <4 x float> <float -0.0, float -0.0, float -0.0, float -0.0>, %tmp2
  %tmp5 = call <4 x float> @llvm.fma.v4f32(<4 x float> %tmp1, <4 x float> %tmp4, <4 x float> %tmp3)
  ret <4 x float> %tmp5
}

define <2 x double> @fmls_2d(<2 x double>* %A, <2 x double>* %B, <2 x double>* %C) nounwind {


  %tmp1 = load <2 x double>, <2 x double>* %A
  %tmp2 = load <2 x double>, <2 x double>* %B
  %tmp3 = load <2 x double>, <2 x double>* %C
  %tmp4 = fsub <2 x double> <double -0.0, double -0.0>, %tmp2
  %tmp5 = call <2 x double> @llvm.fma.v2f64(<2 x double> %tmp1, <2 x double> %tmp4, <2 x double> %tmp3)
  ret <2 x double> %tmp5
}

define <2 x float> @fmls_commuted_neg_2s(<2 x float>* %A, <2 x float>* %B, <2 x float>* %C) nounwind {


  %tmp1 = load <2 x float>, <2 x float>* %A
  %tmp2 = load <2 x float>, <2 x float>* %B
  %tmp3 = load <2 x float>, <2 x float>* %C
  %tmp4 = fsub <2 x float> <float -0.0, float -0.0>, %tmp2
  %tmp5 = call <2 x float> @llvm.fma.v2f32(<2 x float> %tmp4, <2 x float> %tmp1, <2 x float> %tmp3)
  ret <2 x float> %tmp5
}

define <4 x float> @fmls_commuted_neg_4s(<4 x float>* %A, <4 x float>* %B, <4 x float>* %C) nounwind {


  %tmp1 = load <4 x float>, <4 x float>* %A
  %tmp2 = load <4 x float>, <4 x float>* %B
  %tmp3 = load <4 x float>, <4 x float>* %C
  %tmp4 = fsub <4 x float> <float -0.0, float -0.0, float -0.0, float -0.0>, %tmp2
  %tmp5 = call <4 x float> @llvm.fma.v4f32(<4 x float> %tmp4, <4 x float> %tmp1, <4 x float> %tmp3)
  ret <4 x float> %tmp5
}

define <2 x double> @fmls_commuted_neg_2d(<2 x double>* %A, <2 x double>* %B, <2 x double>* %C) nounwind {


  %tmp1 = load <2 x double>, <2 x double>* %A
  %tmp2 = load <2 x double>, <2 x double>* %B
  %tmp3 = load <2 x double>, <2 x double>* %C
  %tmp4 = fsub <2 x double> <double -0.0, double -0.0>, %tmp2
  %tmp5 = call <2 x double> @llvm.fma.v2f64(<2 x double> %tmp4, <2 x double> %tmp1, <2 x double> %tmp3)
  ret <2 x double> %tmp5
}

define <2 x float> @fmls_indexed_2s(<2 x float> %a, <2 x float> %b, <2 x float> %c) nounwind readnone ssp {


entry:
  %0 = fsub <2 x float> <float -0.000000e+00, float -0.000000e+00>, %c
  %lane = shufflevector <2 x float> %b, <2 x float> undef, <2 x i32> zeroinitializer
  %fmls1 = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %0, <2 x float> %lane, <2 x float> %a)
  ret <2 x float> %fmls1
}

define <4 x float> @fmls_indexed_4s(<4 x float> %a, <4 x float> %b, <4 x float> %c) nounwind readnone ssp {


entry:
  %0 = fsub <4 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %c
  %lane = shufflevector <4 x float> %b, <4 x float> undef, <4 x i32> zeroinitializer
  %fmls1 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %0, <4 x float> %lane, <4 x float> %a)
  ret <4 x float> %fmls1
}

define <2 x double> @fmls_indexed_2d(<2 x double> %a, <2 x double> %b, <2 x double> %c) nounwind readnone ssp {


entry:
  %0 = fsub <2 x double> <double -0.000000e+00, double -0.000000e+00>, %c
  %lane = shufflevector <2 x double> %b, <2 x double> undef, <2 x i32> zeroinitializer
  %fmls1 = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %0, <2 x double> %lane, <2 x double> %a)
  ret <2 x double> %fmls1
}

define <2 x float> @fmla_indexed_scalar_2s(<2 x float> %a, <2 x float> %b, float %c) nounwind readnone ssp {
entry:



  %v1 = insertelement <2 x float> undef, float %c, i32 0
  %v2 = insertelement <2 x float> %v1, float %c, i32 1
  %fmla1 = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %v1, <2 x float> %b, <2 x float> %a) nounwind
  ret <2 x float> %fmla1
}

define <4 x float> @fmla_indexed_scalar_4s(<4 x float> %a, <4 x float> %b, float %c) nounwind readnone ssp {
entry:



  %v1 = insertelement <4 x float> undef, float %c, i32 0
  %v2 = insertelement <4 x float> %v1, float %c, i32 1
  %v3 = insertelement <4 x float> %v2, float %c, i32 2
  %v4 = insertelement <4 x float> %v3, float %c, i32 3
  %fmla1 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %v4, <4 x float> %b, <4 x float> %a) nounwind
  ret <4 x float> %fmla1
}

define <2 x double> @fmla_indexed_scalar_2d(<2 x double> %a, <2 x double> %b, double %c) nounwind readnone ssp {



entry:
  %v1 = insertelement <2 x double> undef, double %c, i32 0
  %v2 = insertelement <2 x double> %v1, double %c, i32 1
  %fmla1 = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %v2, <2 x double> %b, <2 x double> %a) nounwind
  ret <2 x double> %fmla1
}

define <4 x i16> @mul_4h(<4 x i16>* %A, <4 x i16>* %B) nounwind {



  %tmp1 = load <4 x i16>, <4 x i16>* %A
  %tmp2 = load <4 x i16>, <4 x i16>* %B
  %tmp3 = shufflevector <4 x i16> %tmp2, <4 x i16> %tmp2, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %tmp4 = mul <4 x i16> %tmp1, %tmp3
  ret <4 x i16> %tmp4
}

define <8 x i16> @mul_8h(<8 x i16>* %A, <8 x i16>* %B) nounwind {



  %tmp1 = load <8 x i16>, <8 x i16>* %A
  %tmp2 = load <8 x i16>, <8 x i16>* %B
  %tmp3 = shufflevector <8 x i16> %tmp2, <8 x i16> %tmp2, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %tmp4 = mul <8 x i16> %tmp1, %tmp3
  ret <8 x i16> %tmp4
}

define <2 x i32> @mul_2s(<2 x i32>* %A, <2 x i32>* %B) nounwind {



  %tmp1 = load <2 x i32>, <2 x i32>* %A
  %tmp2 = load <2 x i32>, <2 x i32>* %B
  %tmp3 = shufflevector <2 x i32> %tmp2, <2 x i32> %tmp2, <2 x i32> <i32 1, i32 1>
  %tmp4 = mul <2 x i32> %tmp1, %tmp3
  ret <2 x i32> %tmp4
}

define <4 x i32> @mul_4s(<4 x i32>* %A, <4 x i32>* %B) nounwind {



  %tmp1 = load <4 x i32>, <4 x i32>* %A
  %tmp2 = load <4 x i32>, <4 x i32>* %B
  %tmp3 = shufflevector <4 x i32> %tmp2, <4 x i32> %tmp2, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %tmp4 = mul <4 x i32> %tmp1, %tmp3
  ret <4 x i32> %tmp4
}

define <2 x i64> @mul_2d(<2 x i64> %A, <2 x i64> %B) nounwind {



  %tmp1 = mul <2 x i64> %A, %B
  ret <2 x i64> %tmp1
}

define <2 x float> @fmul_lane_2s(<2 x float>* %A, <2 x float>* %B) nounwind {



  %tmp1 = load <2 x float>, <2 x float>* %A
  %tmp2 = load <2 x float>, <2 x float>* %B
  %tmp3 = shufflevector <2 x float> %tmp2, <2 x float> %tmp2, <2 x i32> <i32 1, i32 1>
  %tmp4 = fmul <2 x float> %tmp1, %tmp3
  ret <2 x float> %tmp4
}

define <4 x float> @fmul_lane_4s(<4 x float>* %A, <4 x float>* %B) nounwind {



  %tmp1 = load <4 x float>, <4 x float>* %A
  %tmp2 = load <4 x float>, <4 x float>* %B
  %tmp3 = shufflevector <4 x float> %tmp2, <4 x float> %tmp2, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %tmp4 = fmul <4 x float> %tmp1, %tmp3
  ret <4 x float> %tmp4
}

define <2 x double> @fmul_lane_2d(<2 x double>* %A, <2 x double>* %B) nounwind {



  %tmp1 = load <2 x double>, <2 x double>* %A
  %tmp2 = load <2 x double>, <2 x double>* %B
  %tmp3 = shufflevector <2 x double> %tmp2, <2 x double> %tmp2, <2 x i32> <i32 1, i32 1>
  %tmp4 = fmul <2 x double> %tmp1, %tmp3
  ret <2 x double> %tmp4
}

define float @fmul_lane_s(float %A, <4 x float> %vec) nounwind {



  %B = extractelement <4 x float> %vec, i32 3
  %res = fmul float %A, %B
  ret float %res
}

define double @fmul_lane_d(double %A, <2 x double> %vec) nounwind {



  %B = extractelement <2 x double> %vec, i32 1
  %res = fmul double %A, %B
  ret double %res
}



define <2 x float> @fmulx_lane_2s(<2 x float>* %A, <2 x float>* %B) nounwind {



  %tmp1 = load <2 x float>, <2 x float>* %A
  %tmp2 = load <2 x float>, <2 x float>* %B
  %tmp3 = shufflevector <2 x float> %tmp2, <2 x float> %tmp2, <2 x i32> <i32 1, i32 1>
  %tmp4 = call <2 x float> @llvm.aarch64.neon.fmulx.v2f32(<2 x float> %tmp1, <2 x float> %tmp3)
  ret <2 x float> %tmp4
}

define <4 x float> @fmulx_lane_4s(<4 x float>* %A, <4 x float>* %B) nounwind {



  %tmp1 = load <4 x float>, <4 x float>* %A
  %tmp2 = load <4 x float>, <4 x float>* %B
  %tmp3 = shufflevector <4 x float> %tmp2, <4 x float> %tmp2, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %tmp4 = call <4 x float> @llvm.aarch64.neon.fmulx.v4f32(<4 x float> %tmp1, <4 x float> %tmp3)
  ret <4 x float> %tmp4
}

define <2 x double> @fmulx_lane_2d(<2 x double>* %A, <2 x double>* %B) nounwind {



  %tmp1 = load <2 x double>, <2 x double>* %A
  %tmp2 = load <2 x double>, <2 x double>* %B
  %tmp3 = shufflevector <2 x double> %tmp2, <2 x double> %tmp2, <2 x i32> <i32 1, i32 1>
  %tmp4 = call <2 x double> @llvm.aarch64.neon.fmulx.v2f64(<2 x double> %tmp1, <2 x double> %tmp3)
  ret <2 x double> %tmp4
}

define <4 x i16> @sqdmulh_lane_4h(<4 x i16>* %A, <4 x i16>* %B) nounwind {



  %tmp1 = load <4 x i16>, <4 x i16>* %A
  %tmp2 = load <4 x i16>, <4 x i16>* %B
  %tmp3 = shufflevector <4 x i16> %tmp2, <4 x i16> %tmp2, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %tmp4 = call <4 x i16> @llvm.aarch64.neon.sqdmulh.v4i16(<4 x i16> %tmp1, <4 x i16> %tmp3)
  ret <4 x i16> %tmp4
}

define <8 x i16> @sqdmulh_lane_8h(<8 x i16>* %A, <8 x i16>* %B) nounwind {



  %tmp1 = load <8 x i16>, <8 x i16>* %A
  %tmp2 = load <8 x i16>, <8 x i16>* %B
  %tmp3 = shufflevector <8 x i16> %tmp2, <8 x i16> %tmp2, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %tmp4 = call <8 x i16> @llvm.aarch64.neon.sqdmulh.v8i16(<8 x i16> %tmp1, <8 x i16> %tmp3)
  ret <8 x i16> %tmp4
}

define <2 x i32> @sqdmulh_lane_2s(<2 x i32>* %A, <2 x i32>* %B) nounwind {



  %tmp1 = load <2 x i32>, <2 x i32>* %A
  %tmp2 = load <2 x i32>, <2 x i32>* %B
  %tmp3 = shufflevector <2 x i32> %tmp2, <2 x i32> %tmp2, <2 x i32> <i32 1, i32 1>
  %tmp4 = call <2 x i32> @llvm.aarch64.neon.sqdmulh.v2i32(<2 x i32> %tmp1, <2 x i32> %tmp3)
  ret <2 x i32> %tmp4
}

define <4 x i32> @sqdmulh_lane_4s(<4 x i32>* %A, <4 x i32>* %B) nounwind {



  %tmp1 = load <4 x i32>, <4 x i32>* %A
  %tmp2 = load <4 x i32>, <4 x i32>* %B
  %tmp3 = shufflevector <4 x i32> %tmp2, <4 x i32> %tmp2, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %tmp4 = call <4 x i32> @llvm.aarch64.neon.sqdmulh.v4i32(<4 x i32> %tmp1, <4 x i32> %tmp3)
  ret <4 x i32> %tmp4
}

define i32 @sqdmulh_lane_1s(i32 %A, <4 x i32> %B) nounwind {



  %tmp1 = extractelement <4 x i32> %B, i32 1
  %tmp2 = call i32 @llvm.aarch64.neon.sqdmulh.i32(i32 %A, i32 %tmp1)
  ret i32 %tmp2
}

define <4 x i16> @sqrdmulh_lane_4h(<4 x i16>* %A, <4 x i16>* %B) nounwind {



  %tmp1 = load <4 x i16>, <4 x i16>* %A
  %tmp2 = load <4 x i16>, <4 x i16>* %B
  %tmp3 = shufflevector <4 x i16> %tmp2, <4 x i16> %tmp2, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %tmp4 = call <4 x i16> @llvm.aarch64.neon.sqrdmulh.v4i16(<4 x i16> %tmp1, <4 x i16> %tmp3)
  ret <4 x i16> %tmp4
}

define <8 x i16> @sqrdmulh_lane_8h(<8 x i16>* %A, <8 x i16>* %B) nounwind {



  %tmp1 = load <8 x i16>, <8 x i16>* %A
  %tmp2 = load <8 x i16>, <8 x i16>* %B
  %tmp3 = shufflevector <8 x i16> %tmp2, <8 x i16> %tmp2, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %tmp4 = call <8 x i16> @llvm.aarch64.neon.sqrdmulh.v8i16(<8 x i16> %tmp1, <8 x i16> %tmp3)
  ret <8 x i16> %tmp4
}

define <2 x i32> @sqrdmulh_lane_2s(<2 x i32>* %A, <2 x i32>* %B) nounwind {



  %tmp1 = load <2 x i32>, <2 x i32>* %A
  %tmp2 = load <2 x i32>, <2 x i32>* %B
  %tmp3 = shufflevector <2 x i32> %tmp2, <2 x i32> %tmp2, <2 x i32> <i32 1, i32 1>
  %tmp4 = call <2 x i32> @llvm.aarch64.neon.sqrdmulh.v2i32(<2 x i32> %tmp1, <2 x i32> %tmp3)
  ret <2 x i32> %tmp4
}

define <4 x i32> @sqrdmulh_lane_4s(<4 x i32>* %A, <4 x i32>* %B) nounwind {



  %tmp1 = load <4 x i32>, <4 x i32>* %A
  %tmp2 = load <4 x i32>, <4 x i32>* %B
  %tmp3 = shufflevector <4 x i32> %tmp2, <4 x i32> %tmp2, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %tmp4 = call <4 x i32> @llvm.aarch64.neon.sqrdmulh.v4i32(<4 x i32> %tmp1, <4 x i32> %tmp3)
  ret <4 x i32> %tmp4
}

define i32 @sqrdmulh_lane_1s(i32 %A, <4 x i32> %B) nounwind {



  %tmp1 = extractelement <4 x i32> %B, i32 1
  %tmp2 = call i32 @llvm.aarch64.neon.sqrdmulh.i32(i32 %A, i32 %tmp1)
  ret i32 %tmp2
}

define <4 x i32> @sqdmull_lane_4s(<4 x i16>* %A, <4 x i16>* %B) nounwind {



  %tmp1 = load <4 x i16>, <4 x i16>* %A
  %tmp2 = load <4 x i16>, <4 x i16>* %B
  %tmp3 = shufflevector <4 x i16> %tmp2, <4 x i16> %tmp2, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %tmp4 = call <4 x i32> @llvm.aarch64.neon.sqdmull.v4i32(<4 x i16> %tmp1, <4 x i16> %tmp3)
  ret <4 x i32> %tmp4
}

define <2 x i64> @sqdmull_lane_2d(<2 x i32>* %A, <2 x i32>* %B) nounwind {



  %tmp1 = load <2 x i32>, <2 x i32>* %A
  %tmp2 = load <2 x i32>, <2 x i32>* %B
  %tmp3 = shufflevector <2 x i32> %tmp2, <2 x i32> %tmp2, <2 x i32> <i32 1, i32 1>
  %tmp4 = call <2 x i64> @llvm.aarch64.neon.sqdmull.v2i64(<2 x i32> %tmp1, <2 x i32> %tmp3)
  ret <2 x i64> %tmp4
}

define <4 x i32> @sqdmull2_lane_4s(<8 x i16>* %A, <8 x i16>* %B) nounwind {



  %load1 = load <8 x i16>, <8 x i16>* %A
  %load2 = load <8 x i16>, <8 x i16>* %B
  %tmp1 = shufflevector <8 x i16> %load1, <8 x i16> undef, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %tmp2 = shufflevector <8 x i16> %load2, <8 x i16> undef, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %tmp4 = call <4 x i32> @llvm.aarch64.neon.sqdmull.v4i32(<4 x i16> %tmp1, <4 x i16> %tmp2)
  ret <4 x i32> %tmp4
}

define <2 x i64> @sqdmull2_lane_2d(<4 x i32>* %A, <4 x i32>* %B) nounwind {



  %load1 = load <4 x i32>, <4 x i32>* %A
  %load2 = load <4 x i32>, <4 x i32>* %B
  %tmp1 = shufflevector <4 x i32> %load1, <4 x i32> undef, <2 x i32> <i32 2, i32 3>
  %tmp2 = shufflevector <4 x i32> %load2, <4 x i32> undef, <2 x i32> <i32 1, i32 1>
  %tmp4 = call <2 x i64> @llvm.aarch64.neon.sqdmull.v2i64(<2 x i32> %tmp1, <2 x i32> %tmp2)
  ret <2 x i64> %tmp4
}

define <4 x i32> @umull_lane_4s(<4 x i16>* %A, <4 x i16>* %B) nounwind {



  %tmp1 = load <4 x i16>, <4 x i16>* %A
  %tmp2 = load <4 x i16>, <4 x i16>* %B
  %tmp3 = shufflevector <4 x i16> %tmp2, <4 x i16> %tmp2, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %tmp4 = call <4 x i32> @llvm.aarch64.neon.umull.v4i32(<4 x i16> %tmp1, <4 x i16> %tmp3)
  ret <4 x i32> %tmp4
}

define <2 x i64> @umull_lane_2d(<2 x i32>* %A, <2 x i32>* %B) nounwind {



  %tmp1 = load <2 x i32>, <2 x i32>* %A
  %tmp2 = load <2 x i32>, <2 x i32>* %B
  %tmp3 = shufflevector <2 x i32> %tmp2, <2 x i32> %tmp2, <2 x i32> <i32 1, i32 1>
  %tmp4 = call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %tmp1, <2 x i32> %tmp3)
  ret <2 x i64> %tmp4
}

define <4 x i32> @smull_lane_4s(<4 x i16>* %A, <4 x i16>* %B) nounwind {



  %tmp1 = load <4 x i16>, <4 x i16>* %A
  %tmp2 = load <4 x i16>, <4 x i16>* %B
  %tmp3 = shufflevector <4 x i16> %tmp2, <4 x i16> %tmp2, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %tmp4 = call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %tmp1, <4 x i16> %tmp3)
  ret <4 x i32> %tmp4
}

define <2 x i64> @smull_lane_2d(<2 x i32>* %A, <2 x i32>* %B) nounwind {



  %tmp1 = load <2 x i32>, <2 x i32>* %A
  %tmp2 = load <2 x i32>, <2 x i32>* %B
  %tmp3 = shufflevector <2 x i32> %tmp2, <2 x i32> %tmp2, <2 x i32> <i32 1, i32 1>
  %tmp4 = call <2 x i64> @llvm.aarch64.neon.smull.v2i64(<2 x i32> %tmp1, <2 x i32> %tmp3)
  ret <2 x i64> %tmp4
}

define <4 x i32> @smlal_lane_4s(<4 x i16>* %A, <4 x i16>* %B, <4 x i32>* %C) nounwind {



  %tmp1 = load <4 x i16>, <4 x i16>* %A
  %tmp2 = load <4 x i16>, <4 x i16>* %B
  %tmp3 = load <4 x i32>, <4 x i32>* %C
  %tmp4 = shufflevector <4 x i16> %tmp2, <4 x i16> %tmp2, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %tmp5 = call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %tmp1, <4 x i16> %tmp4)
  %tmp6 = add <4 x i32> %tmp3, %tmp5
  ret <4 x i32> %tmp6
}

define <2 x i64> @smlal_lane_2d(<2 x i32>* %A, <2 x i32>* %B, <2 x i64>* %C) nounwind {



  %tmp1 = load <2 x i32>, <2 x i32>* %A
  %tmp2 = load <2 x i32>, <2 x i32>* %B
  %tmp3 = load <2 x i64>, <2 x i64>* %C
  %tmp4 = shufflevector <2 x i32> %tmp2, <2 x i32> %tmp2, <2 x i32> <i32 1, i32 1>
  %tmp5 = call <2 x i64> @llvm.aarch64.neon.smull.v2i64(<2 x i32> %tmp1, <2 x i32> %tmp4)
  %tmp6 = add <2 x i64> %tmp3, %tmp5
  ret <2 x i64> %tmp6
}

define <4 x i32> @sqdmlal_lane_4s(<4 x i16>* %A, <4 x i16>* %B, <4 x i32>* %C) nounwind {



  %tmp1 = load <4 x i16>, <4 x i16>* %A
  %tmp2 = load <4 x i16>, <4 x i16>* %B
  %tmp3 = load <4 x i32>, <4 x i32>* %C
  %tmp4 = shufflevector <4 x i16> %tmp2, <4 x i16> %tmp2, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %tmp5 = call <4 x i32> @llvm.aarch64.neon.sqdmull.v4i32(<4 x i16> %tmp1, <4 x i16> %tmp4)
  %tmp6 = call <4 x i32> @llvm.aarch64.neon.sqadd.v4i32(<4 x i32> %tmp3, <4 x i32> %tmp5)
  ret <4 x i32> %tmp6
}

define <2 x i64> @sqdmlal_lane_2d(<2 x i32>* %A, <2 x i32>* %B, <2 x i64>* %C) nounwind {



  %tmp1 = load <2 x i32>, <2 x i32>* %A
  %tmp2 = load <2 x i32>, <2 x i32>* %B
  %tmp3 = load <2 x i64>, <2 x i64>* %C
  %tmp4 = shufflevector <2 x i32> %tmp2, <2 x i32> %tmp2, <2 x i32> <i32 1, i32 1>
  %tmp5 = call <2 x i64> @llvm.aarch64.neon.sqdmull.v2i64(<2 x i32> %tmp1, <2 x i32> %tmp4)
  %tmp6 = call <2 x i64> @llvm.aarch64.neon.sqadd.v2i64(<2 x i64> %tmp3, <2 x i64> %tmp5)
  ret <2 x i64> %tmp6
}

define <4 x i32> @sqdmlal2_lane_4s(<8 x i16>* %A, <8 x i16>* %B, <4 x i32>* %C) nounwind {



  %load1 = load <8 x i16>, <8 x i16>* %A
  %load2 = load <8 x i16>, <8 x i16>* %B
  %tmp3 = load <4 x i32>, <4 x i32>* %C
  %tmp1 = shufflevector <8 x i16> %load1, <8 x i16> undef, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %tmp2 = shufflevector <8 x i16> %load2, <8 x i16> undef, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %tmp5 = call <4 x i32> @llvm.aarch64.neon.sqdmull.v4i32(<4 x i16> %tmp1, <4 x i16> %tmp2)
  %tmp6 = call <4 x i32> @llvm.aarch64.neon.sqadd.v4i32(<4 x i32> %tmp3, <4 x i32> %tmp5)
  ret <4 x i32> %tmp6
}

define <2 x i64> @sqdmlal2_lane_2d(<4 x i32>* %A, <4 x i32>* %B, <2 x i64>* %C) nounwind {



  %load1 = load <4 x i32>, <4 x i32>* %A
  %load2 = load <4 x i32>, <4 x i32>* %B
  %tmp3 = load <2 x i64>, <2 x i64>* %C
  %tmp1 = shufflevector <4 x i32> %load1, <4 x i32> undef, <2 x i32> <i32 2, i32 3>
  %tmp2 = shufflevector <4 x i32> %load2, <4 x i32> undef, <2 x i32> <i32 1, i32 1>
  %tmp5 = call <2 x i64> @llvm.aarch64.neon.sqdmull.v2i64(<2 x i32> %tmp1, <2 x i32> %tmp2)
  %tmp6 = call <2 x i64> @llvm.aarch64.neon.sqadd.v2i64(<2 x i64> %tmp3, <2 x i64> %tmp5)
  ret <2 x i64> %tmp6
}

define i32 @sqdmlal_lane_1s(i32 %A, i16 %B, <4 x i16> %C) nounwind {


  %lhs = insertelement <4 x i16> undef, i16 %B, i32 0
  %rhs = shufflevector <4 x i16> %C, <4 x i16> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %prod.vec = call <4 x i32> @llvm.aarch64.neon.sqdmull.v4i32(<4 x i16> %lhs, <4 x i16> %rhs)
  %prod = extractelement <4 x i32> %prod.vec, i32 0
  %res = call i32 @llvm.aarch64.neon.sqadd.i32(i32 %A, i32 %prod)
  ret i32 %res
}
declare i32 @llvm.aarch64.neon.sqadd.i32(i32, i32)

define i32 @sqdmlsl_lane_1s(i32 %A, i16 %B, <4 x i16> %C) nounwind {


  %lhs = insertelement <4 x i16> undef, i16 %B, i32 0
  %rhs = shufflevector <4 x i16> %C, <4 x i16> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %prod.vec = call <4 x i32> @llvm.aarch64.neon.sqdmull.v4i32(<4 x i16> %lhs, <4 x i16> %rhs)
  %prod = extractelement <4 x i32> %prod.vec, i32 0
  %res = call i32 @llvm.aarch64.neon.sqsub.i32(i32 %A, i32 %prod)
  ret i32 %res
}
declare i32 @llvm.aarch64.neon.sqsub.i32(i32, i32)

define i64 @sqdmlal_lane_1d(i64 %A, i32 %B, <2 x i32> %C) nounwind {


  %rhs = extractelement <2 x i32> %C, i32 1
  %prod = call i64 @llvm.aarch64.neon.sqdmulls.scalar(i32 %B, i32 %rhs)
  %res = call i64 @llvm.aarch64.neon.sqadd.i64(i64 %A, i64 %prod)
  ret i64 %res
}
declare i64 @llvm.aarch64.neon.sqdmulls.scalar(i32, i32)
declare i64 @llvm.aarch64.neon.sqadd.i64(i64, i64)

define i64 @sqdmlsl_lane_1d(i64 %A, i32 %B, <2 x i32> %C) nounwind {


  %rhs = extractelement <2 x i32> %C, i32 1
  %prod = call i64 @llvm.aarch64.neon.sqdmulls.scalar(i32 %B, i32 %rhs)
  %res = call i64 @llvm.aarch64.neon.sqsub.i64(i64 %A, i64 %prod)
  ret i64 %res
}
declare i64 @llvm.aarch64.neon.sqsub.i64(i64, i64)


define <4 x i32> @umlal_lane_4s(<4 x i16>* %A, <4 x i16>* %B, <4 x i32>* %C) nounwind {



  %tmp1 = load <4 x i16>, <4 x i16>* %A
  %tmp2 = load <4 x i16>, <4 x i16>* %B
  %tmp3 = load <4 x i32>, <4 x i32>* %C
  %tmp4 = shufflevector <4 x i16> %tmp2, <4 x i16> %tmp2, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %tmp5 = call <4 x i32> @llvm.aarch64.neon.umull.v4i32(<4 x i16> %tmp1, <4 x i16> %tmp4)
  %tmp6 = add <4 x i32> %tmp3, %tmp5
  ret <4 x i32> %tmp6
}

define <2 x i64> @umlal_lane_2d(<2 x i32>* %A, <2 x i32>* %B, <2 x i64>* %C) nounwind {



  %tmp1 = load <2 x i32>, <2 x i32>* %A
  %tmp2 = load <2 x i32>, <2 x i32>* %B
  %tmp3 = load <2 x i64>, <2 x i64>* %C
  %tmp4 = shufflevector <2 x i32> %tmp2, <2 x i32> %tmp2, <2 x i32> <i32 1, i32 1>
  %tmp5 = call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %tmp1, <2 x i32> %tmp4)
  %tmp6 = add <2 x i64> %tmp3, %tmp5
  ret <2 x i64> %tmp6
}


define <4 x i32> @smlsl_lane_4s(<4 x i16>* %A, <4 x i16>* %B, <4 x i32>* %C) nounwind {



  %tmp1 = load <4 x i16>, <4 x i16>* %A
  %tmp2 = load <4 x i16>, <4 x i16>* %B
  %tmp3 = load <4 x i32>, <4 x i32>* %C
  %tmp4 = shufflevector <4 x i16> %tmp2, <4 x i16> %tmp2, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %tmp5 = call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %tmp1, <4 x i16> %tmp4)
  %tmp6 = sub <4 x i32> %tmp3, %tmp5
  ret <4 x i32> %tmp6
}

define <2 x i64> @smlsl_lane_2d(<2 x i32>* %A, <2 x i32>* %B, <2 x i64>* %C) nounwind {



  %tmp1 = load <2 x i32>, <2 x i32>* %A
  %tmp2 = load <2 x i32>, <2 x i32>* %B
  %tmp3 = load <2 x i64>, <2 x i64>* %C
  %tmp4 = shufflevector <2 x i32> %tmp2, <2 x i32> %tmp2, <2 x i32> <i32 1, i32 1>
  %tmp5 = call <2 x i64> @llvm.aarch64.neon.smull.v2i64(<2 x i32> %tmp1, <2 x i32> %tmp4)
  %tmp6 = sub <2 x i64> %tmp3, %tmp5
  ret <2 x i64> %tmp6
}

define <4 x i32> @sqdmlsl_lane_4s(<4 x i16>* %A, <4 x i16>* %B, <4 x i32>* %C) nounwind {



  %tmp1 = load <4 x i16>, <4 x i16>* %A
  %tmp2 = load <4 x i16>, <4 x i16>* %B
  %tmp3 = load <4 x i32>, <4 x i32>* %C
  %tmp4 = shufflevector <4 x i16> %tmp2, <4 x i16> %tmp2, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %tmp5 = call <4 x i32> @llvm.aarch64.neon.sqdmull.v4i32(<4 x i16> %tmp1, <4 x i16> %tmp4)
  %tmp6 = call <4 x i32> @llvm.aarch64.neon.sqsub.v4i32(<4 x i32> %tmp3, <4 x i32> %tmp5)
  ret <4 x i32> %tmp6
}

define <2 x i64> @sqdmlsl_lane_2d(<2 x i32>* %A, <2 x i32>* %B, <2 x i64>* %C) nounwind {



  %tmp1 = load <2 x i32>, <2 x i32>* %A
  %tmp2 = load <2 x i32>, <2 x i32>* %B
  %tmp3 = load <2 x i64>, <2 x i64>* %C
  %tmp4 = shufflevector <2 x i32> %tmp2, <2 x i32> %tmp2, <2 x i32> <i32 1, i32 1>
  %tmp5 = call <2 x i64> @llvm.aarch64.neon.sqdmull.v2i64(<2 x i32> %tmp1, <2 x i32> %tmp4)
  %tmp6 = call <2 x i64> @llvm.aarch64.neon.sqsub.v2i64(<2 x i64> %tmp3, <2 x i64> %tmp5)
  ret <2 x i64> %tmp6
}

define <4 x i32> @sqdmlsl2_lane_4s(<8 x i16>* %A, <8 x i16>* %B, <4 x i32>* %C) nounwind {



  %load1 = load <8 x i16>, <8 x i16>* %A
  %load2 = load <8 x i16>, <8 x i16>* %B
  %tmp3 = load <4 x i32>, <4 x i32>* %C
  %tmp1 = shufflevector <8 x i16> %load1, <8 x i16> undef, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %tmp2 = shufflevector <8 x i16> %load2, <8 x i16> undef, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %tmp5 = call <4 x i32> @llvm.aarch64.neon.sqdmull.v4i32(<4 x i16> %tmp1, <4 x i16> %tmp2)
  %tmp6 = call <4 x i32> @llvm.aarch64.neon.sqsub.v4i32(<4 x i32> %tmp3, <4 x i32> %tmp5)
  ret <4 x i32> %tmp6
}

define <2 x i64> @sqdmlsl2_lane_2d(<4 x i32>* %A, <4 x i32>* %B, <2 x i64>* %C) nounwind {



  %load1 = load <4 x i32>, <4 x i32>* %A
  %load2 = load <4 x i32>, <4 x i32>* %B
  %tmp3 = load <2 x i64>, <2 x i64>* %C
  %tmp1 = shufflevector <4 x i32> %load1, <4 x i32> undef, <2 x i32> <i32 2, i32 3>
  %tmp2 = shufflevector <4 x i32> %load2, <4 x i32> undef, <2 x i32> <i32 1, i32 1>
  %tmp5 = call <2 x i64> @llvm.aarch64.neon.sqdmull.v2i64(<2 x i32> %tmp1, <2 x i32> %tmp2)
  %tmp6 = call <2 x i64> @llvm.aarch64.neon.sqsub.v2i64(<2 x i64> %tmp3, <2 x i64> %tmp5)
  ret <2 x i64> %tmp6
}

define <4 x i32> @umlsl_lane_4s(<4 x i16>* %A, <4 x i16>* %B, <4 x i32>* %C) nounwind {



  %tmp1 = load <4 x i16>, <4 x i16>* %A
  %tmp2 = load <4 x i16>, <4 x i16>* %B
  %tmp3 = load <4 x i32>, <4 x i32>* %C
  %tmp4 = shufflevector <4 x i16> %tmp2, <4 x i16> %tmp2, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %tmp5 = call <4 x i32> @llvm.aarch64.neon.umull.v4i32(<4 x i16> %tmp1, <4 x i16> %tmp4)
  %tmp6 = sub <4 x i32> %tmp3, %tmp5
  ret <4 x i32> %tmp6
}

define <2 x i64> @umlsl_lane_2d(<2 x i32>* %A, <2 x i32>* %B, <2 x i64>* %C) nounwind {



  %tmp1 = load <2 x i32>, <2 x i32>* %A
  %tmp2 = load <2 x i32>, <2 x i32>* %B
  %tmp3 = load <2 x i64>, <2 x i64>* %C
  %tmp4 = shufflevector <2 x i32> %tmp2, <2 x i32> %tmp2, <2 x i32> <i32 1, i32 1>
  %tmp5 = call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %tmp1, <2 x i32> %tmp4)
  %tmp6 = sub <2 x i64> %tmp3, %tmp5
  ret <2 x i64> %tmp6
}


define float @fmulxs(float %a, float %b) nounwind {


  %fmulx.i = tail call float @llvm.aarch64.neon.fmulx.f32(float %a, float %b) nounwind

  ret float %fmulx.i
}

define double @fmulxd(double %a, double %b) nounwind {


  %fmulx.i = tail call double @llvm.aarch64.neon.fmulx.f64(double %a, double %b) nounwind

  ret double %fmulx.i
}

define float @fmulxs_lane(float %a, <4 x float> %vec) nounwind {


  %b = extractelement <4 x float> %vec, i32 3
  %fmulx.i = tail call float @llvm.aarch64.neon.fmulx.f32(float %a, float %b) nounwind

  ret float %fmulx.i
}

define double @fmulxd_lane(double %a, <2 x double> %vec) nounwind {


  %b = extractelement <2 x double> %vec, i32 1
  %fmulx.i = tail call double @llvm.aarch64.neon.fmulx.f64(double %a, double %b) nounwind

  ret double %fmulx.i
}

declare double @llvm.aarch64.neon.fmulx.f64(double, double) nounwind readnone
declare float @llvm.aarch64.neon.fmulx.f32(float, float) nounwind readnone


define <8 x i16> @smull2_8h_simple(<16 x i8> %a, <16 x i8> %b) nounwind {



  %1 = shufflevector <16 x i8> %a, <16 x i8> undef, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %2 = shufflevector <16 x i8> %b, <16 x i8> undef, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %3 = tail call <8 x i16> @llvm.aarch64.neon.smull.v8i16(<8 x i8> %1, <8 x i8> %2) #2
  ret <8 x i16> %3
}

define <8 x i16> @foo0(<16 x i8> %a, <16 x i8> %b) nounwind {


  %tmp = bitcast <16 x i8> %a to <2 x i64>
  %shuffle.i.i = shufflevector <2 x i64> %tmp, <2 x i64> undef, <1 x i32> <i32 1>
  %tmp1 = bitcast <1 x i64> %shuffle.i.i to <8 x i8>
  %tmp2 = bitcast <16 x i8> %b to <2 x i64>
  %shuffle.i3.i = shufflevector <2 x i64> %tmp2, <2 x i64> undef, <1 x i32> <i32 1>
  %tmp3 = bitcast <1 x i64> %shuffle.i3.i to <8 x i8>
  %vmull.i.i = tail call <8 x i16> @llvm.aarch64.neon.smull.v8i16(<8 x i8> %tmp1, <8 x i8> %tmp3) nounwind
  ret <8 x i16> %vmull.i.i
}

define <4 x i32> @foo1(<8 x i16> %a, <8 x i16> %b) nounwind {


  %tmp = bitcast <8 x i16> %a to <2 x i64>
  %shuffle.i.i = shufflevector <2 x i64> %tmp, <2 x i64> undef, <1 x i32> <i32 1>
  %tmp1 = bitcast <1 x i64> %shuffle.i.i to <4 x i16>
  %tmp2 = bitcast <8 x i16> %b to <2 x i64>
  %shuffle.i3.i = shufflevector <2 x i64> %tmp2, <2 x i64> undef, <1 x i32> <i32 1>
  %tmp3 = bitcast <1 x i64> %shuffle.i3.i to <4 x i16>
  %vmull2.i.i = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %tmp1, <4 x i16> %tmp3) nounwind
  ret <4 x i32> %vmull2.i.i
}

define <2 x i64> @foo2(<4 x i32> %a, <4 x i32> %b) nounwind {


  %tmp = bitcast <4 x i32> %a to <2 x i64>
  %shuffle.i.i = shufflevector <2 x i64> %tmp, <2 x i64> undef, <1 x i32> <i32 1>
  %tmp1 = bitcast <1 x i64> %shuffle.i.i to <2 x i32>
  %tmp2 = bitcast <4 x i32> %b to <2 x i64>
  %shuffle.i3.i = shufflevector <2 x i64> %tmp2, <2 x i64> undef, <1 x i32> <i32 1>
  %tmp3 = bitcast <1 x i64> %shuffle.i3.i to <2 x i32>
  %vmull2.i.i = tail call <2 x i64> @llvm.aarch64.neon.smull.v2i64(<2 x i32> %tmp1, <2 x i32> %tmp3) nounwind
  ret <2 x i64> %vmull2.i.i
}

define <8 x i16> @foo3(<16 x i8> %a, <16 x i8> %b) nounwind {


  %tmp = bitcast <16 x i8> %a to <2 x i64>
  %shuffle.i.i = shufflevector <2 x i64> %tmp, <2 x i64> undef, <1 x i32> <i32 1>
  %tmp1 = bitcast <1 x i64> %shuffle.i.i to <8 x i8>
  %tmp2 = bitcast <16 x i8> %b to <2 x i64>
  %shuffle.i3.i = shufflevector <2 x i64> %tmp2, <2 x i64> undef, <1 x i32> <i32 1>
  %tmp3 = bitcast <1 x i64> %shuffle.i3.i to <8 x i8>
  %vmull.i.i = tail call <8 x i16> @llvm.aarch64.neon.umull.v8i16(<8 x i8> %tmp1, <8 x i8> %tmp3) nounwind
  ret <8 x i16> %vmull.i.i
}

define <4 x i32> @foo4(<8 x i16> %a, <8 x i16> %b) nounwind {


  %tmp = bitcast <8 x i16> %a to <2 x i64>
  %shuffle.i.i = shufflevector <2 x i64> %tmp, <2 x i64> undef, <1 x i32> <i32 1>
  %tmp1 = bitcast <1 x i64> %shuffle.i.i to <4 x i16>
  %tmp2 = bitcast <8 x i16> %b to <2 x i64>
  %shuffle.i3.i = shufflevector <2 x i64> %tmp2, <2 x i64> undef, <1 x i32> <i32 1>
  %tmp3 = bitcast <1 x i64> %shuffle.i3.i to <4 x i16>
  %vmull2.i.i = tail call <4 x i32> @llvm.aarch64.neon.umull.v4i32(<4 x i16> %tmp1, <4 x i16> %tmp3) nounwind
  ret <4 x i32> %vmull2.i.i
}

define <2 x i64> @foo5(<4 x i32> %a, <4 x i32> %b) nounwind {


  %tmp = bitcast <4 x i32> %a to <2 x i64>
  %shuffle.i.i = shufflevector <2 x i64> %tmp, <2 x i64> undef, <1 x i32> <i32 1>
  %tmp1 = bitcast <1 x i64> %shuffle.i.i to <2 x i32>
  %tmp2 = bitcast <4 x i32> %b to <2 x i64>
  %shuffle.i3.i = shufflevector <2 x i64> %tmp2, <2 x i64> undef, <1 x i32> <i32 1>
  %tmp3 = bitcast <1 x i64> %shuffle.i3.i to <2 x i32>
  %vmull2.i.i = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %tmp1, <2 x i32> %tmp3) nounwind
  ret <2 x i64> %vmull2.i.i
}

define <4 x i32> @foo6(<4 x i32> %a, <8 x i16> %b, <4 x i16> %c) nounwind readnone optsize ssp {



entry:
  %0 = bitcast <8 x i16> %b to <2 x i64>
  %shuffle.i = shufflevector <2 x i64> %0, <2 x i64> undef, <1 x i32> <i32 1>
  %1 = bitcast <1 x i64> %shuffle.i to <4 x i16>
  %shuffle = shufflevector <4 x i16> %c, <4 x i16> undef, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %vmull2.i = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %1, <4 x i16> %shuffle) nounwind
  ret <4 x i32> %vmull2.i
}

define <2 x i64> @foo7(<2 x i64> %a, <4 x i32> %b, <2 x i32> %c) nounwind readnone optsize ssp {



entry:
  %0 = bitcast <4 x i32> %b to <2 x i64>
  %shuffle.i = shufflevector <2 x i64> %0, <2 x i64> undef, <1 x i32> <i32 1>
  %1 = bitcast <1 x i64> %shuffle.i to <2 x i32>
  %shuffle = shufflevector <2 x i32> %c, <2 x i32> undef, <2 x i32> <i32 1, i32 1>
  %vmull2.i = tail call <2 x i64> @llvm.aarch64.neon.smull.v2i64(<2 x i32> %1, <2 x i32> %shuffle) nounwind
  ret <2 x i64> %vmull2.i
}

define <4 x i32> @foo8(<4 x i32> %a, <8 x i16> %b, <4 x i16> %c) nounwind readnone optsize ssp {



entry:
  %0 = bitcast <8 x i16> %b to <2 x i64>
  %shuffle.i = shufflevector <2 x i64> %0, <2 x i64> undef, <1 x i32> <i32 1>
  %1 = bitcast <1 x i64> %shuffle.i to <4 x i16>
  %shuffle = shufflevector <4 x i16> %c, <4 x i16> undef, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %vmull2.i = tail call <4 x i32> @llvm.aarch64.neon.umull.v4i32(<4 x i16> %1, <4 x i16> %shuffle) nounwind
  ret <4 x i32> %vmull2.i
}

define <2 x i64> @foo9(<2 x i64> %a, <4 x i32> %b, <2 x i32> %c) nounwind readnone optsize ssp {



entry:
  %0 = bitcast <4 x i32> %b to <2 x i64>
  %shuffle.i = shufflevector <2 x i64> %0, <2 x i64> undef, <1 x i32> <i32 1>
  %1 = bitcast <1 x i64> %shuffle.i to <2 x i32>
  %shuffle = shufflevector <2 x i32> %c, <2 x i32> undef, <2 x i32> <i32 1, i32 1>
  %vmull2.i = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %1, <2 x i32> %shuffle) nounwind
  ret <2 x i64> %vmull2.i
}

define <8 x i16> @bar0(<8 x i16> %a, <16 x i8> %b, <16 x i8> %c) nounwind {




  %tmp = bitcast <16 x i8> %b to <2 x i64>
  %shuffle.i.i.i = shufflevector <2 x i64> %tmp, <2 x i64> undef, <1 x i32> <i32 1>
  %tmp1 = bitcast <1 x i64> %shuffle.i.i.i to <8 x i8>
  %tmp2 = bitcast <16 x i8> %c to <2 x i64>
  %shuffle.i3.i.i = shufflevector <2 x i64> %tmp2, <2 x i64> undef, <1 x i32> <i32 1>
  %tmp3 = bitcast <1 x i64> %shuffle.i3.i.i to <8 x i8>
  %vmull.i.i.i = tail call <8 x i16> @llvm.aarch64.neon.smull.v8i16(<8 x i8> %tmp1, <8 x i8> %tmp3) nounwind
  %add.i = add <8 x i16> %vmull.i.i.i, %a
  ret <8 x i16> %add.i
}

define <4 x i32> @bar1(<4 x i32> %a, <8 x i16> %b, <8 x i16> %c) nounwind {




  %tmp = bitcast <8 x i16> %b to <2 x i64>
  %shuffle.i.i.i = shufflevector <2 x i64> %tmp, <2 x i64> undef, <1 x i32> <i32 1>
  %tmp1 = bitcast <1 x i64> %shuffle.i.i.i to <4 x i16>
  %tmp2 = bitcast <8 x i16> %c to <2 x i64>
  %shuffle.i3.i.i = shufflevector <2 x i64> %tmp2, <2 x i64> undef, <1 x i32> <i32 1>
  %tmp3 = bitcast <1 x i64> %shuffle.i3.i.i to <4 x i16>
  %vmull2.i.i.i = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %tmp1, <4 x i16> %tmp3) nounwind
  %add.i = add <4 x i32> %vmull2.i.i.i, %a
  ret <4 x i32> %add.i
}

define <2 x i64> @bar2(<2 x i64> %a, <4 x i32> %b, <4 x i32> %c) nounwind {




  %tmp = bitcast <4 x i32> %b to <2 x i64>
  %shuffle.i.i.i = shufflevector <2 x i64> %tmp, <2 x i64> undef, <1 x i32> <i32 1>
  %tmp1 = bitcast <1 x i64> %shuffle.i.i.i to <2 x i32>
  %tmp2 = bitcast <4 x i32> %c to <2 x i64>
  %shuffle.i3.i.i = shufflevector <2 x i64> %tmp2, <2 x i64> undef, <1 x i32> <i32 1>
  %tmp3 = bitcast <1 x i64> %shuffle.i3.i.i to <2 x i32>
  %vmull2.i.i.i = tail call <2 x i64> @llvm.aarch64.neon.smull.v2i64(<2 x i32> %tmp1, <2 x i32> %tmp3) nounwind
  %add.i = add <2 x i64> %vmull2.i.i.i, %a
  ret <2 x i64> %add.i
}

define <8 x i16> @bar3(<8 x i16> %a, <16 x i8> %b, <16 x i8> %c) nounwind {




  %tmp = bitcast <16 x i8> %b to <2 x i64>
  %shuffle.i.i.i = shufflevector <2 x i64> %tmp, <2 x i64> undef, <1 x i32> <i32 1>
  %tmp1 = bitcast <1 x i64> %shuffle.i.i.i to <8 x i8>
  %tmp2 = bitcast <16 x i8> %c to <2 x i64>
  %shuffle.i3.i.i = shufflevector <2 x i64> %tmp2, <2 x i64> undef, <1 x i32> <i32 1>
  %tmp3 = bitcast <1 x i64> %shuffle.i3.i.i to <8 x i8>
  %vmull.i.i.i = tail call <8 x i16> @llvm.aarch64.neon.umull.v8i16(<8 x i8> %tmp1, <8 x i8> %tmp3) nounwind
  %add.i = add <8 x i16> %vmull.i.i.i, %a
  ret <8 x i16> %add.i
}

define <4 x i32> @bar4(<4 x i32> %a, <8 x i16> %b, <8 x i16> %c) nounwind {




  %tmp = bitcast <8 x i16> %b to <2 x i64>
  %shuffle.i.i.i = shufflevector <2 x i64> %tmp, <2 x i64> undef, <1 x i32> <i32 1>
  %tmp1 = bitcast <1 x i64> %shuffle.i.i.i to <4 x i16>
  %tmp2 = bitcast <8 x i16> %c to <2 x i64>
  %shuffle.i3.i.i = shufflevector <2 x i64> %tmp2, <2 x i64> undef, <1 x i32> <i32 1>
  %tmp3 = bitcast <1 x i64> %shuffle.i3.i.i to <4 x i16>
  %vmull2.i.i.i = tail call <4 x i32> @llvm.aarch64.neon.umull.v4i32(<4 x i16> %tmp1, <4 x i16> %tmp3) nounwind
  %add.i = add <4 x i32> %vmull2.i.i.i, %a
  ret <4 x i32> %add.i
}

define <2 x i64> @bar5(<2 x i64> %a, <4 x i32> %b, <4 x i32> %c) nounwind {




  %tmp = bitcast <4 x i32> %b to <2 x i64>
  %shuffle.i.i.i = shufflevector <2 x i64> %tmp, <2 x i64> undef, <1 x i32> <i32 1>
  %tmp1 = bitcast <1 x i64> %shuffle.i.i.i to <2 x i32>
  %tmp2 = bitcast <4 x i32> %c to <2 x i64>
  %shuffle.i3.i.i = shufflevector <2 x i64> %tmp2, <2 x i64> undef, <1 x i32> <i32 1>
  %tmp3 = bitcast <1 x i64> %shuffle.i3.i.i to <2 x i32>
  %vmull2.i.i.i = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %tmp1, <2 x i32> %tmp3) nounwind
  %add.i = add <2 x i64> %vmull2.i.i.i, %a
  ret <2 x i64> %add.i
}

define <4 x i32> @mlal2_1(<4 x i32> %a, <8 x i16> %b, <4 x i16> %c) nounwind {



  %shuffle = shufflevector <4 x i16> %c, <4 x i16> undef, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %tmp = bitcast <8 x i16> %b to <2 x i64>
  %shuffle.i.i = shufflevector <2 x i64> %tmp, <2 x i64> undef, <1 x i32> <i32 1>
  %tmp1 = bitcast <1 x i64> %shuffle.i.i to <4 x i16>
  %tmp2 = bitcast <8 x i16> %shuffle to <2 x i64>
  %shuffle.i3.i = shufflevector <2 x i64> %tmp2, <2 x i64> undef, <1 x i32> <i32 1>
  %tmp3 = bitcast <1 x i64> %shuffle.i3.i to <4 x i16>
  %vmull2.i.i = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %tmp1, <4 x i16> %tmp3) nounwind
  %add = add <4 x i32> %vmull2.i.i, %a
  ret <4 x i32> %add
}

define <2 x i64> @mlal2_2(<2 x i64> %a, <4 x i32> %b, <2 x i32> %c) nounwind {



  %shuffle = shufflevector <2 x i32> %c, <2 x i32> undef, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %tmp = bitcast <4 x i32> %b to <2 x i64>
  %shuffle.i.i = shufflevector <2 x i64> %tmp, <2 x i64> undef, <1 x i32> <i32 1>
  %tmp1 = bitcast <1 x i64> %shuffle.i.i to <2 x i32>
  %tmp2 = bitcast <4 x i32> %shuffle to <2 x i64>
  %shuffle.i3.i = shufflevector <2 x i64> %tmp2, <2 x i64> undef, <1 x i32> <i32 1>
  %tmp3 = bitcast <1 x i64> %shuffle.i3.i to <2 x i32>
  %vmull2.i.i = tail call <2 x i64> @llvm.aarch64.neon.smull.v2i64(<2 x i32> %tmp1, <2 x i32> %tmp3) nounwind
  %add = add <2 x i64> %vmull2.i.i, %a
  ret <2 x i64> %add
}

define <4 x i32> @mlal2_4(<4 x i32> %a, <8 x i16> %b, <4 x i16> %c) nounwind {




  %shuffle = shufflevector <4 x i16> %c, <4 x i16> undef, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %tmp = bitcast <8 x i16> %b to <2 x i64>
  %shuffle.i.i = shufflevector <2 x i64> %tmp, <2 x i64> undef, <1 x i32> <i32 1>
  %tmp1 = bitcast <1 x i64> %shuffle.i.i to <4 x i16>
  %tmp2 = bitcast <8 x i16> %shuffle to <2 x i64>
  %shuffle.i3.i = shufflevector <2 x i64> %tmp2, <2 x i64> undef, <1 x i32> <i32 1>
  %tmp3 = bitcast <1 x i64> %shuffle.i3.i to <4 x i16>
  %vmull2.i.i = tail call <4 x i32> @llvm.aarch64.neon.umull.v4i32(<4 x i16> %tmp1, <4 x i16> %tmp3) nounwind
  %add = add <4 x i32> %vmull2.i.i, %a
  ret <4 x i32> %add
}

define <2 x i64> @mlal2_5(<2 x i64> %a, <4 x i32> %b, <2 x i32> %c) nounwind {



  %shuffle = shufflevector <2 x i32> %c, <2 x i32> undef, <4 x i32> zeroinitializer
  %tmp = bitcast <4 x i32> %b to <2 x i64>
  %shuffle.i.i = shufflevector <2 x i64> %tmp, <2 x i64> undef, <1 x i32> <i32 1>
  %tmp1 = bitcast <1 x i64> %shuffle.i.i to <2 x i32>
  %tmp2 = bitcast <4 x i32> %shuffle to <2 x i64>
  %shuffle.i3.i = shufflevector <2 x i64> %tmp2, <2 x i64> undef, <1 x i32> <i32 1>
  %tmp3 = bitcast <1 x i64> %shuffle.i3.i to <2 x i32>
  %vmull2.i.i = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %tmp1, <2 x i32> %tmp3) nounwind
  %add = add <2 x i64> %vmull2.i.i, %a
  ret <2 x i64> %add
}


define <2 x double> @vmulq_n_f64(<2 x double> %x, double %y) nounwind readnone ssp {
entry:



  %vecinit.i = insertelement <2 x double> undef, double %y, i32 0
  %vecinit1.i = insertelement <2 x double> %vecinit.i, double %y, i32 1
  %mul.i = fmul <2 x double> %vecinit1.i, %x
  ret <2 x double> %mul.i
}

define <4 x float> @vmulq_n_f32(<4 x float> %x, float %y) nounwind readnone ssp {
entry:



  %vecinit.i = insertelement <4 x float> undef, float %y, i32 0
  %vecinit1.i = insertelement <4 x float> %vecinit.i, float %y, i32 1
  %vecinit2.i = insertelement <4 x float> %vecinit1.i, float %y, i32 2
  %vecinit3.i = insertelement <4 x float> %vecinit2.i, float %y, i32 3
  %mul.i = fmul <4 x float> %vecinit3.i, %x
  ret <4 x float> %mul.i
}

define <2 x float> @vmul_n_f32(<2 x float> %x, float %y) nounwind readnone ssp {
entry:



  %vecinit.i = insertelement <2 x float> undef, float %y, i32 0
  %vecinit1.i = insertelement <2 x float> %vecinit.i, float %y, i32 1
  %mul.i = fmul <2 x float> %vecinit1.i, %x
  ret <2 x float> %mul.i
}

define <4 x i16> @vmla_laneq_s16_test(<4 x i16> %a, <4 x i16> %b, <8 x i16> %c) nounwind readnone ssp {
entry:




  %shuffle = shufflevector <8 x i16> %c, <8 x i16> undef, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %mul = mul <4 x i16> %shuffle, %b
  %add = add <4 x i16> %mul, %a
  ret <4 x i16> %add
}

define <2 x i32> @vmla_laneq_s32_test(<2 x i32> %a, <2 x i32> %b, <4 x i32> %c) nounwind readnone ssp {
entry:




  %shuffle = shufflevector <4 x i32> %c, <4 x i32> undef, <2 x i32> <i32 3, i32 3>
  %mul = mul <2 x i32> %shuffle, %b
  %add = add <2 x i32> %mul, %a
  ret <2 x i32> %add
}

define <8 x i16> @not_really_vmlaq_laneq_s16_test(<8 x i16> %a, <8 x i16> %b, <8 x i16> %c) nounwind readnone ssp {
entry:




  %shuffle1 = shufflevector <8 x i16> %c, <8 x i16> undef, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %shuffle2 = shufflevector <4 x i16> %shuffle1, <4 x i16> undef, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %mul = mul <8 x i16> %shuffle2, %b
  %add = add <8 x i16> %mul, %a
  ret <8 x i16> %add
}

define <4 x i32> @not_really_vmlaq_laneq_s32_test(<4 x i32> %a, <4 x i32> %b, <4 x i32> %c) nounwind readnone ssp {
entry:




  %shuffle1 = shufflevector <4 x i32> %c, <4 x i32> undef, <2 x i32> <i32 2, i32 3>
  %shuffle2 = shufflevector <2 x i32> %shuffle1, <2 x i32> undef, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %mul = mul <4 x i32> %shuffle2, %b
  %add = add <4 x i32> %mul, %a
  ret <4 x i32> %add
}

define <4 x i32> @vmull_laneq_s16_test(<4 x i16> %a, <8 x i16> %b) nounwind readnone ssp {
entry:




  %shuffle = shufflevector <8 x i16> %b, <8 x i16> undef, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %vmull2.i = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %a, <4 x i16> %shuffle) #2
  ret <4 x i32> %vmull2.i
}

define <2 x i64> @vmull_laneq_s32_test(<2 x i32> %a, <4 x i32> %b) nounwind readnone ssp {
entry:




  %shuffle = shufflevector <4 x i32> %b, <4 x i32> undef, <2 x i32> <i32 2, i32 2>
  %vmull2.i = tail call <2 x i64> @llvm.aarch64.neon.smull.v2i64(<2 x i32> %a, <2 x i32> %shuffle) #2
  ret <2 x i64> %vmull2.i
}
define <4 x i32> @vmull_laneq_u16_test(<4 x i16> %a, <8 x i16> %b) nounwind readnone ssp {
entry:




  %shuffle = shufflevector <8 x i16> %b, <8 x i16> undef, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %vmull2.i = tail call <4 x i32> @llvm.aarch64.neon.umull.v4i32(<4 x i16> %a, <4 x i16> %shuffle) #2
  ret <4 x i32> %vmull2.i
}

define <2 x i64> @vmull_laneq_u32_test(<2 x i32> %a, <4 x i32> %b) nounwind readnone ssp {
entry:




  %shuffle = shufflevector <4 x i32> %b, <4 x i32> undef, <2 x i32> <i32 2, i32 2>
  %vmull2.i = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %a, <2 x i32> %shuffle) #2
  ret <2 x i64> %vmull2.i
}

define <4 x i32> @vmull_high_n_s16_test(<4 x i32> %a, <8 x i16> %b, <4 x i16> %c, i32 %d) nounwind readnone optsize ssp {
entry:




  %conv = trunc i32 %d to i16
  %0 = bitcast <8 x i16> %b to <2 x i64>
  %shuffle.i.i = shufflevector <2 x i64> %0, <2 x i64> undef, <1 x i32> <i32 1>
  %1 = bitcast <1 x i64> %shuffle.i.i to <4 x i16>
  %vecinit.i = insertelement <4 x i16> undef, i16 %conv, i32 0
  %vecinit1.i = insertelement <4 x i16> %vecinit.i, i16 %conv, i32 1
  %vecinit2.i = insertelement <4 x i16> %vecinit1.i, i16 %conv, i32 2
  %vecinit3.i = insertelement <4 x i16> %vecinit2.i, i16 %conv, i32 3
  %vmull2.i.i = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %1, <4 x i16> %vecinit3.i) nounwind
  ret <4 x i32> %vmull2.i.i
}

define <2 x i64> @vmull_high_n_s32_test(<2 x i64> %a, <4 x i32> %b, <2 x i32> %c, i32 %d) nounwind readnone optsize ssp {
entry:




  %0 = bitcast <4 x i32> %b to <2 x i64>
  %shuffle.i.i = shufflevector <2 x i64> %0, <2 x i64> undef, <1 x i32> <i32 1>
  %1 = bitcast <1 x i64> %shuffle.i.i to <2 x i32>
  %vecinit.i = insertelement <2 x i32> undef, i32 %d, i32 0
  %vecinit1.i = insertelement <2 x i32> %vecinit.i, i32 %d, i32 1
  %vmull2.i.i = tail call <2 x i64> @llvm.aarch64.neon.smull.v2i64(<2 x i32> %1, <2 x i32> %vecinit1.i) nounwind
  ret <2 x i64> %vmull2.i.i
}

define <4 x i32> @vmull_high_n_u16_test(<4 x i32> %a, <8 x i16> %b, <4 x i16> %c, i32 %d) nounwind readnone optsize ssp {
entry:




  %conv = trunc i32 %d to i16
  %0 = bitcast <8 x i16> %b to <2 x i64>
  %shuffle.i.i = shufflevector <2 x i64> %0, <2 x i64> undef, <1 x i32> <i32 1>
  %1 = bitcast <1 x i64> %shuffle.i.i to <4 x i16>
  %vecinit.i = insertelement <4 x i16> undef, i16 %conv, i32 0
  %vecinit1.i = insertelement <4 x i16> %vecinit.i, i16 %conv, i32 1
  %vecinit2.i = insertelement <4 x i16> %vecinit1.i, i16 %conv, i32 2
  %vecinit3.i = insertelement <4 x i16> %vecinit2.i, i16 %conv, i32 3
  %vmull2.i.i = tail call <4 x i32> @llvm.aarch64.neon.umull.v4i32(<4 x i16> %1, <4 x i16> %vecinit3.i) nounwind
  ret <4 x i32> %vmull2.i.i
}

define <2 x i64> @vmull_high_n_u32_test(<2 x i64> %a, <4 x i32> %b, <2 x i32> %c, i32 %d) nounwind readnone optsize ssp {
entry:




  %0 = bitcast <4 x i32> %b to <2 x i64>
  %shuffle.i.i = shufflevector <2 x i64> %0, <2 x i64> undef, <1 x i32> <i32 1>
  %1 = bitcast <1 x i64> %shuffle.i.i to <2 x i32>
  %vecinit.i = insertelement <2 x i32> undef, i32 %d, i32 0
  %vecinit1.i = insertelement <2 x i32> %vecinit.i, i32 %d, i32 1
  %vmull2.i.i = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %1, <2 x i32> %vecinit1.i) nounwind
  ret <2 x i64> %vmull2.i.i
}

define <4 x i32> @vmul_built_dup_test(<4 x i32> %a, <4 x i32> %b) {




  %vget_lane = extractelement <4 x i32> %b, i32 1
  %vecinit.i = insertelement <4 x i32> undef, i32 %vget_lane, i32 0
  %vecinit1.i = insertelement <4 x i32> %vecinit.i, i32 %vget_lane, i32 1
  %vecinit2.i = insertelement <4 x i32> %vecinit1.i, i32 %vget_lane, i32 2
  %vecinit3.i = insertelement <4 x i32> %vecinit2.i, i32 %vget_lane, i32 3
  %prod = mul <4 x i32> %a, %vecinit3.i
  ret <4 x i32> %prod
}

define <4 x i16> @vmul_built_dup_fromsmall_test(<4 x i16> %a, <4 x i16> %b) {




  %vget_lane = extractelement <4 x i16> %b, i32 3
  %vecinit.i = insertelement <4 x i16> undef, i16 %vget_lane, i32 0
  %vecinit1.i = insertelement <4 x i16> %vecinit.i, i16 %vget_lane, i32 1
  %vecinit2.i = insertelement <4 x i16> %vecinit1.i, i16 %vget_lane, i32 2
  %vecinit3.i = insertelement <4 x i16> %vecinit2.i, i16 %vget_lane, i32 3
  %prod = mul <4 x i16> %a, %vecinit3.i
  ret <4 x i16> %prod
}

define <8 x i16> @vmulq_built_dup_fromsmall_test(<8 x i16> %a, <4 x i16> %b) {




  %vget_lane = extractelement <4 x i16> %b, i32 0
  %vecinit.i = insertelement <8 x i16> undef, i16 %vget_lane, i32 0
  %vecinit1.i = insertelement <8 x i16> %vecinit.i, i16 %vget_lane, i32 1
  %vecinit2.i = insertelement <8 x i16> %vecinit1.i, i16 %vget_lane, i32 2
  %vecinit3.i = insertelement <8 x i16> %vecinit2.i, i16 %vget_lane, i32 3
  %vecinit4.i = insertelement <8 x i16> %vecinit3.i, i16 %vget_lane, i32 4
  %vecinit5.i = insertelement <8 x i16> %vecinit4.i, i16 %vget_lane, i32 5
  %vecinit6.i = insertelement <8 x i16> %vecinit5.i, i16 %vget_lane, i32 6
  %vecinit7.i = insertelement <8 x i16> %vecinit6.i, i16 %vget_lane, i32 7
  %prod = mul <8 x i16> %a, %vecinit7.i
  ret <8 x i16> %prod
}

define <2 x i64> @mull_from_two_extracts(<4 x i32> %lhs, <4 x i32> %rhs) {




  %lhs.high = shufflevector <4 x i32> %lhs, <4 x i32> undef, <2 x i32> <i32 2, i32 3>
  %rhs.high = shufflevector <4 x i32> %rhs, <4 x i32> undef, <2 x i32> <i32 2, i32 3>

  %res = tail call <2 x i64> @llvm.aarch64.neon.sqdmull.v2i64(<2 x i32> %lhs.high, <2 x i32> %rhs.high) nounwind
  ret <2 x i64> %res
}

define <2 x i64> @mlal_from_two_extracts(<2 x i64> %accum, <4 x i32> %lhs, <4 x i32> %rhs) {




  %lhs.high = shufflevector <4 x i32> %lhs, <4 x i32> undef, <2 x i32> <i32 2, i32 3>
  %rhs.high = shufflevector <4 x i32> %rhs, <4 x i32> undef, <2 x i32> <i32 2, i32 3>

  %res = tail call <2 x i64> @llvm.aarch64.neon.sqdmull.v2i64(<2 x i32> %lhs.high, <2 x i32> %rhs.high) nounwind
  %sum = call <2 x i64> @llvm.aarch64.neon.sqadd.v2i64(<2 x i64> %accum, <2 x i64> %res)
  ret <2 x i64> %sum
}

define <2 x i64> @mull_from_extract_dup(<4 x i32> %lhs, i32 %rhs) {



  %rhsvec.tmp = insertelement <2 x i32> undef, i32 %rhs, i32 0
  %rhsvec = insertelement <2 x i32> %rhsvec.tmp, i32 %rhs, i32 1

  %lhs.high = shufflevector <4 x i32> %lhs, <4 x i32> undef, <2 x i32> <i32 2, i32 3>

  %res = tail call <2 x i64> @llvm.aarch64.neon.sqdmull.v2i64(<2 x i32> %lhs.high, <2 x i32> %rhsvec) nounwind
  ret <2 x i64> %res
}

define <8 x i16> @pmull_from_extract_dup(<16 x i8> %lhs, i8 %rhs) {



  %rhsvec.0 = insertelement <8 x i8> undef, i8 %rhs, i32 0
  %rhsvec = shufflevector <8 x i8> %rhsvec.0, <8 x i8> undef, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>

  %lhs.high = shufflevector <16 x i8> %lhs, <16 x i8> undef, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>

  %res = tail call <8 x i16> @llvm.aarch64.neon.pmull.v8i16(<8 x i8> %lhs.high, <8 x i8> %rhsvec) nounwind
  ret <8 x i16> %res
}

define <8 x i16> @pmull_from_extract_duplane(<16 x i8> %lhs, <8 x i8> %rhs) {




  %lhs.high = shufflevector <16 x i8> %lhs, <16 x i8> undef, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %rhs.high = shufflevector <8 x i8> %rhs, <8 x i8> undef, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>

  %res = tail call <8 x i16> @llvm.aarch64.neon.pmull.v8i16(<8 x i8> %lhs.high, <8 x i8> %rhs.high) nounwind
  ret <8 x i16> %res
}

define <2 x i64> @sqdmull_from_extract_duplane(<4 x i32> %lhs, <4 x i32> %rhs) {




  %lhs.high = shufflevector <4 x i32> %lhs, <4 x i32> undef, <2 x i32> <i32 2, i32 3>
  %rhs.high = shufflevector <4 x i32> %rhs, <4 x i32> undef, <2 x i32> <i32 0, i32 0>

  %res = tail call <2 x i64> @llvm.aarch64.neon.sqdmull.v2i64(<2 x i32> %lhs.high, <2 x i32> %rhs.high) nounwind
  ret <2 x i64> %res
}

define <2 x i64> @sqdmlal_from_extract_duplane(<2 x i64> %accum, <4 x i32> %lhs, <4 x i32> %rhs) {




  %lhs.high = shufflevector <4 x i32> %lhs, <4 x i32> undef, <2 x i32> <i32 2, i32 3>
  %rhs.high = shufflevector <4 x i32> %rhs, <4 x i32> undef, <2 x i32> <i32 0, i32 0>

  %res = tail call <2 x i64> @llvm.aarch64.neon.sqdmull.v2i64(<2 x i32> %lhs.high, <2 x i32> %rhs.high) nounwind
  %sum = call <2 x i64> @llvm.aarch64.neon.sqadd.v2i64(<2 x i64> %accum, <2 x i64> %res)
  ret <2 x i64> %sum
}

define <2 x i64> @umlal_from_extract_duplane(<2 x i64> %accum, <4 x i32> %lhs, <4 x i32> %rhs) {




  %lhs.high = shufflevector <4 x i32> %lhs, <4 x i32> undef, <2 x i32> <i32 2, i32 3>
  %rhs.high = shufflevector <4 x i32> %rhs, <4 x i32> undef, <2 x i32> <i32 0, i32 0>

  %res = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %lhs.high, <2 x i32> %rhs.high) nounwind
  %sum = add <2 x i64> %accum, %res
  ret <2 x i64> %sum
}

define float @scalar_fmla_from_extract_v4f32(float %accum, float %lhs, <4 x float> %rvec) {


  %rhs = extractelement <4 x float> %rvec, i32 3
  %res = call float @llvm.fma.f32(float %lhs, float %rhs, float %accum)
  ret float %res
}

define float @scalar_fmla_from_extract_v2f32(float %accum, float %lhs, <2 x float> %rvec) {


  %rhs = extractelement <2 x float> %rvec, i32 1
  %res = call float @llvm.fma.f32(float %lhs, float %rhs, float %accum)
  ret float %res
}

define float @scalar_fmls_from_extract_v4f32(float %accum, float %lhs, <4 x float> %rvec) {


  %rhs.scal = extractelement <4 x float> %rvec, i32 3
  %rhs = fsub float -0.0, %rhs.scal
  %res = call float @llvm.fma.f32(float %lhs, float %rhs, float %accum)
  ret float %res
}

define float @scalar_fmls_from_extract_v2f32(float %accum, float %lhs, <2 x float> %rvec) {


  %rhs.scal = extractelement <2 x float> %rvec, i32 1
  %rhs = fsub float -0.0, %rhs.scal
  %res = call float @llvm.fma.f32(float %lhs, float %rhs, float %accum)
  ret float %res
}

declare float @llvm.fma.f32(float, float, float)

define double @scalar_fmla_from_extract_v2f64(double %accum, double %lhs, <2 x double> %rvec) {


  %rhs = extractelement <2 x double> %rvec, i32 1
  %res = call double @llvm.fma.f64(double %lhs, double %rhs, double %accum)
  ret double %res
}

define double @scalar_fmls_from_extract_v2f64(double %accum, double %lhs, <2 x double> %rvec) {


  %rhs.scal = extractelement <2 x double> %rvec, i32 1
  %rhs = fsub double -0.0, %rhs.scal
  %res = call double @llvm.fma.f64(double %lhs, double %rhs, double %accum)
  ret double %res
}

declare double @llvm.fma.f64(double, double, double)

define <2 x float> @fmls_with_fneg_before_extract_v2f32(<2 x float> %accum, <2 x float> %lhs, <4 x float> %rhs) {


  %rhs_neg = fsub <4 x float> <float -0.0, float -0.0, float -0.0, float -0.0>, %rhs
  %splat = shufflevector <4 x float> %rhs_neg, <4 x float> undef, <2 x i32> <i32 3, i32 3>
  %res = call <2 x float> @llvm.fma.v2f32(<2 x float> %lhs, <2 x float> %splat, <2 x float> %accum)
  ret <2 x float> %res
}

define <2 x float> @fmls_with_fneg_before_extract_v2f32_1(<2 x float> %accum, <2 x float> %lhs, <2 x float> %rhs) {


  %rhs_neg = fsub <2 x float> <float -0.0, float -0.0>, %rhs
  %splat = shufflevector <2 x float> %rhs_neg, <2 x float> undef, <2 x i32> <i32 1, i32 1>
  %res = call <2 x float> @llvm.fma.v2f32(<2 x float> %lhs, <2 x float> %splat, <2 x float> %accum)
  ret <2 x float> %res
}

define <4 x float> @fmls_with_fneg_before_extract_v4f32(<4 x float> %accum, <4 x float> %lhs, <4 x float> %rhs) {


  %rhs_neg = fsub <4 x float> <float -0.0, float -0.0, float -0.0, float -0.0>, %rhs
  %splat = shufflevector <4 x float> %rhs_neg, <4 x float> undef, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %res = call <4 x float> @llvm.fma.v4f32(<4 x float> %lhs, <4 x float> %splat, <4 x float> %accum)
  ret <4 x float> %res
}

define <4 x float> @fmls_with_fneg_before_extract_v4f32_1(<4 x float> %accum, <4 x float> %lhs, <2 x float> %rhs) {


  %rhs_neg = fsub <2 x float> <float -0.0, float -0.0>, %rhs
  %splat = shufflevector <2 x float> %rhs_neg, <2 x float> undef, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %res = call <4 x float> @llvm.fma.v4f32(<4 x float> %lhs, <4 x float> %splat, <4 x float> %accum)
  ret <4 x float> %res
}

define <2 x double> @fmls_with_fneg_before_extract_v2f64(<2 x double> %accum, <2 x double> %lhs, <2 x double> %rhs) {


  %rhs_neg = fsub <2 x double> <double -0.0, double -0.0>, %rhs
  %splat = shufflevector <2 x double> %rhs_neg, <2 x double> undef, <2 x i32> <i32 1, i32 1>
  %res = call <2 x double> @llvm.fma.v2f64(<2 x double> %lhs, <2 x double> %splat, <2 x double> %accum)
  ret <2 x double> %res
}

define <1 x double> @test_fmul_v1f64(<1 x double> %L, <1 x double> %R) nounwind {


  %prod = fmul <1 x double> %L, %R
  ret <1 x double> %prod
}

define <1 x double> @test_fdiv_v1f64(<1 x double> %L, <1 x double> %R) nounwind {


  %prod = fdiv <1 x double> %L, %R
  ret <1 x double> %prod
}

define i64 @sqdmlal_d(i32 %A, i32 %B, i64 %C) nounwind {


  %tmp4 = call i64 @llvm.aarch64.neon.sqdmulls.scalar(i32 %A, i32 %B)
  %tmp5 = call i64 @llvm.aarch64.neon.sqadd.i64(i64 %C, i64 %tmp4)
  ret i64 %tmp5
}

define i64 @sqdmlsl_d(i32 %A, i32 %B, i64 %C) nounwind {


  %tmp4 = call i64 @llvm.aarch64.neon.sqdmulls.scalar(i32 %A, i32 %B)
  %tmp5 = call i64 @llvm.aarch64.neon.sqsub.i64(i64 %C, i64 %tmp4)
  ret i64 %tmp5
}

define <16 x i8> @test_pmull_64(i64 %l, i64 %r) nounwind {


  %val = call <16 x i8> @llvm.aarch64.neon.pmull64(i64 %l, i64 %r)
  ret <16 x i8> %val
}

define <16 x i8> @test_pmull_high_64(<2 x i64> %l, <2 x i64> %r) nounwind {


  %l_hi = extractelement <2 x i64> %l, i32 1
  %r_hi = extractelement <2 x i64> %r, i32 1
  %val = call <16 x i8> @llvm.aarch64.neon.pmull64(i64 %l_hi, i64 %r_hi)
  ret <16 x i8> %val
}

declare <16 x i8> @llvm.aarch64.neon.pmull64(i64, i64)

define <1 x i64> @test_mul_v1i64(<1 x i64> %lhs, <1 x i64> %rhs) nounwind {


  %prod = mul <1 x i64> %lhs, %rhs
  ret <1 x i64> %prod
}
