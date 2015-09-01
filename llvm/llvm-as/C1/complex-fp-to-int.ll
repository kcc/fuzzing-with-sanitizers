

define <2 x i64> @test_v2f32_to_signed_v2i64(<2 x float> %in) {




  %val = fptosi <2 x float> %in to <2 x i64>
  ret <2 x i64> %val
}

define <2 x i64> @test_v2f32_to_unsigned_v2i64(<2 x float> %in) {




  %val = fptoui <2 x float> %in to <2 x i64>
  ret <2 x i64> %val
}

define <2 x i16> @test_v2f32_to_signed_v2i16(<2 x float> %in) {



  %val = fptosi <2 x float> %in to <2 x i16>
  ret <2 x i16> %val
}

define <2 x i16> @test_v2f32_to_unsigned_v2i16(<2 x float> %in) {



  %val = fptoui <2 x float> %in to <2 x i16>
  ret <2 x i16> %val
}

define <2 x i8> @test_v2f32_to_signed_v2i8(<2 x float> %in) {



  %val = fptosi <2 x float> %in to <2 x i8>
  ret <2 x i8> %val
}

define <2 x i8> @test_v2f32_to_unsigned_v2i8(<2 x float> %in) {



  %val = fptoui <2 x float> %in to <2 x i8>
  ret <2 x i8> %val
}

define <4 x i16> @test_v4f32_to_signed_v4i16(<4 x float> %in) {




  %val = fptosi <4 x float> %in to <4 x i16>
  ret <4 x i16> %val
}

define <4 x i16> @test_v4f32_to_unsigned_v4i16(<4 x float> %in) {




  %val = fptoui <4 x float> %in to <4 x i16>
  ret <4 x i16> %val
}

define <4 x i8> @test_v4f32_to_signed_v4i8(<4 x float> %in) {




  %val = fptosi <4 x float> %in to <4 x i8>
  ret <4 x i8> %val
}

define <4 x i8> @test_v4f32_to_unsigned_v4i8(<4 x float> %in) {




  %val = fptoui <4 x float> %in to <4 x i8>
  ret <4 x i8> %val
}

define <2 x i32> @test_v2f64_to_signed_v2i32(<2 x double> %in) {




  %val = fptosi <2 x double> %in to <2 x i32>
  ret <2 x i32> %val
}

define <2 x i32> @test_v2f64_to_unsigned_v2i32(<2 x double> %in) {




  %val = fptoui <2 x double> %in to <2 x i32>
  ret <2 x i32> %val
}

define <2 x i16> @test_v2f64_to_signed_v2i16(<2 x double> %in) {




  %val = fptosi <2 x double> %in to <2 x i16>
  ret <2 x i16> %val
}

define <2 x i16> @test_v2f64_to_unsigned_v2i16(<2 x double> %in) {




  %val = fptoui <2 x double> %in to <2 x i16>
  ret <2 x i16> %val
}

define <2 x i8> @test_v2f64_to_signed_v2i8(<2 x double> %in) {




  %val = fptosi <2 x double> %in to <2 x i8>
  ret <2 x i8> %val
}

define <2 x i8> @test_v2f64_to_unsigned_v2i8(<2 x double> %in) {




  %val = fptoui <2 x double> %in to <2 x i8>
  ret <2 x i8> %val
}
