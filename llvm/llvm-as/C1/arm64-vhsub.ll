

define <8 x i8> @shsub8b(<8 x i8>* %A, <8 x i8>* %B) nounwind {


	%tmp1 = load <8 x i8>, <8 x i8>* %A
	%tmp2 = load <8 x i8>, <8 x i8>* %B
	%tmp3 = call <8 x i8> @llvm.aarch64.neon.shsub.v8i8(<8 x i8> %tmp1, <8 x i8> %tmp2)
	ret <8 x i8> %tmp3
}

define <16 x i8> @shsub16b(<16 x i8>* %A, <16 x i8>* %B) nounwind {


	%tmp1 = load <16 x i8>, <16 x i8>* %A
	%tmp2 = load <16 x i8>, <16 x i8>* %B
	%tmp3 = call <16 x i8> @llvm.aarch64.neon.shsub.v16i8(<16 x i8> %tmp1, <16 x i8> %tmp2)
	ret <16 x i8> %tmp3
}

define <4 x i16> @shsub4h(<4 x i16>* %A, <4 x i16>* %B) nounwind {


	%tmp1 = load <4 x i16>, <4 x i16>* %A
	%tmp2 = load <4 x i16>, <4 x i16>* %B
	%tmp3 = call <4 x i16> @llvm.aarch64.neon.shsub.v4i16(<4 x i16> %tmp1, <4 x i16> %tmp2)
	ret <4 x i16> %tmp3
}

define <8 x i16> @shsub8h(<8 x i16>* %A, <8 x i16>* %B) nounwind {


	%tmp1 = load <8 x i16>, <8 x i16>* %A
	%tmp2 = load <8 x i16>, <8 x i16>* %B
	%tmp3 = call <8 x i16> @llvm.aarch64.neon.shsub.v8i16(<8 x i16> %tmp1, <8 x i16> %tmp2)
	ret <8 x i16> %tmp3
}

define <2 x i32> @shsub2s(<2 x i32>* %A, <2 x i32>* %B) nounwind {


	%tmp1 = load <2 x i32>, <2 x i32>* %A
	%tmp2 = load <2 x i32>, <2 x i32>* %B
	%tmp3 = call <2 x i32> @llvm.aarch64.neon.shsub.v2i32(<2 x i32> %tmp1, <2 x i32> %tmp2)
	ret <2 x i32> %tmp3
}

define <4 x i32> @shsub4s(<4 x i32>* %A, <4 x i32>* %B) nounwind {


	%tmp1 = load <4 x i32>, <4 x i32>* %A
	%tmp2 = load <4 x i32>, <4 x i32>* %B
	%tmp3 = call <4 x i32> @llvm.aarch64.neon.shsub.v4i32(<4 x i32> %tmp1, <4 x i32> %tmp2)
	ret <4 x i32> %tmp3
}

define <8 x i8> @uhsub8b(<8 x i8>* %A, <8 x i8>* %B) nounwind {


	%tmp1 = load <8 x i8>, <8 x i8>* %A
	%tmp2 = load <8 x i8>, <8 x i8>* %B
	%tmp3 = call <8 x i8> @llvm.aarch64.neon.uhsub.v8i8(<8 x i8> %tmp1, <8 x i8> %tmp2)
	ret <8 x i8> %tmp3
}

define <16 x i8> @uhsub16b(<16 x i8>* %A, <16 x i8>* %B) nounwind {


	%tmp1 = load <16 x i8>, <16 x i8>* %A
	%tmp2 = load <16 x i8>, <16 x i8>* %B
	%tmp3 = call <16 x i8> @llvm.aarch64.neon.uhsub.v16i8(<16 x i8> %tmp1, <16 x i8> %tmp2)
	ret <16 x i8> %tmp3
}

define <4 x i16> @uhsub4h(<4 x i16>* %A, <4 x i16>* %B) nounwind {


	%tmp1 = load <4 x i16>, <4 x i16>* %A
	%tmp2 = load <4 x i16>, <4 x i16>* %B
	%tmp3 = call <4 x i16> @llvm.aarch64.neon.uhsub.v4i16(<4 x i16> %tmp1, <4 x i16> %tmp2)
	ret <4 x i16> %tmp3
}

define <8 x i16> @uhsub8h(<8 x i16>* %A, <8 x i16>* %B) nounwind {


	%tmp1 = load <8 x i16>, <8 x i16>* %A
	%tmp2 = load <8 x i16>, <8 x i16>* %B
	%tmp3 = call <8 x i16> @llvm.aarch64.neon.uhsub.v8i16(<8 x i16> %tmp1, <8 x i16> %tmp2)
	ret <8 x i16> %tmp3
}

define <2 x i32> @uhsub2s(<2 x i32>* %A, <2 x i32>* %B) nounwind {


	%tmp1 = load <2 x i32>, <2 x i32>* %A
	%tmp2 = load <2 x i32>, <2 x i32>* %B
	%tmp3 = call <2 x i32> @llvm.aarch64.neon.uhsub.v2i32(<2 x i32> %tmp1, <2 x i32> %tmp2)
	ret <2 x i32> %tmp3
}

define <4 x i32> @uhsub4s(<4 x i32>* %A, <4 x i32>* %B) nounwind {


	%tmp1 = load <4 x i32>, <4 x i32>* %A
	%tmp2 = load <4 x i32>, <4 x i32>* %B
	%tmp3 = call <4 x i32> @llvm.aarch64.neon.uhsub.v4i32(<4 x i32> %tmp1, <4 x i32> %tmp2)
	ret <4 x i32> %tmp3
}

declare <8 x i8>  @llvm.aarch64.neon.shsub.v8i8(<8 x i8>, <8 x i8>) nounwind readnone
declare <4 x i16> @llvm.aarch64.neon.shsub.v4i16(<4 x i16>, <4 x i16>) nounwind readnone
declare <2 x i32> @llvm.aarch64.neon.shsub.v2i32(<2 x i32>, <2 x i32>) nounwind readnone

declare <8 x i8>  @llvm.aarch64.neon.uhsub.v8i8(<8 x i8>, <8 x i8>) nounwind readnone
declare <4 x i16> @llvm.aarch64.neon.uhsub.v4i16(<4 x i16>, <4 x i16>) nounwind readnone
declare <2 x i32> @llvm.aarch64.neon.uhsub.v2i32(<2 x i32>, <2 x i32>) nounwind readnone

declare <16 x i8> @llvm.aarch64.neon.shsub.v16i8(<16 x i8>, <16 x i8>) nounwind readnone
declare <8 x i16> @llvm.aarch64.neon.shsub.v8i16(<8 x i16>, <8 x i16>) nounwind readnone
declare <4 x i32> @llvm.aarch64.neon.shsub.v4i32(<4 x i32>, <4 x i32>) nounwind readnone

declare <16 x i8> @llvm.aarch64.neon.uhsub.v16i8(<16 x i8>, <16 x i8>) nounwind readnone
declare <8 x i16> @llvm.aarch64.neon.uhsub.v8i16(<8 x i16>, <8 x i16>) nounwind readnone
declare <4 x i32> @llvm.aarch64.neon.uhsub.v4i32(<4 x i32>, <4 x i32>) nounwind readnone
