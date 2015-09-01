

define signext i8 @test_vaddv_s8(<8 x i8> %a1) {




entry:
  %vaddv.i = tail call i32 @llvm.aarch64.neon.saddv.i32.v8i8(<8 x i8> %a1)
  %0 = trunc i32 %vaddv.i to i8
  ret i8 %0
}

define <8 x i8> @test_vaddv_s8_used_by_laneop(<8 x i8> %a1, <8 x i8> %a2) {




entry:
  %0 = tail call i32 @llvm.aarch64.neon.saddv.i32.v8i8(<8 x i8> %a2)
  %1 = trunc i32 %0 to i8
  %2 = insertelement <8 x i8> %a1, i8 %1, i32 3
  ret <8 x i8> %2
}

define signext i16 @test_vaddv_s16(<4 x i16> %a1) {




entry:
  %vaddv.i = tail call i32 @llvm.aarch64.neon.saddv.i32.v4i16(<4 x i16> %a1)
  %0 = trunc i32 %vaddv.i to i16
  ret i16 %0
}

define <4 x i16> @test_vaddv_s16_used_by_laneop(<4 x i16> %a1, <4 x i16> %a2) {




entry:
  %0 = tail call i32 @llvm.aarch64.neon.saddv.i32.v4i16(<4 x i16> %a2)
  %1 = trunc i32 %0 to i16
  %2 = insertelement <4 x i16> %a1, i16 %1, i32 3
  ret <4 x i16> %2
}

define i32 @test_vaddv_s32(<2 x i32> %a1) {





entry:
  %vaddv.i = tail call i32 @llvm.aarch64.neon.saddv.i32.v2i32(<2 x i32> %a1)
  ret i32 %vaddv.i
}

define <2 x i32> @test_vaddv_s32_used_by_laneop(<2 x i32> %a1, <2 x i32> %a2) {




entry:
  %0 = tail call i32 @llvm.aarch64.neon.saddv.i32.v2i32(<2 x i32> %a2)
  %1 = insertelement <2 x i32> %a1, i32 %0, i32 1
  ret <2 x i32> %1
}

define i64 @test_vaddv_s64(<2 x i64> %a1) {




entry:
  %vaddv.i = tail call i64 @llvm.aarch64.neon.saddv.i64.v2i64(<2 x i64> %a1)
  ret i64 %vaddv.i
}

define <2 x i64> @test_vaddv_s64_used_by_laneop(<2 x i64> %a1, <2 x i64> %a2) {




entry:
  %0 = tail call i64 @llvm.aarch64.neon.saddv.i64.v2i64(<2 x i64> %a2)
  %1 = insertelement <2 x i64> %a1, i64 %0, i64 1
  ret <2 x i64> %1
}

define zeroext i8 @test_vaddv_u8(<8 x i8> %a1) {




entry:
  %vaddv.i = tail call i32 @llvm.aarch64.neon.uaddv.i32.v8i8(<8 x i8> %a1)
  %0 = trunc i32 %vaddv.i to i8
  ret i8 %0
}

define <8 x i8> @test_vaddv_u8_used_by_laneop(<8 x i8> %a1, <8 x i8> %a2) {




entry:
  %0 = tail call i32 @llvm.aarch64.neon.uaddv.i32.v8i8(<8 x i8> %a2)
  %1 = trunc i32 %0 to i8
  %2 = insertelement <8 x i8> %a1, i8 %1, i32 3
  ret <8 x i8> %2
}

define i32 @test_vaddv_u8_masked(<8 x i8> %a1) {




entry:
  %vaddv.i = tail call i32 @llvm.aarch64.neon.uaddv.i32.v8i8(<8 x i8> %a1)
  %0 = and i32 %vaddv.i, 511 
  ret i32 %0
}

define zeroext i16 @test_vaddv_u16(<4 x i16> %a1) {




entry:
  %vaddv.i = tail call i32 @llvm.aarch64.neon.uaddv.i32.v4i16(<4 x i16> %a1)
  %0 = trunc i32 %vaddv.i to i16
  ret i16 %0
}

define <4 x i16> @test_vaddv_u16_used_by_laneop(<4 x i16> %a1, <4 x i16> %a2) {




entry:
  %0 = tail call i32 @llvm.aarch64.neon.uaddv.i32.v4i16(<4 x i16> %a2)
  %1 = trunc i32 %0 to i16
  %2 = insertelement <4 x i16> %a1, i16 %1, i32 3
  ret <4 x i16> %2
}

define i32 @test_vaddv_u16_masked(<4 x i16> %a1) {




entry:
  %vaddv.i = tail call i32 @llvm.aarch64.neon.uaddv.i32.v4i16(<4 x i16> %a1)
  %0 = and i32 %vaddv.i, 3276799 
  ret i32 %0
}

define i32 @test_vaddv_u32(<2 x i32> %a1) {





entry:
  %vaddv.i = tail call i32 @llvm.aarch64.neon.uaddv.i32.v2i32(<2 x i32> %a1)
  ret i32 %vaddv.i
}

define <2 x i32> @test_vaddv_u32_used_by_laneop(<2 x i32> %a1, <2 x i32> %a2) {




entry:
  %0 = tail call i32 @llvm.aarch64.neon.uaddv.i32.v2i32(<2 x i32> %a2)
  %1 = insertelement <2 x i32> %a1, i32 %0, i32 1
  ret <2 x i32> %1
}

define float @test_vaddv_f32(<2 x float> %a1) {



entry:
  %vaddv.i = tail call float @llvm.aarch64.neon.faddv.f32.v2f32(<2 x float> %a1)
  ret float %vaddv.i
}

define float @test_vaddv_v4f32(<4 x float> %a1) {




entry:
  %vaddv.i = tail call float @llvm.aarch64.neon.faddv.f32.v4f32(<4 x float> %a1)
  ret float %vaddv.i
}

define double @test_vaddv_f64(<2 x double> %a1) {



entry:
  %vaddv.i = tail call double @llvm.aarch64.neon.faddv.f64.v2f64(<2 x double> %a1)
  ret double %vaddv.i
}

define i64 @test_vaddv_u64(<2 x i64> %a1) {




entry:
  %vaddv.i = tail call i64 @llvm.aarch64.neon.uaddv.i64.v2i64(<2 x i64> %a1)
  ret i64 %vaddv.i
}

define <2 x i64> @test_vaddv_u64_used_by_laneop(<2 x i64> %a1, <2 x i64> %a2) {




entry:
  %0 = tail call i64 @llvm.aarch64.neon.uaddv.i64.v2i64(<2 x i64> %a2)
  %1 = insertelement <2 x i64> %a1, i64 %0, i64 1
  ret <2 x i64> %1
}

define <1 x i64> @test_vaddv_u64_to_vec(<2 x i64> %a1) {





entry:
  %vaddv.i = tail call i64 @llvm.aarch64.neon.uaddv.i64.v2i64(<2 x i64> %a1)
  %vec = insertelement <1 x i64> undef, i64 %vaddv.i, i32 0
  ret <1 x i64> %vec
}

define signext i8 @test_vaddvq_s8(<16 x i8> %a1) {




entry:
  %vaddv.i = tail call i32 @llvm.aarch64.neon.saddv.i32.v16i8(<16 x i8> %a1)
  %0 = trunc i32 %vaddv.i to i8
  ret i8 %0
}

define <16 x i8> @test_vaddvq_s8_used_by_laneop(<16 x i8> %a1, <16 x i8> %a2) {




entry:
  %0 = tail call i32 @llvm.aarch64.neon.saddv.i32.v16i8(<16 x i8> %a2)
  %1 = trunc i32 %0 to i8
  %2 = insertelement <16 x i8> %a1, i8 %1, i32 3
  ret <16 x i8> %2
}

define signext i16 @test_vaddvq_s16(<8 x i16> %a1) {




entry:
  %vaddv.i = tail call i32 @llvm.aarch64.neon.saddv.i32.v8i16(<8 x i16> %a1)
  %0 = trunc i32 %vaddv.i to i16
  ret i16 %0
}

define <8 x i16> @test_vaddvq_s16_used_by_laneop(<8 x i16> %a1, <8 x i16> %a2) {




entry:
  %0 = tail call i32 @llvm.aarch64.neon.saddv.i32.v8i16(<8 x i16> %a2)
  %1 = trunc i32 %0 to i16
  %2 = insertelement <8 x i16> %a1, i16 %1, i32 3
  ret <8 x i16> %2
}

define i32 @test_vaddvq_s32(<4 x i32> %a1) {




entry:
  %vaddv.i = tail call i32 @llvm.aarch64.neon.saddv.i32.v4i32(<4 x i32> %a1)
  ret i32 %vaddv.i
}

define <4 x i32> @test_vaddvq_s32_used_by_laneop(<4 x i32> %a1, <4 x i32> %a2) {




entry:
  %0 = tail call i32 @llvm.aarch64.neon.saddv.i32.v4i32(<4 x i32> %a2)
  %1 = insertelement <4 x i32> %a1, i32 %0, i32 3
  ret <4 x i32> %1
}

define zeroext i8 @test_vaddvq_u8(<16 x i8> %a1) {




entry:
  %vaddv.i = tail call i32 @llvm.aarch64.neon.uaddv.i32.v16i8(<16 x i8> %a1)
  %0 = trunc i32 %vaddv.i to i8
  ret i8 %0
}

define <16 x i8> @test_vaddvq_u8_used_by_laneop(<16 x i8> %a1, <16 x i8> %a2) {




entry:
  %0 = tail call i32 @llvm.aarch64.neon.uaddv.i32.v16i8(<16 x i8> %a2)
  %1 = trunc i32 %0 to i8
  %2 = insertelement <16 x i8> %a1, i8 %1, i32 3
  ret <16 x i8> %2
}

define zeroext i16 @test_vaddvq_u16(<8 x i16> %a1) {




entry:
  %vaddv.i = tail call i32 @llvm.aarch64.neon.uaddv.i32.v8i16(<8 x i16> %a1)
  %0 = trunc i32 %vaddv.i to i16
  ret i16 %0
}

define <8 x i16> @test_vaddvq_u16_used_by_laneop(<8 x i16> %a1, <8 x i16> %a2) {




entry:
  %0 = tail call i32 @llvm.aarch64.neon.uaddv.i32.v8i16(<8 x i16> %a2)
  %1 = trunc i32 %0 to i16
  %2 = insertelement <8 x i16> %a1, i16 %1, i32 3
  ret <8 x i16> %2
}

define i32 @test_vaddvq_u32(<4 x i32> %a1) {




entry:
  %vaddv.i = tail call i32 @llvm.aarch64.neon.uaddv.i32.v4i32(<4 x i32> %a1)
  ret i32 %vaddv.i
}

define <4 x i32> @test_vaddvq_u32_used_by_laneop(<4 x i32> %a1, <4 x i32> %a2) {




entry:
  %0 = tail call i32 @llvm.aarch64.neon.uaddv.i32.v4i32(<4 x i32> %a2)
  %1 = insertelement <4 x i32> %a1, i32 %0, i32 3
  ret <4 x i32> %1
}

declare i32 @llvm.aarch64.neon.uaddv.i32.v4i32(<4 x i32>)

declare i32 @llvm.aarch64.neon.uaddv.i32.v8i16(<8 x i16>)

declare i32 @llvm.aarch64.neon.uaddv.i32.v16i8(<16 x i8>)

declare i32 @llvm.aarch64.neon.saddv.i32.v4i32(<4 x i32>)

declare i32 @llvm.aarch64.neon.saddv.i32.v8i16(<8 x i16>)

declare i32 @llvm.aarch64.neon.saddv.i32.v16i8(<16 x i8>)

declare i64 @llvm.aarch64.neon.uaddv.i64.v2i64(<2 x i64>)

declare i32 @llvm.aarch64.neon.uaddv.i32.v2i32(<2 x i32>)

declare i32 @llvm.aarch64.neon.uaddv.i32.v4i16(<4 x i16>)

declare i32 @llvm.aarch64.neon.uaddv.i32.v8i8(<8 x i8>)

declare i32 @llvm.aarch64.neon.saddv.i32.v2i32(<2 x i32>)

declare i64 @llvm.aarch64.neon.saddv.i64.v2i64(<2 x i64>)

declare i32 @llvm.aarch64.neon.saddv.i32.v4i16(<4 x i16>)

declare i32 @llvm.aarch64.neon.saddv.i32.v8i8(<8 x i8>)

declare float @llvm.aarch64.neon.faddv.f32.v2f32(<2 x float> %a1)
declare float @llvm.aarch64.neon.faddv.f32.v4f32(<4 x float> %a1)
declare double @llvm.aarch64.neon.faddv.f64.v2f64(<2 x double> %a1)
