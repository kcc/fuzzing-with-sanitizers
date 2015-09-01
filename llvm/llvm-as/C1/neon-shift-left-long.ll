

define <8 x i16> @test_sshll_v8i8(<8 x i8> %a) {


  %1 = sext <8 x i8> %a to <8 x i16>
  %tmp = shl <8 x i16> %1, <i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3>
  ret <8 x i16> %tmp
}

define <4 x i32> @test_sshll_v4i16(<4 x i16> %a) {


  %1 = sext <4 x i16> %a to <4 x i32>
  %tmp = shl <4 x i32> %1, <i32 9, i32 9, i32 9, i32 9>
  ret <4 x i32> %tmp
}

define <2 x i64> @test_sshll_v2i32(<2 x i32> %a) {


  %1 = sext <2 x i32> %a to <2 x i64>
  %tmp = shl <2 x i64> %1, <i64 19, i64 19>
  ret <2 x i64> %tmp
}

define <8 x i16> @test_ushll_v8i8(<8 x i8> %a) {


  %1 = zext <8 x i8> %a to <8 x i16>
  %tmp = shl <8 x i16> %1, <i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3>
  ret <8 x i16> %tmp
}

define <4 x i32> @test_ushll_v4i16(<4 x i16> %a) {


  %1 = zext <4 x i16> %a to <4 x i32>
  %tmp = shl <4 x i32> %1, <i32 9, i32 9, i32 9, i32 9>
  ret <4 x i32> %tmp
}

define <2 x i64> @test_ushll_v2i32(<2 x i32> %a) {


  %1 = zext <2 x i32> %a to <2 x i64>
  %tmp = shl <2 x i64> %1, <i64 19, i64 19>
  ret <2 x i64> %tmp
}

define <8 x i16> @test_sshll2_v16i8(<16 x i8> %a) {


  %1 = shufflevector <16 x i8> %a, <16 x i8> undef, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %2 = sext <8 x i8> %1 to <8 x i16>
  %tmp = shl <8 x i16> %2, <i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3>
  ret <8 x i16> %tmp
}

define <4 x i32> @test_sshll2_v8i16(<8 x i16> %a) {


  %1 = shufflevector <8 x i16> %a, <8 x i16> undef, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %2 = sext <4 x i16> %1 to <4 x i32>
  %tmp = shl <4 x i32> %2, <i32 9, i32 9, i32 9, i32 9>
  ret <4 x i32> %tmp
}

define <2 x i64> @test_sshll2_v4i32(<4 x i32> %a) {


  %1 = shufflevector <4 x i32> %a, <4 x i32> undef, <2 x i32> <i32 2, i32 3>
  %2 = sext <2 x i32> %1 to <2 x i64>
  %tmp = shl <2 x i64> %2, <i64 19, i64 19>
  ret <2 x i64> %tmp
}

define <8 x i16> @test_ushll2_v16i8(<16 x i8> %a) {


  %1 = shufflevector <16 x i8> %a, <16 x i8> undef, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %2 = zext <8 x i8> %1 to <8 x i16>
  %tmp = shl <8 x i16> %2, <i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3>
  ret <8 x i16> %tmp
}

define <4 x i32> @test_ushll2_v8i16(<8 x i16> %a) {


  %1 = shufflevector <8 x i16> %a, <8 x i16> undef, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %2 = zext <4 x i16> %1 to <4 x i32>
  %tmp = shl <4 x i32> %2, <i32 9, i32 9, i32 9, i32 9>
  ret <4 x i32> %tmp
}

define <2 x i64> @test_ushll2_v4i32(<4 x i32> %a) {


  %1 = shufflevector <4 x i32> %a, <4 x i32> undef, <2 x i32> <i32 2, i32 3>
  %2 = zext <2 x i32> %1 to <2 x i64>
  %tmp = shl <2 x i64> %2, <i64 19, i64 19>
  ret <2 x i64> %tmp
}

define <8 x i16> @test_sshll_shl0_v8i8(<8 x i8> %a) {


  %tmp = sext <8 x i8> %a to <8 x i16>
  ret <8 x i16> %tmp
}

define <4 x i32> @test_sshll_shl0_v4i16(<4 x i16> %a) {


  %tmp = sext <4 x i16> %a to <4 x i32>
  ret <4 x i32> %tmp
}

define <2 x i64> @test_sshll_shl0_v2i32(<2 x i32> %a) {


  %tmp = sext <2 x i32> %a to <2 x i64>
  ret <2 x i64> %tmp
}

define <8 x i16> @test_ushll_shl0_v8i8(<8 x i8> %a) {


  %tmp = zext <8 x i8> %a to <8 x i16>
  ret <8 x i16> %tmp
}

define <4 x i32> @test_ushll_shl0_v4i16(<4 x i16> %a) {


  %tmp = zext <4 x i16> %a to <4 x i32>
  ret <4 x i32> %tmp
}

define <2 x i64> @test_ushll_shl0_v2i32(<2 x i32> %a) {


  %tmp = zext <2 x i32> %a to <2 x i64>
  ret <2 x i64> %tmp
}

define <8 x i16> @test_sshll2_shl0_v16i8(<16 x i8> %a) {


  %1 = shufflevector <16 x i8> %a, <16 x i8> undef, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %tmp = sext <8 x i8> %1 to <8 x i16>
  ret <8 x i16> %tmp
}

define <4 x i32> @test_sshll2_shl0_v8i16(<8 x i16> %a) {


  %1 = shufflevector <8 x i16> %a, <8 x i16> undef, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %tmp = sext <4 x i16> %1 to <4 x i32>
  ret <4 x i32> %tmp
}

define <2 x i64> @test_sshll2_shl0_v4i32(<4 x i32> %a) {


  %1 = shufflevector <4 x i32> %a, <4 x i32> undef, <2 x i32> <i32 2, i32 3>
  %tmp = sext <2 x i32> %1 to <2 x i64>
  ret <2 x i64> %tmp
}

define <8 x i16> @test_ushll2_shl0_v16i8(<16 x i8> %a) {


  %1 = shufflevector <16 x i8> %a, <16 x i8> undef, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %tmp = zext <8 x i8> %1 to <8 x i16>
  ret <8 x i16> %tmp
}

define <4 x i32> @test_ushll2_shl0_v8i16(<8 x i16> %a) {


  %1 = shufflevector <8 x i16> %a, <8 x i16> undef, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %tmp = zext <4 x i16> %1 to <4 x i32>
  ret <4 x i32> %tmp
}

define <2 x i64> @test_ushll2_shl0_v4i32(<4 x i32> %a) {


  %1 = shufflevector <4 x i32> %a, <4 x i32> undef, <2 x i32> <i32 2, i32 3>
  %tmp = zext <2 x i32> %1 to <2 x i64>
  ret <2 x i64> %tmp
}

define <8 x i16> @test_ushll_cmp(<8 x i8> %a, <8 x i8> %b) #0 {



  %cmp.i = icmp eq <8 x i8> %a, %b
  %vcgtz.i.i = sext <8 x i1> %cmp.i to <8 x i8>
  %vmovl.i.i.i = zext <8 x i8> %vcgtz.i.i to <8 x i16>
  ret <8 x i16> %vmovl.i.i.i
}
