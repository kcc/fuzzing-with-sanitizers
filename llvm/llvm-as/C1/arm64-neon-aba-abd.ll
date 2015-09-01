

declare <8 x i8> @llvm.aarch64.neon.uabd.v8i8(<8 x i8>, <8 x i8>)
declare <8 x i8> @llvm.aarch64.neon.sabd.v8i8(<8 x i8>, <8 x i8>)

define <8 x i8> @test_uabd_v8i8(<8 x i8> %lhs, <8 x i8> %rhs) {

  %abd = call <8 x i8> @llvm.aarch64.neon.uabd.v8i8(<8 x i8> %lhs, <8 x i8> %rhs)

  ret <8 x i8> %abd
}

define <8 x i8> @test_uaba_v8i8(<8 x i8> %lhs, <8 x i8> %rhs) {

  %abd = call <8 x i8> @llvm.aarch64.neon.uabd.v8i8(<8 x i8> %lhs, <8 x i8> %rhs)
  %aba = add <8 x i8> %lhs, %abd

  ret <8 x i8> %aba
}

define <8 x i8> @test_sabd_v8i8(<8 x i8> %lhs, <8 x i8> %rhs) {

  %abd = call <8 x i8> @llvm.aarch64.neon.sabd.v8i8(<8 x i8> %lhs, <8 x i8> %rhs)

  ret <8 x i8> %abd
}

define <8 x i8> @test_saba_v8i8(<8 x i8> %lhs, <8 x i8> %rhs) {

  %abd = call <8 x i8> @llvm.aarch64.neon.sabd.v8i8(<8 x i8> %lhs, <8 x i8> %rhs)
  %aba = add <8 x i8> %lhs, %abd

  ret <8 x i8> %aba
}

declare <16 x i8> @llvm.aarch64.neon.uabd.v16i8(<16 x i8>, <16 x i8>)
declare <16 x i8> @llvm.aarch64.neon.sabd.v16i8(<16 x i8>, <16 x i8>)

define <16 x i8> @test_uabd_v16i8(<16 x i8> %lhs, <16 x i8> %rhs) {

  %abd = call <16 x i8> @llvm.aarch64.neon.uabd.v16i8(<16 x i8> %lhs, <16 x i8> %rhs)

  ret <16 x i8> %abd
}

define <16 x i8> @test_uaba_v16i8(<16 x i8> %lhs, <16 x i8> %rhs) {

  %abd = call <16 x i8> @llvm.aarch64.neon.uabd.v16i8(<16 x i8> %lhs, <16 x i8> %rhs)
  %aba = add <16 x i8> %lhs, %abd

  ret <16 x i8> %aba
}

define <16 x i8> @test_sabd_v16i8(<16 x i8> %lhs, <16 x i8> %rhs) {

  %abd = call <16 x i8> @llvm.aarch64.neon.sabd.v16i8(<16 x i8> %lhs, <16 x i8> %rhs)

  ret <16 x i8> %abd
}

define <16 x i8> @test_saba_v16i8(<16 x i8> %lhs, <16 x i8> %rhs) {

  %abd = call <16 x i8> @llvm.aarch64.neon.sabd.v16i8(<16 x i8> %lhs, <16 x i8> %rhs)
  %aba = add <16 x i8> %lhs, %abd

  ret <16 x i8> %aba
}

declare <4 x i16> @llvm.aarch64.neon.uabd.v4i16(<4 x i16>, <4 x i16>)
declare <4 x i16> @llvm.aarch64.neon.sabd.v4i16(<4 x i16>, <4 x i16>)

define <4 x i16> @test_uabd_v4i16(<4 x i16> %lhs, <4 x i16> %rhs) {

  %abd = call <4 x i16> @llvm.aarch64.neon.uabd.v4i16(<4 x i16> %lhs, <4 x i16> %rhs)

  ret <4 x i16> %abd
}

define <4 x i16> @test_uaba_v4i16(<4 x i16> %lhs, <4 x i16> %rhs) {

  %abd = call <4 x i16> @llvm.aarch64.neon.uabd.v4i16(<4 x i16> %lhs, <4 x i16> %rhs)
  %aba = add <4 x i16> %lhs, %abd

  ret <4 x i16> %aba
}

define <4 x i16> @test_sabd_v4i16(<4 x i16> %lhs, <4 x i16> %rhs) {

  %abd = call <4 x i16> @llvm.aarch64.neon.sabd.v4i16(<4 x i16> %lhs, <4 x i16> %rhs)

  ret <4 x i16> %abd
}

define <4 x i16> @test_saba_v4i16(<4 x i16> %lhs, <4 x i16> %rhs) {

  %abd = call <4 x i16> @llvm.aarch64.neon.sabd.v4i16(<4 x i16> %lhs, <4 x i16> %rhs)
  %aba = add <4 x i16> %lhs, %abd

  ret <4 x i16> %aba
}

declare <8 x i16> @llvm.aarch64.neon.uabd.v8i16(<8 x i16>, <8 x i16>)
declare <8 x i16> @llvm.aarch64.neon.sabd.v8i16(<8 x i16>, <8 x i16>)

define <8 x i16> @test_uabd_v8i16(<8 x i16> %lhs, <8 x i16> %rhs) {

  %abd = call <8 x i16> @llvm.aarch64.neon.uabd.v8i16(<8 x i16> %lhs, <8 x i16> %rhs)

  ret <8 x i16> %abd
}

define <8 x i16> @test_uaba_v8i16(<8 x i16> %lhs, <8 x i16> %rhs) {

  %abd = call <8 x i16> @llvm.aarch64.neon.uabd.v8i16(<8 x i16> %lhs, <8 x i16> %rhs)
  %aba = add <8 x i16> %lhs, %abd

  ret <8 x i16> %aba
}

define <8 x i16> @test_sabd_v8i16(<8 x i16> %lhs, <8 x i16> %rhs) {

  %abd = call <8 x i16> @llvm.aarch64.neon.sabd.v8i16(<8 x i16> %lhs, <8 x i16> %rhs)

  ret <8 x i16> %abd
}

define <8 x i16> @test_saba_v8i16(<8 x i16> %lhs, <8 x i16> %rhs) {

  %abd = call <8 x i16> @llvm.aarch64.neon.sabd.v8i16(<8 x i16> %lhs, <8 x i16> %rhs)
  %aba = add <8 x i16> %lhs, %abd

  ret <8 x i16> %aba
}

declare <2 x i32> @llvm.aarch64.neon.uabd.v2i32(<2 x i32>, <2 x i32>)
declare <2 x i32> @llvm.aarch64.neon.sabd.v2i32(<2 x i32>, <2 x i32>)

define <2 x i32> @test_uabd_v2i32(<2 x i32> %lhs, <2 x i32> %rhs) {

  %abd = call <2 x i32> @llvm.aarch64.neon.uabd.v2i32(<2 x i32> %lhs, <2 x i32> %rhs)

  ret <2 x i32> %abd
}

define <2 x i32> @test_uaba_v2i32(<2 x i32> %lhs, <2 x i32> %rhs) {

  %abd = call <2 x i32> @llvm.aarch64.neon.uabd.v2i32(<2 x i32> %lhs, <2 x i32> %rhs)
  %aba = add <2 x i32> %lhs, %abd

  ret <2 x i32> %aba
}

define <2 x i32> @test_sabd_v2i32(<2 x i32> %lhs, <2 x i32> %rhs) {

  %abd = call <2 x i32> @llvm.aarch64.neon.sabd.v2i32(<2 x i32> %lhs, <2 x i32> %rhs)

  ret <2 x i32> %abd
}

define <2 x i32> @test_sabd_v2i32_const() {



  %1 = tail call <2 x i32> @llvm.aarch64.neon.sabd.v2i32(
    <2 x i32> <i32 -2147483648, i32 2147450880>,
    <2 x i32> <i32 -65536, i32 65535>)
  ret <2 x i32> %1
}

define <2 x i32> @test_saba_v2i32(<2 x i32> %lhs, <2 x i32> %rhs) {

  %abd = call <2 x i32> @llvm.aarch64.neon.sabd.v2i32(<2 x i32> %lhs, <2 x i32> %rhs)
  %aba = add <2 x i32> %lhs, %abd

  ret <2 x i32> %aba
}

declare <4 x i32> @llvm.aarch64.neon.uabd.v4i32(<4 x i32>, <4 x i32>)
declare <4 x i32> @llvm.aarch64.neon.sabd.v4i32(<4 x i32>, <4 x i32>)

define <4 x i32> @test_uabd_v4i32(<4 x i32> %lhs, <4 x i32> %rhs) {

  %abd = call <4 x i32> @llvm.aarch64.neon.uabd.v4i32(<4 x i32> %lhs, <4 x i32> %rhs)

  ret <4 x i32> %abd
}

define <4 x i32> @test_uaba_v4i32(<4 x i32> %lhs, <4 x i32> %rhs) {

  %abd = call <4 x i32> @llvm.aarch64.neon.uabd.v4i32(<4 x i32> %lhs, <4 x i32> %rhs)
  %aba = add <4 x i32> %lhs, %abd

  ret <4 x i32> %aba
}

define <4 x i32> @test_sabd_v4i32(<4 x i32> %lhs, <4 x i32> %rhs) {

  %abd = call <4 x i32> @llvm.aarch64.neon.sabd.v4i32(<4 x i32> %lhs, <4 x i32> %rhs)

  ret <4 x i32> %abd
}

define <4 x i32> @test_saba_v4i32(<4 x i32> %lhs, <4 x i32> %rhs) {

  %abd = call <4 x i32> @llvm.aarch64.neon.sabd.v4i32(<4 x i32> %lhs, <4 x i32> %rhs)
  %aba = add <4 x i32> %lhs, %abd

  ret <4 x i32> %aba
}

declare <2 x float> @llvm.aarch64.neon.fabd.v2f32(<2 x float>, <2 x float>)

define <2 x float> @test_fabd_v2f32(<2 x float> %lhs, <2 x float> %rhs) {

  %abd = call <2 x float> @llvm.aarch64.neon.fabd.v2f32(<2 x float> %lhs, <2 x float> %rhs)

  ret <2 x float> %abd
}

declare <4 x float> @llvm.aarch64.neon.fabd.v4f32(<4 x float>, <4 x float>)

define <4 x float> @test_fabd_v4f32(<4 x float> %lhs, <4 x float> %rhs) {

  %abd = call <4 x float> @llvm.aarch64.neon.fabd.v4f32(<4 x float> %lhs, <4 x float> %rhs)

  ret <4 x float> %abd
}

declare <2 x double> @llvm.aarch64.neon.fabd.v2f64(<2 x double>, <2 x double>)

define <2 x double> @test_fabd_v2f64(<2 x double> %lhs, <2 x double> %rhs) {

  %abd = call <2 x double> @llvm.aarch64.neon.fabd.v2f64(<2 x double> %lhs, <2 x double> %rhs)

  ret <2 x double> %abd
}
