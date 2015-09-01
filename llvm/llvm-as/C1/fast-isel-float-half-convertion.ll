



define i16 @test_fp32_to_fp16(float %a) {




entry:
  %0 = call i16 @llvm.convert.to.fp16.f32(float %a)
  ret i16 %0
}

define float @test_fp16_to_fp32(i32 %a) {





entry:
  %0 = trunc i32 %a to i16
  %1 = call float @llvm.convert.from.fp16.f32(i16 %0)
  ret float %1
}

declare i16 @llvm.convert.to.fp16.f32(float)
declare float @llvm.convert.from.fp16.f32(i16)
