



define <16 x i16> @test_sllw_1(<16 x i16> %InVec) {
entry:
  %shl = shl <16 x i16> %InVec, <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>
  ret <16 x i16> %shl
}





define <16 x i16> @test_sllw_2(<16 x i16> %InVec) {
entry:
  %shl = shl <16 x i16> %InVec, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  ret <16 x i16> %shl
}





define <16 x i16> @test_sllw_3(<16 x i16> %InVec) {
entry:
  %shl = shl <16 x i16> %InVec, <i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15>
  ret <16 x i16> %shl
}





define <8 x i32> @test_slld_1(<8 x i32> %InVec) {
entry:
  %shl = shl <8 x i32> %InVec, <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
  ret <8 x i32> %shl
}





define <8 x i32> @test_slld_2(<8 x i32> %InVec) {
entry:
  %shl = shl <8 x i32> %InVec, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  ret <8 x i32> %shl
}





define <8 x i32> @test_vpslld_var(i32 %shift) {
  %amt = insertelement <8 x i32> undef, i32 %shift, i32 0
  %tmp = shl <8 x i32> <i32 192, i32 193, i32 194, i32 195, i32 196, i32 197, i32 198, i32 199>, %amt
  ret <8 x i32> %tmp
}





define <8 x i32> @test_slld_3(<8 x i32> %InVec) {
entry:
  %shl = shl <8 x i32> %InVec, <i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31>
  ret <8 x i32> %shl
}





define <4 x i64> @test_sllq_1(<4 x i64> %InVec) {
entry:
  %shl = shl <4 x i64> %InVec, <i64 0, i64 0, i64 0, i64 0>
  ret <4 x i64> %shl
}





define <4 x i64> @test_sllq_2(<4 x i64> %InVec) {
entry:
  %shl = shl <4 x i64> %InVec, <i64 1, i64 1, i64 1, i64 1>
  ret <4 x i64> %shl
}





define <4 x i64> @test_sllq_3(<4 x i64> %InVec) {
entry:
  %shl = shl <4 x i64> %InVec, <i64 63, i64 63, i64 63, i64 63>
  ret <4 x i64> %shl
}







define <16 x i16> @test_sraw_1(<16 x i16> %InVec) {
entry:
  %shl = ashr <16 x i16> %InVec, <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>
  ret <16 x i16> %shl
}





define <16 x i16> @test_sraw_2(<16 x i16> %InVec) {
entry:
  %shl = ashr <16 x i16> %InVec, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  ret <16 x i16> %shl
}





define <16 x i16> @test_sraw_3(<16 x i16> %InVec) {
entry:
  %shl = ashr <16 x i16> %InVec, <i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15>
  ret <16 x i16> %shl
}





define <8 x i32> @test_srad_1(<8 x i32> %InVec) {
entry:
  %shl = ashr <8 x i32> %InVec, <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
  ret <8 x i32> %shl
}





define <8 x i32> @test_srad_2(<8 x i32> %InVec) {
entry:
  %shl = ashr <8 x i32> %InVec, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  ret <8 x i32> %shl
}





define <8 x i32> @test_srad_3(<8 x i32> %InVec) {
entry:
  %shl = ashr <8 x i32> %InVec, <i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31>
  ret <8 x i32> %shl
}







define <16 x i16> @test_srlw_1(<16 x i16> %InVec) {
entry:
  %shl = lshr <16 x i16> %InVec, <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>
  ret <16 x i16> %shl
}





define <16 x i16> @test_srlw_2(<16 x i16> %InVec) {
entry:
  %shl = lshr <16 x i16> %InVec, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  ret <16 x i16> %shl
}





define <16 x i16> @test_srlw_3(<16 x i16> %InVec) {
entry:
  %shl = lshr <16 x i16> %InVec, <i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15>
  ret <16 x i16> %shl
}





define <8 x i32> @test_srld_1(<8 x i32> %InVec) {
entry:
  %shl = lshr <8 x i32> %InVec, <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
  ret <8 x i32> %shl
}





define <8 x i32> @test_srld_2(<8 x i32> %InVec) {
entry:
  %shl = lshr <8 x i32> %InVec, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  ret <8 x i32> %shl
}





define <8 x i32> @test_srld_3(<8 x i32> %InVec) {
entry:
  %shl = lshr <8 x i32> %InVec, <i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31>
  ret <8 x i32> %shl
}





define <4 x i64> @test_srlq_1(<4 x i64> %InVec) {
entry:
  %shl = lshr <4 x i64> %InVec, <i64 0, i64 0, i64 0, i64 0>
  ret <4 x i64> %shl
}





define <4 x i64> @test_srlq_2(<4 x i64> %InVec) {
entry:
  %shl = lshr <4 x i64> %InVec, <i64 1, i64 1, i64 1, i64 1>
  ret <4 x i64> %shl
}





define <4 x i64> @test_srlq_3(<4 x i64> %InVec) {
entry:
  %shl = lshr <4 x i64> %InVec, <i64 63, i64 63, i64 63, i64 63>
  ret <4 x i64> %shl
}









define <4 x i32> @srl_trunc_and_v4i64(<4 x i32> %x, <4 x i64> %y) nounwind {
  %and = and <4 x i64> %y, <i64 8, i64 8, i64 8, i64 8>
  %trunc = trunc <4 x i64> %and to <4 x i32>
  %sra = lshr <4 x i32> %x, %trunc
  ret <4 x i32> %sra
}





define <8 x i16> @shl_8i16(<8 x i16> %r, <8 x i16> %a) nounwind {







  %shl = shl <8 x i16> %r, %a
  ret <8 x i16> %shl
}

define <16 x i16> @shl_16i16(<16 x i16> %r, <16 x i16> %a) nounwind {












  %shl = shl <16 x i16> %r, %a
  ret <16 x i16> %shl
}

define <32 x i8> @shl_32i8(<32 x i8> %r, <32 x i8> %a) nounwind {













  %shl = shl <32 x i8> %r, %a
  ret <32 x i8> %shl
}

define <8 x i16> @ashr_8i16(<8 x i16> %r, <8 x i16> %a) nounwind {







  %ashr = ashr <8 x i16> %r, %a
  ret <8 x i16> %ashr
}

define <16 x i16> @ashr_16i16(<16 x i16> %r, <16 x i16> %a) nounwind {












  %ashr = ashr <16 x i16> %r, %a
  ret <16 x i16> %ashr
}

define <32 x i8> @ashr_32i8(<32 x i8> %r, <32 x i8> %a) nounwind {


























  %ashr = ashr <32 x i8> %r, %a
  ret <32 x i8> %ashr
}

define <8 x i16> @lshr_8i16(<8 x i16> %r, <8 x i16> %a) nounwind {







  %lshr = lshr <8 x i16> %r, %a
  ret <8 x i16> %lshr
}

define <16 x i16> @lshr_16i16(<16 x i16> %r, <16 x i16> %a) nounwind {












  %lshr = lshr <16 x i16> %r, %a
  ret <16 x i16> %lshr
}

define <32 x i8> @lshr_32i8(<32 x i8> %r, <32 x i8> %a) nounwind {














  %lshr = lshr <32 x i8> %r, %a
  ret <32 x i8> %lshr
}
