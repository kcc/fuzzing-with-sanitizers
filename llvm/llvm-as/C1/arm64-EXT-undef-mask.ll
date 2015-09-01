


define <8 x i16> @test_vext_undef_traverse(<8 x i16> %in) {


  %vext = shufflevector <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0>, <8 x i16> %in, <8 x i32> <i32 undef, i32 undef, i32 undef, i32 undef, i32 6, i32 7, i32 8, i32 9>
  ret <8 x i16> %vext
}

define <8 x i16> @test_vext_undef_traverse2(<8 x i16> %in) {


  %vext = shufflevector <8 x i16> %in, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 0, i32 1, i32 2>
  ret <8 x i16> %vext
}

define <8 x i8> @test_vext_undef_traverse3(<8 x i8> %in) {


  %vext = shufflevector <8 x i8> %in, <8 x i8> <i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <8 x i32> <i32 undef, i32 undef, i32 undef, i32 undef, i32 2, i32 3, i32 4, i32 5>
  ret <8 x i8> %vext
}
