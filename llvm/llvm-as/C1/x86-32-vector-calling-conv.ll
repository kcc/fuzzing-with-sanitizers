









define <4 x i32> @test_sse(<4 x i32> %a, <4 x i32> %b, <4 x i32> %c, <4 x i32> %d) nounwind {
  %r0 = add <4 x i32> %a, %b
  %r1 = add <4 x i32> %c, %d
  %ret = add <4 x i32> %r0, %r1
  ret <4 x i32> %ret
}








define <8 x i32> @test_avx(<8 x i32> %a, <8 x i32> %b, <8 x i32> %c, <8 x i32> %d) nounwind {
  %r0 = add <8 x i32> %a, %b
  %r1 = add <8 x i32> %c, %d
  %ret = add <8 x i32> %r0, %r1
  ret <8 x i32> %ret
}








define <16 x i32> @test_avx512(<16 x i32> %a, <16 x i32> %b, <16 x i32> %c, <16 x i32> %d) nounwind {
  %r0 = add <16 x i32> %a, %b
  %r1 = add <16 x i32> %c, %d
  %ret = add <16 x i32> %r0, %r1
  ret <16 x i32> %ret
}
