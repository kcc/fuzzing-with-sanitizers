


define <4 x i8> @build_vector_again(<16 x i8> %in) nounwind readnone {
entry:
  %out = shufflevector <16 x i8> %in, <16 x i8> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>

  ret <4 x i8> %out

}
