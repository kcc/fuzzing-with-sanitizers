









define <4 x i32> @do_not_reorder(<4 x i32> %p1, <4 x i32> %p2) {
  %splat1 = shufflevector <4 x i32> %p1, <4 x i32> undef, <4 x i32> zeroinitializer
  %splat2 = shufflevector <4 x i32> %p2, <4 x i32> undef, <4 x i32> zeroinitializer
  %retval = srem <4 x i32> %splat1, %splat2
  ret <4 x i32> %retval
}
