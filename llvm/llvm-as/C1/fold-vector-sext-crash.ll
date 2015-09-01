






define <4 x i64> @foo(<4 x i64> %A) {
  %1 = select <4 x i1> <i1 true, i1 true, i1 false, i1 false>, <4 x i64> %A, <4 x i64><i64 undef, i64 undef, i64 0, i64 0>
  ret <4 x i64> %1
}

