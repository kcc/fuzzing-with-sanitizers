













define <4 x i32> @infiniteLoop(<4 x i32> %in0, <4 x i16> %in1) {
entry:
  %cmp.i = icmp sge <4 x i16> %in1, <i16 32767, i16 32767, i16 -1, i16 -32768>
  %sext.i = sext <4 x i1> %cmp.i to <4 x i32>
  %mul.i = mul <4 x i32> %in0, %sext.i
  %sext = shl <4 x i32> %mul.i, <i32 16, i32 16, i32 16, i32 16>
  %vmovl.i.i = ashr <4 x i32> %sext, <i32 16, i32 16, i32 16, i32 16>
  ret <4 x i32> %vmovl.i.i
}