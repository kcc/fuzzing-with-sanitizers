










target triple = "x86_64-unknown-unknown"

declare <4 x i32> @llvm.x86.sse2.pshuf.d(<4 x i32>, i8)
declare <8 x i16> @llvm.x86.sse2.pshufl.w(<8 x i16>, i8)
declare <8 x i16> @llvm.x86.sse2.pshufh.w(<8 x i16>, i8)

define <4 x i32> @combine_pshufd1(<4 x i32> %a) {



entry:
  %b = call <4 x i32> @llvm.x86.sse2.pshuf.d(<4 x i32> %a, i8 27)
  %c = call <4 x i32> @llvm.x86.sse2.pshuf.d(<4 x i32> %b, i8 27)
  ret <4 x i32> %c
}

define <4 x i32> @combine_pshufd2(<4 x i32> %a) {



entry:
  %b = call <4 x i32> @llvm.x86.sse2.pshuf.d(<4 x i32> %a, i8 27)
  %b.cast = bitcast <4 x i32> %b to <8 x i16>
  %c = call <8 x i16> @llvm.x86.sse2.pshufl.w(<8 x i16> %b.cast, i8 -28)
  %c.cast = bitcast <8 x i16> %c to <4 x i32>
  %d = call <4 x i32> @llvm.x86.sse2.pshuf.d(<4 x i32> %c.cast, i8 27)
  ret <4 x i32> %d
}

define <4 x i32> @combine_pshufd3(<4 x i32> %a) {



entry:
  %b = call <4 x i32> @llvm.x86.sse2.pshuf.d(<4 x i32> %a, i8 27)
  %b.cast = bitcast <4 x i32> %b to <8 x i16>
  %c = call <8 x i16> @llvm.x86.sse2.pshufh.w(<8 x i16> %b.cast, i8 -28)
  %c.cast = bitcast <8 x i16> %c to <4 x i32>
  %d = call <4 x i32> @llvm.x86.sse2.pshuf.d(<4 x i32> %c.cast, i8 27)
  ret <4 x i32> %d
}

define <4 x i32> @combine_pshufd4(<4 x i32> %a) {









entry:
  %b = call <4 x i32> @llvm.x86.sse2.pshuf.d(<4 x i32> %a, i8 -31)
  %b.cast = bitcast <4 x i32> %b to <8 x i16>
  %c = call <8 x i16> @llvm.x86.sse2.pshufh.w(<8 x i16> %b.cast, i8 27)
  %c.cast = bitcast <8 x i16> %c to <4 x i32>
  %d = call <4 x i32> @llvm.x86.sse2.pshuf.d(<4 x i32> %c.cast, i8 -31)
  ret <4 x i32> %d
}

define <4 x i32> @combine_pshufd5(<4 x i32> %a) {









entry:
  %b = call <4 x i32> @llvm.x86.sse2.pshuf.d(<4 x i32> %a, i8 -76)
  %b.cast = bitcast <4 x i32> %b to <8 x i16>
  %c = call <8 x i16> @llvm.x86.sse2.pshufl.w(<8 x i16> %b.cast, i8 27)
  %c.cast = bitcast <8 x i16> %c to <4 x i32>
  %d = call <4 x i32> @llvm.x86.sse2.pshuf.d(<4 x i32> %c.cast, i8 -76)
  ret <4 x i32> %d
}

define <4 x i32> @combine_pshufd6(<4 x i32> %a) {









entry:
  %b = call <4 x i32> @llvm.x86.sse2.pshuf.d(<4 x i32> %a, i8 0)
  %c = call <4 x i32> @llvm.x86.sse2.pshuf.d(<4 x i32> %b, i8 8)
  ret <4 x i32> %c
}

define <8 x i16> @combine_pshuflw1(<8 x i16> %a) {



entry:
  %b = call <8 x i16> @llvm.x86.sse2.pshufl.w(<8 x i16> %a, i8 27)
  %c = call <8 x i16> @llvm.x86.sse2.pshufl.w(<8 x i16> %b, i8 27)
  ret <8 x i16> %c
}

define <8 x i16> @combine_pshuflw2(<8 x i16> %a) {



entry:
  %b = call <8 x i16> @llvm.x86.sse2.pshufl.w(<8 x i16> %a, i8 27)
  %c = call <8 x i16> @llvm.x86.sse2.pshufh.w(<8 x i16> %b, i8 -28)
  %d = call <8 x i16> @llvm.x86.sse2.pshufl.w(<8 x i16> %c, i8 27)
  ret <8 x i16> %d
}

define <8 x i16> @combine_pshuflw3(<8 x i16> %a) {









entry:
  %b = call <8 x i16> @llvm.x86.sse2.pshufl.w(<8 x i16> %a, i8 27)
  %c = call <8 x i16> @llvm.x86.sse2.pshufh.w(<8 x i16> %b, i8 27)
  %d = call <8 x i16> @llvm.x86.sse2.pshufl.w(<8 x i16> %c, i8 27)
  ret <8 x i16> %d
}

define <8 x i16> @combine_pshufhw1(<8 x i16> %a) {









entry:
  %b = call <8 x i16> @llvm.x86.sse2.pshufh.w(<8 x i16> %a, i8 27)
  %c = call <8 x i16> @llvm.x86.sse2.pshufl.w(<8 x i16> %b, i8 27)
  %d = call <8 x i16> @llvm.x86.sse2.pshufh.w(<8 x i16> %c, i8 27)
  ret <8 x i16> %d
}

define <4 x i32> @combine_bitwise_ops_test1(<4 x i32> %a, <4 x i32> %b, <4 x i32> %c) {











  %shuf1 = shufflevector <4 x i32> %a, <4 x i32> %c, <4 x i32><i32 0, i32 2, i32 1, i32 3>
  %shuf2 = shufflevector <4 x i32> %b, <4 x i32> %c, <4 x i32><i32 0, i32 2, i32 1, i32 3>
  %and = and <4 x i32> %shuf1, %shuf2
  ret <4 x i32> %and
}

define <4 x i32> @combine_bitwise_ops_test2(<4 x i32> %a, <4 x i32> %b, <4 x i32> %c) {











  %shuf1 = shufflevector <4 x i32> %a, <4 x i32> %c, <4 x i32><i32 0, i32 2, i32 1, i32 3>
  %shuf2 = shufflevector <4 x i32> %b, <4 x i32> %c, <4 x i32><i32 0, i32 2, i32 1, i32 3>
  %or = or <4 x i32> %shuf1, %shuf2
  ret <4 x i32> %or
}

define <4 x i32> @combine_bitwise_ops_test3(<4 x i32> %a, <4 x i32> %b, <4 x i32> %c) {











  %shuf1 = shufflevector <4 x i32> %a, <4 x i32> %c, <4 x i32><i32 0, i32 2, i32 1, i32 3>
  %shuf2 = shufflevector <4 x i32> %b, <4 x i32> %c, <4 x i32><i32 0, i32 2, i32 1, i32 3>
  %xor = xor <4 x i32> %shuf1, %shuf2
  ret <4 x i32> %xor
}

define <4 x i32> @combine_bitwise_ops_test4(<4 x i32> %a, <4 x i32> %b, <4 x i32> %c) {











  %shuf1 = shufflevector <4 x i32> %c, <4 x i32> %a, <4 x i32><i32 4, i32 6, i32 5, i32 7>
  %shuf2 = shufflevector <4 x i32> %c, <4 x i32> %b, <4 x i32><i32 4, i32 6, i32 5, i32 7>
  %and = and <4 x i32> %shuf1, %shuf2
  ret <4 x i32> %and
}

define <4 x i32> @combine_bitwise_ops_test5(<4 x i32> %a, <4 x i32> %b, <4 x i32> %c) {











  %shuf1 = shufflevector <4 x i32> %c, <4 x i32> %a, <4 x i32><i32 4, i32 6, i32 5, i32 7>
  %shuf2 = shufflevector <4 x i32> %c, <4 x i32> %b, <4 x i32><i32 4, i32 6, i32 5, i32 7>
  %or = or <4 x i32> %shuf1, %shuf2
  ret <4 x i32> %or
}

define <4 x i32> @combine_bitwise_ops_test6(<4 x i32> %a, <4 x i32> %b, <4 x i32> %c) {











  %shuf1 = shufflevector <4 x i32> %c, <4 x i32> %a, <4 x i32><i32 4, i32 6, i32 5, i32 7>
  %shuf2 = shufflevector <4 x i32> %c, <4 x i32> %b, <4 x i32><i32 4, i32 6, i32 5, i32 7>
  %xor = xor <4 x i32> %shuf1, %shuf2
  ret <4 x i32> %xor
}





define <4 x i32> @combine_bitwise_ops_test1b(<4 x i32> %a, <4 x i32> %b, <4 x i32> %c) {

































  %shuf1 = shufflevector <4 x i32> %a, <4 x i32> %c, <4 x i32><i32 0, i32 5, i32 2, i32 7>
  %shuf2 = shufflevector <4 x i32> %b, <4 x i32> %c, <4 x i32><i32 0, i32 5, i32 2, i32 7>
  %and = and <4 x i32> %shuf1, %shuf2
  ret <4 x i32> %and
}

define <4 x i32> @combine_bitwise_ops_test2b(<4 x i32> %a, <4 x i32> %b, <4 x i32> %c) {

































  %shuf1 = shufflevector <4 x i32> %a, <4 x i32> %c, <4 x i32><i32 0, i32 5, i32 2, i32 7>
  %shuf2 = shufflevector <4 x i32> %b, <4 x i32> %c, <4 x i32><i32 0, i32 5, i32 2, i32 7>
  %or = or <4 x i32> %shuf1, %shuf2
  ret <4 x i32> %or
}

define <4 x i32> @combine_bitwise_ops_test3b(<4 x i32> %a, <4 x i32> %b, <4 x i32> %c) {
































  %shuf1 = shufflevector <4 x i32> %a, <4 x i32> %c, <4 x i32><i32 0, i32 5, i32 2, i32 7>
  %shuf2 = shufflevector <4 x i32> %b, <4 x i32> %c, <4 x i32><i32 0, i32 5, i32 2, i32 7>
  %xor = xor <4 x i32> %shuf1, %shuf2
  ret <4 x i32> %xor
}

define <4 x i32> @combine_bitwise_ops_test4b(<4 x i32> %a, <4 x i32> %b, <4 x i32> %c) {

































  %shuf1 = shufflevector <4 x i32> %c, <4 x i32> %a, <4 x i32><i32 0, i32 5, i32 2, i32 7>
  %shuf2 = shufflevector <4 x i32> %c, <4 x i32> %b, <4 x i32><i32 0, i32 5, i32 2, i32 7>
  %and = and <4 x i32> %shuf1, %shuf2
  ret <4 x i32> %and
}

define <4 x i32> @combine_bitwise_ops_test5b(<4 x i32> %a, <4 x i32> %b, <4 x i32> %c) {

































  %shuf1 = shufflevector <4 x i32> %c, <4 x i32> %a, <4 x i32><i32 0, i32 5, i32 2, i32 7>
  %shuf2 = shufflevector <4 x i32> %c, <4 x i32> %b, <4 x i32><i32 0, i32 5, i32 2, i32 7>
  %or = or <4 x i32> %shuf1, %shuf2
  ret <4 x i32> %or
}

define <4 x i32> @combine_bitwise_ops_test6b(<4 x i32> %a, <4 x i32> %b, <4 x i32> %c) {
































  %shuf1 = shufflevector <4 x i32> %c, <4 x i32> %a, <4 x i32><i32 0, i32 5, i32 2, i32 7>
  %shuf2 = shufflevector <4 x i32> %c, <4 x i32> %b, <4 x i32><i32 0, i32 5, i32 2, i32 7>
  %xor = xor <4 x i32> %shuf1, %shuf2
  ret <4 x i32> %xor
}

define <4 x i32> @combine_bitwise_ops_test1c(<4 x i32> %a, <4 x i32> %b, <4 x i32> %c) {




































  %shuf1 = shufflevector <4 x i32> %a, <4 x i32> %c, <4 x i32><i32 0, i32 2, i32 5, i32 7>
  %shuf2 = shufflevector <4 x i32> %b, <4 x i32> %c, <4 x i32><i32 0, i32 2, i32 5, i32 7>
  %and = and <4 x i32> %shuf1, %shuf2
  ret <4 x i32> %and
}

define <4 x i32> @combine_bitwise_ops_test2c(<4 x i32> %a, <4 x i32> %b, <4 x i32> %c) {




































  %shuf1 = shufflevector <4 x i32> %a, <4 x i32> %c, <4 x i32><i32 0, i32 2, i32 5, i32 7>
  %shuf2 = shufflevector <4 x i32> %b, <4 x i32> %c, <4 x i32><i32 0, i32 2, i32 5, i32 7>
  %or = or <4 x i32> %shuf1, %shuf2
  ret <4 x i32> %or
}

define <4 x i32> @combine_bitwise_ops_test3c(<4 x i32> %a, <4 x i32> %b, <4 x i32> %c) {





























  %shuf1 = shufflevector <4 x i32> %a, <4 x i32> %c, <4 x i32><i32 0, i32 2, i32 5, i32 7>
  %shuf2 = shufflevector <4 x i32> %b, <4 x i32> %c, <4 x i32><i32 0, i32 2, i32 5, i32 7>
  %xor = xor <4 x i32> %shuf1, %shuf2
  ret <4 x i32> %xor
}

define <4 x i32> @combine_bitwise_ops_test4c(<4 x i32> %a, <4 x i32> %b, <4 x i32> %c) {




































  %shuf1 = shufflevector <4 x i32> %c, <4 x i32> %a, <4 x i32><i32 0, i32 2, i32 5, i32 7>
  %shuf2 = shufflevector <4 x i32> %c, <4 x i32> %b, <4 x i32><i32 0, i32 2, i32 5, i32 7>
  %and = and <4 x i32> %shuf1, %shuf2
  ret <4 x i32> %and
}

define <4 x i32> @combine_bitwise_ops_test5c(<4 x i32> %a, <4 x i32> %b, <4 x i32> %c) {




































  %shuf1 = shufflevector <4 x i32> %c, <4 x i32> %a, <4 x i32><i32 0, i32 2, i32 5, i32 7>
  %shuf2 = shufflevector <4 x i32> %c, <4 x i32> %b, <4 x i32><i32 0, i32 2, i32 5, i32 7>
  %or = or <4 x i32> %shuf1, %shuf2
  ret <4 x i32> %or
}

define <4 x i32> @combine_bitwise_ops_test6c(<4 x i32> %a, <4 x i32> %b, <4 x i32> %c) {







































  %shuf1 = shufflevector <4 x i32> %c, <4 x i32> %a, <4 x i32><i32 0, i32 2, i32 5, i32 7>
  %shuf2 = shufflevector <4 x i32> %c, <4 x i32> %b, <4 x i32><i32 0, i32 2, i32 5, i32 7>
  %xor = xor <4 x i32> %shuf1, %shuf2
  ret <4 x i32> %xor
}

define <4 x i32> @combine_nested_undef_test1(<4 x i32> %A, <4 x i32> %B) {









  %1 = shufflevector <4 x i32> %A, <4 x i32> %B, <4 x i32> <i32 0, i32 4, i32 3, i32 1>
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 2, i32 4, i32 0, i32 3>
  ret <4 x i32> %2
}

define <4 x i32> @combine_nested_undef_test2(<4 x i32> %A, <4 x i32> %B) {









  %1 = shufflevector <4 x i32> %A, <4 x i32> %B, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 2, i32 4, i32 0, i32 3>
  ret <4 x i32> %2
}

define <4 x i32> @combine_nested_undef_test3(<4 x i32> %A, <4 x i32> %B) {









  %1 = shufflevector <4 x i32> %A, <4 x i32> %B, <4 x i32> <i32 0, i32 6, i32 2, i32 3>
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 2, i32 4, i32 0, i32 3>
  ret <4 x i32> %2
}

define <4 x i32> @combine_nested_undef_test4(<4 x i32> %A, <4 x i32> %B) {














  %1 = shufflevector <4 x i32> %A, <4 x i32> %B, <4 x i32> <i32 0, i32 4, i32 7, i32 1>
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 4, i32 4, i32 0, i32 3>
  ret <4 x i32> %2
}

define <4 x i32> @combine_nested_undef_test5(<4 x i32> %A, <4 x i32> %B) {









  %1 = shufflevector <4 x i32> %A, <4 x i32> %B, <4 x i32> <i32 5, i32 5, i32 2, i32 3>
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 2, i32 4, i32 4, i32 3>
  ret <4 x i32> %2
}

define <4 x i32> @combine_nested_undef_test6(<4 x i32> %A, <4 x i32> %B) {









  %1 = shufflevector <4 x i32> %A, <4 x i32> %B, <4 x i32> <i32 0, i32 6, i32 2, i32 4>
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 2, i32 4, i32 0, i32 4>
  ret <4 x i32> %2
}

define <4 x i32> @combine_nested_undef_test7(<4 x i32> %A, <4 x i32> %B) {









  %1 = shufflevector <4 x i32> %A, <4 x i32> %B, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  ret <4 x i32> %2
}

define <4 x i32> @combine_nested_undef_test8(<4 x i32> %A, <4 x i32> %B) {









  %1 = shufflevector <4 x i32> %A, <4 x i32> %B, <4 x i32> <i32 4, i32 1, i32 6, i32 3>
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 1, i32 4, i32 3, i32 4>
  ret <4 x i32> %2
}

define <4 x i32> @combine_nested_undef_test9(<4 x i32> %A, <4 x i32> %B) {









  %1 = shufflevector <4 x i32> %A, <4 x i32> %B, <4 x i32> <i32 1, i32 3, i32 2, i32 5>
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 0, i32 1, i32 4, i32 2>
  ret <4 x i32> %2
}

define <4 x i32> @combine_nested_undef_test10(<4 x i32> %A, <4 x i32> %B) {









  %1 = shufflevector <4 x i32> %A, <4 x i32> %B, <4 x i32> <i32 1, i32 1, i32 5, i32 5>
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 0, i32 4, i32 1, i32 4>
  ret <4 x i32> %2
}

define <4 x i32> @combine_nested_undef_test11(<4 x i32> %A, <4 x i32> %B) {









  %1 = shufflevector <4 x i32> %A, <4 x i32> %B, <4 x i32> <i32 1, i32 2, i32 5, i32 4>
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 0, i32 4, i32 1, i32 0>
  ret <4 x i32> %2
}

define <4 x i32> @combine_nested_undef_test12(<4 x i32> %A, <4 x i32> %B) {














  %1 = shufflevector <4 x i32> %A, <4 x i32> %B, <4 x i32> <i32 0, i32 0, i32 2, i32 4>
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 1, i32 4, i32 0, i32 4>
  ret <4 x i32> %2
}


define <4 x i32> @combine_nested_undef_test13(<4 x i32> %A, <4 x i32> %B) {



  %1 = shufflevector <4 x i32> %A, <4 x i32> %B, <4 x i32> <i32 1, i32 4, i32 2, i32 6>
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 4, i32 0, i32 2, i32 4>
  ret <4 x i32> %2
}


define <4 x i32> @combine_nested_undef_test14(<4 x i32> %A, <4 x i32> %B) {









  %1 = shufflevector <4 x i32> %A, <4 x i32> %B, <4 x i32> <i32 0, i32 6, i32 2, i32 4>
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 3, i32 4, i32 1, i32 4>
  ret <4 x i32> %2
}








define <4 x i32> @combine_nested_undef_test15(<4 x i32> %A, <4 x i32> %B) {


































  %1 = shufflevector <4 x i32> %A, <4 x i32> %B, <4 x i32> <i32 0, i32 4, i32 3, i32 1>
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  ret <4 x i32> %2
}

define <4 x i32> @combine_nested_undef_test16(<4 x i32> %A, <4 x i32> %B) {































  %1 = shufflevector <4 x i32> %A, <4 x i32> %B, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  ret <4 x i32> %2
}

define <4 x i32> @combine_nested_undef_test17(<4 x i32> %A, <4 x i32> %B) {





























  %1 = shufflevector <4 x i32> %A, <4 x i32> %B, <4 x i32> <i32 4, i32 1, i32 3, i32 1>
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  ret <4 x i32> %2
}

define <4 x i32> @combine_nested_undef_test18(<4 x i32> %A, <4 x i32> %B) {









  %1 = shufflevector <4 x i32> %A, <4 x i32> %B, <4 x i32> <i32 4, i32 5, i32 2, i32 7>
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 1, i32 1, i32 0, i32 3>
  ret <4 x i32> %2
}

define <4 x i32> @combine_nested_undef_test19(<4 x i32> %A, <4 x i32> %B) {





























  %1 = shufflevector <4 x i32> %A, <4 x i32> %B, <4 x i32> <i32 0, i32 4, i32 5, i32 6>
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 2, i32 0, i32 0, i32 0>
  ret <4 x i32> %2
}

define <4 x i32> @combine_nested_undef_test20(<4 x i32> %A, <4 x i32> %B) {































  %1 = shufflevector <4 x i32> %A, <4 x i32> %B, <4 x i32> <i32 3, i32 2, i32 4, i32 4>
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  ret <4 x i32> %2
}

define <4 x i32> @combine_nested_undef_test21(<4 x i32> %A, <4 x i32> %B) {





























  %1 = shufflevector <4 x i32> %A, <4 x i32> %B, <4 x i32> <i32 4, i32 1, i32 3, i32 1>
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  ret <4 x i32> %2
}





define <4 x i32> @combine_nested_undef_test22(<4 x i32> %A, <4 x i32> %B) {









  %1 = shufflevector <4 x i32> %A, <4 x i32> %B, <4 x i32> <i32 4, i32 5, i32 2, i32 7>
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  ret <4 x i32> %2
}

define <4 x i32> @combine_nested_undef_test23(<4 x i32> %A, <4 x i32> %B) {









  %1 = shufflevector <4 x i32> %A, <4 x i32> %B, <4 x i32> <i32 4, i32 5, i32 2, i32 7>
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  ret <4 x i32> %2
}

define <4 x i32> @combine_nested_undef_test24(<4 x i32> %A, <4 x i32> %B) {









  %1 = shufflevector <4 x i32> %A, <4 x i32> %B, <4 x i32> <i32 4, i32 1, i32 6, i32 7>
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 0, i32 3, i32 2, i32 4>
  ret <4 x i32> %2
}

define <4 x i32> @combine_nested_undef_test25(<4 x i32> %A, <4 x i32> %B) {














  %1 = shufflevector <4 x i32> %B, <4 x i32> %A, <4 x i32> <i32 1, i32 5, i32 2, i32 4>
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 3, i32 1, i32 3, i32 1>
  ret <4 x i32> %2
}

define <4 x i32> @combine_nested_undef_test26(<4 x i32> %A, <4 x i32> %B) {









  %1 = shufflevector <4 x i32> %B, <4 x i32> %A, <4 x i32> <i32 1, i32 2, i32 6, i32 7>
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  ret <4 x i32> %2
}

define <4 x i32> @combine_nested_undef_test27(<4 x i32> %A, <4 x i32> %B) {














  %1 = shufflevector <4 x i32> %B, <4 x i32> %A, <4 x i32> <i32 2, i32 1, i32 5, i32 4>
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 3, i32 2, i32 3, i32 2>
  ret <4 x i32> %2
}

define <4 x i32> @combine_nested_undef_test28(<4 x i32> %A, <4 x i32> %B) {









  %1 = shufflevector <4 x i32> %B, <4 x i32> %A, <4 x i32> <i32 1, i32 2, i32 4, i32 5>
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 3, i32 2>
  ret <4 x i32> %2
}

define <4 x float> @combine_test1(<4 x float> %a, <4 x float> %b) {









  %1 = shufflevector <4 x float> %a, <4 x float> %b, <4 x i32> <i32 4, i32 1, i32 6, i32 3>
  %2 = shufflevector <4 x float> %1, <4 x float> %b, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  ret <4 x float> %2
}

define <4 x float> @combine_test2(<4 x float> %a, <4 x float> %b) {





















  %1 = shufflevector <4 x float> %a, <4 x float> %b, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %2 = shufflevector <4 x float> %1, <4 x float> %b, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  ret <4 x float> %2
}

define <4 x float> @combine_test3(<4 x float> %a, <4 x float> %b) {









  %1 = shufflevector <4 x float> %a, <4 x float> %b, <4 x i32> <i32 0, i32 5, i32 1, i32 7>
  %2 = shufflevector <4 x float> %1, <4 x float> %b, <4 x i32> <i32 0, i32 2, i32 4, i32 1>
  ret <4 x float> %2
}

define <4 x float> @combine_test4(<4 x float> %a, <4 x float> %b) {










  %1 = shufflevector <4 x float> %a, <4 x float> %b, <4 x i32> <i32 2, i32 3, i32 5, i32 5>
  %2 = shufflevector <4 x float> %1, <4 x float> %b, <4 x i32> <i32 6, i32 7, i32 0, i32 1>
  ret <4 x float> %2
}

define <4 x float> @combine_test5(<4 x float> %a, <4 x float> %b) {





















  %1 = shufflevector <4 x float> %a, <4 x float> %b, <4 x i32> <i32 4, i32 1, i32 6, i32 3>
  %2 = shufflevector <4 x float> %1, <4 x float> %b, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  ret <4 x float> %2
}

define <4 x i32> @combine_test6(<4 x i32> %a, <4 x i32> %b) {









  %1 = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 4, i32 1, i32 6, i32 3>
  %2 = shufflevector <4 x i32> %1, <4 x i32> %b, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  ret <4 x i32> %2
}

define <4 x i32> @combine_test7(<4 x i32> %a, <4 x i32> %b) {


























  %1 = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %2 = shufflevector <4 x i32> %1, <4 x i32> %b, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  ret <4 x i32> %2
}

define <4 x i32> @combine_test8(<4 x i32> %a, <4 x i32> %b) {









  %1 = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 0, i32 5, i32 1, i32 7>
  %2 = shufflevector <4 x i32> %1, <4 x i32> %b, <4 x i32> <i32 0, i32 2, i32 4, i32 1>
  ret <4 x i32> %2
}

define <4 x i32> @combine_test9(<4 x i32> %a, <4 x i32> %b) {










  %1 = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 2, i32 3, i32 5, i32 5>
  %2 = shufflevector <4 x i32> %1, <4 x i32> %b, <4 x i32> <i32 6, i32 7, i32 0, i32 1>
  ret <4 x i32> %2
}

define <4 x i32> @combine_test10(<4 x i32> %a, <4 x i32> %b) {


























  %1 = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 4, i32 1, i32 6, i32 3>
  %2 = shufflevector <4 x i32> %1, <4 x i32> %b, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  ret <4 x i32> %2
}

define <4 x float> @combine_test11(<4 x float> %a, <4 x float> %b) {



  %1 = shufflevector <4 x float> %a, <4 x float> %b, <4 x i32> <i32 4, i32 1, i32 6, i32 3>
  %2 = shufflevector <4 x float> %1, <4 x float> %a, <4 x i32> <i32 4, i32 1, i32 6, i32 3>
  ret <4 x float> %2
}

define <4 x float> @combine_test12(<4 x float> %a, <4 x float> %b) {





















  %1 = shufflevector <4 x float> %a, <4 x float> %b, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %2 = shufflevector <4 x float> %1, <4 x float> %a, <4 x i32> <i32 4, i32 1, i32 2, i32 3>
  ret <4 x float> %2
}

define <4 x float> @combine_test13(<4 x float> %a, <4 x float> %b) {









  %1 = shufflevector <4 x float> %a, <4 x float> %b, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %2 = shufflevector <4 x float> %1, <4 x float> %a, <4 x i32> <i32 4, i32 5, i32 2, i32 3>
  ret <4 x float> %2
}

define <4 x float> @combine_test14(<4 x float> %a, <4 x float> %b) {









  %1 = shufflevector <4 x float> %a, <4 x float> %b, <4 x i32> <i32 6, i32 7, i32 5, i32 5>
  %2 = shufflevector <4 x float> %1, <4 x float> %a, <4 x i32> <i32 6, i32 7, i32 0, i32 1>
  ret <4 x float> %2
}

define <4 x float> @combine_test15(<4 x float> %a, <4 x float> %b) {





















  %1 = shufflevector <4 x float> %a, <4 x float> %b, <4 x i32> <i32 4, i32 1, i32 6, i32 7>
  %2 = shufflevector <4 x float> %1, <4 x float> %a, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  ret <4 x float> %2
}

define <4 x i32> @combine_test16(<4 x i32> %a, <4 x i32> %b) {



  %1 = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 4, i32 1, i32 6, i32 3>
  %2 = shufflevector <4 x i32> %1, <4 x i32> %a, <4 x i32> <i32 4, i32 1, i32 6, i32 3>
  ret <4 x i32> %2
}

define <4 x i32> @combine_test17(<4 x i32> %a, <4 x i32> %b) {


























  %1 = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %2 = shufflevector <4 x i32> %1, <4 x i32> %a, <4 x i32> <i32 4, i32 1, i32 2, i32 3>
  ret <4 x i32> %2
}

define <4 x i32> @combine_test18(<4 x i32> %a, <4 x i32> %b) {









  %1 = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %2 = shufflevector <4 x i32> %1, <4 x i32> %a, <4 x i32> <i32 4, i32 5, i32 2, i32 3>
  ret <4 x i32> %2
}

define <4 x i32> @combine_test19(<4 x i32> %a, <4 x i32> %b) {









  %1 = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 6, i32 7, i32 5, i32 5>
  %2 = shufflevector <4 x i32> %1, <4 x i32> %a, <4 x i32> <i32 6, i32 7, i32 0, i32 1>
  ret <4 x i32> %2
}

define <4 x i32> @combine_test20(<4 x i32> %a, <4 x i32> %b) {


























  %1 = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 4, i32 1, i32 6, i32 7>
  %2 = shufflevector <4 x i32> %1, <4 x i32> %a, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  ret <4 x i32> %2
}

define <4 x i32> @combine_test21(<8 x i32> %a, <4 x i32>* %ptr) {

























  %1 = shufflevector <8 x i32> %a, <8 x i32> %a, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %2 = shufflevector <8 x i32> %a, <8 x i32> %a, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  store <4 x i32> %1, <4 x i32>* %ptr, align 16
  ret <4 x i32> %2
}

define <8 x float> @combine_test22(<2 x float>* %a, <2 x float>* %b) {












  %1 = load <2 x float>, <2 x float>* %a, align 8
  %2 = load <2 x float>, <2 x float>* %b, align 8
  %3 = shufflevector <2 x float> %1, <2 x float> %2, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef>
  ret <8 x float> %3
}




define <4 x float> @combine_test1b(<4 x float> %a, <4 x float> %b) {










  %1 = shufflevector <4 x float> %a, <4 x float> %b, <4 x i32> <i32 4, i32 1, i32 6, i32 3>
  %2 = shufflevector <4 x float> %1, <4 x float> %b, <4 x i32> <i32 0, i32 5, i32 2, i32 0>
  ret <4 x float> %2
}

define <4 x float> @combine_test2b(<4 x float> %a, <4 x float> %b) {




















  %1 = shufflevector <4 x float> %a, <4 x float> %b, <4 x i32> <i32 4, i32 1, i32 6, i32 3>
  %2 = shufflevector <4 x float> %1, <4 x float> %b, <4 x i32> <i32 0, i32 5, i32 0, i32 5>
  ret <4 x float> %2
}

define <4 x float> @combine_test3b(<4 x float> %a, <4 x float> %b) {























  %1 = shufflevector <4 x float> %a, <4 x float> %b, <4 x i32> <i32 0, i32 0, i32 6, i32 3>
  %2 = shufflevector <4 x float> %1, <4 x float> %b, <4 x i32> <i32 0, i32 7, i32 2, i32 7>
  ret <4 x float> %2
}

define <4 x float> @combine_test4b(<4 x float> %a, <4 x float> %b) {










  %1 = shufflevector <4 x float> %a, <4 x float> %b, <4 x i32> <i32 4, i32 1, i32 6, i32 3>
  %2 = shufflevector <4 x float> %1, <4 x float> %b, <4 x i32> <i32 5, i32 5, i32 2, i32 7>
  ret <4 x float> %2
}




define <4 x i8> @combine_test1c(<4 x i8>* %a, <4 x i8>* %b) {










































  %A = load <4 x i8>, <4 x i8>* %a
  %B = load <4 x i8>, <4 x i8>* %b
  %1 = shufflevector <4 x i8> %A, <4 x i8> %B, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %2 = shufflevector <4 x i8> %1, <4 x i8> %B, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  ret <4 x i8> %2
}

define <4 x i8> @combine_test2c(<4 x i8>* %a, <4 x i8>* %b) {



































  %A = load <4 x i8>, <4 x i8>* %a
  %B = load <4 x i8>, <4 x i8>* %b
  %1 = shufflevector <4 x i8> %A, <4 x i8> %B, <4 x i32> <i32 0, i32 5, i32 1, i32 5>
  %2 = shufflevector <4 x i8> %1, <4 x i8> %B, <4 x i32> <i32 0, i32 2, i32 4, i32 1>
  ret <4 x i8> %2
}

define <4 x i8> @combine_test3c(<4 x i8>* %a, <4 x i8>* %b) {



































  %A = load <4 x i8>, <4 x i8>* %a
  %B = load <4 x i8>, <4 x i8>* %b
  %1 = shufflevector <4 x i8> %A, <4 x i8> %B, <4 x i32> <i32 2, i32 3, i32 5, i32 5>
  %2 = shufflevector <4 x i8> %1, <4 x i8> %B, <4 x i32> <i32 6, i32 7, i32 0, i32 1>
  ret <4 x i8> %2
}

define <4 x i8> @combine_test4c(<4 x i8>* %a, <4 x i8>* %b) {












































  %A = load <4 x i8>, <4 x i8>* %a
  %B = load <4 x i8>, <4 x i8>* %b
  %1 = shufflevector <4 x i8> %A, <4 x i8> %B, <4 x i32> <i32 4, i32 1, i32 6, i32 3>
  %2 = shufflevector <4 x i8> %1, <4 x i8> %B, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  ret <4 x i8> %2
}































define <4 x float> @combine_blend_01(<4 x float> %a, <4 x float> %b) {



















  %shuffle = shufflevector <4 x float> %a, <4 x float> %b, <4 x i32> <i32 4, i32 undef, i32 2, i32 3>
  %shuffle6 = shufflevector <4 x float> %shuffle, <4 x float> %b, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  ret <4 x float> %shuffle6
}

define <4 x float> @combine_blend_02(<4 x float> %a, <4 x float> %b) {























  %shuffle = shufflevector <4 x float> %a, <4 x float> %b, <4 x i32> <i32 4, i32 1, i32 undef, i32 3>
  %shuffle6 = shufflevector <4 x float> %shuffle, <4 x float> %b, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  ret <4 x float> %shuffle6
}

define <4 x float> @combine_blend_123(<4 x float> %a, <4 x float> %b) {





















  %shuffle = shufflevector <4 x float> %a, <4 x float> %b, <4 x i32> <i32 0, i32 5, i32 undef, i32 undef>
  %shuffle6 = shufflevector <4 x float> %shuffle, <4 x float> %b, <4 x i32> <i32 0, i32 1, i32 6, i32 undef>
  %shuffle12 = shufflevector <4 x float> %shuffle6, <4 x float> %b, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  ret <4 x float> %shuffle12
}

define <4 x i32> @combine_test_movhl_1(<4 x i32> %a, <4 x i32> %b) {










  %1 = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 2, i32 7, i32 5, i32 3>
  %2 = shufflevector <4 x i32> %1, <4 x i32> %b, <4 x i32> <i32 6, i32 1, i32 0, i32 3>
  ret <4 x i32> %2
}

define <4 x i32> @combine_test_movhl_2(<4 x i32> %a, <4 x i32> %b) {










  %1 = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 2, i32 0, i32 3, i32 6>
  %2 = shufflevector <4 x i32> %1, <4 x i32> %b, <4 x i32> <i32 3, i32 7, i32 0, i32 2>
  ret <4 x i32> %2
}

define <4 x i32> @combine_test_movhl_3(<4 x i32> %a, <4 x i32> %b) {










  %1 = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 7, i32 6, i32 3, i32 2>
  %2 = shufflevector <4 x i32> %1, <4 x i32> %b, <4 x i32> <i32 6, i32 0, i32 3, i32 2>
  ret <4 x i32> %2
}





define <4 x float> @combine_undef_input_test1(<4 x float> %a, <4 x float> %b) {



















  %1 = shufflevector <4 x float> %a, <4 x float> undef, <4 x i32> <i32 4, i32 2, i32 3, i32 1>
  %2 = shufflevector <4 x float> %1, <4 x float> %b, <4 x i32> <i32 4, i32 5, i32 1, i32 2>
  ret <4 x float> %2
}

define <4 x float> @combine_undef_input_test2(<4 x float> %a, <4 x float> %b) {









  %1 = shufflevector <4 x float> %a, <4 x float> undef, <4 x i32> <i32 6, i32 0, i32 1, i32 7>
  %2 = shufflevector <4 x float> %1, <4 x float> %b, <4 x i32> <i32 1, i32 2, i32 4, i32 5>
  ret <4 x float> %2
}

define <4 x float> @combine_undef_input_test3(<4 x float> %a, <4 x float> %b) {









  %1 = shufflevector <4 x float> %a, <4 x float> undef, <4 x i32> <i32 0, i32 5, i32 1, i32 7>
  %2 = shufflevector <4 x float> %1, <4 x float> %b, <4 x i32> <i32 0, i32 2, i32 4, i32 1>
  ret <4 x float> %2
}

define <4 x float> @combine_undef_input_test4(<4 x float> %a, <4 x float> %b) {










  %1 = shufflevector <4 x float> %a, <4 x float> undef, <4 x i32> <i32 2, i32 3, i32 5, i32 5>
  %2 = shufflevector <4 x float> %1, <4 x float> %b, <4 x i32> <i32 6, i32 7, i32 0, i32 1>
  ret <4 x float> %2
}

define <4 x float> @combine_undef_input_test5(<4 x float> %a, <4 x float> %b) {





















  %1 = shufflevector <4 x float> %a, <4 x float> undef, <4 x i32> <i32 0, i32 4, i32 1, i32 3>
  %2 = shufflevector <4 x float> %1, <4 x float> %b, <4 x i32> <i32 0, i32 2, i32 6, i32 7>
  ret <4 x float> %2
}





define <4 x float> @combine_undef_input_test6(<4 x float> %a) {



  %1 = shufflevector <4 x float> %a, <4 x float> undef, <4 x i32> <i32 4, i32 2, i32 3, i32 1>
  %2 = shufflevector <4 x float> %1, <4 x float> %a, <4 x i32> <i32 4, i32 5, i32 1, i32 2>
  ret <4 x float> %2
}

define <4 x float> @combine_undef_input_test7(<4 x float> %a) {



















  %1 = shufflevector <4 x float> %a, <4 x float> undef, <4 x i32> <i32 6, i32 0, i32 1, i32 7>
  %2 = shufflevector <4 x float> %1, <4 x float> %a, <4 x i32> <i32 1, i32 2, i32 4, i32 5>
  ret <4 x float> %2
}

define <4 x float> @combine_undef_input_test8(<4 x float> %a) {



















  %1 = shufflevector <4 x float> %a, <4 x float> undef, <4 x i32> <i32 0, i32 5, i32 1, i32 7>
  %2 = shufflevector <4 x float> %1, <4 x float> %a, <4 x i32> <i32 0, i32 2, i32 4, i32 1>
  ret <4 x float> %2
}

define <4 x float> @combine_undef_input_test9(<4 x float> %a) {









  %1 = shufflevector <4 x float> %a, <4 x float> undef, <4 x i32> <i32 2, i32 3, i32 5, i32 5>
  %2 = shufflevector <4 x float> %1, <4 x float> %a, <4 x i32> <i32 6, i32 7, i32 0, i32 1>
  ret <4 x float> %2
}

define <4 x float> @combine_undef_input_test10(<4 x float> %a) {



  %1 = shufflevector <4 x float> %a, <4 x float> undef, <4 x i32> <i32 0, i32 4, i32 1, i32 3>
  %2 = shufflevector <4 x float> %1, <4 x float> %a, <4 x i32> <i32 0, i32 2, i32 6, i32 7>
  ret <4 x float> %2
}

define <4 x float> @combine_undef_input_test11(<4 x float> %a, <4 x float> %b) {



















  %1 = shufflevector <4 x float> %a, <4 x float> undef, <4 x i32> <i32 4, i32 2, i32 3, i32 1>
  %2 = shufflevector <4 x float> %b, <4 x float> %1, <4 x i32> <i32 0, i32 1, i32 5, i32 6>
  ret <4 x float> %2
}

define <4 x float> @combine_undef_input_test12(<4 x float> %a, <4 x float> %b) {









  %1 = shufflevector <4 x float> %a, <4 x float> undef, <4 x i32> <i32 6, i32 0, i32 1, i32 7>
  %2 = shufflevector <4 x float> %b, <4 x float> %1, <4 x i32> <i32 5, i32 6, i32 0, i32 1>
  ret <4 x float> %2
}

define <4 x float> @combine_undef_input_test13(<4 x float> %a, <4 x float> %b) {









  %1 = shufflevector <4 x float> %a, <4 x float> undef, <4 x i32> <i32 0, i32 5, i32 1, i32 7>
  %2 = shufflevector <4 x float> %b, <4 x float> %1, <4 x i32> <i32 4, i32 5, i32 0, i32 5>
  ret <4 x float> %2
}

define <4 x float> @combine_undef_input_test14(<4 x float> %a, <4 x float> %b) {










  %1 = shufflevector <4 x float> %a, <4 x float> undef, <4 x i32> <i32 2, i32 3, i32 5, i32 5>
  %2 = shufflevector <4 x float> %b, <4 x float> %1, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  ret <4 x float> %2
}

define <4 x float> @combine_undef_input_test15(<4 x float> %a, <4 x float> %b) {





















  %1 = shufflevector <4 x float> %a, <4 x float> undef, <4 x i32> <i32 0, i32 4, i32 1, i32 3>
  %2 = shufflevector <4 x float> %b, <4 x float> %1, <4 x i32> <i32 4, i32 6, i32 2, i32 3>
  ret <4 x float> %2
}











define <4 x float> @combine_undef_input_test16(<4 x float> %a) {



  %1 = shufflevector <4 x float> %a, <4 x float> undef, <4 x i32> <i32 4, i32 2, i32 3, i32 1>
  %2 = shufflevector <4 x float> %a, <4 x float> %1, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  ret <4 x float> %2
}

define <4 x float> @combine_undef_input_test17(<4 x float> %a) {



















  %1 = shufflevector <4 x float> %a, <4 x float> undef, <4 x i32> <i32 6, i32 0, i32 1, i32 7>
  %2 = shufflevector <4 x float> %a, <4 x float> %1, <4 x i32> <i32 5, i32 6, i32 0, i32 1>
  ret <4 x float> %2
}

define <4 x float> @combine_undef_input_test18(<4 x float> %a) {



















  %1 = shufflevector <4 x float> %a, <4 x float> undef, <4 x i32> <i32 0, i32 5, i32 1, i32 7>
  %2 = shufflevector <4 x float> %a, <4 x float> %1, <4 x i32> <i32 4, i32 6, i32 0, i32 5>
  ret <4 x float> %2
}

define <4 x float> @combine_undef_input_test19(<4 x float> %a) {









  %1 = shufflevector <4 x float> %a, <4 x float> undef, <4 x i32> <i32 2, i32 3, i32 5, i32 5>
  %2 = shufflevector <4 x float> %a, <4 x float> %1, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  ret <4 x float> %2
}

define <4 x float> @combine_undef_input_test20(<4 x float> %a) {



  %1 = shufflevector <4 x float> %a, <4 x float> undef, <4 x i32> <i32 0, i32 4, i32 1, i32 3>
  %2 = shufflevector <4 x float> %a, <4 x float> %1, <4 x i32> <i32 4, i32 6, i32 2, i32 3>
  ret <4 x float> %2
}






define <8 x i32> @combine_unneeded_subvector1(<8 x i32> %a) {





















  %b = add <8 x i32> %a, <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>
  %c = shufflevector <8 x i32> %b, <8 x i32> undef, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 7, i32 6, i32 5, i32 4>
  ret <8 x i32> %c
}

define <8 x i32> @combine_unneeded_subvector2(<8 x i32> %a, <8 x i32> %b) {






















  %c = add <8 x i32> %a, <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>
  %d = shufflevector <8 x i32> %b, <8 x i32> %c, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 15, i32 14, i32 13, i32 12>
  ret <8 x i32> %d
}

define <4 x float> @combine_insertps1(<4 x float> %a, <4 x float> %b) {
























  %c = shufflevector <4 x float> %a, <4 x float> %b, <4 x i32><i32 0, i32 6, i32 2, i32 4>
  %d = shufflevector <4 x float> %a, <4 x float> %c, <4 x i32> <i32 5, i32 1, i32 6, i32 3>
  ret <4 x float> %d
}

define <4 x float> @combine_insertps2(<4 x float> %a, <4 x float> %b) {
























  %c = shufflevector <4 x float> %a, <4 x float> %b, <4 x i32><i32 0, i32 1, i32 6, i32 7>
  %d = shufflevector <4 x float> %a, <4 x float> %c, <4 x i32> <i32 4, i32 6, i32 2, i32 3>
  ret <4 x float> %d
}

define <4 x float> @combine_insertps3(<4 x float> %a, <4 x float> %b) {






















  %c = shufflevector <4 x float> %a, <4 x float> %b, <4 x i32><i32 0, i32 4, i32 2, i32 5>
  %d = shufflevector <4 x float> %a, <4 x float> %c, <4 x i32><i32 4, i32 1, i32 5, i32 3>
  ret <4 x float> %d
}

define <4 x float> @combine_insertps4(<4 x float> %a, <4 x float> %b) {






















  %c = shufflevector <4 x float> %a, <4 x float> %b, <4 x i32><i32 0, i32 4, i32 2, i32 5>
  %d = shufflevector <4 x float> %a, <4 x float> %c, <4 x i32><i32 4, i32 1, i32 6, i32 5>
  ret <4 x float> %d
}

define <4 x float> @PR22377(<4 x float> %a, <4 x float> %b) {
















entry:
  %s1 = shufflevector <4 x float> %a, <4 x float> undef, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %s2 = shufflevector <4 x float> %a, <4 x float> undef, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %r2 = fadd <4 x float> %s1, %s2
  %s3 = shufflevector <4 x float> %s2, <4 x float> %r2, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  ret <4 x float> %s3
}

define <4 x float> @PR22390(<4 x float> %a, <4 x float> %b) {































entry:
  %s1 = shufflevector <4 x float> %a, <4 x float> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %s2 = shufflevector <4 x float> %s1, <4 x float> %b, <4 x i32> <i32 4, i32 1, i32 2, i32 3>
  %r2 = fadd <4 x float> %s1, %s2
  ret <4 x float> %r2
}

define <8 x float> @PR22412(<8 x float> %a, <8 x float> %b) {









































entry:
  %s1 = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %s2 = shufflevector <8 x float> %s1, <8 x float> undef, <8 x i32> <i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2>
  ret <8 x float> %s2
}
