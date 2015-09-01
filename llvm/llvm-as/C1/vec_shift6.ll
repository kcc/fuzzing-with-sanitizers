








define <8 x i16> @test1(<8 x i16> %a) {
  %shl = shl <8 x i16> %a, <i16 1, i16 1, i16 2, i16 3, i16 7, i16 0, i16 9, i16 11>
  ret <8 x i16> %shl
}





define <8 x i16> @test2(<8 x i16> %a) {
  %shl = shl <8 x i16> %a, <i16 0, i16 undef, i16 0, i16 0, i16 1, i16 undef, i16 -1, i16 1>
  ret <8 x i16> %shl
}









define <4 x i32> @test3(<4 x i32> %a) {
  %shl = shl <4 x i32> %a, <i32 1, i32 -1, i32 2, i32 -3>
  ret <4 x i32> %shl
}







define <4 x i32> @test4(<4 x i32> %a) {
  %shl = shl <4 x i32> %a, <i32 0, i32 0, i32 1, i32 1>
  ret <4 x i32> %shl
}











define <16 x i16> @test5(<16 x i16> %a) {
  %shl = shl <16 x i16> %a, <i16 1, i16 1, i16 2, i16 3, i16 7, i16 0, i16 9, i16 11, i16 1, i16 1, i16 2, i16 3, i16 7, i16 0, i16 9, i16 11>
  ret <16 x i16> %shl
}












define <8 x i32> @test6(<8 x i32> %a) {
  %shl = shl <8 x i32> %a, <i32 1, i32 1, i32 2, i32 3, i32 1, i32 1, i32 2, i32 3>
  ret <8 x i32> %shl
}











define <32 x i16> @test7(<32 x i16> %a) {
  %shl = shl <32 x i16> %a, <i16 1, i16 1, i16 2, i16 3, i16 7, i16 0, i16 9, i16 11, i16 1, i16 1, i16 2, i16 3, i16 7, i16 0, i16 9, i16 11, i16 1, i16 1, i16 2, i16 3, i16 7, i16 0, i16 9, i16 11, i16 1, i16 1, i16 2, i16 3, i16 7, i16 0, i16 9, i16 11>
  ret <32 x i16> %shl
}













define <16 x i32> @test8(<16 x i32> %a) {
  %shl = shl <16 x i32> %a, <i32 1, i32 1, i32 2, i32 3, i32 1, i32 1, i32 2, i32 3, i32 1, i32 1, i32 2, i32 3, i32 1, i32 1, i32 2, i32 3>
  ret <16 x i32> %shl
}














define <8 x i64> @test9(<8 x i64> %a) {
  %shl = shl <8 x i64> %a, <i64 1, i64 1, i64 2, i64 3, i64 1, i64 1, i64 2, i64 3>
  ret <8 x i64> %shl
}







