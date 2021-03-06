


define <8 x i16> @sabdl8h(<8 x i8>* %A, <8 x i8>* %B) nounwind {


        %tmp1 = load <8 x i8>, <8 x i8>* %A
        %tmp2 = load <8 x i8>, <8 x i8>* %B
        %tmp3 = call <8 x i8> @llvm.aarch64.neon.sabd.v8i8(<8 x i8> %tmp1, <8 x i8> %tmp2)
        %tmp4 = zext <8 x i8> %tmp3 to <8 x i16>
        ret <8 x i16> %tmp4
}

define <4 x i32> @sabdl4s(<4 x i16>* %A, <4 x i16>* %B) nounwind {


        %tmp1 = load <4 x i16>, <4 x i16>* %A
        %tmp2 = load <4 x i16>, <4 x i16>* %B
        %tmp3 = call <4 x i16> @llvm.aarch64.neon.sabd.v4i16(<4 x i16> %tmp1, <4 x i16> %tmp2)
        %tmp4 = zext <4 x i16> %tmp3 to <4 x i32>
        ret <4 x i32> %tmp4
}

define <2 x i64> @sabdl2d(<2 x i32>* %A, <2 x i32>* %B) nounwind {


        %tmp1 = load <2 x i32>, <2 x i32>* %A
        %tmp2 = load <2 x i32>, <2 x i32>* %B
        %tmp3 = call <2 x i32> @llvm.aarch64.neon.sabd.v2i32(<2 x i32> %tmp1, <2 x i32> %tmp2)
        %tmp4 = zext <2 x i32> %tmp3 to <2 x i64>
        ret <2 x i64> %tmp4
}

define <8 x i16> @sabdl2_8h(<16 x i8>* %A, <16 x i8>* %B) nounwind {


        %load1 = load <16 x i8>, <16 x i8>* %A
        %load2 = load <16 x i8>, <16 x i8>* %B
        %tmp1 = shufflevector <16 x i8> %load1, <16 x i8> undef, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
        %tmp2 = shufflevector <16 x i8> %load2, <16 x i8> undef, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
        %tmp3 = call <8 x i8> @llvm.aarch64.neon.sabd.v8i8(<8 x i8> %tmp1, <8 x i8> %tmp2)
        %tmp4 = zext <8 x i8> %tmp3 to <8 x i16>
        ret <8 x i16> %tmp4
}

define <4 x i32> @sabdl2_4s(<8 x i16>* %A, <8 x i16>* %B) nounwind {


        %load1 = load <8 x i16>, <8 x i16>* %A
        %load2 = load <8 x i16>, <8 x i16>* %B
        %tmp1 = shufflevector <8 x i16> %load1, <8 x i16> undef, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
        %tmp2 = shufflevector <8 x i16> %load2, <8 x i16> undef, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
        %tmp3 = call <4 x i16> @llvm.aarch64.neon.sabd.v4i16(<4 x i16> %tmp1, <4 x i16> %tmp2)
        %tmp4 = zext <4 x i16> %tmp3 to <4 x i32>
        ret <4 x i32> %tmp4
}

define <2 x i64> @sabdl2_2d(<4 x i32>* %A, <4 x i32>* %B) nounwind {


        %load1 = load <4 x i32>, <4 x i32>* %A
        %load2 = load <4 x i32>, <4 x i32>* %B
        %tmp1 = shufflevector <4 x i32> %load1, <4 x i32> undef, <2 x i32> <i32 2, i32 3>
        %tmp2 = shufflevector <4 x i32> %load2, <4 x i32> undef, <2 x i32> <i32 2, i32 3>
        %tmp3 = call <2 x i32> @llvm.aarch64.neon.sabd.v2i32(<2 x i32> %tmp1, <2 x i32> %tmp2)
        %tmp4 = zext <2 x i32> %tmp3 to <2 x i64>
        ret <2 x i64> %tmp4
}

define <8 x i16> @uabdl8h(<8 x i8>* %A, <8 x i8>* %B) nounwind {


  %tmp1 = load <8 x i8>, <8 x i8>* %A
  %tmp2 = load <8 x i8>, <8 x i8>* %B
  %tmp3 = call <8 x i8> @llvm.aarch64.neon.uabd.v8i8(<8 x i8> %tmp1, <8 x i8> %tmp2)
  %tmp4 = zext <8 x i8> %tmp3 to <8 x i16>
  ret <8 x i16> %tmp4
}

define <4 x i32> @uabdl4s(<4 x i16>* %A, <4 x i16>* %B) nounwind {


  %tmp1 = load <4 x i16>, <4 x i16>* %A
  %tmp2 = load <4 x i16>, <4 x i16>* %B
  %tmp3 = call <4 x i16> @llvm.aarch64.neon.uabd.v4i16(<4 x i16> %tmp1, <4 x i16> %tmp2)
  %tmp4 = zext <4 x i16> %tmp3 to <4 x i32>
  ret <4 x i32> %tmp4
}

define <2 x i64> @uabdl2d(<2 x i32>* %A, <2 x i32>* %B) nounwind {


  %tmp1 = load <2 x i32>, <2 x i32>* %A
  %tmp2 = load <2 x i32>, <2 x i32>* %B
  %tmp3 = call <2 x i32> @llvm.aarch64.neon.uabd.v2i32(<2 x i32> %tmp1, <2 x i32> %tmp2)
  %tmp4 = zext <2 x i32> %tmp3 to <2 x i64>
  ret <2 x i64> %tmp4
}

define <8 x i16> @uabdl2_8h(<16 x i8>* %A, <16 x i8>* %B) nounwind {


  %load1 = load <16 x i8>, <16 x i8>* %A
  %load2 = load <16 x i8>, <16 x i8>* %B
  %tmp1 = shufflevector <16 x i8> %load1, <16 x i8> undef, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %tmp2 = shufflevector <16 x i8> %load2, <16 x i8> undef, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>

  %tmp3 = call <8 x i8> @llvm.aarch64.neon.uabd.v8i8(<8 x i8> %tmp1, <8 x i8> %tmp2)
  %tmp4 = zext <8 x i8> %tmp3 to <8 x i16>
  ret <8 x i16> %tmp4
}

define <4 x i32> @uabdl2_4s(<8 x i16>* %A, <8 x i16>* %B) nounwind {


  %load1 = load <8 x i16>, <8 x i16>* %A
  %load2 = load <8 x i16>, <8 x i16>* %B
  %tmp1 = shufflevector <8 x i16> %load1, <8 x i16> undef, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %tmp2 = shufflevector <8 x i16> %load2, <8 x i16> undef, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %tmp3 = call <4 x i16> @llvm.aarch64.neon.uabd.v4i16(<4 x i16> %tmp1, <4 x i16> %tmp2)
  %tmp4 = zext <4 x i16> %tmp3 to <4 x i32>
  ret <4 x i32> %tmp4
}

define <2 x i64> @uabdl2_2d(<4 x i32>* %A, <4 x i32>* %B) nounwind {


  %load1 = load <4 x i32>, <4 x i32>* %A
  %load2 = load <4 x i32>, <4 x i32>* %B
  %tmp1 = shufflevector <4 x i32> %load1, <4 x i32> undef, <2 x i32> <i32 2, i32 3>
  %tmp2 = shufflevector <4 x i32> %load2, <4 x i32> undef, <2 x i32> <i32 2, i32 3>
  %tmp3 = call <2 x i32> @llvm.aarch64.neon.uabd.v2i32(<2 x i32> %tmp1, <2 x i32> %tmp2)
  %tmp4 = zext <2 x i32> %tmp3 to <2 x i64>
  ret <2 x i64> %tmp4
}

define <2 x float> @fabd_2s(<2 x float>* %A, <2 x float>* %B) nounwind {


        %tmp1 = load <2 x float>, <2 x float>* %A
        %tmp2 = load <2 x float>, <2 x float>* %B
        %tmp3 = call <2 x float> @llvm.aarch64.neon.fabd.v2f32(<2 x float> %tmp1, <2 x float> %tmp2)
        ret <2 x float> %tmp3
}

define <4 x float> @fabd_4s(<4 x float>* %A, <4 x float>* %B) nounwind {


        %tmp1 = load <4 x float>, <4 x float>* %A
        %tmp2 = load <4 x float>, <4 x float>* %B
        %tmp3 = call <4 x float> @llvm.aarch64.neon.fabd.v4f32(<4 x float> %tmp1, <4 x float> %tmp2)
        ret <4 x float> %tmp3
}

define <2 x double> @fabd_2d(<2 x double>* %A, <2 x double>* %B) nounwind {


        %tmp1 = load <2 x double>, <2 x double>* %A
        %tmp2 = load <2 x double>, <2 x double>* %B
        %tmp3 = call <2 x double> @llvm.aarch64.neon.fabd.v2f64(<2 x double> %tmp1, <2 x double> %tmp2)
        ret <2 x double> %tmp3
}

declare <2 x float> @llvm.aarch64.neon.fabd.v2f32(<2 x float>, <2 x float>) nounwind readnone
declare <4 x float> @llvm.aarch64.neon.fabd.v4f32(<4 x float>, <4 x float>) nounwind readnone
declare <2 x double> @llvm.aarch64.neon.fabd.v2f64(<2 x double>, <2 x double>) nounwind readnone

define <8 x i8> @sabd_8b(<8 x i8>* %A, <8 x i8>* %B) nounwind {


        %tmp1 = load <8 x i8>, <8 x i8>* %A
        %tmp2 = load <8 x i8>, <8 x i8>* %B
        %tmp3 = call <8 x i8> @llvm.aarch64.neon.sabd.v8i8(<8 x i8> %tmp1, <8 x i8> %tmp2)
        ret <8 x i8> %tmp3
}

define <16 x i8> @sabd_16b(<16 x i8>* %A, <16 x i8>* %B) nounwind {


        %tmp1 = load <16 x i8>, <16 x i8>* %A
        %tmp2 = load <16 x i8>, <16 x i8>* %B
        %tmp3 = call <16 x i8> @llvm.aarch64.neon.sabd.v16i8(<16 x i8> %tmp1, <16 x i8> %tmp2)
        ret <16 x i8> %tmp3
}

define <4 x i16> @sabd_4h(<4 x i16>* %A, <4 x i16>* %B) nounwind {


        %tmp1 = load <4 x i16>, <4 x i16>* %A
        %tmp2 = load <4 x i16>, <4 x i16>* %B
        %tmp3 = call <4 x i16> @llvm.aarch64.neon.sabd.v4i16(<4 x i16> %tmp1, <4 x i16> %tmp2)
        ret <4 x i16> %tmp3
}

define <8 x i16> @sabd_8h(<8 x i16>* %A, <8 x i16>* %B) nounwind {


        %tmp1 = load <8 x i16>, <8 x i16>* %A
        %tmp2 = load <8 x i16>, <8 x i16>* %B
        %tmp3 = call <8 x i16> @llvm.aarch64.neon.sabd.v8i16(<8 x i16> %tmp1, <8 x i16> %tmp2)
        ret <8 x i16> %tmp3
}

define <2 x i32> @sabd_2s(<2 x i32>* %A, <2 x i32>* %B) nounwind {


        %tmp1 = load <2 x i32>, <2 x i32>* %A
        %tmp2 = load <2 x i32>, <2 x i32>* %B
        %tmp3 = call <2 x i32> @llvm.aarch64.neon.sabd.v2i32(<2 x i32> %tmp1, <2 x i32> %tmp2)
        ret <2 x i32> %tmp3
}

define <4 x i32> @sabd_4s(<4 x i32>* %A, <4 x i32>* %B) nounwind {


        %tmp1 = load <4 x i32>, <4 x i32>* %A
        %tmp2 = load <4 x i32>, <4 x i32>* %B
        %tmp3 = call <4 x i32> @llvm.aarch64.neon.sabd.v4i32(<4 x i32> %tmp1, <4 x i32> %tmp2)
        ret <4 x i32> %tmp3
}

declare <8 x i8> @llvm.aarch64.neon.sabd.v8i8(<8 x i8>, <8 x i8>) nounwind readnone
declare <16 x i8> @llvm.aarch64.neon.sabd.v16i8(<16 x i8>, <16 x i8>) nounwind readnone
declare <4 x i16> @llvm.aarch64.neon.sabd.v4i16(<4 x i16>, <4 x i16>) nounwind readnone
declare <8 x i16> @llvm.aarch64.neon.sabd.v8i16(<8 x i16>, <8 x i16>) nounwind readnone
declare <2 x i32> @llvm.aarch64.neon.sabd.v2i32(<2 x i32>, <2 x i32>) nounwind readnone
declare <4 x i32> @llvm.aarch64.neon.sabd.v4i32(<4 x i32>, <4 x i32>) nounwind readnone

define <8 x i8> @uabd_8b(<8 x i8>* %A, <8 x i8>* %B) nounwind {


        %tmp1 = load <8 x i8>, <8 x i8>* %A
        %tmp2 = load <8 x i8>, <8 x i8>* %B
        %tmp3 = call <8 x i8> @llvm.aarch64.neon.uabd.v8i8(<8 x i8> %tmp1, <8 x i8> %tmp2)
        ret <8 x i8> %tmp3
}

define <16 x i8> @uabd_16b(<16 x i8>* %A, <16 x i8>* %B) nounwind {


        %tmp1 = load <16 x i8>, <16 x i8>* %A
        %tmp2 = load <16 x i8>, <16 x i8>* %B
        %tmp3 = call <16 x i8> @llvm.aarch64.neon.uabd.v16i8(<16 x i8> %tmp1, <16 x i8> %tmp2)
        ret <16 x i8> %tmp3
}

define <4 x i16> @uabd_4h(<4 x i16>* %A, <4 x i16>* %B) nounwind {


        %tmp1 = load <4 x i16>, <4 x i16>* %A
        %tmp2 = load <4 x i16>, <4 x i16>* %B
        %tmp3 = call <4 x i16> @llvm.aarch64.neon.uabd.v4i16(<4 x i16> %tmp1, <4 x i16> %tmp2)
        ret <4 x i16> %tmp3
}

define <8 x i16> @uabd_8h(<8 x i16>* %A, <8 x i16>* %B) nounwind {


        %tmp1 = load <8 x i16>, <8 x i16>* %A
        %tmp2 = load <8 x i16>, <8 x i16>* %B
        %tmp3 = call <8 x i16> @llvm.aarch64.neon.uabd.v8i16(<8 x i16> %tmp1, <8 x i16> %tmp2)
        ret <8 x i16> %tmp3
}

define <2 x i32> @uabd_2s(<2 x i32>* %A, <2 x i32>* %B) nounwind {


        %tmp1 = load <2 x i32>, <2 x i32>* %A
        %tmp2 = load <2 x i32>, <2 x i32>* %B
        %tmp3 = call <2 x i32> @llvm.aarch64.neon.uabd.v2i32(<2 x i32> %tmp1, <2 x i32> %tmp2)
        ret <2 x i32> %tmp3
}

define <4 x i32> @uabd_4s(<4 x i32>* %A, <4 x i32>* %B) nounwind {


        %tmp1 = load <4 x i32>, <4 x i32>* %A
        %tmp2 = load <4 x i32>, <4 x i32>* %B
        %tmp3 = call <4 x i32> @llvm.aarch64.neon.uabd.v4i32(<4 x i32> %tmp1, <4 x i32> %tmp2)
        ret <4 x i32> %tmp3
}

declare <8 x i8> @llvm.aarch64.neon.uabd.v8i8(<8 x i8>, <8 x i8>) nounwind readnone
declare <16 x i8> @llvm.aarch64.neon.uabd.v16i8(<16 x i8>, <16 x i8>) nounwind readnone
declare <4 x i16> @llvm.aarch64.neon.uabd.v4i16(<4 x i16>, <4 x i16>) nounwind readnone
declare <8 x i16> @llvm.aarch64.neon.uabd.v8i16(<8 x i16>, <8 x i16>) nounwind readnone
declare <2 x i32> @llvm.aarch64.neon.uabd.v2i32(<2 x i32>, <2 x i32>) nounwind readnone
declare <4 x i32> @llvm.aarch64.neon.uabd.v4i32(<4 x i32>, <4 x i32>) nounwind readnone

define <8 x i8> @sqabs_8b(<8 x i8>* %A) nounwind {


        %tmp1 = load <8 x i8>, <8 x i8>* %A
        %tmp3 = call <8 x i8> @llvm.aarch64.neon.sqabs.v8i8(<8 x i8> %tmp1)
        ret <8 x i8> %tmp3
}

define <16 x i8> @sqabs_16b(<16 x i8>* %A) nounwind {


        %tmp1 = load <16 x i8>, <16 x i8>* %A
        %tmp3 = call <16 x i8> @llvm.aarch64.neon.sqabs.v16i8(<16 x i8> %tmp1)
        ret <16 x i8> %tmp3
}

define <4 x i16> @sqabs_4h(<4 x i16>* %A) nounwind {


        %tmp1 = load <4 x i16>, <4 x i16>* %A
        %tmp3 = call <4 x i16> @llvm.aarch64.neon.sqabs.v4i16(<4 x i16> %tmp1)
        ret <4 x i16> %tmp3
}

define <8 x i16> @sqabs_8h(<8 x i16>* %A) nounwind {


        %tmp1 = load <8 x i16>, <8 x i16>* %A
        %tmp3 = call <8 x i16> @llvm.aarch64.neon.sqabs.v8i16(<8 x i16> %tmp1)
        ret <8 x i16> %tmp3
}

define <2 x i32> @sqabs_2s(<2 x i32>* %A) nounwind {


        %tmp1 = load <2 x i32>, <2 x i32>* %A
        %tmp3 = call <2 x i32> @llvm.aarch64.neon.sqabs.v2i32(<2 x i32> %tmp1)
        ret <2 x i32> %tmp3
}

define <4 x i32> @sqabs_4s(<4 x i32>* %A) nounwind {


        %tmp1 = load <4 x i32>, <4 x i32>* %A
        %tmp3 = call <4 x i32> @llvm.aarch64.neon.sqabs.v4i32(<4 x i32> %tmp1)
        ret <4 x i32> %tmp3
}

declare <8 x i8> @llvm.aarch64.neon.sqabs.v8i8(<8 x i8>) nounwind readnone
declare <16 x i8> @llvm.aarch64.neon.sqabs.v16i8(<16 x i8>) nounwind readnone
declare <4 x i16> @llvm.aarch64.neon.sqabs.v4i16(<4 x i16>) nounwind readnone
declare <8 x i16> @llvm.aarch64.neon.sqabs.v8i16(<8 x i16>) nounwind readnone
declare <2 x i32> @llvm.aarch64.neon.sqabs.v2i32(<2 x i32>) nounwind readnone
declare <4 x i32> @llvm.aarch64.neon.sqabs.v4i32(<4 x i32>) nounwind readnone

define <8 x i8> @sqneg_8b(<8 x i8>* %A) nounwind {


        %tmp1 = load <8 x i8>, <8 x i8>* %A
        %tmp3 = call <8 x i8> @llvm.aarch64.neon.sqneg.v8i8(<8 x i8> %tmp1)
        ret <8 x i8> %tmp3
}

define <16 x i8> @sqneg_16b(<16 x i8>* %A) nounwind {


        %tmp1 = load <16 x i8>, <16 x i8>* %A
        %tmp3 = call <16 x i8> @llvm.aarch64.neon.sqneg.v16i8(<16 x i8> %tmp1)
        ret <16 x i8> %tmp3
}

define <4 x i16> @sqneg_4h(<4 x i16>* %A) nounwind {


        %tmp1 = load <4 x i16>, <4 x i16>* %A
        %tmp3 = call <4 x i16> @llvm.aarch64.neon.sqneg.v4i16(<4 x i16> %tmp1)
        ret <4 x i16> %tmp3
}

define <8 x i16> @sqneg_8h(<8 x i16>* %A) nounwind {


        %tmp1 = load <8 x i16>, <8 x i16>* %A
        %tmp3 = call <8 x i16> @llvm.aarch64.neon.sqneg.v8i16(<8 x i16> %tmp1)
        ret <8 x i16> %tmp3
}

define <2 x i32> @sqneg_2s(<2 x i32>* %A) nounwind {


        %tmp1 = load <2 x i32>, <2 x i32>* %A
        %tmp3 = call <2 x i32> @llvm.aarch64.neon.sqneg.v2i32(<2 x i32> %tmp1)
        ret <2 x i32> %tmp3
}

define <4 x i32> @sqneg_4s(<4 x i32>* %A) nounwind {


        %tmp1 = load <4 x i32>, <4 x i32>* %A
        %tmp3 = call <4 x i32> @llvm.aarch64.neon.sqneg.v4i32(<4 x i32> %tmp1)
        ret <4 x i32> %tmp3
}

declare <8 x i8> @llvm.aarch64.neon.sqneg.v8i8(<8 x i8>) nounwind readnone
declare <16 x i8> @llvm.aarch64.neon.sqneg.v16i8(<16 x i8>) nounwind readnone
declare <4 x i16> @llvm.aarch64.neon.sqneg.v4i16(<4 x i16>) nounwind readnone
declare <8 x i16> @llvm.aarch64.neon.sqneg.v8i16(<8 x i16>) nounwind readnone
declare <2 x i32> @llvm.aarch64.neon.sqneg.v2i32(<2 x i32>) nounwind readnone
declare <4 x i32> @llvm.aarch64.neon.sqneg.v4i32(<4 x i32>) nounwind readnone

define <8 x i8> @abs_8b(<8 x i8>* %A) nounwind {


        %tmp1 = load <8 x i8>, <8 x i8>* %A
        %tmp3 = call <8 x i8> @llvm.aarch64.neon.abs.v8i8(<8 x i8> %tmp1)
        ret <8 x i8> %tmp3
}

define <16 x i8> @abs_16b(<16 x i8>* %A) nounwind {


        %tmp1 = load <16 x i8>, <16 x i8>* %A
        %tmp3 = call <16 x i8> @llvm.aarch64.neon.abs.v16i8(<16 x i8> %tmp1)
        ret <16 x i8> %tmp3
}

define <4 x i16> @abs_4h(<4 x i16>* %A) nounwind {


        %tmp1 = load <4 x i16>, <4 x i16>* %A
        %tmp3 = call <4 x i16> @llvm.aarch64.neon.abs.v4i16(<4 x i16> %tmp1)
        ret <4 x i16> %tmp3
}

define <8 x i16> @abs_8h(<8 x i16>* %A) nounwind {


        %tmp1 = load <8 x i16>, <8 x i16>* %A
        %tmp3 = call <8 x i16> @llvm.aarch64.neon.abs.v8i16(<8 x i16> %tmp1)
        ret <8 x i16> %tmp3
}

define <2 x i32> @abs_2s(<2 x i32>* %A) nounwind {


        %tmp1 = load <2 x i32>, <2 x i32>* %A
        %tmp3 = call <2 x i32> @llvm.aarch64.neon.abs.v2i32(<2 x i32> %tmp1)
        ret <2 x i32> %tmp3
}

define <4 x i32> @abs_4s(<4 x i32>* %A) nounwind {


        %tmp1 = load <4 x i32>, <4 x i32>* %A
        %tmp3 = call <4 x i32> @llvm.aarch64.neon.abs.v4i32(<4 x i32> %tmp1)
        ret <4 x i32> %tmp3
}

define <1 x i64> @abs_1d(<1 x i64> %A) nounwind {


  %abs = call <1 x i64> @llvm.aarch64.neon.abs.v1i64(<1 x i64> %A)
  ret <1 x i64> %abs
}

define i64 @abs_1d_honestly(i64 %A) nounwind {


  %abs = call i64 @llvm.aarch64.neon.abs.i64(i64 %A)
  ret i64 %abs
}

declare <8 x i8> @llvm.aarch64.neon.abs.v8i8(<8 x i8>) nounwind readnone
declare <16 x i8> @llvm.aarch64.neon.abs.v16i8(<16 x i8>) nounwind readnone
declare <4 x i16> @llvm.aarch64.neon.abs.v4i16(<4 x i16>) nounwind readnone
declare <8 x i16> @llvm.aarch64.neon.abs.v8i16(<8 x i16>) nounwind readnone
declare <2 x i32> @llvm.aarch64.neon.abs.v2i32(<2 x i32>) nounwind readnone
declare <4 x i32> @llvm.aarch64.neon.abs.v4i32(<4 x i32>) nounwind readnone
declare <1 x i64> @llvm.aarch64.neon.abs.v1i64(<1 x i64>) nounwind readnone
declare i64 @llvm.aarch64.neon.abs.i64(i64) nounwind readnone

define <8 x i16> @sabal8h(<8 x i8>* %A, <8 x i8>* %B,  <8 x i16>* %C) nounwind {


        %tmp1 = load <8 x i8>, <8 x i8>* %A
        %tmp2 = load <8 x i8>, <8 x i8>* %B
        %tmp3 = load <8 x i16>, <8 x i16>* %C
        %tmp4 = call <8 x i8> @llvm.aarch64.neon.sabd.v8i8(<8 x i8> %tmp1, <8 x i8> %tmp2)
        %tmp4.1 = zext <8 x i8> %tmp4 to <8 x i16>
        %tmp5 = add <8 x i16> %tmp3, %tmp4.1
        ret <8 x i16> %tmp5
}

define <4 x i32> @sabal4s(<4 x i16>* %A, <4 x i16>* %B, <4 x i32>* %C) nounwind {


        %tmp1 = load <4 x i16>, <4 x i16>* %A
        %tmp2 = load <4 x i16>, <4 x i16>* %B
        %tmp3 = load <4 x i32>, <4 x i32>* %C
        %tmp4 = call <4 x i16> @llvm.aarch64.neon.sabd.v4i16(<4 x i16> %tmp1, <4 x i16> %tmp2)
        %tmp4.1 = zext <4 x i16> %tmp4 to <4 x i32>
        %tmp5 = add <4 x i32> %tmp3, %tmp4.1
        ret <4 x i32> %tmp5
}

define <2 x i64> @sabal2d(<2 x i32>* %A, <2 x i32>* %B, <2 x i64>* %C) nounwind {


        %tmp1 = load <2 x i32>, <2 x i32>* %A
        %tmp2 = load <2 x i32>, <2 x i32>* %B
        %tmp3 = load <2 x i64>, <2 x i64>* %C
        %tmp4 = call <2 x i32> @llvm.aarch64.neon.sabd.v2i32(<2 x i32> %tmp1, <2 x i32> %tmp2)
        %tmp4.1 = zext <2 x i32> %tmp4 to <2 x i64>
        %tmp4.1.1 = zext <2 x i32> %tmp4 to <2 x i64>
        %tmp5 = add <2 x i64> %tmp3, %tmp4.1
        ret <2 x i64> %tmp5
}

define <8 x i16> @sabal2_8h(<16 x i8>* %A, <16 x i8>* %B, <8 x i16>* %C) nounwind {


        %load1 = load <16 x i8>, <16 x i8>* %A
        %load2 = load <16 x i8>, <16 x i8>* %B
        %tmp3 = load <8 x i16>, <8 x i16>* %C
        %tmp1 = shufflevector <16 x i8> %load1, <16 x i8> undef, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
        %tmp2 = shufflevector <16 x i8> %load2, <16 x i8> undef, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
        %tmp4 = call <8 x i8> @llvm.aarch64.neon.sabd.v8i8(<8 x i8> %tmp1, <8 x i8> %tmp2)
        %tmp4.1 = zext <8 x i8> %tmp4 to <8 x i16>
        %tmp5 = add <8 x i16> %tmp3, %tmp4.1
        ret <8 x i16> %tmp5
}

define <4 x i32> @sabal2_4s(<8 x i16>* %A, <8 x i16>* %B, <4 x i32>* %C) nounwind {


        %load1 = load <8 x i16>, <8 x i16>* %A
        %load2 = load <8 x i16>, <8 x i16>* %B
        %tmp3 = load <4 x i32>, <4 x i32>* %C
        %tmp1 = shufflevector <8 x i16> %load1, <8 x i16> undef, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
        %tmp2 = shufflevector <8 x i16> %load2, <8 x i16> undef, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
        %tmp4 = call <4 x i16> @llvm.aarch64.neon.sabd.v4i16(<4 x i16> %tmp1, <4 x i16> %tmp2)
        %tmp4.1 = zext <4 x i16> %tmp4 to <4 x i32>
        %tmp5 = add <4 x i32> %tmp3, %tmp4.1
        ret <4 x i32> %tmp5
}

define <2 x i64> @sabal2_2d(<4 x i32>* %A, <4 x i32>* %B, <2 x i64>* %C) nounwind {


        %load1 = load <4 x i32>, <4 x i32>* %A
        %load2 = load <4 x i32>, <4 x i32>* %B
        %tmp3 = load <2 x i64>, <2 x i64>* %C
        %tmp1 = shufflevector <4 x i32> %load1, <4 x i32> undef, <2 x i32> <i32 2, i32 3>
        %tmp2 = shufflevector <4 x i32> %load2, <4 x i32> undef, <2 x i32> <i32 2, i32 3>
        %tmp4 = call <2 x i32> @llvm.aarch64.neon.sabd.v2i32(<2 x i32> %tmp1, <2 x i32> %tmp2)
        %tmp4.1 = zext <2 x i32> %tmp4 to <2 x i64>
        %tmp5 = add <2 x i64> %tmp3, %tmp4.1
        ret <2 x i64> %tmp5
}

define <8 x i16> @uabal8h(<8 x i8>* %A, <8 x i8>* %B,  <8 x i16>* %C) nounwind {


        %tmp1 = load <8 x i8>, <8 x i8>* %A
        %tmp2 = load <8 x i8>, <8 x i8>* %B
        %tmp3 = load <8 x i16>, <8 x i16>* %C
        %tmp4 = call <8 x i8> @llvm.aarch64.neon.uabd.v8i8(<8 x i8> %tmp1, <8 x i8> %tmp2)
        %tmp4.1 = zext <8 x i8> %tmp4 to <8 x i16>
        %tmp5 = add <8 x i16> %tmp3, %tmp4.1
        ret <8 x i16> %tmp5
}

define <4 x i32> @uabal4s(<4 x i16>* %A, <4 x i16>* %B, <4 x i32>* %C) nounwind {


        %tmp1 = load <4 x i16>, <4 x i16>* %A
        %tmp2 = load <4 x i16>, <4 x i16>* %B
        %tmp3 = load <4 x i32>, <4 x i32>* %C
        %tmp4 = call <4 x i16> @llvm.aarch64.neon.uabd.v4i16(<4 x i16> %tmp1, <4 x i16> %tmp2)
        %tmp4.1 = zext <4 x i16> %tmp4 to <4 x i32>
        %tmp5 = add <4 x i32> %tmp3, %tmp4.1
        ret <4 x i32> %tmp5
}

define <2 x i64> @uabal2d(<2 x i32>* %A, <2 x i32>* %B, <2 x i64>* %C) nounwind {


        %tmp1 = load <2 x i32>, <2 x i32>* %A
        %tmp2 = load <2 x i32>, <2 x i32>* %B
        %tmp3 = load <2 x i64>, <2 x i64>* %C
        %tmp4 = call <2 x i32> @llvm.aarch64.neon.uabd.v2i32(<2 x i32> %tmp1, <2 x i32> %tmp2)
        %tmp4.1 = zext <2 x i32> %tmp4 to <2 x i64>
        %tmp5 = add <2 x i64> %tmp3, %tmp4.1
        ret <2 x i64> %tmp5
}

define <8 x i16> @uabal2_8h(<16 x i8>* %A, <16 x i8>* %B, <8 x i16>* %C) nounwind {


        %load1 = load <16 x i8>, <16 x i8>* %A
        %load2 = load <16 x i8>, <16 x i8>* %B
        %tmp3 = load <8 x i16>, <8 x i16>* %C
        %tmp1 = shufflevector <16 x i8> %load1, <16 x i8> undef, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
        %tmp2 = shufflevector <16 x i8> %load2, <16 x i8> undef, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
        %tmp4 = call <8 x i8> @llvm.aarch64.neon.uabd.v8i8(<8 x i8> %tmp1, <8 x i8> %tmp2)
        %tmp4.1 = zext <8 x i8> %tmp4 to <8 x i16>
        %tmp5 = add <8 x i16> %tmp3, %tmp4.1
        ret <8 x i16> %tmp5
}

define <4 x i32> @uabal2_4s(<8 x i16>* %A, <8 x i16>* %B, <4 x i32>* %C) nounwind {


        %load1 = load <8 x i16>, <8 x i16>* %A
        %load2 = load <8 x i16>, <8 x i16>* %B
        %tmp3 = load <4 x i32>, <4 x i32>* %C
        %tmp1 = shufflevector <8 x i16> %load1, <8 x i16> undef, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
        %tmp2 = shufflevector <8 x i16> %load2, <8 x i16> undef, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
        %tmp4 = call <4 x i16> @llvm.aarch64.neon.uabd.v4i16(<4 x i16> %tmp1, <4 x i16> %tmp2)
        %tmp4.1 = zext <4 x i16> %tmp4 to <4 x i32>
        %tmp5 = add <4 x i32> %tmp3, %tmp4.1
        ret <4 x i32> %tmp5
}

define <2 x i64> @uabal2_2d(<4 x i32>* %A, <4 x i32>* %B, <2 x i64>* %C) nounwind {


        %load1 = load <4 x i32>, <4 x i32>* %A
        %load2 = load <4 x i32>, <4 x i32>* %B
        %tmp3 = load <2 x i64>, <2 x i64>* %C
        %tmp1 = shufflevector <4 x i32> %load1, <4 x i32> undef, <2 x i32> <i32 2, i32 3>
        %tmp2 = shufflevector <4 x i32> %load2, <4 x i32> undef, <2 x i32> <i32 2, i32 3>
        %tmp4 = call <2 x i32> @llvm.aarch64.neon.uabd.v2i32(<2 x i32> %tmp1, <2 x i32> %tmp2)
        %tmp4.1 = zext <2 x i32> %tmp4 to <2 x i64>
        %tmp5 = add <2 x i64> %tmp3, %tmp4.1
        ret <2 x i64> %tmp5
}

define <8 x i8> @saba_8b(<8 x i8>* %A, <8 x i8>* %B, <8 x i8>* %C) nounwind {


        %tmp1 = load <8 x i8>, <8 x i8>* %A
        %tmp2 = load <8 x i8>, <8 x i8>* %B
        %tmp3 = call <8 x i8> @llvm.aarch64.neon.sabd.v8i8(<8 x i8> %tmp1, <8 x i8> %tmp2)
        %tmp4 = load <8 x i8>, <8 x i8>* %C
        %tmp5 = add <8 x i8> %tmp3, %tmp4
        ret <8 x i8> %tmp5
}

define <16 x i8> @saba_16b(<16 x i8>* %A, <16 x i8>* %B, <16 x i8>* %C) nounwind {


        %tmp1 = load <16 x i8>, <16 x i8>* %A
        %tmp2 = load <16 x i8>, <16 x i8>* %B
        %tmp3 = call <16 x i8> @llvm.aarch64.neon.sabd.v16i8(<16 x i8> %tmp1, <16 x i8> %tmp2)
        %tmp4 = load <16 x i8>, <16 x i8>* %C
        %tmp5 = add <16 x i8> %tmp3, %tmp4
        ret <16 x i8> %tmp5
}

define <4 x i16> @saba_4h(<4 x i16>* %A, <4 x i16>* %B, <4 x i16>* %C) nounwind {


        %tmp1 = load <4 x i16>, <4 x i16>* %A
        %tmp2 = load <4 x i16>, <4 x i16>* %B
        %tmp3 = call <4 x i16> @llvm.aarch64.neon.sabd.v4i16(<4 x i16> %tmp1, <4 x i16> %tmp2)
        %tmp4 = load <4 x i16>, <4 x i16>* %C
        %tmp5 = add <4 x i16> %tmp3, %tmp4
        ret <4 x i16> %tmp5
}

define <8 x i16> @saba_8h(<8 x i16>* %A, <8 x i16>* %B, <8 x i16>* %C) nounwind {


        %tmp1 = load <8 x i16>, <8 x i16>* %A
        %tmp2 = load <8 x i16>, <8 x i16>* %B
        %tmp3 = call <8 x i16> @llvm.aarch64.neon.sabd.v8i16(<8 x i16> %tmp1, <8 x i16> %tmp2)
        %tmp4 = load <8 x i16>, <8 x i16>* %C
        %tmp5 = add <8 x i16> %tmp3, %tmp4
        ret <8 x i16> %tmp5
}

define <2 x i32> @saba_2s(<2 x i32>* %A, <2 x i32>* %B, <2 x i32>* %C) nounwind {


        %tmp1 = load <2 x i32>, <2 x i32>* %A
        %tmp2 = load <2 x i32>, <2 x i32>* %B
        %tmp3 = call <2 x i32> @llvm.aarch64.neon.sabd.v2i32(<2 x i32> %tmp1, <2 x i32> %tmp2)
        %tmp4 = load <2 x i32>, <2 x i32>* %C
        %tmp5 = add <2 x i32> %tmp3, %tmp4
        ret <2 x i32> %tmp5
}

define <4 x i32> @saba_4s(<4 x i32>* %A, <4 x i32>* %B, <4 x i32>* %C) nounwind {


        %tmp1 = load <4 x i32>, <4 x i32>* %A
        %tmp2 = load <4 x i32>, <4 x i32>* %B
        %tmp3 = call <4 x i32> @llvm.aarch64.neon.sabd.v4i32(<4 x i32> %tmp1, <4 x i32> %tmp2)
        %tmp4 = load <4 x i32>, <4 x i32>* %C
        %tmp5 = add <4 x i32> %tmp3, %tmp4
        ret <4 x i32> %tmp5
}

define <8 x i8> @uaba_8b(<8 x i8>* %A, <8 x i8>* %B, <8 x i8>* %C) nounwind {


        %tmp1 = load <8 x i8>, <8 x i8>* %A
        %tmp2 = load <8 x i8>, <8 x i8>* %B
        %tmp3 = call <8 x i8> @llvm.aarch64.neon.uabd.v8i8(<8 x i8> %tmp1, <8 x i8> %tmp2)
        %tmp4 = load <8 x i8>, <8 x i8>* %C
        %tmp5 = add <8 x i8> %tmp3, %tmp4
        ret <8 x i8> %tmp5
}

define <16 x i8> @uaba_16b(<16 x i8>* %A, <16 x i8>* %B, <16 x i8>* %C) nounwind {


        %tmp1 = load <16 x i8>, <16 x i8>* %A
        %tmp2 = load <16 x i8>, <16 x i8>* %B
        %tmp3 = call <16 x i8> @llvm.aarch64.neon.uabd.v16i8(<16 x i8> %tmp1, <16 x i8> %tmp2)
        %tmp4 = load <16 x i8>, <16 x i8>* %C
        %tmp5 = add <16 x i8> %tmp3, %tmp4
        ret <16 x i8> %tmp5
}

define <4 x i16> @uaba_4h(<4 x i16>* %A, <4 x i16>* %B, <4 x i16>* %C) nounwind {


        %tmp1 = load <4 x i16>, <4 x i16>* %A
        %tmp2 = load <4 x i16>, <4 x i16>* %B
        %tmp3 = call <4 x i16> @llvm.aarch64.neon.uabd.v4i16(<4 x i16> %tmp1, <4 x i16> %tmp2)
        %tmp4 = load <4 x i16>, <4 x i16>* %C
        %tmp5 = add <4 x i16> %tmp3, %tmp4
        ret <4 x i16> %tmp5
}

define <8 x i16> @uaba_8h(<8 x i16>* %A, <8 x i16>* %B, <8 x i16>* %C) nounwind {


        %tmp1 = load <8 x i16>, <8 x i16>* %A
        %tmp2 = load <8 x i16>, <8 x i16>* %B
        %tmp3 = call <8 x i16> @llvm.aarch64.neon.uabd.v8i16(<8 x i16> %tmp1, <8 x i16> %tmp2)
        %tmp4 = load <8 x i16>, <8 x i16>* %C
        %tmp5 = add <8 x i16> %tmp3, %tmp4
        ret <8 x i16> %tmp5
}

define <2 x i32> @uaba_2s(<2 x i32>* %A, <2 x i32>* %B, <2 x i32>* %C) nounwind {


        %tmp1 = load <2 x i32>, <2 x i32>* %A
        %tmp2 = load <2 x i32>, <2 x i32>* %B
        %tmp3 = call <2 x i32> @llvm.aarch64.neon.uabd.v2i32(<2 x i32> %tmp1, <2 x i32> %tmp2)
        %tmp4 = load <2 x i32>, <2 x i32>* %C
        %tmp5 = add <2 x i32> %tmp3, %tmp4
        ret <2 x i32> %tmp5
}

define <4 x i32> @uaba_4s(<4 x i32>* %A, <4 x i32>* %B, <4 x i32>* %C) nounwind {


        %tmp1 = load <4 x i32>, <4 x i32>* %A
        %tmp2 = load <4 x i32>, <4 x i32>* %B
        %tmp3 = call <4 x i32> @llvm.aarch64.neon.uabd.v4i32(<4 x i32> %tmp1, <4 x i32> %tmp2)
        %tmp4 = load <4 x i32>, <4 x i32>* %C
        %tmp5 = add <4 x i32> %tmp3, %tmp4
        ret <4 x i32> %tmp5
}


define float @fabds(float %a, float %b) nounwind {


  %vabd.i = tail call float @llvm.aarch64.sisd.fabd.f32(float %a, float %b) nounwind
  ret float %vabd.i
}

define double @fabdd(double %a, double %b) nounwind {


  %vabd.i = tail call double @llvm.aarch64.sisd.fabd.f64(double %a, double %b) nounwind
  ret double %vabd.i
}

declare double @llvm.aarch64.sisd.fabd.f64(double, double) nounwind readnone
declare float @llvm.aarch64.sisd.fabd.f32(float, float) nounwind readnone

define <2 x i64> @uabdl_from_extract_dup(<4 x i32> %lhs, i32 %rhs) {



  %rhsvec.tmp = insertelement <2 x i32> undef, i32 %rhs, i32 0
  %rhsvec = insertelement <2 x i32> %rhsvec.tmp, i32 %rhs, i32 1

  %lhs.high = shufflevector <4 x i32> %lhs, <4 x i32> undef, <2 x i32> <i32 2, i32 3>

  %res = tail call <2 x i32> @llvm.aarch64.neon.uabd.v2i32(<2 x i32> %lhs.high, <2 x i32> %rhsvec) nounwind
  %res1 = zext <2 x i32> %res to <2 x i64>
  ret <2 x i64> %res1
}

define <2 x i64> @sabdl_from_extract_dup(<4 x i32> %lhs, i32 %rhs) {



  %rhsvec.tmp = insertelement <2 x i32> undef, i32 %rhs, i32 0
  %rhsvec = insertelement <2 x i32> %rhsvec.tmp, i32 %rhs, i32 1

  %lhs.high = shufflevector <4 x i32> %lhs, <4 x i32> undef, <2 x i32> <i32 2, i32 3>

  %res = tail call <2 x i32> @llvm.aarch64.neon.sabd.v2i32(<2 x i32> %lhs.high, <2 x i32> %rhsvec) nounwind
  %res1 = zext <2 x i32> %res to <2 x i64>
  ret <2 x i64> %res1
}

define <2 x i32> @abspattern1(<2 x i32> %a) nounwind {



        %tmp1neg = sub <2 x i32> zeroinitializer, %a
        %b = icmp sge <2 x i32> %a, zeroinitializer
        %abs = select <2 x i1> %b, <2 x i32> %a, <2 x i32> %tmp1neg
        ret <2 x i32> %abs
}

define <4 x i16> @abspattern2(<4 x i16> %a) nounwind {



        %tmp1neg = sub <4 x i16> zeroinitializer, %a
        %b = icmp sgt <4 x i16> %a, zeroinitializer
        %abs = select <4 x i1> %b, <4 x i16> %a, <4 x i16> %tmp1neg
        ret <4 x i16> %abs
}

define <8 x i8> @abspattern3(<8 x i8> %a) nounwind {



        %tmp1neg = sub <8 x i8> zeroinitializer, %a
        %b = icmp slt <8 x i8> %a, zeroinitializer
        %abs = select <8 x i1> %b, <8 x i8> %tmp1neg, <8 x i8> %a
        ret <8 x i8> %abs
}

define <4 x i32> @abspattern4(<4 x i32> %a) nounwind {



        %tmp1neg = sub <4 x i32> zeroinitializer, %a
        %b = icmp sge <4 x i32> %a, zeroinitializer
        %abs = select <4 x i1> %b, <4 x i32> %a, <4 x i32> %tmp1neg
        ret <4 x i32> %abs
}

define <8 x i16> @abspattern5(<8 x i16> %a) nounwind {



        %tmp1neg = sub <8 x i16> zeroinitializer, %a
        %b = icmp sgt <8 x i16> %a, zeroinitializer
        %abs = select <8 x i1> %b, <8 x i16> %a, <8 x i16> %tmp1neg
        ret <8 x i16> %abs
}

define <16 x i8> @abspattern6(<16 x i8> %a) nounwind {



        %tmp1neg = sub <16 x i8> zeroinitializer, %a
        %b = icmp slt <16 x i8> %a, zeroinitializer
        %abs = select <16 x i1> %b, <16 x i8> %tmp1neg, <16 x i8> %a
        ret <16 x i8> %abs
}

define <2 x i64> @abspattern7(<2 x i64> %a) nounwind {



        %tmp1neg = sub <2 x i64> zeroinitializer, %a
        %b = icmp sle <2 x i64> %a, zeroinitializer
        %abs = select <2 x i1> %b, <2 x i64> %tmp1neg, <2 x i64> %a
        ret <2 x i64> %abs
}
