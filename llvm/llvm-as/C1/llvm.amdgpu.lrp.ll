


declare float @llvm.AMDGPU.lrp(float, float, float) nounwind readnone




define void @test_lrp(float addrspace(1)* %out, float %src0, float %src1, float %src2) nounwind {
  %mad = call float @llvm.AMDGPU.lrp(float %src0, float %src1, float %src2) nounwind readnone
  store float %mad, float addrspace(1)* %out, align 4
  ret void
}
