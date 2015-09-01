


declare float @llvm.convert.from.fp16.f32(i16) nounwind readnone
declare double @llvm.convert.from.fp16.f64(i16) nounwind readnone





define void @test_convert_fp16_to_fp32(float addrspace(1)* noalias %out, i16 addrspace(1)* noalias %in) nounwind {
  %val = load i16, i16 addrspace(1)* %in, align 2
  %cvt = call float @llvm.convert.from.fp16.f32(i16 %val) nounwind readnone
  store float %cvt, float addrspace(1)* %out, align 4
  ret void
}







define void @test_convert_fp16_to_fp64(double addrspace(1)* noalias %out, i16 addrspace(1)* noalias %in) nounwind {
  %val = load i16, i16 addrspace(1)* %in, align 2
  %cvt = call double @llvm.convert.from.fp16.f64(i16 %val) nounwind readnone
  store double %cvt, double addrspace(1)* %out, align 4
  ret void
}
