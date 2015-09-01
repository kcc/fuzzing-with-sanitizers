




define void @autogen_SD19655(<2 x i64>* %addr, <2 x float>* %addrfloat) {
  %T = load <2 x i64>, <2 x i64>* %addr
  %F = sitofp <2 x i64> %T to <2 x float>
  store <2 x float> %F, <2 x float>* %addrfloat
  ret void
}

define <2 x double> @test_signed_v2i32_to_v2f64(<2 x i32> %v) nounwind readnone {




  %conv = sitofp <2 x i32> %v to <2 x double>
  ret <2 x double> %conv
}

define <2 x double> @test_unsigned_v2i32_to_v2f64(<2 x i32> %v) nounwind readnone {




  %conv = uitofp <2 x i32> %v to <2 x double>
  ret <2 x double> %conv
}

define <2 x double> @test_signed_v2i16_to_v2f64(<2 x i16> %v) nounwind readnone {






  %conv = sitofp <2 x i16> %v to <2 x double>
  ret <2 x double> %conv
}
define <2 x double> @test_unsigned_v2i16_to_v2f64(<2 x i16> %v) nounwind readnone {






  %conv = uitofp <2 x i16> %v to <2 x double>
  ret <2 x double> %conv
}

define <2 x double> @test_signed_v2i8_to_v2f64(<2 x i8> %v) nounwind readnone {






  %conv = sitofp <2 x i8> %v to <2 x double>
  ret <2 x double> %conv
}
define <2 x double> @test_unsigned_v2i8_to_v2f64(<2 x i8> %v) nounwind readnone {






  %conv = uitofp <2 x i8> %v to <2 x double>
  ret <2 x double> %conv
}

define <2 x float> @test_signed_v2i64_to_v2f32(<2 x i64> %v) nounwind readnone {




  %conv = sitofp <2 x i64> %v to <2 x float>
  ret <2 x float> %conv
}
define <2 x float> @test_unsigned_v2i64_to_v2f32(<2 x i64> %v) nounwind readnone {




  %conv = uitofp <2 x i64> %v to <2 x float>
  ret <2 x float> %conv
}

define <2 x float> @test_signed_v2i16_to_v2f32(<2 x i16> %v) nounwind readnone {





  %conv = sitofp <2 x i16> %v to <2 x float>
  ret <2 x float> %conv
}
define <2 x float> @test_unsigned_v2i16_to_v2f32(<2 x i16> %v) nounwind readnone {





  %conv = uitofp <2 x i16> %v to <2 x float>
  ret <2 x float> %conv
}

define <2 x float> @test_signed_v2i8_to_v2f32(<2 x i8> %v) nounwind readnone {





  %conv = sitofp <2 x i8> %v to <2 x float>
  ret <2 x float> %conv
}
define <2 x float> @test_unsigned_v2i8_to_v2f32(<2 x i8> %v) nounwind readnone {





  %conv = uitofp <2 x i8> %v to <2 x float>
  ret <2 x float> %conv
}

define <4 x float> @test_signed_v4i16_to_v4f32(<4 x i16> %v) nounwind readnone {




  %conv = sitofp <4 x i16> %v to <4 x float>
  ret <4 x float> %conv
}

define <4 x float> @test_unsigned_v4i16_to_v4f32(<4 x i16> %v) nounwind readnone {




  %conv = uitofp <4 x i16> %v to <4 x float>
  ret <4 x float> %conv
}

define <4 x float> @test_signed_v4i8_to_v4f32(<4 x i8> %v) nounwind readnone {






  %conv = sitofp <4 x i8> %v to <4 x float>
  ret <4 x float> %conv
}
define <4 x float> @test_unsigned_v4i8_to_v4f32(<4 x i8> %v) nounwind readnone {





  %conv = uitofp <4 x i8> %v to <4 x float>
  ret <4 x float> %conv
}
