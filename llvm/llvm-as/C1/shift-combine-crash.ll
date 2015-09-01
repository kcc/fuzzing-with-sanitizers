












define <4 x i64> @test1(<4 x i64> %A) {
  %shl = shl <4 x i64> %A, <i64 undef, i64 undef, i64 1, i64 2>
  ret <4 x i64> %shl
}




define <4 x i64> @test2(<4 x i64> %A) {
  %shl = shl <4 x i64> %A, <i64 2, i64 3, i64 undef, i64 undef>
  ret <4 x i64> %shl
}

define <4 x i64> @test3(<4 x i64> %A) {
  %shl = shl <4 x i64> %A, <i64 2, i64 undef, i64 3, i64 undef>
  ret <4 x i64> %shl
}

define <4 x i64> @test4(<4 x i64> %A) {
  %shl = shl <4 x i64> %A, <i64 undef, i64 2, i64 undef, i64 3>
  ret <4 x i64> %shl
}

define <4 x i64> @test5(<4 x i64> %A) {
  %shl = shl <4 x i64> %A, <i64 2, i64 undef, i64 undef, i64 undef>
  ret <4 x i64> %shl
}

define <4 x i64> @test6(<4 x i64> %A) {
  %shl = shl <4 x i64> %A, <i64 undef, i64 undef, i64 3, i64 undef>
  ret <4 x i64> %shl
}

define <4 x i64> @test7(<4 x i64> %A) {
  %shl = shl <4 x i64> %A, <i64 undef, i64 undef, i64 undef, i64 3>
  ret <4 x i64> %shl
}

define <4 x i64> @test8(<4 x i64> %A) {
  %shl = shl <4 x i64> %A, <i64 undef, i64 undef, i64 undef, i64 undef>
  ret <4 x i64> %shl
}


