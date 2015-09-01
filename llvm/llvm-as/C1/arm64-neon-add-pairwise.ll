

declare <8 x i8> @llvm.aarch64.neon.addp.v8i8(<8 x i8>, <8 x i8>)

define <8 x i8> @test_addp_v8i8(<8 x i8> %lhs, <8 x i8> %rhs) {


  %tmp1 = call <8 x i8> @llvm.aarch64.neon.addp.v8i8(<8 x i8> %lhs, <8 x i8> %rhs)

  ret <8 x i8> %tmp1
}

declare <16 x i8> @llvm.aarch64.neon.addp.v16i8(<16 x i8>, <16 x i8>)

define <16 x i8> @test_addp_v16i8(<16 x i8> %lhs, <16 x i8> %rhs) {

  %tmp1 = call <16 x i8> @llvm.aarch64.neon.addp.v16i8(<16 x i8> %lhs, <16 x i8> %rhs)

  ret <16 x i8> %tmp1
}

declare <4 x i16> @llvm.aarch64.neon.addp.v4i16(<4 x i16>, <4 x i16>)

define <4 x i16> @test_addp_v4i16(<4 x i16> %lhs, <4 x i16> %rhs) {

  %tmp1 = call <4 x i16> @llvm.aarch64.neon.addp.v4i16(<4 x i16> %lhs, <4 x i16> %rhs)

  ret <4 x i16> %tmp1
}

declare <8 x i16> @llvm.aarch64.neon.addp.v8i16(<8 x i16>, <8 x i16>)

define <8 x i16> @test_addp_v8i16(<8 x i16> %lhs, <8 x i16> %rhs) {

  %tmp1 = call <8 x i16> @llvm.aarch64.neon.addp.v8i16(<8 x i16> %lhs, <8 x i16> %rhs)

  ret <8 x i16> %tmp1
}

declare <2 x i32> @llvm.aarch64.neon.addp.v2i32(<2 x i32>, <2 x i32>)

define <2 x i32> @test_addp_v2i32(<2 x i32> %lhs, <2 x i32> %rhs) {

  %tmp1 = call <2 x i32> @llvm.aarch64.neon.addp.v2i32(<2 x i32> %lhs, <2 x i32> %rhs)

  ret <2 x i32> %tmp1
}

declare <4 x i32> @llvm.aarch64.neon.addp.v4i32(<4 x i32>, <4 x i32>)

define <4 x i32> @test_addp_v4i32(<4 x i32> %lhs, <4 x i32> %rhs) {

  %tmp1 = call <4 x i32> @llvm.aarch64.neon.addp.v4i32(<4 x i32> %lhs, <4 x i32> %rhs)

  ret <4 x i32> %tmp1
}


declare <2 x i64> @llvm.aarch64.neon.addp.v2i64(<2 x i64>, <2 x i64>)

define <2 x i64> @test_addp_v2i64(<2 x i64> %lhs, <2 x i64> %rhs) {

        %val = call <2 x i64> @llvm.aarch64.neon.addp.v2i64(<2 x i64> %lhs, <2 x i64> %rhs)

        ret <2 x i64> %val
}

declare <2 x float> @llvm.aarch64.neon.addp.v2f32(<2 x float>, <2 x float>)
declare <4 x float> @llvm.aarch64.neon.addp.v4f32(<4 x float>, <4 x float>)
declare <2 x double> @llvm.aarch64.neon.addp.v2f64(<2 x double>, <2 x double>)

define <2 x float> @test_faddp_v2f32(<2 x float> %lhs, <2 x float> %rhs) {

        %val = call <2 x float> @llvm.aarch64.neon.addp.v2f32(<2 x float> %lhs, <2 x float> %rhs)

        ret <2 x float> %val
}

define <4 x float> @test_faddp_v4f32(<4 x float> %lhs, <4 x float> %rhs) {

        %val = call <4 x float> @llvm.aarch64.neon.addp.v4f32(<4 x float> %lhs, <4 x float> %rhs)

        ret <4 x float> %val
}

define <2 x double> @test_faddp_v2f64(<2 x double> %lhs, <2 x double> %rhs) {

        %val = call <2 x double> @llvm.aarch64.neon.addp.v2f64(<2 x double> %lhs, <2 x double> %rhs)

        ret <2 x double> %val
}

define i32 @test_vaddv.v2i32(<2 x i32> %a) {


  %1 = tail call i32 @llvm.aarch64.neon.saddv.i32.v2i32(<2 x i32> %a)
  ret i32 %1
}

declare i32 @llvm.aarch64.neon.saddv.i32.v2i32(<2 x i32>)
