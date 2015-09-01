


define <4 x i16> @t1(<4 x i32> %a) nounwind {
entry:

  %x = tail call <4 x i16> @llvm.arm.neon.vqrshiftns.v4i16(<4 x i32> %a, <4 x i32> <i32 -13, i32 -13, i32 -13, i32 -13>)
  ret <4 x i16> %x
}

declare <4 x i16> @llvm.arm.neon.vqrshiftns.v4i16(<4 x i32>, <4 x i32>) nounwind readnone
