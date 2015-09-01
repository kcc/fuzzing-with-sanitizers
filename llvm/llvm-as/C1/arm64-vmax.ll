

define <8 x i8> @smax_8b(<8 x i8>* %A, <8 x i8>* %B) nounwind {


	%tmp1 = load <8 x i8>, <8 x i8>* %A
	%tmp2 = load <8 x i8>, <8 x i8>* %B
	%tmp3 = call <8 x i8> @llvm.aarch64.neon.smax.v8i8(<8 x i8> %tmp1, <8 x i8> %tmp2)
	ret <8 x i8> %tmp3
}

define <16 x i8> @smax_16b(<16 x i8>* %A, <16 x i8>* %B) nounwind {


	%tmp1 = load <16 x i8>, <16 x i8>* %A
	%tmp2 = load <16 x i8>, <16 x i8>* %B
	%tmp3 = call <16 x i8> @llvm.aarch64.neon.smax.v16i8(<16 x i8> %tmp1, <16 x i8> %tmp2)
	ret <16 x i8> %tmp3
}

define <4 x i16> @smax_4h(<4 x i16>* %A, <4 x i16>* %B) nounwind {


	%tmp1 = load <4 x i16>, <4 x i16>* %A
	%tmp2 = load <4 x i16>, <4 x i16>* %B
	%tmp3 = call <4 x i16> @llvm.aarch64.neon.smax.v4i16(<4 x i16> %tmp1, <4 x i16> %tmp2)
	ret <4 x i16> %tmp3
}

define <8 x i16> @smax_8h(<8 x i16>* %A, <8 x i16>* %B) nounwind {


	%tmp1 = load <8 x i16>, <8 x i16>* %A
	%tmp2 = load <8 x i16>, <8 x i16>* %B
	%tmp3 = call <8 x i16> @llvm.aarch64.neon.smax.v8i16(<8 x i16> %tmp1, <8 x i16> %tmp2)
	ret <8 x i16> %tmp3
}

define <2 x i32> @smax_2s(<2 x i32>* %A, <2 x i32>* %B) nounwind {


	%tmp1 = load <2 x i32>, <2 x i32>* %A
	%tmp2 = load <2 x i32>, <2 x i32>* %B
	%tmp3 = call <2 x i32> @llvm.aarch64.neon.smax.v2i32(<2 x i32> %tmp1, <2 x i32> %tmp2)
	ret <2 x i32> %tmp3
}

define <4 x i32> @smax_4s(<4 x i32>* %A, <4 x i32>* %B) nounwind {


	%tmp1 = load <4 x i32>, <4 x i32>* %A
	%tmp2 = load <4 x i32>, <4 x i32>* %B
	%tmp3 = call <4 x i32> @llvm.aarch64.neon.smax.v4i32(<4 x i32> %tmp1, <4 x i32> %tmp2)
	ret <4 x i32> %tmp3
}

declare <8 x i8> @llvm.aarch64.neon.smax.v8i8(<8 x i8>, <8 x i8>) nounwind readnone
declare <16 x i8> @llvm.aarch64.neon.smax.v16i8(<16 x i8>, <16 x i8>) nounwind readnone
declare <4 x i16> @llvm.aarch64.neon.smax.v4i16(<4 x i16>, <4 x i16>) nounwind readnone
declare <8 x i16> @llvm.aarch64.neon.smax.v8i16(<8 x i16>, <8 x i16>) nounwind readnone
declare <2 x i32> @llvm.aarch64.neon.smax.v2i32(<2 x i32>, <2 x i32>) nounwind readnone
declare <4 x i32> @llvm.aarch64.neon.smax.v4i32(<4 x i32>, <4 x i32>) nounwind readnone

define <8 x i8> @umax_8b(<8 x i8>* %A, <8 x i8>* %B) nounwind {


	%tmp1 = load <8 x i8>, <8 x i8>* %A
	%tmp2 = load <8 x i8>, <8 x i8>* %B
	%tmp3 = call <8 x i8> @llvm.aarch64.neon.umax.v8i8(<8 x i8> %tmp1, <8 x i8> %tmp2)
	ret <8 x i8> %tmp3
}

define <16 x i8> @umax_16b(<16 x i8>* %A, <16 x i8>* %B) nounwind {


	%tmp1 = load <16 x i8>, <16 x i8>* %A
	%tmp2 = load <16 x i8>, <16 x i8>* %B
	%tmp3 = call <16 x i8> @llvm.aarch64.neon.umax.v16i8(<16 x i8> %tmp1, <16 x i8> %tmp2)
	ret <16 x i8> %tmp3
}

define <4 x i16> @umax_4h(<4 x i16>* %A, <4 x i16>* %B) nounwind {


	%tmp1 = load <4 x i16>, <4 x i16>* %A
	%tmp2 = load <4 x i16>, <4 x i16>* %B
	%tmp3 = call <4 x i16> @llvm.aarch64.neon.umax.v4i16(<4 x i16> %tmp1, <4 x i16> %tmp2)
	ret <4 x i16> %tmp3
}

define <8 x i16> @umax_8h(<8 x i16>* %A, <8 x i16>* %B) nounwind {


	%tmp1 = load <8 x i16>, <8 x i16>* %A
	%tmp2 = load <8 x i16>, <8 x i16>* %B
	%tmp3 = call <8 x i16> @llvm.aarch64.neon.umax.v8i16(<8 x i16> %tmp1, <8 x i16> %tmp2)
	ret <8 x i16> %tmp3
}

define <2 x i32> @umax_2s(<2 x i32>* %A, <2 x i32>* %B) nounwind {


	%tmp1 = load <2 x i32>, <2 x i32>* %A
	%tmp2 = load <2 x i32>, <2 x i32>* %B
	%tmp3 = call <2 x i32> @llvm.aarch64.neon.umax.v2i32(<2 x i32> %tmp1, <2 x i32> %tmp2)
	ret <2 x i32> %tmp3
}

define <4 x i32> @umax_4s(<4 x i32>* %A, <4 x i32>* %B) nounwind {


	%tmp1 = load <4 x i32>, <4 x i32>* %A
	%tmp2 = load <4 x i32>, <4 x i32>* %B
	%tmp3 = call <4 x i32> @llvm.aarch64.neon.umax.v4i32(<4 x i32> %tmp1, <4 x i32> %tmp2)
	ret <4 x i32> %tmp3
}

declare <8 x i8> @llvm.aarch64.neon.umax.v8i8(<8 x i8>, <8 x i8>) nounwind readnone
declare <16 x i8> @llvm.aarch64.neon.umax.v16i8(<16 x i8>, <16 x i8>) nounwind readnone
declare <4 x i16> @llvm.aarch64.neon.umax.v4i16(<4 x i16>, <4 x i16>) nounwind readnone
declare <8 x i16> @llvm.aarch64.neon.umax.v8i16(<8 x i16>, <8 x i16>) nounwind readnone
declare <2 x i32> @llvm.aarch64.neon.umax.v2i32(<2 x i32>, <2 x i32>) nounwind readnone
declare <4 x i32> @llvm.aarch64.neon.umax.v4i32(<4 x i32>, <4 x i32>) nounwind readnone

define <8 x i8> @smin_8b(<8 x i8>* %A, <8 x i8>* %B) nounwind {


	%tmp1 = load <8 x i8>, <8 x i8>* %A
	%tmp2 = load <8 x i8>, <8 x i8>* %B
	%tmp3 = call <8 x i8> @llvm.aarch64.neon.smin.v8i8(<8 x i8> %tmp1, <8 x i8> %tmp2)
	ret <8 x i8> %tmp3
}

define <16 x i8> @smin_16b(<16 x i8>* %A, <16 x i8>* %B) nounwind {


	%tmp1 = load <16 x i8>, <16 x i8>* %A
	%tmp2 = load <16 x i8>, <16 x i8>* %B
	%tmp3 = call <16 x i8> @llvm.aarch64.neon.smin.v16i8(<16 x i8> %tmp1, <16 x i8> %tmp2)
	ret <16 x i8> %tmp3
}

define <4 x i16> @smin_4h(<4 x i16>* %A, <4 x i16>* %B) nounwind {


	%tmp1 = load <4 x i16>, <4 x i16>* %A
	%tmp2 = load <4 x i16>, <4 x i16>* %B
	%tmp3 = call <4 x i16> @llvm.aarch64.neon.smin.v4i16(<4 x i16> %tmp1, <4 x i16> %tmp2)
	ret <4 x i16> %tmp3
}

define <8 x i16> @smin_8h(<8 x i16>* %A, <8 x i16>* %B) nounwind {


	%tmp1 = load <8 x i16>, <8 x i16>* %A
	%tmp2 = load <8 x i16>, <8 x i16>* %B
	%tmp3 = call <8 x i16> @llvm.aarch64.neon.smin.v8i16(<8 x i16> %tmp1, <8 x i16> %tmp2)
	ret <8 x i16> %tmp3
}

define <2 x i32> @smin_2s(<2 x i32>* %A, <2 x i32>* %B) nounwind {


	%tmp1 = load <2 x i32>, <2 x i32>* %A
	%tmp2 = load <2 x i32>, <2 x i32>* %B
	%tmp3 = call <2 x i32> @llvm.aarch64.neon.smin.v2i32(<2 x i32> %tmp1, <2 x i32> %tmp2)
	ret <2 x i32> %tmp3
}

define <4 x i32> @smin_4s(<4 x i32>* %A, <4 x i32>* %B) nounwind {


	%tmp1 = load <4 x i32>, <4 x i32>* %A
	%tmp2 = load <4 x i32>, <4 x i32>* %B
	%tmp3 = call <4 x i32> @llvm.aarch64.neon.smin.v4i32(<4 x i32> %tmp1, <4 x i32> %tmp2)
	ret <4 x i32> %tmp3
}

declare <8 x i8> @llvm.aarch64.neon.smin.v8i8(<8 x i8>, <8 x i8>) nounwind readnone
declare <16 x i8> @llvm.aarch64.neon.smin.v16i8(<16 x i8>, <16 x i8>) nounwind readnone
declare <4 x i16> @llvm.aarch64.neon.smin.v4i16(<4 x i16>, <4 x i16>) nounwind readnone
declare <8 x i16> @llvm.aarch64.neon.smin.v8i16(<8 x i16>, <8 x i16>) nounwind readnone
declare <2 x i32> @llvm.aarch64.neon.smin.v2i32(<2 x i32>, <2 x i32>) nounwind readnone
declare <4 x i32> @llvm.aarch64.neon.smin.v4i32(<4 x i32>, <4 x i32>) nounwind readnone

define <8 x i8> @umin_8b(<8 x i8>* %A, <8 x i8>* %B) nounwind {


	%tmp1 = load <8 x i8>, <8 x i8>* %A
	%tmp2 = load <8 x i8>, <8 x i8>* %B
	%tmp3 = call <8 x i8> @llvm.aarch64.neon.umin.v8i8(<8 x i8> %tmp1, <8 x i8> %tmp2)
	ret <8 x i8> %tmp3
}

define <16 x i8> @umin_16b(<16 x i8>* %A, <16 x i8>* %B) nounwind {


	%tmp1 = load <16 x i8>, <16 x i8>* %A
	%tmp2 = load <16 x i8>, <16 x i8>* %B
	%tmp3 = call <16 x i8> @llvm.aarch64.neon.umin.v16i8(<16 x i8> %tmp1, <16 x i8> %tmp2)
	ret <16 x i8> %tmp3
}

define <4 x i16> @umin_4h(<4 x i16>* %A, <4 x i16>* %B) nounwind {


	%tmp1 = load <4 x i16>, <4 x i16>* %A
	%tmp2 = load <4 x i16>, <4 x i16>* %B
	%tmp3 = call <4 x i16> @llvm.aarch64.neon.umin.v4i16(<4 x i16> %tmp1, <4 x i16> %tmp2)
	ret <4 x i16> %tmp3
}

define <8 x i16> @umin_8h(<8 x i16>* %A, <8 x i16>* %B) nounwind {


	%tmp1 = load <8 x i16>, <8 x i16>* %A
	%tmp2 = load <8 x i16>, <8 x i16>* %B
	%tmp3 = call <8 x i16> @llvm.aarch64.neon.umin.v8i16(<8 x i16> %tmp1, <8 x i16> %tmp2)
	ret <8 x i16> %tmp3
}

define <2 x i32> @umin_2s(<2 x i32>* %A, <2 x i32>* %B) nounwind {


	%tmp1 = load <2 x i32>, <2 x i32>* %A
	%tmp2 = load <2 x i32>, <2 x i32>* %B
	%tmp3 = call <2 x i32> @llvm.aarch64.neon.umin.v2i32(<2 x i32> %tmp1, <2 x i32> %tmp2)
	ret <2 x i32> %tmp3
}

define <4 x i32> @umin_4s(<4 x i32>* %A, <4 x i32>* %B) nounwind {


	%tmp1 = load <4 x i32>, <4 x i32>* %A
	%tmp2 = load <4 x i32>, <4 x i32>* %B
	%tmp3 = call <4 x i32> @llvm.aarch64.neon.umin.v4i32(<4 x i32> %tmp1, <4 x i32> %tmp2)
	ret <4 x i32> %tmp3
}

declare <8 x i8> @llvm.aarch64.neon.umin.v8i8(<8 x i8>, <8 x i8>) nounwind readnone
declare <16 x i8> @llvm.aarch64.neon.umin.v16i8(<16 x i8>, <16 x i8>) nounwind readnone
declare <4 x i16> @llvm.aarch64.neon.umin.v4i16(<4 x i16>, <4 x i16>) nounwind readnone
declare <8 x i16> @llvm.aarch64.neon.umin.v8i16(<8 x i16>, <8 x i16>) nounwind readnone
declare <2 x i32> @llvm.aarch64.neon.umin.v2i32(<2 x i32>, <2 x i32>) nounwind readnone
declare <4 x i32> @llvm.aarch64.neon.umin.v4i32(<4 x i32>, <4 x i32>) nounwind readnone



define <8 x i8> @smaxp_8b(<8 x i8>* %A, <8 x i8>* %B) nounwind {


	%tmp1 = load <8 x i8>, <8 x i8>* %A
	%tmp2 = load <8 x i8>, <8 x i8>* %B
	%tmp3 = call <8 x i8> @llvm.aarch64.neon.smaxp.v8i8(<8 x i8> %tmp1, <8 x i8> %tmp2)
	ret <8 x i8> %tmp3
}

define <16 x i8> @smaxp_16b(<16 x i8>* %A, <16 x i8>* %B) nounwind {


	%tmp1 = load <16 x i8>, <16 x i8>* %A
	%tmp2 = load <16 x i8>, <16 x i8>* %B
	%tmp3 = call <16 x i8> @llvm.aarch64.neon.smaxp.v16i8(<16 x i8> %tmp1, <16 x i8> %tmp2)
	ret <16 x i8> %tmp3
}

define <4 x i16> @smaxp_4h(<4 x i16>* %A, <4 x i16>* %B) nounwind {


	%tmp1 = load <4 x i16>, <4 x i16>* %A
	%tmp2 = load <4 x i16>, <4 x i16>* %B
	%tmp3 = call <4 x i16> @llvm.aarch64.neon.smaxp.v4i16(<4 x i16> %tmp1, <4 x i16> %tmp2)
	ret <4 x i16> %tmp3
}

define <8 x i16> @smaxp_8h(<8 x i16>* %A, <8 x i16>* %B) nounwind {


	%tmp1 = load <8 x i16>, <8 x i16>* %A
	%tmp2 = load <8 x i16>, <8 x i16>* %B
	%tmp3 = call <8 x i16> @llvm.aarch64.neon.smaxp.v8i16(<8 x i16> %tmp1, <8 x i16> %tmp2)
	ret <8 x i16> %tmp3
}

define <2 x i32> @smaxp_2s(<2 x i32>* %A, <2 x i32>* %B) nounwind {


	%tmp1 = load <2 x i32>, <2 x i32>* %A
	%tmp2 = load <2 x i32>, <2 x i32>* %B
	%tmp3 = call <2 x i32> @llvm.aarch64.neon.smaxp.v2i32(<2 x i32> %tmp1, <2 x i32> %tmp2)
	ret <2 x i32> %tmp3
}

define <4 x i32> @smaxp_4s(<4 x i32>* %A, <4 x i32>* %B) nounwind {


	%tmp1 = load <4 x i32>, <4 x i32>* %A
	%tmp2 = load <4 x i32>, <4 x i32>* %B
	%tmp3 = call <4 x i32> @llvm.aarch64.neon.smaxp.v4i32(<4 x i32> %tmp1, <4 x i32> %tmp2)
	ret <4 x i32> %tmp3
}

declare <8 x i8> @llvm.aarch64.neon.smaxp.v8i8(<8 x i8>, <8 x i8>) nounwind readnone
declare <16 x i8> @llvm.aarch64.neon.smaxp.v16i8(<16 x i8>, <16 x i8>) nounwind readnone
declare <4 x i16> @llvm.aarch64.neon.smaxp.v4i16(<4 x i16>, <4 x i16>) nounwind readnone
declare <8 x i16> @llvm.aarch64.neon.smaxp.v8i16(<8 x i16>, <8 x i16>) nounwind readnone
declare <2 x i32> @llvm.aarch64.neon.smaxp.v2i32(<2 x i32>, <2 x i32>) nounwind readnone
declare <4 x i32> @llvm.aarch64.neon.smaxp.v4i32(<4 x i32>, <4 x i32>) nounwind readnone

define <8 x i8> @umaxp_8b(<8 x i8>* %A, <8 x i8>* %B) nounwind {


	%tmp1 = load <8 x i8>, <8 x i8>* %A
	%tmp2 = load <8 x i8>, <8 x i8>* %B
	%tmp3 = call <8 x i8> @llvm.aarch64.neon.umaxp.v8i8(<8 x i8> %tmp1, <8 x i8> %tmp2)
	ret <8 x i8> %tmp3
}

define <16 x i8> @umaxp_16b(<16 x i8>* %A, <16 x i8>* %B) nounwind {


	%tmp1 = load <16 x i8>, <16 x i8>* %A
	%tmp2 = load <16 x i8>, <16 x i8>* %B
	%tmp3 = call <16 x i8> @llvm.aarch64.neon.umaxp.v16i8(<16 x i8> %tmp1, <16 x i8> %tmp2)
	ret <16 x i8> %tmp3
}

define <4 x i16> @umaxp_4h(<4 x i16>* %A, <4 x i16>* %B) nounwind {


	%tmp1 = load <4 x i16>, <4 x i16>* %A
	%tmp2 = load <4 x i16>, <4 x i16>* %B
	%tmp3 = call <4 x i16> @llvm.aarch64.neon.umaxp.v4i16(<4 x i16> %tmp1, <4 x i16> %tmp2)
	ret <4 x i16> %tmp3
}

define <8 x i16> @umaxp_8h(<8 x i16>* %A, <8 x i16>* %B) nounwind {


	%tmp1 = load <8 x i16>, <8 x i16>* %A
	%tmp2 = load <8 x i16>, <8 x i16>* %B
	%tmp3 = call <8 x i16> @llvm.aarch64.neon.umaxp.v8i16(<8 x i16> %tmp1, <8 x i16> %tmp2)
	ret <8 x i16> %tmp3
}

define <2 x i32> @umaxp_2s(<2 x i32>* %A, <2 x i32>* %B) nounwind {


	%tmp1 = load <2 x i32>, <2 x i32>* %A
	%tmp2 = load <2 x i32>, <2 x i32>* %B
	%tmp3 = call <2 x i32> @llvm.aarch64.neon.umaxp.v2i32(<2 x i32> %tmp1, <2 x i32> %tmp2)
	ret <2 x i32> %tmp3
}

define <4 x i32> @umaxp_4s(<4 x i32>* %A, <4 x i32>* %B) nounwind {


	%tmp1 = load <4 x i32>, <4 x i32>* %A
	%tmp2 = load <4 x i32>, <4 x i32>* %B
	%tmp3 = call <4 x i32> @llvm.aarch64.neon.umaxp.v4i32(<4 x i32> %tmp1, <4 x i32> %tmp2)
	ret <4 x i32> %tmp3
}

declare <8 x i8> @llvm.aarch64.neon.umaxp.v8i8(<8 x i8>, <8 x i8>) nounwind readnone
declare <16 x i8> @llvm.aarch64.neon.umaxp.v16i8(<16 x i8>, <16 x i8>) nounwind readnone
declare <4 x i16> @llvm.aarch64.neon.umaxp.v4i16(<4 x i16>, <4 x i16>) nounwind readnone
declare <8 x i16> @llvm.aarch64.neon.umaxp.v8i16(<8 x i16>, <8 x i16>) nounwind readnone
declare <2 x i32> @llvm.aarch64.neon.umaxp.v2i32(<2 x i32>, <2 x i32>) nounwind readnone
declare <4 x i32> @llvm.aarch64.neon.umaxp.v4i32(<4 x i32>, <4 x i32>) nounwind readnone



define <8 x i8> @sminp_8b(<8 x i8>* %A, <8 x i8>* %B) nounwind {


	%tmp1 = load <8 x i8>, <8 x i8>* %A
	%tmp2 = load <8 x i8>, <8 x i8>* %B
	%tmp3 = call <8 x i8> @llvm.aarch64.neon.sminp.v8i8(<8 x i8> %tmp1, <8 x i8> %tmp2)
	ret <8 x i8> %tmp3
}

define <16 x i8> @sminp_16b(<16 x i8>* %A, <16 x i8>* %B) nounwind {


	%tmp1 = load <16 x i8>, <16 x i8>* %A
	%tmp2 = load <16 x i8>, <16 x i8>* %B
	%tmp3 = call <16 x i8> @llvm.aarch64.neon.sminp.v16i8(<16 x i8> %tmp1, <16 x i8> %tmp2)
	ret <16 x i8> %tmp3
}

define <4 x i16> @sminp_4h(<4 x i16>* %A, <4 x i16>* %B) nounwind {


	%tmp1 = load <4 x i16>, <4 x i16>* %A
	%tmp2 = load <4 x i16>, <4 x i16>* %B
	%tmp3 = call <4 x i16> @llvm.aarch64.neon.sminp.v4i16(<4 x i16> %tmp1, <4 x i16> %tmp2)
	ret <4 x i16> %tmp3
}

define <8 x i16> @sminp_8h(<8 x i16>* %A, <8 x i16>* %B) nounwind {


	%tmp1 = load <8 x i16>, <8 x i16>* %A
	%tmp2 = load <8 x i16>, <8 x i16>* %B
	%tmp3 = call <8 x i16> @llvm.aarch64.neon.sminp.v8i16(<8 x i16> %tmp1, <8 x i16> %tmp2)
	ret <8 x i16> %tmp3
}

define <2 x i32> @sminp_2s(<2 x i32>* %A, <2 x i32>* %B) nounwind {


	%tmp1 = load <2 x i32>, <2 x i32>* %A
	%tmp2 = load <2 x i32>, <2 x i32>* %B
	%tmp3 = call <2 x i32> @llvm.aarch64.neon.sminp.v2i32(<2 x i32> %tmp1, <2 x i32> %tmp2)
	ret <2 x i32> %tmp3
}

define <4 x i32> @sminp_4s(<4 x i32>* %A, <4 x i32>* %B) nounwind {


	%tmp1 = load <4 x i32>, <4 x i32>* %A
	%tmp2 = load <4 x i32>, <4 x i32>* %B
	%tmp3 = call <4 x i32> @llvm.aarch64.neon.sminp.v4i32(<4 x i32> %tmp1, <4 x i32> %tmp2)
	ret <4 x i32> %tmp3
}

declare <8 x i8> @llvm.aarch64.neon.sminp.v8i8(<8 x i8>, <8 x i8>) nounwind readnone
declare <16 x i8> @llvm.aarch64.neon.sminp.v16i8(<16 x i8>, <16 x i8>) nounwind readnone
declare <4 x i16> @llvm.aarch64.neon.sminp.v4i16(<4 x i16>, <4 x i16>) nounwind readnone
declare <8 x i16> @llvm.aarch64.neon.sminp.v8i16(<8 x i16>, <8 x i16>) nounwind readnone
declare <2 x i32> @llvm.aarch64.neon.sminp.v2i32(<2 x i32>, <2 x i32>) nounwind readnone
declare <4 x i32> @llvm.aarch64.neon.sminp.v4i32(<4 x i32>, <4 x i32>) nounwind readnone

define <8 x i8> @uminp_8b(<8 x i8>* %A, <8 x i8>* %B) nounwind {


	%tmp1 = load <8 x i8>, <8 x i8>* %A
	%tmp2 = load <8 x i8>, <8 x i8>* %B
	%tmp3 = call <8 x i8> @llvm.aarch64.neon.uminp.v8i8(<8 x i8> %tmp1, <8 x i8> %tmp2)
	ret <8 x i8> %tmp3
}

define <16 x i8> @uminp_16b(<16 x i8>* %A, <16 x i8>* %B) nounwind {


	%tmp1 = load <16 x i8>, <16 x i8>* %A
	%tmp2 = load <16 x i8>, <16 x i8>* %B
	%tmp3 = call <16 x i8> @llvm.aarch64.neon.uminp.v16i8(<16 x i8> %tmp1, <16 x i8> %tmp2)
	ret <16 x i8> %tmp3
}

define <4 x i16> @uminp_4h(<4 x i16>* %A, <4 x i16>* %B) nounwind {


	%tmp1 = load <4 x i16>, <4 x i16>* %A
	%tmp2 = load <4 x i16>, <4 x i16>* %B
	%tmp3 = call <4 x i16> @llvm.aarch64.neon.uminp.v4i16(<4 x i16> %tmp1, <4 x i16> %tmp2)
	ret <4 x i16> %tmp3
}

define <8 x i16> @uminp_8h(<8 x i16>* %A, <8 x i16>* %B) nounwind {


	%tmp1 = load <8 x i16>, <8 x i16>* %A
	%tmp2 = load <8 x i16>, <8 x i16>* %B
	%tmp3 = call <8 x i16> @llvm.aarch64.neon.uminp.v8i16(<8 x i16> %tmp1, <8 x i16> %tmp2)
	ret <8 x i16> %tmp3
}

define <2 x i32> @uminp_2s(<2 x i32>* %A, <2 x i32>* %B) nounwind {


	%tmp1 = load <2 x i32>, <2 x i32>* %A
	%tmp2 = load <2 x i32>, <2 x i32>* %B
	%tmp3 = call <2 x i32> @llvm.aarch64.neon.uminp.v2i32(<2 x i32> %tmp1, <2 x i32> %tmp2)
	ret <2 x i32> %tmp3
}

define <4 x i32> @uminp_4s(<4 x i32>* %A, <4 x i32>* %B) nounwind {


	%tmp1 = load <4 x i32>, <4 x i32>* %A
	%tmp2 = load <4 x i32>, <4 x i32>* %B
	%tmp3 = call <4 x i32> @llvm.aarch64.neon.uminp.v4i32(<4 x i32> %tmp1, <4 x i32> %tmp2)
	ret <4 x i32> %tmp3
}

declare <8 x i8> @llvm.aarch64.neon.uminp.v8i8(<8 x i8>, <8 x i8>) nounwind readnone
declare <16 x i8> @llvm.aarch64.neon.uminp.v16i8(<16 x i8>, <16 x i8>) nounwind readnone
declare <4 x i16> @llvm.aarch64.neon.uminp.v4i16(<4 x i16>, <4 x i16>) nounwind readnone
declare <8 x i16> @llvm.aarch64.neon.uminp.v8i16(<8 x i16>, <8 x i16>) nounwind readnone
declare <2 x i32> @llvm.aarch64.neon.uminp.v2i32(<2 x i32>, <2 x i32>) nounwind readnone
declare <4 x i32> @llvm.aarch64.neon.uminp.v4i32(<4 x i32>, <4 x i32>) nounwind readnone

define <2 x float> @fmax_2s(<2 x float>* %A, <2 x float>* %B) nounwind {


	%tmp1 = load <2 x float>, <2 x float>* %A
	%tmp2 = load <2 x float>, <2 x float>* %B
	%tmp3 = call <2 x float> @llvm.aarch64.neon.fmax.v2f32(<2 x float> %tmp1, <2 x float> %tmp2)
	ret <2 x float> %tmp3
}

define <4 x float> @fmax_4s(<4 x float>* %A, <4 x float>* %B) nounwind {


	%tmp1 = load <4 x float>, <4 x float>* %A
	%tmp2 = load <4 x float>, <4 x float>* %B
	%tmp3 = call <4 x float> @llvm.aarch64.neon.fmax.v4f32(<4 x float> %tmp1, <4 x float> %tmp2)
	ret <4 x float> %tmp3
}

define <2 x double> @fmax_2d(<2 x double>* %A, <2 x double>* %B) nounwind {


	%tmp1 = load <2 x double>, <2 x double>* %A
	%tmp2 = load <2 x double>, <2 x double>* %B
	%tmp3 = call <2 x double> @llvm.aarch64.neon.fmax.v2f64(<2 x double> %tmp1, <2 x double> %tmp2)
	ret <2 x double> %tmp3
}

declare <2 x float> @llvm.aarch64.neon.fmax.v2f32(<2 x float>, <2 x float>) nounwind readnone
declare <4 x float> @llvm.aarch64.neon.fmax.v4f32(<4 x float>, <4 x float>) nounwind readnone
declare <2 x double> @llvm.aarch64.neon.fmax.v2f64(<2 x double>, <2 x double>) nounwind readnone

define <2 x float> @fmaxp_2s(<2 x float>* %A, <2 x float>* %B) nounwind {


	%tmp1 = load <2 x float>, <2 x float>* %A
	%tmp2 = load <2 x float>, <2 x float>* %B
	%tmp3 = call <2 x float> @llvm.aarch64.neon.fmaxp.v2f32(<2 x float> %tmp1, <2 x float> %tmp2)
	ret <2 x float> %tmp3
}

define <4 x float> @fmaxp_4s(<4 x float>* %A, <4 x float>* %B) nounwind {


	%tmp1 = load <4 x float>, <4 x float>* %A
	%tmp2 = load <4 x float>, <4 x float>* %B
	%tmp3 = call <4 x float> @llvm.aarch64.neon.fmaxp.v4f32(<4 x float> %tmp1, <4 x float> %tmp2)
	ret <4 x float> %tmp3
}

define <2 x double> @fmaxp_2d(<2 x double>* %A, <2 x double>* %B) nounwind {


	%tmp1 = load <2 x double>, <2 x double>* %A
	%tmp2 = load <2 x double>, <2 x double>* %B
	%tmp3 = call <2 x double> @llvm.aarch64.neon.fmaxp.v2f64(<2 x double> %tmp1, <2 x double> %tmp2)
	ret <2 x double> %tmp3
}

declare <2 x float> @llvm.aarch64.neon.fmaxp.v2f32(<2 x float>, <2 x float>) nounwind readnone
declare <4 x float> @llvm.aarch64.neon.fmaxp.v4f32(<4 x float>, <4 x float>) nounwind readnone
declare <2 x double> @llvm.aarch64.neon.fmaxp.v2f64(<2 x double>, <2 x double>) nounwind readnone

define <2 x float> @fmin_2s(<2 x float>* %A, <2 x float>* %B) nounwind {


	%tmp1 = load <2 x float>, <2 x float>* %A
	%tmp2 = load <2 x float>, <2 x float>* %B
	%tmp3 = call <2 x float> @llvm.aarch64.neon.fmin.v2f32(<2 x float> %tmp1, <2 x float> %tmp2)
	ret <2 x float> %tmp3
}

define <4 x float> @fmin_4s(<4 x float>* %A, <4 x float>* %B) nounwind {


	%tmp1 = load <4 x float>, <4 x float>* %A
	%tmp2 = load <4 x float>, <4 x float>* %B
	%tmp3 = call <4 x float> @llvm.aarch64.neon.fmin.v4f32(<4 x float> %tmp1, <4 x float> %tmp2)
	ret <4 x float> %tmp3
}

define <2 x double> @fmin_2d(<2 x double>* %A, <2 x double>* %B) nounwind {


	%tmp1 = load <2 x double>, <2 x double>* %A
	%tmp2 = load <2 x double>, <2 x double>* %B
	%tmp3 = call <2 x double> @llvm.aarch64.neon.fmin.v2f64(<2 x double> %tmp1, <2 x double> %tmp2)
	ret <2 x double> %tmp3
}

declare <2 x float> @llvm.aarch64.neon.fmin.v2f32(<2 x float>, <2 x float>) nounwind readnone
declare <4 x float> @llvm.aarch64.neon.fmin.v4f32(<4 x float>, <4 x float>) nounwind readnone
declare <2 x double> @llvm.aarch64.neon.fmin.v2f64(<2 x double>, <2 x double>) nounwind readnone

define <2 x float> @fminp_2s(<2 x float>* %A, <2 x float>* %B) nounwind {


	%tmp1 = load <2 x float>, <2 x float>* %A
	%tmp2 = load <2 x float>, <2 x float>* %B
	%tmp3 = call <2 x float> @llvm.aarch64.neon.fminp.v2f32(<2 x float> %tmp1, <2 x float> %tmp2)
	ret <2 x float> %tmp3
}

define <4 x float> @fminp_4s(<4 x float>* %A, <4 x float>* %B) nounwind {


	%tmp1 = load <4 x float>, <4 x float>* %A
	%tmp2 = load <4 x float>, <4 x float>* %B
	%tmp3 = call <4 x float> @llvm.aarch64.neon.fminp.v4f32(<4 x float> %tmp1, <4 x float> %tmp2)
	ret <4 x float> %tmp3
}

define <2 x double> @fminp_2d(<2 x double>* %A, <2 x double>* %B) nounwind {


	%tmp1 = load <2 x double>, <2 x double>* %A
	%tmp2 = load <2 x double>, <2 x double>* %B
	%tmp3 = call <2 x double> @llvm.aarch64.neon.fminp.v2f64(<2 x double> %tmp1, <2 x double> %tmp2)
	ret <2 x double> %tmp3
}

declare <2 x float> @llvm.aarch64.neon.fminp.v2f32(<2 x float>, <2 x float>) nounwind readnone
declare <4 x float> @llvm.aarch64.neon.fminp.v4f32(<4 x float>, <4 x float>) nounwind readnone
declare <2 x double> @llvm.aarch64.neon.fminp.v2f64(<2 x double>, <2 x double>) nounwind readnone

define <2 x float> @fminnmp_2s(<2 x float>* %A, <2 x float>* %B) nounwind {


	%tmp1 = load <2 x float>, <2 x float>* %A
	%tmp2 = load <2 x float>, <2 x float>* %B
	%tmp3 = call <2 x float> @llvm.aarch64.neon.fminnmp.v2f32(<2 x float> %tmp1, <2 x float> %tmp2)
	ret <2 x float> %tmp3
}

define <4 x float> @fminnmp_4s(<4 x float>* %A, <4 x float>* %B) nounwind {


	%tmp1 = load <4 x float>, <4 x float>* %A
	%tmp2 = load <4 x float>, <4 x float>* %B
	%tmp3 = call <4 x float> @llvm.aarch64.neon.fminnmp.v4f32(<4 x float> %tmp1, <4 x float> %tmp2)
	ret <4 x float> %tmp3
}

define <2 x double> @fminnmp_2d(<2 x double>* %A, <2 x double>* %B) nounwind {


	%tmp1 = load <2 x double>, <2 x double>* %A
	%tmp2 = load <2 x double>, <2 x double>* %B
	%tmp3 = call <2 x double> @llvm.aarch64.neon.fminnmp.v2f64(<2 x double> %tmp1, <2 x double> %tmp2)
	ret <2 x double> %tmp3
}

declare <2 x float> @llvm.aarch64.neon.fminnmp.v2f32(<2 x float>, <2 x float>) nounwind readnone
declare <4 x float> @llvm.aarch64.neon.fminnmp.v4f32(<4 x float>, <4 x float>) nounwind readnone
declare <2 x double> @llvm.aarch64.neon.fminnmp.v2f64(<2 x double>, <2 x double>) nounwind readnone

define <2 x float> @fmaxnmp_2s(<2 x float>* %A, <2 x float>* %B) nounwind {


	%tmp1 = load <2 x float>, <2 x float>* %A
	%tmp2 = load <2 x float>, <2 x float>* %B
	%tmp3 = call <2 x float> @llvm.aarch64.neon.fmaxnmp.v2f32(<2 x float> %tmp1, <2 x float> %tmp2)
	ret <2 x float> %tmp3
}

define <4 x float> @fmaxnmp_4s(<4 x float>* %A, <4 x float>* %B) nounwind {


	%tmp1 = load <4 x float>, <4 x float>* %A
	%tmp2 = load <4 x float>, <4 x float>* %B
	%tmp3 = call <4 x float> @llvm.aarch64.neon.fmaxnmp.v4f32(<4 x float> %tmp1, <4 x float> %tmp2)
	ret <4 x float> %tmp3
}

define <2 x double> @fmaxnmp_2d(<2 x double>* %A, <2 x double>* %B) nounwind {


	%tmp1 = load <2 x double>, <2 x double>* %A
	%tmp2 = load <2 x double>, <2 x double>* %B
	%tmp3 = call <2 x double> @llvm.aarch64.neon.fmaxnmp.v2f64(<2 x double> %tmp1, <2 x double> %tmp2)
	ret <2 x double> %tmp3
}

declare <2 x float> @llvm.aarch64.neon.fmaxnmp.v2f32(<2 x float>, <2 x float>) nounwind readnone
declare <4 x float> @llvm.aarch64.neon.fmaxnmp.v4f32(<4 x float>, <4 x float>) nounwind readnone
declare <2 x double> @llvm.aarch64.neon.fmaxnmp.v2f64(<2 x double>, <2 x double>) nounwind readnone
