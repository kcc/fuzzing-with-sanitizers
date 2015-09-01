









define <8 x i16> @test1(<8 x i16> %a) {
  %lshr = lshr <8 x i16> %a, <i16 3, i16 3, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>
  ret <8 x i16> %lshr
}













define <8 x i16> @test2(<8 x i16> %a) {
  %lshr = lshr <8 x i16> %a, <i16 3, i16 3, i16 3, i16 3, i16 2, i16 2, i16 2, i16 2>
  ret <8 x i16> %lshr
}













define <4 x i32> @test3(<4 x i32> %a) {
  %lshr = lshr <4 x i32> %a, <i32 3, i32 2, i32 2, i32 2>
  ret <4 x i32> %lshr
}











define <4 x i32> @test4(<4 x i32> %a) {
  %lshr = lshr <4 x i32> %a, <i32 3, i32 3, i32 2, i32 2>
  ret <4 x i32> %lshr
}











define <8 x i16> @test5(<8 x i16> %a) {
  %lshr = ashr <8 x i16> %a, <i16 3, i16 3, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>
  ret <8 x i16> %lshr
}

define <8 x i16> @test6(<8 x i16> %a) {
  %lshr = ashr <8 x i16> %a, <i16 3, i16 3, i16 3, i16 3, i16 2, i16 2, i16 2, i16 2>
  ret <8 x i16> %lshr
}













define <4 x i32> @test7(<4 x i32> %a) {
  %lshr = ashr <4 x i32> %a, <i32 3, i32 2, i32 2, i32 2>
  ret <4 x i32> %lshr
}











define <4 x i32> @test8(<4 x i32> %a) {
  %lshr = ashr <4 x i32> %a, <i32 3, i32 3, i32 2, i32 2>
  ret <4 x i32> %lshr
}










