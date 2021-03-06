

define <8 x i8> @rbit_8b(<8 x i8>* %A) nounwind {


	%tmp1 = load <8 x i8>, <8 x i8>* %A
	%tmp3 = call <8 x i8> @llvm.aarch64.neon.rbit.v8i8(<8 x i8> %tmp1)
	ret <8 x i8> %tmp3
}

define <16 x i8> @rbit_16b(<16 x i8>* %A) nounwind {


	%tmp1 = load <16 x i8>, <16 x i8>* %A
	%tmp3 = call <16 x i8> @llvm.aarch64.neon.rbit.v16i8(<16 x i8> %tmp1)
	ret <16 x i8> %tmp3
}

declare <8 x i8> @llvm.aarch64.neon.rbit.v8i8(<8 x i8>) nounwind readnone
declare <16 x i8> @llvm.aarch64.neon.rbit.v16i8(<16 x i8>) nounwind readnone

define <8 x i16> @sxtl8h(<8 x i8>* %A) nounwind {


	%tmp1 = load <8 x i8>, <8 x i8>* %A
  %tmp2 = sext <8 x i8> %tmp1 to <8 x i16>
  ret <8 x i16> %tmp2
}

define <8 x i16> @uxtl8h(<8 x i8>* %A) nounwind {


	%tmp1 = load <8 x i8>, <8 x i8>* %A
  %tmp2 = zext <8 x i8> %tmp1 to <8 x i16>
  ret <8 x i16> %tmp2
}

define <4 x i32> @sxtl4s(<4 x i16>* %A) nounwind {


	%tmp1 = load <4 x i16>, <4 x i16>* %A
  %tmp2 = sext <4 x i16> %tmp1 to <4 x i32>
  ret <4 x i32> %tmp2
}

define <4 x i32> @uxtl4s(<4 x i16>* %A) nounwind {


	%tmp1 = load <4 x i16>, <4 x i16>* %A
  %tmp2 = zext <4 x i16> %tmp1 to <4 x i32>
  ret <4 x i32> %tmp2
}

define <2 x i64> @sxtl2d(<2 x i32>* %A) nounwind {


	%tmp1 = load <2 x i32>, <2 x i32>* %A
  %tmp2 = sext <2 x i32> %tmp1 to <2 x i64>
  ret <2 x i64> %tmp2
}

define <2 x i64> @uxtl2d(<2 x i32>* %A) nounwind {


	%tmp1 = load <2 x i32>, <2 x i32>* %A
  %tmp2 = zext <2 x i32> %tmp1 to <2 x i64>
  ret <2 x i64> %tmp2
}



define void @test_vsliq(i8* nocapture %src, i8* nocapture %dest) nounwind noinline ssp {
entry:




  %0 = bitcast i8* %src to <16 x i8>*
  %1 = load <16 x i8>, <16 x i8>* %0, align 16
  %and.i = and <16 x i8> %1, <i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0>
  %2 = bitcast <16 x i8> %and.i to <8 x i16>
  %vshl_n = shl <8 x i16> %2, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>
  %3 = or <8 x i16> %2, %vshl_n
  %4 = bitcast <8 x i16> %3 to <4 x i32>
  %vshl_n8 = shl <4 x i32> %4, <i32 16, i32 16, i32 16, i32 16>
  %5 = or <4 x i32> %4, %vshl_n8
  %6 = bitcast <4 x i32> %5 to <16 x i8>
  %7 = bitcast i8* %dest to <16 x i8>*
  store <16 x i8> %6, <16 x i8>* %7, align 16
  ret void
}
