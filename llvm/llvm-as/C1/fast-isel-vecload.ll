





define <16 x i8> @test_v16i8(<16 x i8>* %V) {




entry:
  %0 = load <16 x i8>, <16 x i8>* %V, align 16
  ret <16 x i8> %0
}

define <8 x i16> @test_v8i16(<8 x i16>* %V) {




entry:
  %0 = load <8 x i16>, <8 x i16>* %V, align 16
  ret <8 x i16> %0
}

define <4 x i32> @test_v4i32(<4 x i32>* %V) {




entry:
  %0 = load <4 x i32>, <4 x i32>* %V, align 16
  ret <4 x i32> %0
}

define <2 x i64> @test_v2i64(<2 x i64>* %V) {




entry:
  %0 = load <2 x i64>, <2 x i64>* %V, align 16
  ret <2 x i64> %0
}

define <16 x i8> @test_v16i8_unaligned(<16 x i8>* %V) {




entry:
  %0 = load <16 x i8>, <16 x i8>* %V, align 4
  ret <16 x i8> %0
}

define <8 x i16> @test_v8i16_unaligned(<8 x i16>* %V) {




entry:
  %0 = load <8 x i16>, <8 x i16>* %V, align 4
  ret <8 x i16> %0
}

define <4 x i32> @test_v4i32_unaligned(<4 x i32>* %V) {




entry:
  %0 = load <4 x i32>, <4 x i32>* %V, align 4
  ret <4 x i32> %0
}

define <2 x i64> @test_v2i64_unaligned(<2 x i64>* %V) {




entry:
  %0 = load <2 x i64>, <2 x i64>* %V, align 4
  ret <2 x i64> %0
}

define <4 x float> @test_v4f32(<4 x float>* %V) {




entry:
  %0 = load <4 x float>, <4 x float>* %V, align 16
  ret <4 x float> %0
}

define <2 x double> @test_v2f64(<2 x double>* %V) {




entry:
  %0 = load <2 x double>, <2 x double>* %V, align 16
  ret <2 x double> %0
}

define <4 x float> @test_v4f32_unaligned(<4 x float>* %V) {




entry:
  %0 = load <4 x float>, <4 x float>* %V, align 4
  ret <4 x float> %0
}

define <2 x double> @test_v2f64_unaligned(<2 x double>* %V) {




entry:
  %0 = load <2 x double>, <2 x double>* %V, align 4
  ret <2 x double> %0
}

define <16 x i8> @test_v16i8_abi_alignment(<16 x i8>* %V) {




entry:
  %0 = load <16 x i8>, <16 x i8>* %V
  ret <16 x i8> %0
}

define <8 x i16> @test_v8i16_abi_alignment(<8 x i16>* %V) {




entry:
  %0 = load <8 x i16>, <8 x i16>* %V
  ret <8 x i16> %0
}

define <4 x i32> @test_v4i32_abi_alignment(<4 x i32>* %V) {




entry:
  %0 = load <4 x i32>, <4 x i32>* %V
  ret <4 x i32> %0
}

define <2 x i64> @test_v2i64_abi_alignment(<2 x i64>* %V) {




entry:
  %0 = load <2 x i64>, <2 x i64>* %V
  ret <2 x i64> %0
}

define <4 x float> @test_v4f32_abi_alignment(<4 x float>* %V) {




entry:
  %0 = load <4 x float>, <4 x float>* %V
  ret <4 x float> %0
}

define <2 x double> @test_v2f64_abi_alignment(<2 x double>* %V) {




entry:
  %0 = load <2 x double>, <2 x double>* %V
  ret <2 x double> %0
}
