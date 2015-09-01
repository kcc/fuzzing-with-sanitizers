

define <8 x i8> @vshls8(<8 x i8>* %A, <8 x i8>* %B) nounwind {


	%tmp1 = load <8 x i8>, <8 x i8>* %A
	%tmp2 = load <8 x i8>, <8 x i8>* %B
	%tmp3 = call <8 x i8> @llvm.arm.neon.vshifts.v8i8(<8 x i8> %tmp1, <8 x i8> %tmp2)
	ret <8 x i8> %tmp3
}

define <4 x i16> @vshls16(<4 x i16>* %A, <4 x i16>* %B) nounwind {


	%tmp1 = load <4 x i16>, <4 x i16>* %A
	%tmp2 = load <4 x i16>, <4 x i16>* %B
	%tmp3 = call <4 x i16> @llvm.arm.neon.vshifts.v4i16(<4 x i16> %tmp1, <4 x i16> %tmp2)
	ret <4 x i16> %tmp3
}

define <2 x i32> @vshls32(<2 x i32>* %A, <2 x i32>* %B) nounwind {


	%tmp1 = load <2 x i32>, <2 x i32>* %A
	%tmp2 = load <2 x i32>, <2 x i32>* %B
	%tmp3 = call <2 x i32> @llvm.arm.neon.vshifts.v2i32(<2 x i32> %tmp1, <2 x i32> %tmp2)
	ret <2 x i32> %tmp3
}

define <1 x i64> @vshls64(<1 x i64>* %A, <1 x i64>* %B) nounwind {


	%tmp1 = load <1 x i64>, <1 x i64>* %A
	%tmp2 = load <1 x i64>, <1 x i64>* %B
	%tmp3 = call <1 x i64> @llvm.arm.neon.vshifts.v1i64(<1 x i64> %tmp1, <1 x i64> %tmp2)
	ret <1 x i64> %tmp3
}

define <8 x i8> @vshlu8(<8 x i8>* %A, <8 x i8>* %B) nounwind {


	%tmp1 = load <8 x i8>, <8 x i8>* %A
	%tmp2 = load <8 x i8>, <8 x i8>* %B
	%tmp3 = call <8 x i8> @llvm.arm.neon.vshiftu.v8i8(<8 x i8> %tmp1, <8 x i8> %tmp2)
	ret <8 x i8> %tmp3
}

define <4 x i16> @vshlu16(<4 x i16>* %A, <4 x i16>* %B) nounwind {


	%tmp1 = load <4 x i16>, <4 x i16>* %A
	%tmp2 = load <4 x i16>, <4 x i16>* %B
	%tmp3 = call <4 x i16> @llvm.arm.neon.vshiftu.v4i16(<4 x i16> %tmp1, <4 x i16> %tmp2)
	ret <4 x i16> %tmp3
}

define <2 x i32> @vshlu32(<2 x i32>* %A, <2 x i32>* %B) nounwind {


	%tmp1 = load <2 x i32>, <2 x i32>* %A
	%tmp2 = load <2 x i32>, <2 x i32>* %B
	%tmp3 = call <2 x i32> @llvm.arm.neon.vshiftu.v2i32(<2 x i32> %tmp1, <2 x i32> %tmp2)
	ret <2 x i32> %tmp3
}

define <1 x i64> @vshlu64(<1 x i64>* %A, <1 x i64>* %B) nounwind {


	%tmp1 = load <1 x i64>, <1 x i64>* %A
	%tmp2 = load <1 x i64>, <1 x i64>* %B
	%tmp3 = call <1 x i64> @llvm.arm.neon.vshiftu.v1i64(<1 x i64> %tmp1, <1 x i64> %tmp2)
	ret <1 x i64> %tmp3
}

define <16 x i8> @vshlQs8(<16 x i8>* %A, <16 x i8>* %B) nounwind {


	%tmp1 = load <16 x i8>, <16 x i8>* %A
	%tmp2 = load <16 x i8>, <16 x i8>* %B
	%tmp3 = call <16 x i8> @llvm.arm.neon.vshifts.v16i8(<16 x i8> %tmp1, <16 x i8> %tmp2)
	ret <16 x i8> %tmp3
}

define <8 x i16> @vshlQs16(<8 x i16>* %A, <8 x i16>* %B) nounwind {


	%tmp1 = load <8 x i16>, <8 x i16>* %A
	%tmp2 = load <8 x i16>, <8 x i16>* %B
	%tmp3 = call <8 x i16> @llvm.arm.neon.vshifts.v8i16(<8 x i16> %tmp1, <8 x i16> %tmp2)
	ret <8 x i16> %tmp3
}

define <4 x i32> @vshlQs32(<4 x i32>* %A, <4 x i32>* %B) nounwind {


	%tmp1 = load <4 x i32>, <4 x i32>* %A
	%tmp2 = load <4 x i32>, <4 x i32>* %B
	%tmp3 = call <4 x i32> @llvm.arm.neon.vshifts.v4i32(<4 x i32> %tmp1, <4 x i32> %tmp2)
	ret <4 x i32> %tmp3
}

define <2 x i64> @vshlQs64(<2 x i64>* %A, <2 x i64>* %B) nounwind {


	%tmp1 = load <2 x i64>, <2 x i64>* %A
	%tmp2 = load <2 x i64>, <2 x i64>* %B
	%tmp3 = call <2 x i64> @llvm.arm.neon.vshifts.v2i64(<2 x i64> %tmp1, <2 x i64> %tmp2)
	ret <2 x i64> %tmp3
}

define <16 x i8> @vshlQu8(<16 x i8>* %A, <16 x i8>* %B) nounwind {


	%tmp1 = load <16 x i8>, <16 x i8>* %A
	%tmp2 = load <16 x i8>, <16 x i8>* %B
	%tmp3 = call <16 x i8> @llvm.arm.neon.vshiftu.v16i8(<16 x i8> %tmp1, <16 x i8> %tmp2)
	ret <16 x i8> %tmp3
}

define <8 x i16> @vshlQu16(<8 x i16>* %A, <8 x i16>* %B) nounwind {


	%tmp1 = load <8 x i16>, <8 x i16>* %A
	%tmp2 = load <8 x i16>, <8 x i16>* %B
	%tmp3 = call <8 x i16> @llvm.arm.neon.vshiftu.v8i16(<8 x i16> %tmp1, <8 x i16> %tmp2)
	ret <8 x i16> %tmp3
}

define <4 x i32> @vshlQu32(<4 x i32>* %A, <4 x i32>* %B) nounwind {


	%tmp1 = load <4 x i32>, <4 x i32>* %A
	%tmp2 = load <4 x i32>, <4 x i32>* %B
	%tmp3 = call <4 x i32> @llvm.arm.neon.vshiftu.v4i32(<4 x i32> %tmp1, <4 x i32> %tmp2)
	ret <4 x i32> %tmp3
}

define <2 x i64> @vshlQu64(<2 x i64>* %A, <2 x i64>* %B) nounwind {


	%tmp1 = load <2 x i64>, <2 x i64>* %A
	%tmp2 = load <2 x i64>, <2 x i64>* %B
	%tmp3 = call <2 x i64> @llvm.arm.neon.vshiftu.v2i64(<2 x i64> %tmp1, <2 x i64> %tmp2)
	ret <2 x i64> %tmp3
}




define <8 x i8> @vshli8(<8 x i8>* %A) nounwind {


	%tmp1 = load <8 x i8>, <8 x i8>* %A
	%tmp2 = call <8 x i8> @llvm.arm.neon.vshifts.v8i8(<8 x i8> %tmp1, <8 x i8> < i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7 >)
	ret <8 x i8> %tmp2
}

define <4 x i16> @vshli16(<4 x i16>* %A) nounwind {


	%tmp1 = load <4 x i16>, <4 x i16>* %A
	%tmp2 = call <4 x i16> @llvm.arm.neon.vshiftu.v4i16(<4 x i16> %tmp1, <4 x i16> < i16 15, i16 15, i16 15, i16 15 >)
	ret <4 x i16> %tmp2
}

define <2 x i32> @vshli32(<2 x i32>* %A) nounwind {


	%tmp1 = load <2 x i32>, <2 x i32>* %A
	%tmp2 = call <2 x i32> @llvm.arm.neon.vshifts.v2i32(<2 x i32> %tmp1, <2 x i32> < i32 31, i32 31 >)
	ret <2 x i32> %tmp2
}

define <1 x i64> @vshli64(<1 x i64>* %A) nounwind {


	%tmp1 = load <1 x i64>, <1 x i64>* %A
	%tmp2 = call <1 x i64> @llvm.arm.neon.vshiftu.v1i64(<1 x i64> %tmp1, <1 x i64> < i64 63 >)
	ret <1 x i64> %tmp2
}

define <16 x i8> @vshlQi8(<16 x i8>* %A) nounwind {


	%tmp1 = load <16 x i8>, <16 x i8>* %A
	%tmp2 = call <16 x i8> @llvm.arm.neon.vshifts.v16i8(<16 x i8> %tmp1, <16 x i8> < i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7 >)
	ret <16 x i8> %tmp2
}

define <8 x i16> @vshlQi16(<8 x i16>* %A) nounwind {


	%tmp1 = load <8 x i16>, <8 x i16>* %A
	%tmp2 = call <8 x i16> @llvm.arm.neon.vshiftu.v8i16(<8 x i16> %tmp1, <8 x i16> < i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15 >)
	ret <8 x i16> %tmp2
}

define <4 x i32> @vshlQi32(<4 x i32>* %A) nounwind {


	%tmp1 = load <4 x i32>, <4 x i32>* %A
	%tmp2 = call <4 x i32> @llvm.arm.neon.vshifts.v4i32(<4 x i32> %tmp1, <4 x i32> < i32 31, i32 31, i32 31, i32 31 >)
	ret <4 x i32> %tmp2
}

define <2 x i64> @vshlQi64(<2 x i64>* %A) nounwind {


	%tmp1 = load <2 x i64>, <2 x i64>* %A
	%tmp2 = call <2 x i64> @llvm.arm.neon.vshiftu.v2i64(<2 x i64> %tmp1, <2 x i64> < i64 63, i64 63 >)
	ret <2 x i64> %tmp2
}



define <8 x i8> @vshrs8(<8 x i8>* %A) nounwind {


	%tmp1 = load <8 x i8>, <8 x i8>* %A
	%tmp2 = call <8 x i8> @llvm.arm.neon.vshifts.v8i8(<8 x i8> %tmp1, <8 x i8> < i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8 >)
	ret <8 x i8> %tmp2
}

define <4 x i16> @vshrs16(<4 x i16>* %A) nounwind {


	%tmp1 = load <4 x i16>, <4 x i16>* %A
	%tmp2 = call <4 x i16> @llvm.arm.neon.vshifts.v4i16(<4 x i16> %tmp1, <4 x i16> < i16 -16, i16 -16, i16 -16, i16 -16 >)
	ret <4 x i16> %tmp2
}

define <2 x i32> @vshrs32(<2 x i32>* %A) nounwind {


	%tmp1 = load <2 x i32>, <2 x i32>* %A
	%tmp2 = call <2 x i32> @llvm.arm.neon.vshifts.v2i32(<2 x i32> %tmp1, <2 x i32> < i32 -32, i32 -32 >)
	ret <2 x i32> %tmp2
}

define <1 x i64> @vshrs64(<1 x i64>* %A) nounwind {


	%tmp1 = load <1 x i64>, <1 x i64>* %A
	%tmp2 = call <1 x i64> @llvm.arm.neon.vshifts.v1i64(<1 x i64> %tmp1, <1 x i64> < i64 -64 >)
	ret <1 x i64> %tmp2
}

define <8 x i8> @vshru8(<8 x i8>* %A) nounwind {


	%tmp1 = load <8 x i8>, <8 x i8>* %A
	%tmp2 = call <8 x i8> @llvm.arm.neon.vshiftu.v8i8(<8 x i8> %tmp1, <8 x i8> < i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8 >)
	ret <8 x i8> %tmp2
}

define <4 x i16> @vshru16(<4 x i16>* %A) nounwind {


	%tmp1 = load <4 x i16>, <4 x i16>* %A
	%tmp2 = call <4 x i16> @llvm.arm.neon.vshiftu.v4i16(<4 x i16> %tmp1, <4 x i16> < i16 -16, i16 -16, i16 -16, i16 -16 >)
	ret <4 x i16> %tmp2
}

define <2 x i32> @vshru32(<2 x i32>* %A) nounwind {


	%tmp1 = load <2 x i32>, <2 x i32>* %A
	%tmp2 = call <2 x i32> @llvm.arm.neon.vshiftu.v2i32(<2 x i32> %tmp1, <2 x i32> < i32 -32, i32 -32 >)
	ret <2 x i32> %tmp2
}

define <1 x i64> @vshru64(<1 x i64>* %A) nounwind {


	%tmp1 = load <1 x i64>, <1 x i64>* %A
	%tmp2 = call <1 x i64> @llvm.arm.neon.vshiftu.v1i64(<1 x i64> %tmp1, <1 x i64> < i64 -64 >)
	ret <1 x i64> %tmp2
}

define <16 x i8> @vshrQs8(<16 x i8>* %A) nounwind {


	%tmp1 = load <16 x i8>, <16 x i8>* %A
	%tmp2 = call <16 x i8> @llvm.arm.neon.vshifts.v16i8(<16 x i8> %tmp1, <16 x i8> < i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8 >)
	ret <16 x i8> %tmp2
}

define <8 x i16> @vshrQs16(<8 x i16>* %A) nounwind {


	%tmp1 = load <8 x i16>, <8 x i16>* %A
	%tmp2 = call <8 x i16> @llvm.arm.neon.vshifts.v8i16(<8 x i16> %tmp1, <8 x i16> < i16 -16, i16 -16, i16 -16, i16 -16, i16 -16, i16 -16, i16 -16, i16 -16 >)
	ret <8 x i16> %tmp2
}

define <4 x i32> @vshrQs32(<4 x i32>* %A) nounwind {


	%tmp1 = load <4 x i32>, <4 x i32>* %A
	%tmp2 = call <4 x i32> @llvm.arm.neon.vshifts.v4i32(<4 x i32> %tmp1, <4 x i32> < i32 -32, i32 -32, i32 -32, i32 -32 >)
	ret <4 x i32> %tmp2
}

define <2 x i64> @vshrQs64(<2 x i64>* %A) nounwind {


	%tmp1 = load <2 x i64>, <2 x i64>* %A
	%tmp2 = call <2 x i64> @llvm.arm.neon.vshifts.v2i64(<2 x i64> %tmp1, <2 x i64> < i64 -64, i64 -64 >)
	ret <2 x i64> %tmp2
}

define <16 x i8> @vshrQu8(<16 x i8>* %A) nounwind {


	%tmp1 = load <16 x i8>, <16 x i8>* %A
	%tmp2 = call <16 x i8> @llvm.arm.neon.vshiftu.v16i8(<16 x i8> %tmp1, <16 x i8> < i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8 >)
	ret <16 x i8> %tmp2
}

define <8 x i16> @vshrQu16(<8 x i16>* %A) nounwind {


	%tmp1 = load <8 x i16>, <8 x i16>* %A
	%tmp2 = call <8 x i16> @llvm.arm.neon.vshiftu.v8i16(<8 x i16> %tmp1, <8 x i16> < i16 -16, i16 -16, i16 -16, i16 -16, i16 -16, i16 -16, i16 -16, i16 -16 >)
	ret <8 x i16> %tmp2
}

define <4 x i32> @vshrQu32(<4 x i32>* %A) nounwind {


	%tmp1 = load <4 x i32>, <4 x i32>* %A
	%tmp2 = call <4 x i32> @llvm.arm.neon.vshiftu.v4i32(<4 x i32> %tmp1, <4 x i32> < i32 -32, i32 -32, i32 -32, i32 -32 >)
	ret <4 x i32> %tmp2
}

define <2 x i64> @vshrQu64(<2 x i64>* %A) nounwind {


	%tmp1 = load <2 x i64>, <2 x i64>* %A
	%tmp2 = call <2 x i64> @llvm.arm.neon.vshiftu.v2i64(<2 x i64> %tmp1, <2 x i64> < i64 -64, i64 -64 >)
	ret <2 x i64> %tmp2
}

declare <8 x i8>  @llvm.arm.neon.vshifts.v8i8(<8 x i8>, <8 x i8>) nounwind readnone
declare <4 x i16> @llvm.arm.neon.vshifts.v4i16(<4 x i16>, <4 x i16>) nounwind readnone
declare <2 x i32> @llvm.arm.neon.vshifts.v2i32(<2 x i32>, <2 x i32>) nounwind readnone
declare <1 x i64> @llvm.arm.neon.vshifts.v1i64(<1 x i64>, <1 x i64>) nounwind readnone

declare <8 x i8>  @llvm.arm.neon.vshiftu.v8i8(<8 x i8>, <8 x i8>) nounwind readnone
declare <4 x i16> @llvm.arm.neon.vshiftu.v4i16(<4 x i16>, <4 x i16>) nounwind readnone
declare <2 x i32> @llvm.arm.neon.vshiftu.v2i32(<2 x i32>, <2 x i32>) nounwind readnone
declare <1 x i64> @llvm.arm.neon.vshiftu.v1i64(<1 x i64>, <1 x i64>) nounwind readnone

declare <16 x i8> @llvm.arm.neon.vshifts.v16i8(<16 x i8>, <16 x i8>) nounwind readnone
declare <8 x i16> @llvm.arm.neon.vshifts.v8i16(<8 x i16>, <8 x i16>) nounwind readnone
declare <4 x i32> @llvm.arm.neon.vshifts.v4i32(<4 x i32>, <4 x i32>) nounwind readnone
declare <2 x i64> @llvm.arm.neon.vshifts.v2i64(<2 x i64>, <2 x i64>) nounwind readnone

declare <16 x i8> @llvm.arm.neon.vshiftu.v16i8(<16 x i8>, <16 x i8>) nounwind readnone
declare <8 x i16> @llvm.arm.neon.vshiftu.v8i16(<8 x i16>, <8 x i16>) nounwind readnone
declare <4 x i32> @llvm.arm.neon.vshiftu.v4i32(<4 x i32>, <4 x i32>) nounwind readnone
declare <2 x i64> @llvm.arm.neon.vshiftu.v2i64(<2 x i64>, <2 x i64>) nounwind readnone

define <8 x i8> @vrshls8(<8 x i8>* %A, <8 x i8>* %B) nounwind {


	%tmp1 = load <8 x i8>, <8 x i8>* %A
	%tmp2 = load <8 x i8>, <8 x i8>* %B
	%tmp3 = call <8 x i8> @llvm.arm.neon.vrshifts.v8i8(<8 x i8> %tmp1, <8 x i8> %tmp2)
	ret <8 x i8> %tmp3
}

define <4 x i16> @vrshls16(<4 x i16>* %A, <4 x i16>* %B) nounwind {


	%tmp1 = load <4 x i16>, <4 x i16>* %A
	%tmp2 = load <4 x i16>, <4 x i16>* %B
	%tmp3 = call <4 x i16> @llvm.arm.neon.vrshifts.v4i16(<4 x i16> %tmp1, <4 x i16> %tmp2)
	ret <4 x i16> %tmp3
}

define <2 x i32> @vrshls32(<2 x i32>* %A, <2 x i32>* %B) nounwind {


	%tmp1 = load <2 x i32>, <2 x i32>* %A
	%tmp2 = load <2 x i32>, <2 x i32>* %B
	%tmp3 = call <2 x i32> @llvm.arm.neon.vrshifts.v2i32(<2 x i32> %tmp1, <2 x i32> %tmp2)
	ret <2 x i32> %tmp3
}

define <1 x i64> @vrshls64(<1 x i64>* %A, <1 x i64>* %B) nounwind {


	%tmp1 = load <1 x i64>, <1 x i64>* %A
	%tmp2 = load <1 x i64>, <1 x i64>* %B
	%tmp3 = call <1 x i64> @llvm.arm.neon.vrshifts.v1i64(<1 x i64> %tmp1, <1 x i64> %tmp2)
	ret <1 x i64> %tmp3
}

define <8 x i8> @vrshlu8(<8 x i8>* %A, <8 x i8>* %B) nounwind {


	%tmp1 = load <8 x i8>, <8 x i8>* %A
	%tmp2 = load <8 x i8>, <8 x i8>* %B
	%tmp3 = call <8 x i8> @llvm.arm.neon.vrshiftu.v8i8(<8 x i8> %tmp1, <8 x i8> %tmp2)
	ret <8 x i8> %tmp3
}

define <4 x i16> @vrshlu16(<4 x i16>* %A, <4 x i16>* %B) nounwind {


	%tmp1 = load <4 x i16>, <4 x i16>* %A
	%tmp2 = load <4 x i16>, <4 x i16>* %B
	%tmp3 = call <4 x i16> @llvm.arm.neon.vrshiftu.v4i16(<4 x i16> %tmp1, <4 x i16> %tmp2)
	ret <4 x i16> %tmp3
}

define <2 x i32> @vrshlu32(<2 x i32>* %A, <2 x i32>* %B) nounwind {


	%tmp1 = load <2 x i32>, <2 x i32>* %A
	%tmp2 = load <2 x i32>, <2 x i32>* %B
	%tmp3 = call <2 x i32> @llvm.arm.neon.vrshiftu.v2i32(<2 x i32> %tmp1, <2 x i32> %tmp2)
	ret <2 x i32> %tmp3
}

define <1 x i64> @vrshlu64(<1 x i64>* %A, <1 x i64>* %B) nounwind {


	%tmp1 = load <1 x i64>, <1 x i64>* %A
	%tmp2 = load <1 x i64>, <1 x i64>* %B
	%tmp3 = call <1 x i64> @llvm.arm.neon.vrshiftu.v1i64(<1 x i64> %tmp1, <1 x i64> %tmp2)
	ret <1 x i64> %tmp3
}

define <16 x i8> @vrshlQs8(<16 x i8>* %A, <16 x i8>* %B) nounwind {


	%tmp1 = load <16 x i8>, <16 x i8>* %A
	%tmp2 = load <16 x i8>, <16 x i8>* %B
	%tmp3 = call <16 x i8> @llvm.arm.neon.vrshifts.v16i8(<16 x i8> %tmp1, <16 x i8> %tmp2)
	ret <16 x i8> %tmp3
}

define <8 x i16> @vrshlQs16(<8 x i16>* %A, <8 x i16>* %B) nounwind {


	%tmp1 = load <8 x i16>, <8 x i16>* %A
	%tmp2 = load <8 x i16>, <8 x i16>* %B
	%tmp3 = call <8 x i16> @llvm.arm.neon.vrshifts.v8i16(<8 x i16> %tmp1, <8 x i16> %tmp2)
	ret <8 x i16> %tmp3
}

define <4 x i32> @vrshlQs32(<4 x i32>* %A, <4 x i32>* %B) nounwind {


	%tmp1 = load <4 x i32>, <4 x i32>* %A
	%tmp2 = load <4 x i32>, <4 x i32>* %B
	%tmp3 = call <4 x i32> @llvm.arm.neon.vrshifts.v4i32(<4 x i32> %tmp1, <4 x i32> %tmp2)
	ret <4 x i32> %tmp3
}

define <2 x i64> @vrshlQs64(<2 x i64>* %A, <2 x i64>* %B) nounwind {


	%tmp1 = load <2 x i64>, <2 x i64>* %A
	%tmp2 = load <2 x i64>, <2 x i64>* %B
	%tmp3 = call <2 x i64> @llvm.arm.neon.vrshifts.v2i64(<2 x i64> %tmp1, <2 x i64> %tmp2)
	ret <2 x i64> %tmp3
}

define <16 x i8> @vrshlQu8(<16 x i8>* %A, <16 x i8>* %B) nounwind {


	%tmp1 = load <16 x i8>, <16 x i8>* %A
	%tmp2 = load <16 x i8>, <16 x i8>* %B
	%tmp3 = call <16 x i8> @llvm.arm.neon.vrshiftu.v16i8(<16 x i8> %tmp1, <16 x i8> %tmp2)
	ret <16 x i8> %tmp3
}

define <8 x i16> @vrshlQu16(<8 x i16>* %A, <8 x i16>* %B) nounwind {


	%tmp1 = load <8 x i16>, <8 x i16>* %A
	%tmp2 = load <8 x i16>, <8 x i16>* %B
	%tmp3 = call <8 x i16> @llvm.arm.neon.vrshiftu.v8i16(<8 x i16> %tmp1, <8 x i16> %tmp2)
	ret <8 x i16> %tmp3
}

define <4 x i32> @vrshlQu32(<4 x i32>* %A, <4 x i32>* %B) nounwind {


	%tmp1 = load <4 x i32>, <4 x i32>* %A
	%tmp2 = load <4 x i32>, <4 x i32>* %B
	%tmp3 = call <4 x i32> @llvm.arm.neon.vrshiftu.v4i32(<4 x i32> %tmp1, <4 x i32> %tmp2)
	ret <4 x i32> %tmp3
}

define <2 x i64> @vrshlQu64(<2 x i64>* %A, <2 x i64>* %B) nounwind {


	%tmp1 = load <2 x i64>, <2 x i64>* %A
	%tmp2 = load <2 x i64>, <2 x i64>* %B
	%tmp3 = call <2 x i64> @llvm.arm.neon.vrshiftu.v2i64(<2 x i64> %tmp1, <2 x i64> %tmp2)
	ret <2 x i64> %tmp3
}

define <8 x i8> @vrshrs8(<8 x i8>* %A) nounwind {


	%tmp1 = load <8 x i8>, <8 x i8>* %A
	%tmp2 = call <8 x i8> @llvm.arm.neon.vrshifts.v8i8(<8 x i8> %tmp1, <8 x i8> < i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8 >)
	ret <8 x i8> %tmp2
}

define <4 x i16> @vrshrs16(<4 x i16>* %A) nounwind {


	%tmp1 = load <4 x i16>, <4 x i16>* %A
	%tmp2 = call <4 x i16> @llvm.arm.neon.vrshifts.v4i16(<4 x i16> %tmp1, <4 x i16> < i16 -16, i16 -16, i16 -16, i16 -16 >)
	ret <4 x i16> %tmp2
}

define <2 x i32> @vrshrs32(<2 x i32>* %A) nounwind {


	%tmp1 = load <2 x i32>, <2 x i32>* %A
	%tmp2 = call <2 x i32> @llvm.arm.neon.vrshifts.v2i32(<2 x i32> %tmp1, <2 x i32> < i32 -32, i32 -32 >)
	ret <2 x i32> %tmp2
}

define <1 x i64> @vrshrs64(<1 x i64>* %A) nounwind {


	%tmp1 = load <1 x i64>, <1 x i64>* %A
	%tmp2 = call <1 x i64> @llvm.arm.neon.vrshifts.v1i64(<1 x i64> %tmp1, <1 x i64> < i64 -64 >)
	ret <1 x i64> %tmp2
}

define <8 x i8> @vrshru8(<8 x i8>* %A) nounwind {


	%tmp1 = load <8 x i8>, <8 x i8>* %A
	%tmp2 = call <8 x i8> @llvm.arm.neon.vrshiftu.v8i8(<8 x i8> %tmp1, <8 x i8> < i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8 >)
	ret <8 x i8> %tmp2
}

define <4 x i16> @vrshru16(<4 x i16>* %A) nounwind {


	%tmp1 = load <4 x i16>, <4 x i16>* %A
	%tmp2 = call <4 x i16> @llvm.arm.neon.vrshiftu.v4i16(<4 x i16> %tmp1, <4 x i16> < i16 -16, i16 -16, i16 -16, i16 -16 >)
	ret <4 x i16> %tmp2
}

define <2 x i32> @vrshru32(<2 x i32>* %A) nounwind {


	%tmp1 = load <2 x i32>, <2 x i32>* %A
	%tmp2 = call <2 x i32> @llvm.arm.neon.vrshiftu.v2i32(<2 x i32> %tmp1, <2 x i32> < i32 -32, i32 -32 >)
	ret <2 x i32> %tmp2
}

define <1 x i64> @vrshru64(<1 x i64>* %A) nounwind {


	%tmp1 = load <1 x i64>, <1 x i64>* %A
	%tmp2 = call <1 x i64> @llvm.arm.neon.vrshiftu.v1i64(<1 x i64> %tmp1, <1 x i64> < i64 -64 >)
	ret <1 x i64> %tmp2
}

define <16 x i8> @vrshrQs8(<16 x i8>* %A) nounwind {


	%tmp1 = load <16 x i8>, <16 x i8>* %A
	%tmp2 = call <16 x i8> @llvm.arm.neon.vrshifts.v16i8(<16 x i8> %tmp1, <16 x i8> < i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8 >)
	ret <16 x i8> %tmp2
}

define <8 x i16> @vrshrQs16(<8 x i16>* %A) nounwind {


	%tmp1 = load <8 x i16>, <8 x i16>* %A
	%tmp2 = call <8 x i16> @llvm.arm.neon.vrshifts.v8i16(<8 x i16> %tmp1, <8 x i16> < i16 -16, i16 -16, i16 -16, i16 -16, i16 -16, i16 -16, i16 -16, i16 -16 >)
	ret <8 x i16> %tmp2
}

define <4 x i32> @vrshrQs32(<4 x i32>* %A) nounwind {


	%tmp1 = load <4 x i32>, <4 x i32>* %A
	%tmp2 = call <4 x i32> @llvm.arm.neon.vrshifts.v4i32(<4 x i32> %tmp1, <4 x i32> < i32 -32, i32 -32, i32 -32, i32 -32 >)
	ret <4 x i32> %tmp2
}

define <2 x i64> @vrshrQs64(<2 x i64>* %A) nounwind {


	%tmp1 = load <2 x i64>, <2 x i64>* %A
	%tmp2 = call <2 x i64> @llvm.arm.neon.vrshifts.v2i64(<2 x i64> %tmp1, <2 x i64> < i64 -64, i64 -64 >)
	ret <2 x i64> %tmp2
}

define <16 x i8> @vrshrQu8(<16 x i8>* %A) nounwind {


	%tmp1 = load <16 x i8>, <16 x i8>* %A
	%tmp2 = call <16 x i8> @llvm.arm.neon.vrshiftu.v16i8(<16 x i8> %tmp1, <16 x i8> < i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8 >)
	ret <16 x i8> %tmp2
}

define <8 x i16> @vrshrQu16(<8 x i16>* %A) nounwind {


	%tmp1 = load <8 x i16>, <8 x i16>* %A
	%tmp2 = call <8 x i16> @llvm.arm.neon.vrshiftu.v8i16(<8 x i16> %tmp1, <8 x i16> < i16 -16, i16 -16, i16 -16, i16 -16, i16 -16, i16 -16, i16 -16, i16 -16 >)
	ret <8 x i16> %tmp2
}

define <4 x i32> @vrshrQu32(<4 x i32>* %A) nounwind {


	%tmp1 = load <4 x i32>, <4 x i32>* %A
	%tmp2 = call <4 x i32> @llvm.arm.neon.vrshiftu.v4i32(<4 x i32> %tmp1, <4 x i32> < i32 -32, i32 -32, i32 -32, i32 -32 >)
	ret <4 x i32> %tmp2
}

define <2 x i64> @vrshrQu64(<2 x i64>* %A) nounwind {


	%tmp1 = load <2 x i64>, <2 x i64>* %A
	%tmp2 = call <2 x i64> @llvm.arm.neon.vrshiftu.v2i64(<2 x i64> %tmp1, <2 x i64> < i64 -64, i64 -64 >)
	ret <2 x i64> %tmp2
}

declare <8 x i8>  @llvm.arm.neon.vrshifts.v8i8(<8 x i8>, <8 x i8>) nounwind readnone
declare <4 x i16> @llvm.arm.neon.vrshifts.v4i16(<4 x i16>, <4 x i16>) nounwind readnone
declare <2 x i32> @llvm.arm.neon.vrshifts.v2i32(<2 x i32>, <2 x i32>) nounwind readnone
declare <1 x i64> @llvm.arm.neon.vrshifts.v1i64(<1 x i64>, <1 x i64>) nounwind readnone

declare <8 x i8>  @llvm.arm.neon.vrshiftu.v8i8(<8 x i8>, <8 x i8>) nounwind readnone
declare <4 x i16> @llvm.arm.neon.vrshiftu.v4i16(<4 x i16>, <4 x i16>) nounwind readnone
declare <2 x i32> @llvm.arm.neon.vrshiftu.v2i32(<2 x i32>, <2 x i32>) nounwind readnone
declare <1 x i64> @llvm.arm.neon.vrshiftu.v1i64(<1 x i64>, <1 x i64>) nounwind readnone

declare <16 x i8> @llvm.arm.neon.vrshifts.v16i8(<16 x i8>, <16 x i8>) nounwind readnone
declare <8 x i16> @llvm.arm.neon.vrshifts.v8i16(<8 x i16>, <8 x i16>) nounwind readnone
declare <4 x i32> @llvm.arm.neon.vrshifts.v4i32(<4 x i32>, <4 x i32>) nounwind readnone
declare <2 x i64> @llvm.arm.neon.vrshifts.v2i64(<2 x i64>, <2 x i64>) nounwind readnone

declare <16 x i8> @llvm.arm.neon.vrshiftu.v16i8(<16 x i8>, <16 x i8>) nounwind readnone
declare <8 x i16> @llvm.arm.neon.vrshiftu.v8i16(<8 x i16>, <8 x i16>) nounwind readnone
declare <4 x i32> @llvm.arm.neon.vrshiftu.v4i32(<4 x i32>, <4 x i32>) nounwind readnone
declare <2 x i64> @llvm.arm.neon.vrshiftu.v2i64(<2 x i64>, <2 x i64>) nounwind readnone
