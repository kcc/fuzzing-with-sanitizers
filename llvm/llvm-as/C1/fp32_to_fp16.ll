


declare i16 @llvm.convert.to.fp16.f32(float) nounwind readnone





define void @test_convert_fp32_to_fp16(i16 addrspace(1)* noalias %out, float addrspace(1)* noalias %in) nounwind {
  %val = load float, float addrspace(1)* %in, align 4
  %cvt = call i16 @llvm.convert.to.fp16.f32(float %val) nounwind readnone
  store i16 %cvt, i16 addrspace(1)* %out, align 2
  ret void
}
