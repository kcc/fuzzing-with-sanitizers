












define <2 x i32> @test_v1i32_0(<1 x i64> %in0) {


  %1 = shufflevector <1 x i64> %in0, <1 x i64> undef, <2 x i32> <i32 0, i32 undef>
  %2 = trunc <2 x i64> %1 to <2 x i32>
  ret <2 x i32> %2
}

define <2 x i32> @test_v1i32_1(<1 x i64> %in0) {



  %1 = shufflevector <1 x i64> %in0, <1 x i64> undef, <2 x i32> <i32 undef, i32 0>
  %2 = trunc <2 x i64> %1 to <2 x i32>
  ret <2 x i32> %2
}

define <4 x i16> @test_v1i16_0(<1 x i64> %in0) {


  %1 = shufflevector <1 x i64> %in0, <1 x i64> undef, <4 x i32> <i32 0, i32 undef, i32 undef, i32 undef>
  %2 = trunc <4 x i64> %1 to <4 x i16>
  ret <4 x i16> %2
}

define <4 x i16> @test_v1i16_1(<1 x i64> %in0) {



  %1 = shufflevector <1 x i64> %in0, <1 x i64> undef, <4 x i32> <i32 undef, i32 undef, i32 0, i32 undef>
  %2 = trunc <4 x i64> %1 to <4 x i16>
  ret <4 x i16> %2
}

define <8 x i8> @test_v1i8_0(<1 x i64> %in0) {


  %1 = shufflevector <1 x i64> %in0, <1 x i64> undef, <8 x i32> <i32 0, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %2 = trunc <8 x i64> %1 to <8 x i8>
  ret <8 x i8> %2
}

define <8 x i8> @test_v1i8_1(<1 x i64> %in0) {



  %1 = shufflevector <1 x i64> %in0, <1 x i64> undef, <8 x i32> <i32 undef, i32 undef, i32 0, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %2 = trunc <8 x i64> %1 to <8 x i8>
  ret <8 x i8> %2
}




define <1 x i1> @test_v1i1_0(<1 x i64> %in0) {


  %1 = trunc <1 x i64> %in0 to <1 x i1>
  ret <1 x i1> %1
}

define i1 @test_v1i1_1(<1 x i64> %in0) {


  %1 = trunc <1 x i64> %in0 to <1 x i1>

  %2 = extractelement <1 x i1> %1, i32 0
  ret i1 %2
}
