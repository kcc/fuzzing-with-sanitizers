




target triple = "x86_64-unknown-unknown"

define <4 x i32> @zero_vector() {









  %zero = insertelement <4 x i32> undef, i32 0, i32 0
  %splat = shufflevector <4 x i32> %zero, <4 x i32> undef, <4 x i32> zeroinitializer
  ret <4 x i32> %splat
}





define <4 x i32> @const_vector() {









  %const = insertelement <4 x i32> undef, i32 42, i32 0
  %splat = shufflevector <4 x i32> %const, <4 x i32> undef, <4 x i32> zeroinitializer
  ret <4 x i32> %splat
}
