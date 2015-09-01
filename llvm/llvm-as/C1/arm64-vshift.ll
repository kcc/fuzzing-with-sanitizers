

define <8 x i8> @sqshl8b(<8 x i8>* %A, <8 x i8>* %B) nounwind {


        %tmp1 = load <8 x i8>, <8 x i8>* %A
        %tmp2 = load <8 x i8>, <8 x i8>* %B
        %tmp3 = call <8 x i8> @llvm.aarch64.neon.sqshl.v8i8(<8 x i8> %tmp1, <8 x i8> %tmp2)
        ret <8 x i8> %tmp3
}

define <4 x i16> @sqshl4h(<4 x i16>* %A, <4 x i16>* %B) nounwind {


        %tmp1 = load <4 x i16>, <4 x i16>* %A
        %tmp2 = load <4 x i16>, <4 x i16>* %B
        %tmp3 = call <4 x i16> @llvm.aarch64.neon.sqshl.v4i16(<4 x i16> %tmp1, <4 x i16> %tmp2)
        ret <4 x i16> %tmp3
}

define <2 x i32> @sqshl2s(<2 x i32>* %A, <2 x i32>* %B) nounwind {


        %tmp1 = load <2 x i32>, <2 x i32>* %A
        %tmp2 = load <2 x i32>, <2 x i32>* %B
        %tmp3 = call <2 x i32> @llvm.aarch64.neon.sqshl.v2i32(<2 x i32> %tmp1, <2 x i32> %tmp2)
        ret <2 x i32> %tmp3
}

define <8 x i8> @uqshl8b(<8 x i8>* %A, <8 x i8>* %B) nounwind {


        %tmp1 = load <8 x i8>, <8 x i8>* %A
        %tmp2 = load <8 x i8>, <8 x i8>* %B
        %tmp3 = call <8 x i8> @llvm.aarch64.neon.uqshl.v8i8(<8 x i8> %tmp1, <8 x i8> %tmp2)
        ret <8 x i8> %tmp3
}

define <4 x i16> @uqshl4h(<4 x i16>* %A, <4 x i16>* %B) nounwind {


        %tmp1 = load <4 x i16>, <4 x i16>* %A
        %tmp2 = load <4 x i16>, <4 x i16>* %B
        %tmp3 = call <4 x i16> @llvm.aarch64.neon.uqshl.v4i16(<4 x i16> %tmp1, <4 x i16> %tmp2)
        ret <4 x i16> %tmp3
}

define <2 x i32> @uqshl2s(<2 x i32>* %A, <2 x i32>* %B) nounwind {


        %tmp1 = load <2 x i32>, <2 x i32>* %A
        %tmp2 = load <2 x i32>, <2 x i32>* %B
        %tmp3 = call <2 x i32> @llvm.aarch64.neon.uqshl.v2i32(<2 x i32> %tmp1, <2 x i32> %tmp2)
        ret <2 x i32> %tmp3
}

define <16 x i8> @sqshl16b(<16 x i8>* %A, <16 x i8>* %B) nounwind {


        %tmp1 = load <16 x i8>, <16 x i8>* %A
        %tmp2 = load <16 x i8>, <16 x i8>* %B
        %tmp3 = call <16 x i8> @llvm.aarch64.neon.sqshl.v16i8(<16 x i8> %tmp1, <16 x i8> %tmp2)
        ret <16 x i8> %tmp3
}

define <8 x i16> @sqshl8h(<8 x i16>* %A, <8 x i16>* %B) nounwind {


        %tmp1 = load <8 x i16>, <8 x i16>* %A
        %tmp2 = load <8 x i16>, <8 x i16>* %B
        %tmp3 = call <8 x i16> @llvm.aarch64.neon.sqshl.v8i16(<8 x i16> %tmp1, <8 x i16> %tmp2)
        ret <8 x i16> %tmp3
}

define <4 x i32> @sqshl4s(<4 x i32>* %A, <4 x i32>* %B) nounwind {


        %tmp1 = load <4 x i32>, <4 x i32>* %A
        %tmp2 = load <4 x i32>, <4 x i32>* %B
        %tmp3 = call <4 x i32> @llvm.aarch64.neon.sqshl.v4i32(<4 x i32> %tmp1, <4 x i32> %tmp2)
        ret <4 x i32> %tmp3
}

define <2 x i64> @sqshl2d(<2 x i64>* %A, <2 x i64>* %B) nounwind {


        %tmp1 = load <2 x i64>, <2 x i64>* %A
        %tmp2 = load <2 x i64>, <2 x i64>* %B
        %tmp3 = call <2 x i64> @llvm.aarch64.neon.sqshl.v2i64(<2 x i64> %tmp1, <2 x i64> %tmp2)
        ret <2 x i64> %tmp3
}

define <16 x i8> @uqshl16b(<16 x i8>* %A, <16 x i8>* %B) nounwind {


        %tmp1 = load <16 x i8>, <16 x i8>* %A
        %tmp2 = load <16 x i8>, <16 x i8>* %B
        %tmp3 = call <16 x i8> @llvm.aarch64.neon.uqshl.v16i8(<16 x i8> %tmp1, <16 x i8> %tmp2)
        ret <16 x i8> %tmp3
}

define <8 x i16> @uqshl8h(<8 x i16>* %A, <8 x i16>* %B) nounwind {


        %tmp1 = load <8 x i16>, <8 x i16>* %A
        %tmp2 = load <8 x i16>, <8 x i16>* %B
        %tmp3 = call <8 x i16> @llvm.aarch64.neon.uqshl.v8i16(<8 x i16> %tmp1, <8 x i16> %tmp2)
        ret <8 x i16> %tmp3
}

define <4 x i32> @uqshl4s(<4 x i32>* %A, <4 x i32>* %B) nounwind {


        %tmp1 = load <4 x i32>, <4 x i32>* %A
        %tmp2 = load <4 x i32>, <4 x i32>* %B
        %tmp3 = call <4 x i32> @llvm.aarch64.neon.uqshl.v4i32(<4 x i32> %tmp1, <4 x i32> %tmp2)
        ret <4 x i32> %tmp3
}

define <2 x i64> @uqshl2d(<2 x i64>* %A, <2 x i64>* %B) nounwind {


        %tmp1 = load <2 x i64>, <2 x i64>* %A
        %tmp2 = load <2 x i64>, <2 x i64>* %B
        %tmp3 = call <2 x i64> @llvm.aarch64.neon.uqshl.v2i64(<2 x i64> %tmp1, <2 x i64> %tmp2)
        ret <2 x i64> %tmp3
}

declare <8 x i8>  @llvm.aarch64.neon.sqshl.v8i8(<8 x i8>, <8 x i8>) nounwind readnone
declare <4 x i16> @llvm.aarch64.neon.sqshl.v4i16(<4 x i16>, <4 x i16>) nounwind readnone
declare <2 x i32> @llvm.aarch64.neon.sqshl.v2i32(<2 x i32>, <2 x i32>) nounwind readnone
declare <1 x i64> @llvm.aarch64.neon.sqshl.v1i64(<1 x i64>, <1 x i64>) nounwind readnone

declare <8 x i8>  @llvm.aarch64.neon.uqshl.v8i8(<8 x i8>, <8 x i8>) nounwind readnone
declare <4 x i16> @llvm.aarch64.neon.uqshl.v4i16(<4 x i16>, <4 x i16>) nounwind readnone
declare <2 x i32> @llvm.aarch64.neon.uqshl.v2i32(<2 x i32>, <2 x i32>) nounwind readnone
declare <1 x i64> @llvm.aarch64.neon.uqshl.v1i64(<1 x i64>, <1 x i64>) nounwind readnone

declare <16 x i8> @llvm.aarch64.neon.sqshl.v16i8(<16 x i8>, <16 x i8>) nounwind readnone
declare <8 x i16> @llvm.aarch64.neon.sqshl.v8i16(<8 x i16>, <8 x i16>) nounwind readnone
declare <4 x i32> @llvm.aarch64.neon.sqshl.v4i32(<4 x i32>, <4 x i32>) nounwind readnone
declare <2 x i64> @llvm.aarch64.neon.sqshl.v2i64(<2 x i64>, <2 x i64>) nounwind readnone

declare <16 x i8> @llvm.aarch64.neon.uqshl.v16i8(<16 x i8>, <16 x i8>) nounwind readnone
declare <8 x i16> @llvm.aarch64.neon.uqshl.v8i16(<8 x i16>, <8 x i16>) nounwind readnone
declare <4 x i32> @llvm.aarch64.neon.uqshl.v4i32(<4 x i32>, <4 x i32>) nounwind readnone
declare <2 x i64> @llvm.aarch64.neon.uqshl.v2i64(<2 x i64>, <2 x i64>) nounwind readnone

define <8 x i8> @srshl8b(<8 x i8>* %A, <8 x i8>* %B) nounwind {


        %tmp1 = load <8 x i8>, <8 x i8>* %A
        %tmp2 = load <8 x i8>, <8 x i8>* %B
        %tmp3 = call <8 x i8> @llvm.aarch64.neon.srshl.v8i8(<8 x i8> %tmp1, <8 x i8> %tmp2)
        ret <8 x i8> %tmp3
}

define <4 x i16> @srshl4h(<4 x i16>* %A, <4 x i16>* %B) nounwind {


        %tmp1 = load <4 x i16>, <4 x i16>* %A
        %tmp2 = load <4 x i16>, <4 x i16>* %B
        %tmp3 = call <4 x i16> @llvm.aarch64.neon.srshl.v4i16(<4 x i16> %tmp1, <4 x i16> %tmp2)
        ret <4 x i16> %tmp3
}

define <2 x i32> @srshl2s(<2 x i32>* %A, <2 x i32>* %B) nounwind {


        %tmp1 = load <2 x i32>, <2 x i32>* %A
        %tmp2 = load <2 x i32>, <2 x i32>* %B
        %tmp3 = call <2 x i32> @llvm.aarch64.neon.srshl.v2i32(<2 x i32> %tmp1, <2 x i32> %tmp2)
        ret <2 x i32> %tmp3
}

define <8 x i8> @urshl8b(<8 x i8>* %A, <8 x i8>* %B) nounwind {


        %tmp1 = load <8 x i8>, <8 x i8>* %A
        %tmp2 = load <8 x i8>, <8 x i8>* %B
        %tmp3 = call <8 x i8> @llvm.aarch64.neon.urshl.v8i8(<8 x i8> %tmp1, <8 x i8> %tmp2)
        ret <8 x i8> %tmp3
}

define <4 x i16> @urshl4h(<4 x i16>* %A, <4 x i16>* %B) nounwind {


        %tmp1 = load <4 x i16>, <4 x i16>* %A
        %tmp2 = load <4 x i16>, <4 x i16>* %B
        %tmp3 = call <4 x i16> @llvm.aarch64.neon.urshl.v4i16(<4 x i16> %tmp1, <4 x i16> %tmp2)
        ret <4 x i16> %tmp3
}

define <2 x i32> @urshl2s(<2 x i32>* %A, <2 x i32>* %B) nounwind {


        %tmp1 = load <2 x i32>, <2 x i32>* %A
        %tmp2 = load <2 x i32>, <2 x i32>* %B
        %tmp3 = call <2 x i32> @llvm.aarch64.neon.urshl.v2i32(<2 x i32> %tmp1, <2 x i32> %tmp2)
        ret <2 x i32> %tmp3
}

define <16 x i8> @srshl16b(<16 x i8>* %A, <16 x i8>* %B) nounwind {


        %tmp1 = load <16 x i8>, <16 x i8>* %A
        %tmp2 = load <16 x i8>, <16 x i8>* %B
        %tmp3 = call <16 x i8> @llvm.aarch64.neon.srshl.v16i8(<16 x i8> %tmp1, <16 x i8> %tmp2)
        ret <16 x i8> %tmp3
}

define <8 x i16> @srshl8h(<8 x i16>* %A, <8 x i16>* %B) nounwind {


        %tmp1 = load <8 x i16>, <8 x i16>* %A
        %tmp2 = load <8 x i16>, <8 x i16>* %B
        %tmp3 = call <8 x i16> @llvm.aarch64.neon.srshl.v8i16(<8 x i16> %tmp1, <8 x i16> %tmp2)
        ret <8 x i16> %tmp3
}

define <4 x i32> @srshl4s(<4 x i32>* %A, <4 x i32>* %B) nounwind {


        %tmp1 = load <4 x i32>, <4 x i32>* %A
        %tmp2 = load <4 x i32>, <4 x i32>* %B
        %tmp3 = call <4 x i32> @llvm.aarch64.neon.srshl.v4i32(<4 x i32> %tmp1, <4 x i32> %tmp2)
        ret <4 x i32> %tmp3
}

define <2 x i64> @srshl2d(<2 x i64>* %A, <2 x i64>* %B) nounwind {


        %tmp1 = load <2 x i64>, <2 x i64>* %A
        %tmp2 = load <2 x i64>, <2 x i64>* %B
        %tmp3 = call <2 x i64> @llvm.aarch64.neon.srshl.v2i64(<2 x i64> %tmp1, <2 x i64> %tmp2)
        ret <2 x i64> %tmp3
}

define <16 x i8> @urshl16b(<16 x i8>* %A, <16 x i8>* %B) nounwind {


        %tmp1 = load <16 x i8>, <16 x i8>* %A
        %tmp2 = load <16 x i8>, <16 x i8>* %B
        %tmp3 = call <16 x i8> @llvm.aarch64.neon.urshl.v16i8(<16 x i8> %tmp1, <16 x i8> %tmp2)
        ret <16 x i8> %tmp3
}

define <8 x i16> @urshl8h(<8 x i16>* %A, <8 x i16>* %B) nounwind {


        %tmp1 = load <8 x i16>, <8 x i16>* %A
        %tmp2 = load <8 x i16>, <8 x i16>* %B
        %tmp3 = call <8 x i16> @llvm.aarch64.neon.urshl.v8i16(<8 x i16> %tmp1, <8 x i16> %tmp2)
        ret <8 x i16> %tmp3
}

define <4 x i32> @urshl4s(<4 x i32>* %A, <4 x i32>* %B) nounwind {


        %tmp1 = load <4 x i32>, <4 x i32>* %A
        %tmp2 = load <4 x i32>, <4 x i32>* %B
        %tmp3 = call <4 x i32> @llvm.aarch64.neon.urshl.v4i32(<4 x i32> %tmp1, <4 x i32> %tmp2)
        ret <4 x i32> %tmp3
}

define <2 x i64> @urshl2d(<2 x i64>* %A, <2 x i64>* %B) nounwind {


        %tmp1 = load <2 x i64>, <2 x i64>* %A
        %tmp2 = load <2 x i64>, <2 x i64>* %B
        %tmp3 = call <2 x i64> @llvm.aarch64.neon.urshl.v2i64(<2 x i64> %tmp1, <2 x i64> %tmp2)
        ret <2 x i64> %tmp3
}

declare <8 x i8>  @llvm.aarch64.neon.srshl.v8i8(<8 x i8>, <8 x i8>) nounwind readnone
declare <4 x i16> @llvm.aarch64.neon.srshl.v4i16(<4 x i16>, <4 x i16>) nounwind readnone
declare <2 x i32> @llvm.aarch64.neon.srshl.v2i32(<2 x i32>, <2 x i32>) nounwind readnone
declare <1 x i64> @llvm.aarch64.neon.srshl.v1i64(<1 x i64>, <1 x i64>) nounwind readnone

declare <8 x i8>  @llvm.aarch64.neon.urshl.v8i8(<8 x i8>, <8 x i8>) nounwind readnone
declare <4 x i16> @llvm.aarch64.neon.urshl.v4i16(<4 x i16>, <4 x i16>) nounwind readnone
declare <2 x i32> @llvm.aarch64.neon.urshl.v2i32(<2 x i32>, <2 x i32>) nounwind readnone
declare <1 x i64> @llvm.aarch64.neon.urshl.v1i64(<1 x i64>, <1 x i64>) nounwind readnone

declare <16 x i8> @llvm.aarch64.neon.srshl.v16i8(<16 x i8>, <16 x i8>) nounwind readnone
declare <8 x i16> @llvm.aarch64.neon.srshl.v8i16(<8 x i16>, <8 x i16>) nounwind readnone
declare <4 x i32> @llvm.aarch64.neon.srshl.v4i32(<4 x i32>, <4 x i32>) nounwind readnone
declare <2 x i64> @llvm.aarch64.neon.srshl.v2i64(<2 x i64>, <2 x i64>) nounwind readnone

declare <16 x i8> @llvm.aarch64.neon.urshl.v16i8(<16 x i8>, <16 x i8>) nounwind readnone
declare <8 x i16> @llvm.aarch64.neon.urshl.v8i16(<8 x i16>, <8 x i16>) nounwind readnone
declare <4 x i32> @llvm.aarch64.neon.urshl.v4i32(<4 x i32>, <4 x i32>) nounwind readnone
declare <2 x i64> @llvm.aarch64.neon.urshl.v2i64(<2 x i64>, <2 x i64>) nounwind readnone

define <8 x i8> @sqrshl8b(<8 x i8>* %A, <8 x i8>* %B) nounwind {


        %tmp1 = load <8 x i8>, <8 x i8>* %A
        %tmp2 = load <8 x i8>, <8 x i8>* %B
        %tmp3 = call <8 x i8> @llvm.aarch64.neon.sqrshl.v8i8(<8 x i8> %tmp1, <8 x i8> %tmp2)
        ret <8 x i8> %tmp3
}

define <4 x i16> @sqrshl4h(<4 x i16>* %A, <4 x i16>* %B) nounwind {


        %tmp1 = load <4 x i16>, <4 x i16>* %A
        %tmp2 = load <4 x i16>, <4 x i16>* %B
        %tmp3 = call <4 x i16> @llvm.aarch64.neon.sqrshl.v4i16(<4 x i16> %tmp1, <4 x i16> %tmp2)
        ret <4 x i16> %tmp3
}

define <2 x i32> @sqrshl2s(<2 x i32>* %A, <2 x i32>* %B) nounwind {


        %tmp1 = load <2 x i32>, <2 x i32>* %A
        %tmp2 = load <2 x i32>, <2 x i32>* %B
        %tmp3 = call <2 x i32> @llvm.aarch64.neon.sqrshl.v2i32(<2 x i32> %tmp1, <2 x i32> %tmp2)
        ret <2 x i32> %tmp3
}

define <8 x i8> @uqrshl8b(<8 x i8>* %A, <8 x i8>* %B) nounwind {


        %tmp1 = load <8 x i8>, <8 x i8>* %A
        %tmp2 = load <8 x i8>, <8 x i8>* %B
        %tmp3 = call <8 x i8> @llvm.aarch64.neon.uqrshl.v8i8(<8 x i8> %tmp1, <8 x i8> %tmp2)
        ret <8 x i8> %tmp3
}

define <4 x i16> @uqrshl4h(<4 x i16>* %A, <4 x i16>* %B) nounwind {


        %tmp1 = load <4 x i16>, <4 x i16>* %A
        %tmp2 = load <4 x i16>, <4 x i16>* %B
        %tmp3 = call <4 x i16> @llvm.aarch64.neon.uqrshl.v4i16(<4 x i16> %tmp1, <4 x i16> %tmp2)
        ret <4 x i16> %tmp3
}

define <2 x i32> @uqrshl2s(<2 x i32>* %A, <2 x i32>* %B) nounwind {


        %tmp1 = load <2 x i32>, <2 x i32>* %A
        %tmp2 = load <2 x i32>, <2 x i32>* %B
        %tmp3 = call <2 x i32> @llvm.aarch64.neon.uqrshl.v2i32(<2 x i32> %tmp1, <2 x i32> %tmp2)
        ret <2 x i32> %tmp3
}

define <16 x i8> @sqrshl16b(<16 x i8>* %A, <16 x i8>* %B) nounwind {


        %tmp1 = load <16 x i8>, <16 x i8>* %A
        %tmp2 = load <16 x i8>, <16 x i8>* %B
        %tmp3 = call <16 x i8> @llvm.aarch64.neon.sqrshl.v16i8(<16 x i8> %tmp1, <16 x i8> %tmp2)
        ret <16 x i8> %tmp3
}

define <8 x i16> @sqrshl8h(<8 x i16>* %A, <8 x i16>* %B) nounwind {


        %tmp1 = load <8 x i16>, <8 x i16>* %A
        %tmp2 = load <8 x i16>, <8 x i16>* %B
        %tmp3 = call <8 x i16> @llvm.aarch64.neon.sqrshl.v8i16(<8 x i16> %tmp1, <8 x i16> %tmp2)
        ret <8 x i16> %tmp3
}

define <4 x i32> @sqrshl4s(<4 x i32>* %A, <4 x i32>* %B) nounwind {


        %tmp1 = load <4 x i32>, <4 x i32>* %A
        %tmp2 = load <4 x i32>, <4 x i32>* %B
        %tmp3 = call <4 x i32> @llvm.aarch64.neon.sqrshl.v4i32(<4 x i32> %tmp1, <4 x i32> %tmp2)
        ret <4 x i32> %tmp3
}

define <2 x i64> @sqrshl2d(<2 x i64>* %A, <2 x i64>* %B) nounwind {


        %tmp1 = load <2 x i64>, <2 x i64>* %A
        %tmp2 = load <2 x i64>, <2 x i64>* %B
        %tmp3 = call <2 x i64> @llvm.aarch64.neon.sqrshl.v2i64(<2 x i64> %tmp1, <2 x i64> %tmp2)
        ret <2 x i64> %tmp3
}

define <16 x i8> @uqrshl16b(<16 x i8>* %A, <16 x i8>* %B) nounwind {


        %tmp1 = load <16 x i8>, <16 x i8>* %A
        %tmp2 = load <16 x i8>, <16 x i8>* %B
        %tmp3 = call <16 x i8> @llvm.aarch64.neon.uqrshl.v16i8(<16 x i8> %tmp1, <16 x i8> %tmp2)
        ret <16 x i8> %tmp3
}

define <8 x i16> @uqrshl8h(<8 x i16>* %A, <8 x i16>* %B) nounwind {


        %tmp1 = load <8 x i16>, <8 x i16>* %A
        %tmp2 = load <8 x i16>, <8 x i16>* %B
        %tmp3 = call <8 x i16> @llvm.aarch64.neon.uqrshl.v8i16(<8 x i16> %tmp1, <8 x i16> %tmp2)
        ret <8 x i16> %tmp3
}

define <4 x i32> @uqrshl4s(<4 x i32>* %A, <4 x i32>* %B) nounwind {


        %tmp1 = load <4 x i32>, <4 x i32>* %A
        %tmp2 = load <4 x i32>, <4 x i32>* %B
        %tmp3 = call <4 x i32> @llvm.aarch64.neon.uqrshl.v4i32(<4 x i32> %tmp1, <4 x i32> %tmp2)
        ret <4 x i32> %tmp3
}

define <2 x i64> @uqrshl2d(<2 x i64>* %A, <2 x i64>* %B) nounwind {


        %tmp1 = load <2 x i64>, <2 x i64>* %A
        %tmp2 = load <2 x i64>, <2 x i64>* %B
        %tmp3 = call <2 x i64> @llvm.aarch64.neon.uqrshl.v2i64(<2 x i64> %tmp1, <2 x i64> %tmp2)
        ret <2 x i64> %tmp3
}

declare <8 x i8>  @llvm.aarch64.neon.sqrshl.v8i8(<8 x i8>, <8 x i8>) nounwind readnone
declare <4 x i16> @llvm.aarch64.neon.sqrshl.v4i16(<4 x i16>, <4 x i16>) nounwind readnone
declare <2 x i32> @llvm.aarch64.neon.sqrshl.v2i32(<2 x i32>, <2 x i32>) nounwind readnone
declare <1 x i64> @llvm.aarch64.neon.sqrshl.v1i64(<1 x i64>, <1 x i64>) nounwind readnone

declare <8 x i8>  @llvm.aarch64.neon.uqrshl.v8i8(<8 x i8>, <8 x i8>) nounwind readnone
declare <4 x i16> @llvm.aarch64.neon.uqrshl.v4i16(<4 x i16>, <4 x i16>) nounwind readnone
declare <2 x i32> @llvm.aarch64.neon.uqrshl.v2i32(<2 x i32>, <2 x i32>) nounwind readnone
declare <1 x i64> @llvm.aarch64.neon.uqrshl.v1i64(<1 x i64>, <1 x i64>) nounwind readnone

declare <16 x i8> @llvm.aarch64.neon.sqrshl.v16i8(<16 x i8>, <16 x i8>) nounwind readnone
declare <8 x i16> @llvm.aarch64.neon.sqrshl.v8i16(<8 x i16>, <8 x i16>) nounwind readnone
declare <4 x i32> @llvm.aarch64.neon.sqrshl.v4i32(<4 x i32>, <4 x i32>) nounwind readnone
declare <2 x i64> @llvm.aarch64.neon.sqrshl.v2i64(<2 x i64>, <2 x i64>) nounwind readnone

declare <16 x i8> @llvm.aarch64.neon.uqrshl.v16i8(<16 x i8>, <16 x i8>) nounwind readnone
declare <8 x i16> @llvm.aarch64.neon.uqrshl.v8i16(<8 x i16>, <8 x i16>) nounwind readnone
declare <4 x i32> @llvm.aarch64.neon.uqrshl.v4i32(<4 x i32>, <4 x i32>) nounwind readnone
declare <2 x i64> @llvm.aarch64.neon.uqrshl.v2i64(<2 x i64>, <2 x i64>) nounwind readnone

define <8 x i8> @urshr8b(<8 x i8>* %A) nounwind {


        %tmp1 = load <8 x i8>, <8 x i8>* %A
        %tmp3 = call <8 x i8> @llvm.aarch64.neon.urshl.v8i8(<8 x i8> %tmp1, <8 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>)
        ret <8 x i8> %tmp3
}

define <4 x i16> @urshr4h(<4 x i16>* %A) nounwind {


        %tmp1 = load <4 x i16>, <4 x i16>* %A
        %tmp3 = call <4 x i16> @llvm.aarch64.neon.urshl.v4i16(<4 x i16> %tmp1, <4 x i16> <i16 -1, i16 -1, i16 -1, i16 -1>)
        ret <4 x i16> %tmp3
}

define <2 x i32> @urshr2s(<2 x i32>* %A) nounwind {


        %tmp1 = load <2 x i32>, <2 x i32>* %A
        %tmp3 = call <2 x i32> @llvm.aarch64.neon.urshl.v2i32(<2 x i32> %tmp1, <2 x i32> <i32 -1, i32 -1>)
        ret <2 x i32> %tmp3
}

define <16 x i8> @urshr16b(<16 x i8>* %A) nounwind {


        %tmp1 = load <16 x i8>, <16 x i8>* %A
        %tmp3 = call <16 x i8> @llvm.aarch64.neon.urshl.v16i8(<16 x i8> %tmp1, <16 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>)
        ret <16 x i8> %tmp3
}

define <8 x i16> @urshr8h(<8 x i16>* %A) nounwind {


        %tmp1 = load <8 x i16>, <8 x i16>* %A
        %tmp3 = call <8 x i16> @llvm.aarch64.neon.urshl.v8i16(<8 x i16> %tmp1, <8 x i16> <i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1>)
        ret <8 x i16> %tmp3
}

define <4 x i32> @urshr4s(<4 x i32>* %A) nounwind {


        %tmp1 = load <4 x i32>, <4 x i32>* %A
        %tmp3 = call <4 x i32> @llvm.aarch64.neon.urshl.v4i32(<4 x i32> %tmp1, <4 x i32> <i32 -1, i32 -1, i32 -1, i32 -1>)
        ret <4 x i32> %tmp3
}

define <2 x i64> @urshr2d(<2 x i64>* %A) nounwind {


        %tmp1 = load <2 x i64>, <2 x i64>* %A
        %tmp3 = call <2 x i64> @llvm.aarch64.neon.urshl.v2i64(<2 x i64> %tmp1, <2 x i64> <i64 -1, i64 -1>)
        ret <2 x i64> %tmp3
}

define <8 x i8> @srshr8b(<8 x i8>* %A) nounwind {


        %tmp1 = load <8 x i8>, <8 x i8>* %A
        %tmp3 = call <8 x i8> @llvm.aarch64.neon.srshl.v8i8(<8 x i8> %tmp1, <8 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>)
        ret <8 x i8> %tmp3
}

define <4 x i16> @srshr4h(<4 x i16>* %A) nounwind {


        %tmp1 = load <4 x i16>, <4 x i16>* %A
        %tmp3 = call <4 x i16> @llvm.aarch64.neon.srshl.v4i16(<4 x i16> %tmp1, <4 x i16> <i16 -1, i16 -1, i16 -1, i16 -1>)
        ret <4 x i16> %tmp3
}

define <2 x i32> @srshr2s(<2 x i32>* %A) nounwind {


        %tmp1 = load <2 x i32>, <2 x i32>* %A
        %tmp3 = call <2 x i32> @llvm.aarch64.neon.srshl.v2i32(<2 x i32> %tmp1, <2 x i32> <i32 -1, i32 -1>)
        ret <2 x i32> %tmp3
}

define <16 x i8> @srshr16b(<16 x i8>* %A) nounwind {


        %tmp1 = load <16 x i8>, <16 x i8>* %A
        %tmp3 = call <16 x i8> @llvm.aarch64.neon.srshl.v16i8(<16 x i8> %tmp1, <16 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>)
        ret <16 x i8> %tmp3
}

define <8 x i16> @srshr8h(<8 x i16>* %A) nounwind {


        %tmp1 = load <8 x i16>, <8 x i16>* %A
        %tmp3 = call <8 x i16> @llvm.aarch64.neon.srshl.v8i16(<8 x i16> %tmp1, <8 x i16> <i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1>)
        ret <8 x i16> %tmp3
}

define <4 x i32> @srshr4s(<4 x i32>* %A) nounwind {


        %tmp1 = load <4 x i32>, <4 x i32>* %A
        %tmp3 = call <4 x i32> @llvm.aarch64.neon.srshl.v4i32(<4 x i32> %tmp1, <4 x i32> <i32 -1, i32 -1, i32 -1, i32 -1>)
        ret <4 x i32> %tmp3
}

define <2 x i64> @srshr2d(<2 x i64>* %A) nounwind {


        %tmp1 = load <2 x i64>, <2 x i64>* %A
        %tmp3 = call <2 x i64> @llvm.aarch64.neon.srshl.v2i64(<2 x i64> %tmp1, <2 x i64> <i64 -1, i64 -1>)
        ret <2 x i64> %tmp3
}

define <8 x i8> @sqshlu8b(<8 x i8>* %A) nounwind {


        %tmp1 = load <8 x i8>, <8 x i8>* %A
        %tmp3 = call <8 x i8> @llvm.aarch64.neon.sqshlu.v8i8(<8 x i8> %tmp1, <8 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>)
        ret <8 x i8> %tmp3
}

define <4 x i16> @sqshlu4h(<4 x i16>* %A) nounwind {


        %tmp1 = load <4 x i16>, <4 x i16>* %A
        %tmp3 = call <4 x i16> @llvm.aarch64.neon.sqshlu.v4i16(<4 x i16> %tmp1, <4 x i16> <i16 1, i16 1, i16 1, i16 1>)
        ret <4 x i16> %tmp3
}

define <2 x i32> @sqshlu2s(<2 x i32>* %A) nounwind {


        %tmp1 = load <2 x i32>, <2 x i32>* %A
        %tmp3 = call <2 x i32> @llvm.aarch64.neon.sqshlu.v2i32(<2 x i32> %tmp1, <2 x i32> <i32 1, i32 1>)
        ret <2 x i32> %tmp3
}

define <16 x i8> @sqshlu16b(<16 x i8>* %A) nounwind {


        %tmp1 = load <16 x i8>, <16 x i8>* %A
        %tmp3 = call <16 x i8> @llvm.aarch64.neon.sqshlu.v16i8(<16 x i8> %tmp1, <16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>)
        ret <16 x i8> %tmp3
}

define <8 x i16> @sqshlu8h(<8 x i16>* %A) nounwind {


        %tmp1 = load <8 x i16>, <8 x i16>* %A
        %tmp3 = call <8 x i16> @llvm.aarch64.neon.sqshlu.v8i16(<8 x i16> %tmp1, <8 x i16> <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>)
        ret <8 x i16> %tmp3
}

define <4 x i32> @sqshlu4s(<4 x i32>* %A) nounwind {


        %tmp1 = load <4 x i32>, <4 x i32>* %A
        %tmp3 = call <4 x i32> @llvm.aarch64.neon.sqshlu.v4i32(<4 x i32> %tmp1, <4 x i32> <i32 1, i32 1, i32 1, i32 1>)
        ret <4 x i32> %tmp3
}

define <2 x i64> @sqshlu2d(<2 x i64>* %A) nounwind {


        %tmp1 = load <2 x i64>, <2 x i64>* %A
        %tmp3 = call <2 x i64> @llvm.aarch64.neon.sqshlu.v2i64(<2 x i64> %tmp1, <2 x i64> <i64 1, i64 1>)
        ret <2 x i64> %tmp3
}

declare <8 x i8>  @llvm.aarch64.neon.sqshlu.v8i8(<8 x i8>, <8 x i8>) nounwind readnone
declare <4 x i16> @llvm.aarch64.neon.sqshlu.v4i16(<4 x i16>, <4 x i16>) nounwind readnone
declare <2 x i32> @llvm.aarch64.neon.sqshlu.v2i32(<2 x i32>, <2 x i32>) nounwind readnone
declare <1 x i64> @llvm.aarch64.neon.sqshlu.v1i64(<1 x i64>, <1 x i64>) nounwind readnone

declare <16 x i8> @llvm.aarch64.neon.sqshlu.v16i8(<16 x i8>, <16 x i8>) nounwind readnone
declare <8 x i16> @llvm.aarch64.neon.sqshlu.v8i16(<8 x i16>, <8 x i16>) nounwind readnone
declare <4 x i32> @llvm.aarch64.neon.sqshlu.v4i32(<4 x i32>, <4 x i32>) nounwind readnone
declare <2 x i64> @llvm.aarch64.neon.sqshlu.v2i64(<2 x i64>, <2 x i64>) nounwind readnone

define <8 x i8> @rshrn8b(<8 x i16>* %A) nounwind {


        %tmp1 = load <8 x i16>, <8 x i16>* %A
        %tmp3 = call <8 x i8> @llvm.aarch64.neon.rshrn.v8i8(<8 x i16> %tmp1, i32 1)
        ret <8 x i8> %tmp3
}

define <4 x i16> @rshrn4h(<4 x i32>* %A) nounwind {


        %tmp1 = load <4 x i32>, <4 x i32>* %A
        %tmp3 = call <4 x i16> @llvm.aarch64.neon.rshrn.v4i16(<4 x i32> %tmp1, i32 1)
        ret <4 x i16> %tmp3
}

define <2 x i32> @rshrn2s(<2 x i64>* %A) nounwind {


        %tmp1 = load <2 x i64>, <2 x i64>* %A
        %tmp3 = call <2 x i32> @llvm.aarch64.neon.rshrn.v2i32(<2 x i64> %tmp1, i32 1)
        ret <2 x i32> %tmp3
}

define <16 x i8> @rshrn16b(<8 x i8> *%ret, <8 x i16>* %A) nounwind {


        %out = load <8 x i8>, <8 x i8>* %ret
        %tmp1 = load <8 x i16>, <8 x i16>* %A
        %tmp3 = call <8 x i8> @llvm.aarch64.neon.rshrn.v8i8(<8 x i16> %tmp1, i32 1)
        %tmp4 = shufflevector <8 x i8> %out, <8 x i8> %tmp3, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
        ret <16 x i8> %tmp4
}

define <8 x i16> @rshrn8h(<4 x i16>* %ret, <4 x i32>* %A) nounwind {


        %out = load <4 x i16>, <4 x i16>* %ret
        %tmp1 = load <4 x i32>, <4 x i32>* %A
        %tmp3 = call <4 x i16> @llvm.aarch64.neon.rshrn.v4i16(<4 x i32> %tmp1, i32 1)
        %tmp4 = shufflevector <4 x i16> %out, <4 x i16> %tmp3, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
        ret <8 x i16> %tmp4
}

define <4 x i32> @rshrn4s(<2 x i32>* %ret, <2 x i64>* %A) nounwind {


        %out = load <2 x i32>, <2 x i32>* %ret
        %tmp1 = load <2 x i64>, <2 x i64>* %A
        %tmp3 = call <2 x i32> @llvm.aarch64.neon.rshrn.v2i32(<2 x i64> %tmp1, i32 1)
        %tmp4 = shufflevector <2 x i32> %out, <2 x i32> %tmp3, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
        ret <4 x i32> %tmp4
}

declare <8 x i8>  @llvm.aarch64.neon.rshrn.v8i8(<8 x i16>, i32) nounwind readnone
declare <4 x i16> @llvm.aarch64.neon.rshrn.v4i16(<4 x i32>, i32) nounwind readnone
declare <2 x i32> @llvm.aarch64.neon.rshrn.v2i32(<2 x i64>, i32) nounwind readnone

define <8 x i8> @shrn8b(<8 x i16>* %A) nounwind {


        %tmp1 = load <8 x i16>, <8 x i16>* %A
        %tmp2 = lshr <8 x i16> %tmp1, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
        %tmp3 = trunc <8 x i16> %tmp2 to <8 x i8>
        ret <8 x i8> %tmp3
}

define <4 x i16> @shrn4h(<4 x i32>* %A) nounwind {


        %tmp1 = load <4 x i32>, <4 x i32>* %A
        %tmp2 = lshr <4 x i32> %tmp1, <i32 1, i32 1, i32 1, i32 1>
        %tmp3 = trunc <4 x i32> %tmp2 to <4 x i16>
        ret <4 x i16> %tmp3
}

define <2 x i32> @shrn2s(<2 x i64>* %A) nounwind {


        %tmp1 = load <2 x i64>, <2 x i64>* %A
        %tmp2 = lshr <2 x i64> %tmp1, <i64 1, i64 1>
        %tmp3 = trunc <2 x i64> %tmp2 to <2 x i32>
        ret <2 x i32> %tmp3
}

define <16 x i8> @shrn16b(<8 x i8>* %ret, <8 x i16>* %A) nounwind {


        %out = load <8 x i8>, <8 x i8>* %ret
        %tmp1 = load <8 x i16>, <8 x i16>* %A
        %tmp2 = lshr <8 x i16> %tmp1, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
        %tmp3 = trunc <8 x i16> %tmp2 to <8 x i8>
        %tmp4 = shufflevector <8 x i8> %out, <8 x i8> %tmp3, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
        ret <16 x i8> %tmp4
}

define <8 x i16> @shrn8h(<4 x i16>* %ret, <4 x i32>* %A) nounwind {


        %out = load <4 x i16>, <4 x i16>* %ret
        %tmp1 = load <4 x i32>, <4 x i32>* %A
        %tmp2 = lshr <4 x i32> %tmp1, <i32 1, i32 1, i32 1, i32 1>
        %tmp3 = trunc <4 x i32> %tmp2 to <4 x i16>
        %tmp4 = shufflevector <4 x i16> %out, <4 x i16> %tmp3, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
        ret <8 x i16> %tmp4
}

define <4 x i32> @shrn4s(<2 x i32>* %ret, <2 x i64>* %A) nounwind {


        %out = load <2 x i32>, <2 x i32>* %ret
        %tmp1 = load <2 x i64>, <2 x i64>* %A
        %tmp2 = lshr <2 x i64> %tmp1, <i64 1, i64 1>
        %tmp3 = trunc <2 x i64> %tmp2 to <2 x i32>
        %tmp4 = shufflevector <2 x i32> %out, <2 x i32> %tmp3, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
        ret <4 x i32> %tmp4
}

declare <8 x i8>  @llvm.aarch64.neon.shrn.v8i8(<8 x i16>, i32) nounwind readnone
declare <4 x i16> @llvm.aarch64.neon.shrn.v4i16(<4 x i32>, i32) nounwind readnone
declare <2 x i32> @llvm.aarch64.neon.shrn.v2i32(<2 x i64>, i32) nounwind readnone

define i32 @sqshrn1s(i64 %A) nounwind {


  %tmp = call i32 @llvm.aarch64.neon.sqshrn.i32(i64 %A, i32 1)
  ret i32 %tmp
}

define <8 x i8> @sqshrn8b(<8 x i16>* %A) nounwind {


        %tmp1 = load <8 x i16>, <8 x i16>* %A
        %tmp3 = call <8 x i8> @llvm.aarch64.neon.sqshrn.v8i8(<8 x i16> %tmp1, i32 1)
        ret <8 x i8> %tmp3
}

define <4 x i16> @sqshrn4h(<4 x i32>* %A) nounwind {


        %tmp1 = load <4 x i32>, <4 x i32>* %A
        %tmp3 = call <4 x i16> @llvm.aarch64.neon.sqshrn.v4i16(<4 x i32> %tmp1, i32 1)
        ret <4 x i16> %tmp3
}

define <2 x i32> @sqshrn2s(<2 x i64>* %A) nounwind {


        %tmp1 = load <2 x i64>, <2 x i64>* %A
        %tmp3 = call <2 x i32> @llvm.aarch64.neon.sqshrn.v2i32(<2 x i64> %tmp1, i32 1)
        ret <2 x i32> %tmp3
}


define <16 x i8> @sqshrn16b(<8 x i8>* %ret, <8 x i16>* %A) nounwind {


        %out = load <8 x i8>, <8 x i8>* %ret
        %tmp1 = load <8 x i16>, <8 x i16>* %A
        %tmp3 = call <8 x i8> @llvm.aarch64.neon.sqshrn.v8i8(<8 x i16> %tmp1, i32 1)
        %tmp4 = shufflevector <8 x i8> %out, <8 x i8> %tmp3, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
        ret <16 x i8> %tmp4
}

define <8 x i16> @sqshrn8h(<4 x i16>* %ret, <4 x i32>* %A) nounwind {


        %out = load <4 x i16>, <4 x i16>* %ret
        %tmp1 = load <4 x i32>, <4 x i32>* %A
        %tmp3 = call <4 x i16> @llvm.aarch64.neon.sqshrn.v4i16(<4 x i32> %tmp1, i32 1)
        %tmp4 = shufflevector <4 x i16> %out, <4 x i16> %tmp3, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
        ret <8 x i16> %tmp4
}

define <4 x i32> @sqshrn4s(<2 x i32>* %ret, <2 x i64>* %A) nounwind {


        %out = load <2 x i32>, <2 x i32>* %ret
        %tmp1 = load <2 x i64>, <2 x i64>* %A
        %tmp3 = call <2 x i32> @llvm.aarch64.neon.sqshrn.v2i32(<2 x i64> %tmp1, i32 1)
        %tmp4 = shufflevector <2 x i32> %out, <2 x i32> %tmp3, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
        ret <4 x i32> %tmp4
}

declare i32  @llvm.aarch64.neon.sqshrn.i32(i64, i32) nounwind readnone
declare <8 x i8>  @llvm.aarch64.neon.sqshrn.v8i8(<8 x i16>, i32) nounwind readnone
declare <4 x i16> @llvm.aarch64.neon.sqshrn.v4i16(<4 x i32>, i32) nounwind readnone
declare <2 x i32> @llvm.aarch64.neon.sqshrn.v2i32(<2 x i64>, i32) nounwind readnone

define i32 @sqshrun1s(i64 %A) nounwind {


  %tmp = call i32 @llvm.aarch64.neon.sqshrun.i32(i64 %A, i32 1)
  ret i32 %tmp
}

define <8 x i8> @sqshrun8b(<8 x i16>* %A) nounwind {


        %tmp1 = load <8 x i16>, <8 x i16>* %A
        %tmp3 = call <8 x i8> @llvm.aarch64.neon.sqshrun.v8i8(<8 x i16> %tmp1, i32 1)
        ret <8 x i8> %tmp3
}

define <4 x i16> @sqshrun4h(<4 x i32>* %A) nounwind {


        %tmp1 = load <4 x i32>, <4 x i32>* %A
        %tmp3 = call <4 x i16> @llvm.aarch64.neon.sqshrun.v4i16(<4 x i32> %tmp1, i32 1)
        ret <4 x i16> %tmp3
}

define <2 x i32> @sqshrun2s(<2 x i64>* %A) nounwind {


        %tmp1 = load <2 x i64>, <2 x i64>* %A
        %tmp3 = call <2 x i32> @llvm.aarch64.neon.sqshrun.v2i32(<2 x i64> %tmp1, i32 1)
        ret <2 x i32> %tmp3
}

define <16 x i8> @sqshrun16b(<8 x i8>* %ret, <8 x i16>* %A) nounwind {


        %out = load <8 x i8>, <8 x i8>* %ret
        %tmp1 = load <8 x i16>, <8 x i16>* %A
        %tmp3 = call <8 x i8> @llvm.aarch64.neon.sqshrun.v8i8(<8 x i16> %tmp1, i32 1)
        %tmp4 = shufflevector <8 x i8> %out, <8 x i8> %tmp3, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
        ret <16 x i8> %tmp4
}

define <8 x i16> @sqshrun8h(<4 x i16>* %ret, <4 x i32>* %A) nounwind {


        %out = load <4 x i16>, <4 x i16>* %ret
        %tmp1 = load <4 x i32>, <4 x i32>* %A
        %tmp3 = call <4 x i16> @llvm.aarch64.neon.sqshrun.v4i16(<4 x i32> %tmp1, i32 1)
        %tmp4 = shufflevector <4 x i16> %out, <4 x i16> %tmp3, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
        ret <8 x i16> %tmp4
}

define <4 x i32> @sqshrun4s(<2 x i32>* %ret, <2 x i64>* %A) nounwind {


        %out = load <2 x i32>, <2 x i32>* %ret
        %tmp1 = load <2 x i64>, <2 x i64>* %A
        %tmp3 = call <2 x i32> @llvm.aarch64.neon.sqshrun.v2i32(<2 x i64> %tmp1, i32 1)
        %tmp4 = shufflevector <2 x i32> %out, <2 x i32> %tmp3, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
        ret <4 x i32> %tmp4
}

declare i32  @llvm.aarch64.neon.sqshrun.i32(i64, i32) nounwind readnone
declare <8 x i8>  @llvm.aarch64.neon.sqshrun.v8i8(<8 x i16>, i32) nounwind readnone
declare <4 x i16> @llvm.aarch64.neon.sqshrun.v4i16(<4 x i32>, i32) nounwind readnone
declare <2 x i32> @llvm.aarch64.neon.sqshrun.v2i32(<2 x i64>, i32) nounwind readnone

define i32 @sqrshrn1s(i64 %A) nounwind {


  %tmp = call i32 @llvm.aarch64.neon.sqrshrn.i32(i64 %A, i32 1)
  ret i32 %tmp
}

define <8 x i8> @sqrshrn8b(<8 x i16>* %A) nounwind {


        %tmp1 = load <8 x i16>, <8 x i16>* %A
        %tmp3 = call <8 x i8> @llvm.aarch64.neon.sqrshrn.v8i8(<8 x i16> %tmp1, i32 1)
        ret <8 x i8> %tmp3
}

define <4 x i16> @sqrshrn4h(<4 x i32>* %A) nounwind {


        %tmp1 = load <4 x i32>, <4 x i32>* %A
        %tmp3 = call <4 x i16> @llvm.aarch64.neon.sqrshrn.v4i16(<4 x i32> %tmp1, i32 1)
        ret <4 x i16> %tmp3
}

define <2 x i32> @sqrshrn2s(<2 x i64>* %A) nounwind {


        %tmp1 = load <2 x i64>, <2 x i64>* %A
        %tmp3 = call <2 x i32> @llvm.aarch64.neon.sqrshrn.v2i32(<2 x i64> %tmp1, i32 1)
        ret <2 x i32> %tmp3
}

define <16 x i8> @sqrshrn16b(<8 x i8>* %ret, <8 x i16>* %A) nounwind {


        %out = load <8 x i8>, <8 x i8>* %ret
        %tmp1 = load <8 x i16>, <8 x i16>* %A
        %tmp3 = call <8 x i8> @llvm.aarch64.neon.sqrshrn.v8i8(<8 x i16> %tmp1, i32 1)
        %tmp4 = shufflevector <8 x i8> %out, <8 x i8> %tmp3, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
        ret <16 x i8> %tmp4
}

define <8 x i16> @sqrshrn8h(<4 x i16>* %ret, <4 x i32>* %A) nounwind {


        %out = load <4 x i16>, <4 x i16>* %ret
        %tmp1 = load <4 x i32>, <4 x i32>* %A
        %tmp3 = call <4 x i16> @llvm.aarch64.neon.sqrshrn.v4i16(<4 x i32> %tmp1, i32 1)
        %tmp4 = shufflevector <4 x i16> %out, <4 x i16> %tmp3, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
        ret <8 x i16> %tmp4
}

define <4 x i32> @sqrshrn4s(<2 x i32>* %ret, <2 x i64>* %A) nounwind {


        %out = load <2 x i32>, <2 x i32>* %ret
        %tmp1 = load <2 x i64>, <2 x i64>* %A
        %tmp3 = call <2 x i32> @llvm.aarch64.neon.sqrshrn.v2i32(<2 x i64> %tmp1, i32 1)
        %tmp4 = shufflevector <2 x i32> %out, <2 x i32> %tmp3, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
        ret <4 x i32> %tmp4
}

declare i32  @llvm.aarch64.neon.sqrshrn.i32(i64, i32) nounwind readnone
declare <8 x i8>  @llvm.aarch64.neon.sqrshrn.v8i8(<8 x i16>, i32) nounwind readnone
declare <4 x i16> @llvm.aarch64.neon.sqrshrn.v4i16(<4 x i32>, i32) nounwind readnone
declare <2 x i32> @llvm.aarch64.neon.sqrshrn.v2i32(<2 x i64>, i32) nounwind readnone

define i32 @sqrshrun1s(i64 %A) nounwind {


  %tmp = call i32 @llvm.aarch64.neon.sqrshrun.i32(i64 %A, i32 1)
  ret i32 %tmp
}

define <8 x i8> @sqrshrun8b(<8 x i16>* %A) nounwind {


        %tmp1 = load <8 x i16>, <8 x i16>* %A
        %tmp3 = call <8 x i8> @llvm.aarch64.neon.sqrshrun.v8i8(<8 x i16> %tmp1, i32 1)
        ret <8 x i8> %tmp3
}

define <4 x i16> @sqrshrun4h(<4 x i32>* %A) nounwind {


        %tmp1 = load <4 x i32>, <4 x i32>* %A
        %tmp3 = call <4 x i16> @llvm.aarch64.neon.sqrshrun.v4i16(<4 x i32> %tmp1, i32 1)
        ret <4 x i16> %tmp3
}

define <2 x i32> @sqrshrun2s(<2 x i64>* %A) nounwind {


        %tmp1 = load <2 x i64>, <2 x i64>* %A
        %tmp3 = call <2 x i32> @llvm.aarch64.neon.sqrshrun.v2i32(<2 x i64> %tmp1, i32 1)
        ret <2 x i32> %tmp3
}

define <16 x i8> @sqrshrun16b(<8 x i8>* %ret, <8 x i16>* %A) nounwind {


        %out = load <8 x i8>, <8 x i8>* %ret
        %tmp1 = load <8 x i16>, <8 x i16>* %A
        %tmp3 = call <8 x i8> @llvm.aarch64.neon.sqrshrun.v8i8(<8 x i16> %tmp1, i32 1)
        %tmp4 = shufflevector <8 x i8> %out, <8 x i8> %tmp3, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
        ret <16 x i8> %tmp4
}

define <8 x i16> @sqrshrun8h(<4 x i16>* %ret, <4 x i32>* %A) nounwind {


        %out = load <4 x i16>, <4 x i16>* %ret
        %tmp1 = load <4 x i32>, <4 x i32>* %A
        %tmp3 = call <4 x i16> @llvm.aarch64.neon.sqrshrun.v4i16(<4 x i32> %tmp1, i32 1)
        %tmp4 = shufflevector <4 x i16> %out, <4 x i16> %tmp3, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
        ret <8 x i16> %tmp4
}

define <4 x i32> @sqrshrun4s(<2 x i32>* %ret, <2 x i64>* %A) nounwind {


        %out = load <2 x i32>, <2 x i32>* %ret
        %tmp1 = load <2 x i64>, <2 x i64>* %A
        %tmp3 = call <2 x i32> @llvm.aarch64.neon.sqrshrun.v2i32(<2 x i64> %tmp1, i32 1)
        %tmp4 = shufflevector <2 x i32> %out, <2 x i32> %tmp3, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
        ret <4 x i32> %tmp4
}

declare i32  @llvm.aarch64.neon.sqrshrun.i32(i64, i32) nounwind readnone
declare <8 x i8>  @llvm.aarch64.neon.sqrshrun.v8i8(<8 x i16>, i32) nounwind readnone
declare <4 x i16> @llvm.aarch64.neon.sqrshrun.v4i16(<4 x i32>, i32) nounwind readnone
declare <2 x i32> @llvm.aarch64.neon.sqrshrun.v2i32(<2 x i64>, i32) nounwind readnone

define i32 @uqrshrn1s(i64 %A) nounwind {


  %tmp = call i32 @llvm.aarch64.neon.uqrshrn.i32(i64 %A, i32 1)
  ret i32 %tmp
}

define <8 x i8> @uqrshrn8b(<8 x i16>* %A) nounwind {


        %tmp1 = load <8 x i16>, <8 x i16>* %A
        %tmp3 = call <8 x i8> @llvm.aarch64.neon.uqrshrn.v8i8(<8 x i16> %tmp1, i32 1)
        ret <8 x i8> %tmp3
}

define <4 x i16> @uqrshrn4h(<4 x i32>* %A) nounwind {


        %tmp1 = load <4 x i32>, <4 x i32>* %A
        %tmp3 = call <4 x i16> @llvm.aarch64.neon.uqrshrn.v4i16(<4 x i32> %tmp1, i32 1)
        ret <4 x i16> %tmp3
}

define <2 x i32> @uqrshrn2s(<2 x i64>* %A) nounwind {


        %tmp1 = load <2 x i64>, <2 x i64>* %A
        %tmp3 = call <2 x i32> @llvm.aarch64.neon.uqrshrn.v2i32(<2 x i64> %tmp1, i32 1)
        ret <2 x i32> %tmp3
}

define <16 x i8> @uqrshrn16b(<8 x i8>* %ret, <8 x i16>* %A) nounwind {


        %out = load <8 x i8>, <8 x i8>* %ret
        %tmp1 = load <8 x i16>, <8 x i16>* %A
        %tmp3 = call <8 x i8> @llvm.aarch64.neon.uqrshrn.v8i8(<8 x i16> %tmp1, i32 1)
        %tmp4 = shufflevector <8 x i8> %out, <8 x i8> %tmp3, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
        ret <16 x i8> %tmp4
}

define <8 x i16> @uqrshrn8h(<4 x i16>* %ret, <4 x i32>* %A) nounwind {


        %out = load <4 x i16>, <4 x i16>* %ret
        %tmp1 = load <4 x i32>, <4 x i32>* %A
        %tmp3 = call <4 x i16> @llvm.aarch64.neon.uqrshrn.v4i16(<4 x i32> %tmp1, i32 1)
        %tmp4 = shufflevector <4 x i16> %out, <4 x i16> %tmp3, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
        ret <8 x i16> %tmp4
}

define <4 x i32> @uqrshrn4s(<2 x i32>* %ret, <2 x i64>* %A) nounwind {


        %out = load <2 x i32>, <2 x i32>* %ret
        %tmp1 = load <2 x i64>, <2 x i64>* %A
        %tmp3 = call <2 x i32> @llvm.aarch64.neon.uqrshrn.v2i32(<2 x i64> %tmp1, i32 1)
        %tmp4 = shufflevector <2 x i32> %out, <2 x i32> %tmp3, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
        ret <4 x i32> %tmp4
}

declare i32  @llvm.aarch64.neon.uqrshrn.i32(i64, i32) nounwind readnone
declare <8 x i8>  @llvm.aarch64.neon.uqrshrn.v8i8(<8 x i16>, i32) nounwind readnone
declare <4 x i16> @llvm.aarch64.neon.uqrshrn.v4i16(<4 x i32>, i32) nounwind readnone
declare <2 x i32> @llvm.aarch64.neon.uqrshrn.v2i32(<2 x i64>, i32) nounwind readnone

define i32 @uqshrn1s(i64 %A) nounwind {


  %tmp = call i32 @llvm.aarch64.neon.uqshrn.i32(i64 %A, i32 1)
  ret i32 %tmp
}

define <8 x i8> @uqshrn8b(<8 x i16>* %A) nounwind {


        %tmp1 = load <8 x i16>, <8 x i16>* %A
        %tmp3 = call <8 x i8> @llvm.aarch64.neon.uqshrn.v8i8(<8 x i16> %tmp1, i32 1)
        ret <8 x i8> %tmp3
}

define <4 x i16> @uqshrn4h(<4 x i32>* %A) nounwind {


        %tmp1 = load <4 x i32>, <4 x i32>* %A
        %tmp3 = call <4 x i16> @llvm.aarch64.neon.uqshrn.v4i16(<4 x i32> %tmp1, i32 1)
        ret <4 x i16> %tmp3
}

define <2 x i32> @uqshrn2s(<2 x i64>* %A) nounwind {


        %tmp1 = load <2 x i64>, <2 x i64>* %A
        %tmp3 = call <2 x i32> @llvm.aarch64.neon.uqshrn.v2i32(<2 x i64> %tmp1, i32 1)
        ret <2 x i32> %tmp3
}

define <16 x i8> @uqshrn16b(<8 x i8>* %ret, <8 x i16>* %A) nounwind {


        %out = load <8 x i8>, <8 x i8>* %ret
        %tmp1 = load <8 x i16>, <8 x i16>* %A
        %tmp3 = call <8 x i8> @llvm.aarch64.neon.uqshrn.v8i8(<8 x i16> %tmp1, i32 1)
        %tmp4 = shufflevector <8 x i8> %out, <8 x i8> %tmp3, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
        ret <16 x i8> %tmp4
}

define <8 x i16> @uqshrn8h(<4 x i16>* %ret, <4 x i32>* %A) nounwind {


  %out = load <4 x i16>, <4 x i16>* %ret
  %tmp1 = load <4 x i32>, <4 x i32>* %A
  %tmp3 = call <4 x i16> @llvm.aarch64.neon.uqshrn.v4i16(<4 x i32> %tmp1, i32 1)
  %tmp4 = shufflevector <4 x i16> %out, <4 x i16> %tmp3, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  ret <8 x i16> %tmp4
}

define <4 x i32> @uqshrn4s(<2 x i32>* %ret, <2 x i64>* %A) nounwind {


  %out = load <2 x i32>, <2 x i32>* %ret
  %tmp1 = load <2 x i64>, <2 x i64>* %A
  %tmp3 = call <2 x i32> @llvm.aarch64.neon.uqshrn.v2i32(<2 x i64> %tmp1, i32 1)
  %tmp4 = shufflevector <2 x i32> %out, <2 x i32> %tmp3, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  ret <4 x i32> %tmp4
}

declare i32  @llvm.aarch64.neon.uqshrn.i32(i64, i32) nounwind readnone
declare <8 x i8>  @llvm.aarch64.neon.uqshrn.v8i8(<8 x i16>, i32) nounwind readnone
declare <4 x i16> @llvm.aarch64.neon.uqshrn.v4i16(<4 x i32>, i32) nounwind readnone
declare <2 x i32> @llvm.aarch64.neon.uqshrn.v2i32(<2 x i64>, i32) nounwind readnone

define <8 x i16> @ushll8h(<8 x i8>* %A) nounwind {


        %tmp1 = load <8 x i8>, <8 x i8>* %A
        %tmp2 = zext <8 x i8> %tmp1 to <8 x i16>
        %tmp3 = shl <8 x i16> %tmp2, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
        ret <8 x i16> %tmp3
}

define <4 x i32> @ushll4s(<4 x i16>* %A) nounwind {


        %tmp1 = load <4 x i16>, <4 x i16>* %A
        %tmp2 = zext <4 x i16> %tmp1 to <4 x i32>
        %tmp3 = shl <4 x i32> %tmp2, <i32 1, i32 1, i32 1, i32 1>
        ret <4 x i32> %tmp3
}

define <2 x i64> @ushll2d(<2 x i32>* %A) nounwind {


        %tmp1 = load <2 x i32>, <2 x i32>* %A
        %tmp2 = zext <2 x i32> %tmp1 to <2 x i64>
        %tmp3 = shl <2 x i64> %tmp2, <i64 1, i64 1>
        ret <2 x i64> %tmp3
}

define <8 x i16> @ushll2_8h(<16 x i8>* %A) nounwind {


        %load1 = load <16 x i8>, <16 x i8>* %A
        %tmp1 = shufflevector <16 x i8> %load1, <16 x i8> undef, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
        %tmp2 = zext <8 x i8> %tmp1 to <8 x i16>
        %tmp3 = shl <8 x i16> %tmp2, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
        ret <8 x i16> %tmp3
}

define <4 x i32> @ushll2_4s(<8 x i16>* %A) nounwind {


        %load1 = load <8 x i16>, <8 x i16>* %A
        %tmp1 = shufflevector <8 x i16> %load1, <8 x i16> undef, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
        %tmp2 = zext <4 x i16> %tmp1 to <4 x i32>
        %tmp3 = shl <4 x i32> %tmp2, <i32 1, i32 1, i32 1, i32 1>
        ret <4 x i32> %tmp3
}

define <2 x i64> @ushll2_2d(<4 x i32>* %A) nounwind {


        %load1 = load <4 x i32>, <4 x i32>* %A
        %tmp1 = shufflevector <4 x i32> %load1, <4 x i32> undef, <2 x i32> <i32 2, i32 3>
        %tmp2 = zext <2 x i32> %tmp1 to <2 x i64>
        %tmp3 = shl <2 x i64> %tmp2, <i64 1, i64 1>
        ret <2 x i64> %tmp3
}

define <8 x i16> @sshll8h(<8 x i8>* %A) nounwind {


        %tmp1 = load <8 x i8>, <8 x i8>* %A
        %tmp2 = sext <8 x i8> %tmp1 to <8 x i16>
        %tmp3 = shl <8 x i16> %tmp2, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
        ret <8 x i16> %tmp3
}

define <4 x i32> @sshll4s(<4 x i16>* %A) nounwind {


        %tmp1 = load <4 x i16>, <4 x i16>* %A
        %tmp2 = sext <4 x i16> %tmp1 to <4 x i32>
        %tmp3 = shl <4 x i32> %tmp2, <i32 1, i32 1, i32 1, i32 1>
        ret <4 x i32> %tmp3
}

define <2 x i64> @sshll2d(<2 x i32>* %A) nounwind {


        %tmp1 = load <2 x i32>, <2 x i32>* %A
        %tmp2 = sext <2 x i32> %tmp1 to <2 x i64>
        %tmp3 = shl <2 x i64> %tmp2, <i64 1, i64 1>
        ret <2 x i64> %tmp3
}

define <8 x i16> @sshll2_8h(<16 x i8>* %A) nounwind {


        %load1 = load <16 x i8>, <16 x i8>* %A
        %tmp1 = shufflevector <16 x i8> %load1, <16 x i8> undef, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
        %tmp2 = sext <8 x i8> %tmp1 to <8 x i16>
        %tmp3 = shl <8 x i16> %tmp2, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
        ret <8 x i16> %tmp3
}

define <4 x i32> @sshll2_4s(<8 x i16>* %A) nounwind {


        %load1 = load <8 x i16>, <8 x i16>* %A
        %tmp1 = shufflevector <8 x i16> %load1, <8 x i16> undef, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
        %tmp2 = sext <4 x i16> %tmp1 to <4 x i32>
        %tmp3 = shl <4 x i32> %tmp2, <i32 1, i32 1, i32 1, i32 1>
        ret <4 x i32> %tmp3
}

define <2 x i64> @sshll2_2d(<4 x i32>* %A) nounwind {


        %load1 = load <4 x i32>, <4 x i32>* %A
        %tmp1 = shufflevector <4 x i32> %load1, <4 x i32> undef, <2 x i32> <i32 2, i32 3>
        %tmp2 = sext <2 x i32> %tmp1 to <2 x i64>
        %tmp3 = shl <2 x i64> %tmp2, <i64 1, i64 1>
        ret <2 x i64> %tmp3
}

define <8 x i8> @sqshli8b(<8 x i8>* %A) nounwind {


        %tmp1 = load <8 x i8>, <8 x i8>* %A
        %tmp3 = call <8 x i8> @llvm.aarch64.neon.sqshl.v8i8(<8 x i8> %tmp1, <8 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>)
        ret <8 x i8> %tmp3
}

define <4 x i16> @sqshli4h(<4 x i16>* %A) nounwind {


        %tmp1 = load <4 x i16>, <4 x i16>* %A
        %tmp3 = call <4 x i16> @llvm.aarch64.neon.sqshl.v4i16(<4 x i16> %tmp1, <4 x i16> <i16 1, i16 1, i16 1, i16 1>)
        ret <4 x i16> %tmp3
}

define <2 x i32> @sqshli2s(<2 x i32>* %A) nounwind {


        %tmp1 = load <2 x i32>, <2 x i32>* %A
        %tmp3 = call <2 x i32> @llvm.aarch64.neon.sqshl.v2i32(<2 x i32> %tmp1, <2 x i32> <i32 1, i32 1>)
        ret <2 x i32> %tmp3
}

define <16 x i8> @sqshli16b(<16 x i8>* %A) nounwind {


        %tmp1 = load <16 x i8>, <16 x i8>* %A
        %tmp3 = call <16 x i8> @llvm.aarch64.neon.sqshl.v16i8(<16 x i8> %tmp1, <16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>)
        ret <16 x i8> %tmp3
}

define <8 x i16> @sqshli8h(<8 x i16>* %A) nounwind {


        %tmp1 = load <8 x i16>, <8 x i16>* %A
        %tmp3 = call <8 x i16> @llvm.aarch64.neon.sqshl.v8i16(<8 x i16> %tmp1, <8 x i16> <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>)
        ret <8 x i16> %tmp3
}

define <4 x i32> @sqshli4s(<4 x i32>* %A) nounwind {


        %tmp1 = load <4 x i32>, <4 x i32>* %A
        %tmp3 = call <4 x i32> @llvm.aarch64.neon.sqshl.v4i32(<4 x i32> %tmp1, <4 x i32> <i32 1, i32 1, i32 1, i32 1>)
        ret <4 x i32> %tmp3
}

define <2 x i64> @sqshli2d(<2 x i64>* %A) nounwind {


        %tmp1 = load <2 x i64>, <2 x i64>* %A
        %tmp3 = call <2 x i64> @llvm.aarch64.neon.sqshl.v2i64(<2 x i64> %tmp1, <2 x i64> <i64 1, i64 1>)
        ret <2 x i64> %tmp3
}

define <8 x i8> @uqshli8b(<8 x i8>* %A) nounwind {


        %tmp1 = load <8 x i8>, <8 x i8>* %A
        %tmp3 = call <8 x i8> @llvm.aarch64.neon.uqshl.v8i8(<8 x i8> %tmp1, <8 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>)
        ret <8 x i8> %tmp3
}

define <8 x i8> @uqshli8b_1(<8 x i8>* %A) nounwind {



        %tmp1 = load <8 x i8>, <8 x i8>* %A
        %tmp3 = call <8 x i8> @llvm.aarch64.neon.uqshl.v8i8(<8 x i8> %tmp1, <8 x i8> <i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8>)
        ret <8 x i8> %tmp3
}

define <4 x i16> @uqshli4h(<4 x i16>* %A) nounwind {


        %tmp1 = load <4 x i16>, <4 x i16>* %A
        %tmp3 = call <4 x i16> @llvm.aarch64.neon.uqshl.v4i16(<4 x i16> %tmp1, <4 x i16> <i16 1, i16 1, i16 1, i16 1>)
        ret <4 x i16> %tmp3
}

define <2 x i32> @uqshli2s(<2 x i32>* %A) nounwind {


        %tmp1 = load <2 x i32>, <2 x i32>* %A
        %tmp3 = call <2 x i32> @llvm.aarch64.neon.uqshl.v2i32(<2 x i32> %tmp1, <2 x i32> <i32 1, i32 1>)
        ret <2 x i32> %tmp3
}

define <16 x i8> @uqshli16b(<16 x i8>* %A) nounwind {


        %tmp1 = load <16 x i8>, <16 x i8>* %A
        %tmp3 = call <16 x i8> @llvm.aarch64.neon.uqshl.v16i8(<16 x i8> %tmp1, <16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>)
        ret <16 x i8> %tmp3
}

define <8 x i16> @uqshli8h(<8 x i16>* %A) nounwind {


        %tmp1 = load <8 x i16>, <8 x i16>* %A
        %tmp3 = call <8 x i16> @llvm.aarch64.neon.uqshl.v8i16(<8 x i16> %tmp1, <8 x i16> <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>)
        ret <8 x i16> %tmp3
}

define <4 x i32> @uqshli4s(<4 x i32>* %A) nounwind {


        %tmp1 = load <4 x i32>, <4 x i32>* %A
        %tmp3 = call <4 x i32> @llvm.aarch64.neon.uqshl.v4i32(<4 x i32> %tmp1, <4 x i32> <i32 1, i32 1, i32 1, i32 1>)
        ret <4 x i32> %tmp3
}

define <2 x i64> @uqshli2d(<2 x i64>* %A) nounwind {


        %tmp1 = load <2 x i64>, <2 x i64>* %A
        %tmp3 = call <2 x i64> @llvm.aarch64.neon.uqshl.v2i64(<2 x i64> %tmp1, <2 x i64> <i64 1, i64 1>)
        ret <2 x i64> %tmp3
}

define <8 x i8> @ursra8b(<8 x i8>* %A, <8 x i8>* %B) nounwind {


        %tmp1 = load <8 x i8>, <8 x i8>* %A
        %tmp3 = call <8 x i8> @llvm.aarch64.neon.urshl.v8i8(<8 x i8> %tmp1, <8 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>)
        %tmp4 = load <8 x i8>, <8 x i8>* %B
        %tmp5 = add <8 x i8> %tmp3, %tmp4
        ret <8 x i8> %tmp5
}

define <4 x i16> @ursra4h(<4 x i16>* %A, <4 x i16>* %B) nounwind {


        %tmp1 = load <4 x i16>, <4 x i16>* %A
        %tmp3 = call <4 x i16> @llvm.aarch64.neon.urshl.v4i16(<4 x i16> %tmp1, <4 x i16> <i16 -1, i16 -1, i16 -1, i16 -1>)
        %tmp4 = load <4 x i16>, <4 x i16>* %B
        %tmp5 = add <4 x i16> %tmp3, %tmp4
        ret <4 x i16> %tmp5
}

define <2 x i32> @ursra2s(<2 x i32>* %A, <2 x i32>* %B) nounwind {


        %tmp1 = load <2 x i32>, <2 x i32>* %A
        %tmp3 = call <2 x i32> @llvm.aarch64.neon.urshl.v2i32(<2 x i32> %tmp1, <2 x i32> <i32 -1, i32 -1>)
        %tmp4 = load <2 x i32>, <2 x i32>* %B
        %tmp5 = add <2 x i32> %tmp3, %tmp4
        ret <2 x i32> %tmp5
}

define <16 x i8> @ursra16b(<16 x i8>* %A, <16 x i8>* %B) nounwind {


        %tmp1 = load <16 x i8>, <16 x i8>* %A
        %tmp3 = call <16 x i8> @llvm.aarch64.neon.urshl.v16i8(<16 x i8> %tmp1, <16 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>)
        %tmp4 = load <16 x i8>, <16 x i8>* %B
        %tmp5 = add <16 x i8> %tmp3, %tmp4
         ret <16 x i8> %tmp5
}

define <8 x i16> @ursra8h(<8 x i16>* %A, <8 x i16>* %B) nounwind {


        %tmp1 = load <8 x i16>, <8 x i16>* %A
        %tmp3 = call <8 x i16> @llvm.aarch64.neon.urshl.v8i16(<8 x i16> %tmp1, <8 x i16> <i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1>)
        %tmp4 = load <8 x i16>, <8 x i16>* %B
        %tmp5 = add <8 x i16> %tmp3, %tmp4
         ret <8 x i16> %tmp5
}

define <4 x i32> @ursra4s(<4 x i32>* %A, <4 x i32>* %B) nounwind {


        %tmp1 = load <4 x i32>, <4 x i32>* %A
        %tmp3 = call <4 x i32> @llvm.aarch64.neon.urshl.v4i32(<4 x i32> %tmp1, <4 x i32> <i32 -1, i32 -1, i32 -1, i32 -1>)
        %tmp4 = load <4 x i32>, <4 x i32>* %B
        %tmp5 = add <4 x i32> %tmp3, %tmp4
         ret <4 x i32> %tmp5
}

define <2 x i64> @ursra2d(<2 x i64>* %A, <2 x i64>* %B) nounwind {


        %tmp1 = load <2 x i64>, <2 x i64>* %A
        %tmp3 = call <2 x i64> @llvm.aarch64.neon.urshl.v2i64(<2 x i64> %tmp1, <2 x i64> <i64 -1, i64 -1>)
        %tmp4 = load <2 x i64>, <2 x i64>* %B
        %tmp5 = add <2 x i64> %tmp3, %tmp4
         ret <2 x i64> %tmp5
}

define <8 x i8> @srsra8b(<8 x i8>* %A, <8 x i8>* %B) nounwind {


        %tmp1 = load <8 x i8>, <8 x i8>* %A
        %tmp3 = call <8 x i8> @llvm.aarch64.neon.srshl.v8i8(<8 x i8> %tmp1, <8 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>)
        %tmp4 = load <8 x i8>, <8 x i8>* %B
        %tmp5 = add <8 x i8> %tmp3, %tmp4
        ret <8 x i8> %tmp5
}

define <4 x i16> @srsra4h(<4 x i16>* %A, <4 x i16>* %B) nounwind {


        %tmp1 = load <4 x i16>, <4 x i16>* %A
        %tmp3 = call <4 x i16> @llvm.aarch64.neon.srshl.v4i16(<4 x i16> %tmp1, <4 x i16> <i16 -1, i16 -1, i16 -1, i16 -1>)
        %tmp4 = load <4 x i16>, <4 x i16>* %B
        %tmp5 = add <4 x i16> %tmp3, %tmp4
        ret <4 x i16> %tmp5
}

define <2 x i32> @srsra2s(<2 x i32>* %A, <2 x i32>* %B) nounwind {


        %tmp1 = load <2 x i32>, <2 x i32>* %A
        %tmp3 = call <2 x i32> @llvm.aarch64.neon.srshl.v2i32(<2 x i32> %tmp1, <2 x i32> <i32 -1, i32 -1>)
        %tmp4 = load <2 x i32>, <2 x i32>* %B
        %tmp5 = add <2 x i32> %tmp3, %tmp4
        ret <2 x i32> %tmp5
}

define <16 x i8> @srsra16b(<16 x i8>* %A, <16 x i8>* %B) nounwind {


        %tmp1 = load <16 x i8>, <16 x i8>* %A
        %tmp3 = call <16 x i8> @llvm.aarch64.neon.srshl.v16i8(<16 x i8> %tmp1, <16 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>)
        %tmp4 = load <16 x i8>, <16 x i8>* %B
        %tmp5 = add <16 x i8> %tmp3, %tmp4
         ret <16 x i8> %tmp5
}

define <8 x i16> @srsra8h(<8 x i16>* %A, <8 x i16>* %B) nounwind {


        %tmp1 = load <8 x i16>, <8 x i16>* %A
        %tmp3 = call <8 x i16> @llvm.aarch64.neon.srshl.v8i16(<8 x i16> %tmp1, <8 x i16> <i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1>)
        %tmp4 = load <8 x i16>, <8 x i16>* %B
        %tmp5 = add <8 x i16> %tmp3, %tmp4
         ret <8 x i16> %tmp5
}

define <4 x i32> @srsra4s(<4 x i32>* %A, <4 x i32>* %B) nounwind {


        %tmp1 = load <4 x i32>, <4 x i32>* %A
        %tmp3 = call <4 x i32> @llvm.aarch64.neon.srshl.v4i32(<4 x i32> %tmp1, <4 x i32> <i32 -1, i32 -1, i32 -1, i32 -1>)
        %tmp4 = load <4 x i32>, <4 x i32>* %B
        %tmp5 = add <4 x i32> %tmp3, %tmp4
         ret <4 x i32> %tmp5
}

define <2 x i64> @srsra2d(<2 x i64>* %A, <2 x i64>* %B) nounwind {


        %tmp1 = load <2 x i64>, <2 x i64>* %A
        %tmp3 = call <2 x i64> @llvm.aarch64.neon.srshl.v2i64(<2 x i64> %tmp1, <2 x i64> <i64 -1, i64 -1>)
        %tmp4 = load <2 x i64>, <2 x i64>* %B
        %tmp5 = add <2 x i64> %tmp3, %tmp4
         ret <2 x i64> %tmp5
}

define <8 x i8> @usra8b(<8 x i8>* %A, <8 x i8>* %B) nounwind {


        %tmp1 = load <8 x i8>, <8 x i8>* %A
        %tmp3 = lshr <8 x i8> %tmp1, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
        %tmp4 = load <8 x i8>, <8 x i8>* %B
        %tmp5 = add <8 x i8> %tmp3, %tmp4
        ret <8 x i8> %tmp5
}

define <4 x i16> @usra4h(<4 x i16>* %A, <4 x i16>* %B) nounwind {


        %tmp1 = load <4 x i16>, <4 x i16>* %A
        %tmp3 = lshr <4 x i16> %tmp1, <i16 1, i16 1, i16 1, i16 1>
        %tmp4 = load <4 x i16>, <4 x i16>* %B
        %tmp5 = add <4 x i16> %tmp3, %tmp4
        ret <4 x i16> %tmp5
}

define <2 x i32> @usra2s(<2 x i32>* %A, <2 x i32>* %B) nounwind {


        %tmp1 = load <2 x i32>, <2 x i32>* %A
        %tmp3 = lshr <2 x i32> %tmp1, <i32 1, i32 1>
        %tmp4 = load <2 x i32>, <2 x i32>* %B
        %tmp5 = add <2 x i32> %tmp3, %tmp4
        ret <2 x i32> %tmp5
}

define <16 x i8> @usra16b(<16 x i8>* %A, <16 x i8>* %B) nounwind {


        %tmp1 = load <16 x i8>, <16 x i8>* %A
        %tmp3 = lshr <16 x i8> %tmp1, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
        %tmp4 = load <16 x i8>, <16 x i8>* %B
        %tmp5 = add <16 x i8> %tmp3, %tmp4
         ret <16 x i8> %tmp5
}

define <8 x i16> @usra8h(<8 x i16>* %A, <8 x i16>* %B) nounwind {


        %tmp1 = load <8 x i16>, <8 x i16>* %A
        %tmp3 = lshr <8 x i16> %tmp1, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
        %tmp4 = load <8 x i16>, <8 x i16>* %B
        %tmp5 = add <8 x i16> %tmp3, %tmp4
         ret <8 x i16> %tmp5
}

define <4 x i32> @usra4s(<4 x i32>* %A, <4 x i32>* %B) nounwind {


        %tmp1 = load <4 x i32>, <4 x i32>* %A
        %tmp3 = lshr <4 x i32> %tmp1, <i32 1, i32 1, i32 1, i32 1>
        %tmp4 = load <4 x i32>, <4 x i32>* %B
        %tmp5 = add <4 x i32> %tmp3, %tmp4
         ret <4 x i32> %tmp5
}

define <2 x i64> @usra2d(<2 x i64>* %A, <2 x i64>* %B) nounwind {


        %tmp1 = load <2 x i64>, <2 x i64>* %A
        %tmp3 = lshr <2 x i64> %tmp1, <i64 1, i64 1>
        %tmp4 = load <2 x i64>, <2 x i64>* %B
        %tmp5 = add <2 x i64> %tmp3, %tmp4
         ret <2 x i64> %tmp5
}

define <8 x i8> @ssra8b(<8 x i8>* %A, <8 x i8>* %B) nounwind {


        %tmp1 = load <8 x i8>, <8 x i8>* %A
        %tmp3 = ashr <8 x i8> %tmp1, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
        %tmp4 = load <8 x i8>, <8 x i8>* %B
        %tmp5 = add <8 x i8> %tmp3, %tmp4
        ret <8 x i8> %tmp5
}

define <4 x i16> @ssra4h(<4 x i16>* %A, <4 x i16>* %B) nounwind {


        %tmp1 = load <4 x i16>, <4 x i16>* %A
        %tmp3 = ashr <4 x i16> %tmp1, <i16 1, i16 1, i16 1, i16 1>
        %tmp4 = load <4 x i16>, <4 x i16>* %B
        %tmp5 = add <4 x i16> %tmp3, %tmp4
        ret <4 x i16> %tmp5
}

define <2 x i32> @ssra2s(<2 x i32>* %A, <2 x i32>* %B) nounwind {


        %tmp1 = load <2 x i32>, <2 x i32>* %A
        %tmp3 = ashr <2 x i32> %tmp1, <i32 1, i32 1>
        %tmp4 = load <2 x i32>, <2 x i32>* %B
        %tmp5 = add <2 x i32> %tmp3, %tmp4
        ret <2 x i32> %tmp5
}

define <16 x i8> @ssra16b(<16 x i8>* %A, <16 x i8>* %B) nounwind {


        %tmp1 = load <16 x i8>, <16 x i8>* %A
        %tmp3 = ashr <16 x i8> %tmp1, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
        %tmp4 = load <16 x i8>, <16 x i8>* %B
        %tmp5 = add <16 x i8> %tmp3, %tmp4
         ret <16 x i8> %tmp5
}

define <8 x i16> @ssra8h(<8 x i16>* %A, <8 x i16>* %B) nounwind {


        %tmp1 = load <8 x i16>, <8 x i16>* %A
        %tmp3 = ashr <8 x i16> %tmp1, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
        %tmp4 = load <8 x i16>, <8 x i16>* %B
        %tmp5 = add <8 x i16> %tmp3, %tmp4
         ret <8 x i16> %tmp5
}

define <4 x i32> @ssra4s(<4 x i32>* %A, <4 x i32>* %B) nounwind {


        %tmp1 = load <4 x i32>, <4 x i32>* %A
        %tmp3 = ashr <4 x i32> %tmp1, <i32 1, i32 1, i32 1, i32 1>
        %tmp4 = load <4 x i32>, <4 x i32>* %B
        %tmp5 = add <4 x i32> %tmp3, %tmp4
         ret <4 x i32> %tmp5
}

define <2 x i64> @ssra2d(<2 x i64>* %A, <2 x i64>* %B) nounwind {


        %tmp1 = load <2 x i64>, <2 x i64>* %A
        %tmp3 = ashr <2 x i64> %tmp1, <i64 1, i64 1>
        %tmp4 = load <2 x i64>, <2 x i64>* %B
        %tmp5 = add <2 x i64> %tmp3, %tmp4
         ret <2 x i64> %tmp5
}

define <8 x i8> @shr_orr8b(<8 x i8>* %A, <8 x i8>* %B) nounwind {




        %tmp1 = load <8 x i8>, <8 x i8>* %A
        %tmp4 = load <8 x i8>, <8 x i8>* %B
        %tmp3 = lshr <8 x i8> %tmp1, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
        %tmp5 = or <8 x i8> %tmp3, %tmp4
        ret <8 x i8> %tmp5
}

define <4 x i16> @shr_orr4h(<4 x i16>* %A, <4 x i16>* %B) nounwind {




        %tmp1 = load <4 x i16>, <4 x i16>* %A
        %tmp4 = load <4 x i16>, <4 x i16>* %B
        %tmp3 = lshr <4 x i16> %tmp1, <i16 1, i16 1, i16 1, i16 1>
        %tmp5 = or <4 x i16> %tmp3, %tmp4
        ret <4 x i16> %tmp5
}

define <2 x i32> @shr_orr2s(<2 x i32>* %A, <2 x i32>* %B) nounwind {




        %tmp1 = load <2 x i32>, <2 x i32>* %A
        %tmp4 = load <2 x i32>, <2 x i32>* %B
        %tmp3 = lshr <2 x i32> %tmp1, <i32 1, i32 1>
        %tmp5 = or <2 x i32> %tmp3, %tmp4
        ret <2 x i32> %tmp5
}

define <16 x i8> @shr_orr16b(<16 x i8>* %A, <16 x i8>* %B) nounwind {




        %tmp1 = load <16 x i8>, <16 x i8>* %A
        %tmp4 = load <16 x i8>, <16 x i8>* %B
        %tmp3 = lshr <16 x i8> %tmp1, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
        %tmp5 = or <16 x i8> %tmp3, %tmp4
         ret <16 x i8> %tmp5
}

define <8 x i16> @shr_orr8h(<8 x i16>* %A, <8 x i16>* %B) nounwind {




        %tmp1 = load <8 x i16>, <8 x i16>* %A
        %tmp4 = load <8 x i16>, <8 x i16>* %B
        %tmp3 = lshr <8 x i16> %tmp1, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
        %tmp5 = or <8 x i16> %tmp3, %tmp4
         ret <8 x i16> %tmp5
}

define <4 x i32> @shr_orr4s(<4 x i32>* %A, <4 x i32>* %B) nounwind {




        %tmp1 = load <4 x i32>, <4 x i32>* %A
        %tmp4 = load <4 x i32>, <4 x i32>* %B
        %tmp3 = lshr <4 x i32> %tmp1, <i32 1, i32 1, i32 1, i32 1>
        %tmp5 = or <4 x i32> %tmp3, %tmp4
         ret <4 x i32> %tmp5
}

define <2 x i64> @shr_orr2d(<2 x i64>* %A, <2 x i64>* %B) nounwind {




        %tmp1 = load <2 x i64>, <2 x i64>* %A
        %tmp4 = load <2 x i64>, <2 x i64>* %B
        %tmp3 = lshr <2 x i64> %tmp1, <i64 1, i64 1>
        %tmp5 = or <2 x i64> %tmp3, %tmp4
         ret <2 x i64> %tmp5
}

define <8 x i8> @shl_orr8b(<8 x i8>* %A, <8 x i8>* %B) nounwind {




        %tmp1 = load <8 x i8>, <8 x i8>* %A
        %tmp4 = load <8 x i8>, <8 x i8>* %B
        %tmp3 = shl <8 x i8> %tmp1, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
        %tmp5 = or <8 x i8> %tmp3, %tmp4
        ret <8 x i8> %tmp5
}

define <4 x i16> @shl_orr4h(<4 x i16>* %A, <4 x i16>* %B) nounwind {




        %tmp1 = load <4 x i16>, <4 x i16>* %A
        %tmp4 = load <4 x i16>, <4 x i16>* %B
        %tmp3 = shl <4 x i16> %tmp1, <i16 1, i16 1, i16 1, i16 1>
        %tmp5 = or <4 x i16> %tmp3, %tmp4
        ret <4 x i16> %tmp5
}

define <2 x i32> @shl_orr2s(<2 x i32>* %A, <2 x i32>* %B) nounwind {




        %tmp1 = load <2 x i32>, <2 x i32>* %A
        %tmp4 = load <2 x i32>, <2 x i32>* %B
        %tmp3 = shl <2 x i32> %tmp1, <i32 1, i32 1>
        %tmp5 = or <2 x i32> %tmp3, %tmp4
        ret <2 x i32> %tmp5
}

define <16 x i8> @shl_orr16b(<16 x i8>* %A, <16 x i8>* %B) nounwind {




        %tmp1 = load <16 x i8>, <16 x i8>* %A
        %tmp4 = load <16 x i8>, <16 x i8>* %B
        %tmp3 = shl <16 x i8> %tmp1, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
        %tmp5 = or <16 x i8> %tmp3, %tmp4
         ret <16 x i8> %tmp5
}

define <8 x i16> @shl_orr8h(<8 x i16>* %A, <8 x i16>* %B) nounwind {




        %tmp1 = load <8 x i16>, <8 x i16>* %A
        %tmp4 = load <8 x i16>, <8 x i16>* %B
        %tmp3 = shl <8 x i16> %tmp1, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
        %tmp5 = or <8 x i16> %tmp3, %tmp4
         ret <8 x i16> %tmp5
}

define <4 x i32> @shl_orr4s(<4 x i32>* %A, <4 x i32>* %B) nounwind {




        %tmp1 = load <4 x i32>, <4 x i32>* %A
        %tmp4 = load <4 x i32>, <4 x i32>* %B
        %tmp3 = shl <4 x i32> %tmp1, <i32 1, i32 1, i32 1, i32 1>
        %tmp5 = or <4 x i32> %tmp3, %tmp4
         ret <4 x i32> %tmp5
}

define <2 x i64> @shl_orr2d(<2 x i64>* %A, <2 x i64>* %B) nounwind {




        %tmp1 = load <2 x i64>, <2 x i64>* %A
        %tmp4 = load <2 x i64>, <2 x i64>* %B
        %tmp3 = shl <2 x i64> %tmp1, <i64 1, i64 1>
        %tmp5 = or <2 x i64> %tmp3, %tmp4
         ret <2 x i64> %tmp5
}

define <8 x i16> @shll(<8 x i8> %in) {


  %ext = zext <8 x i8> %in to <8 x i16>
  %res = shl <8 x i16> %ext, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>
  ret <8 x i16> %res
}

define <4 x i32> @shll_high(<8 x i16> %in) {


  %extract = shufflevector <8 x i16> %in, <8 x i16> undef, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %ext = zext <4 x i16> %extract to <4 x i32>
  %res = shl <4 x i32> %ext, <i32 16, i32 16, i32 16, i32 16>
  ret <4 x i32> %res
}

define <8 x i8> @sli8b(<8 x i8>* %A, <8 x i8>* %B) nounwind {


        %tmp1 = load <8 x i8>, <8 x i8>* %A
        %tmp2 = load <8 x i8>, <8 x i8>* %B
        %tmp3 = call <8 x i8> @llvm.aarch64.neon.vsli.v8i8(<8 x i8> %tmp1, <8 x i8> %tmp2, i32 1)
        ret <8 x i8> %tmp3
}

define <4 x i16> @sli4h(<4 x i16>* %A, <4 x i16>* %B) nounwind {


        %tmp1 = load <4 x i16>, <4 x i16>* %A
        %tmp2 = load <4 x i16>, <4 x i16>* %B
        %tmp3 = call <4 x i16> @llvm.aarch64.neon.vsli.v4i16(<4 x i16> %tmp1, <4 x i16> %tmp2, i32 1)
        ret <4 x i16> %tmp3
}

define <2 x i32> @sli2s(<2 x i32>* %A, <2 x i32>* %B) nounwind {


        %tmp1 = load <2 x i32>, <2 x i32>* %A
        %tmp2 = load <2 x i32>, <2 x i32>* %B
        %tmp3 = call <2 x i32> @llvm.aarch64.neon.vsli.v2i32(<2 x i32> %tmp1, <2 x i32> %tmp2, i32 1)
        ret <2 x i32> %tmp3
}

define <1 x i64> @sli1d(<1 x i64>* %A, <1 x i64>* %B) nounwind {


        %tmp1 = load <1 x i64>, <1 x i64>* %A
        %tmp2 = load <1 x i64>, <1 x i64>* %B
        %tmp3 = call <1 x i64> @llvm.aarch64.neon.vsli.v1i64(<1 x i64> %tmp1, <1 x i64> %tmp2, i32 1)
        ret <1 x i64> %tmp3
}

define <16 x i8> @sli16b(<16 x i8>* %A, <16 x i8>* %B) nounwind {


        %tmp1 = load <16 x i8>, <16 x i8>* %A
        %tmp2 = load <16 x i8>, <16 x i8>* %B
        %tmp3 = call <16 x i8> @llvm.aarch64.neon.vsli.v16i8(<16 x i8> %tmp1, <16 x i8> %tmp2, i32 1)
        ret <16 x i8> %tmp3
}

define <8 x i16> @sli8h(<8 x i16>* %A, <8 x i16>* %B) nounwind {


        %tmp1 = load <8 x i16>, <8 x i16>* %A
        %tmp2 = load <8 x i16>, <8 x i16>* %B
        %tmp3 = call <8 x i16> @llvm.aarch64.neon.vsli.v8i16(<8 x i16> %tmp1, <8 x i16> %tmp2, i32 1)
        ret <8 x i16> %tmp3
}

define <4 x i32> @sli4s(<4 x i32>* %A, <4 x i32>* %B) nounwind {


        %tmp1 = load <4 x i32>, <4 x i32>* %A
        %tmp2 = load <4 x i32>, <4 x i32>* %B
        %tmp3 = call <4 x i32> @llvm.aarch64.neon.vsli.v4i32(<4 x i32> %tmp1, <4 x i32> %tmp2, i32 1)
        ret <4 x i32> %tmp3
}

define <2 x i64> @sli2d(<2 x i64>* %A, <2 x i64>* %B) nounwind {


        %tmp1 = load <2 x i64>, <2 x i64>* %A
        %tmp2 = load <2 x i64>, <2 x i64>* %B
        %tmp3 = call <2 x i64> @llvm.aarch64.neon.vsli.v2i64(<2 x i64> %tmp1, <2 x i64> %tmp2, i32 1)
        ret <2 x i64> %tmp3
}

declare <8 x i8>  @llvm.aarch64.neon.vsli.v8i8(<8 x i8>, <8 x i8>, i32) nounwind readnone
declare <4 x i16> @llvm.aarch64.neon.vsli.v4i16(<4 x i16>, <4 x i16>, i32) nounwind readnone
declare <2 x i32> @llvm.aarch64.neon.vsli.v2i32(<2 x i32>, <2 x i32>, i32) nounwind readnone
declare <1 x i64> @llvm.aarch64.neon.vsli.v1i64(<1 x i64>, <1 x i64>, i32) nounwind readnone

declare <16 x i8> @llvm.aarch64.neon.vsli.v16i8(<16 x i8>, <16 x i8>, i32) nounwind readnone
declare <8 x i16> @llvm.aarch64.neon.vsli.v8i16(<8 x i16>, <8 x i16>, i32) nounwind readnone
declare <4 x i32> @llvm.aarch64.neon.vsli.v4i32(<4 x i32>, <4 x i32>, i32) nounwind readnone
declare <2 x i64> @llvm.aarch64.neon.vsli.v2i64(<2 x i64>, <2 x i64>, i32) nounwind readnone

define <1 x i64> @ashr_v1i64(<1 x i64> %a, <1 x i64> %b) {



  %c = ashr <1 x i64> %a, %b
  ret <1 x i64> %c
}
