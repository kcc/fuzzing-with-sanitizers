






declare i32 @llvm.AMDGPU.umul24(i32, i32) nounwind readnone





define void @test_umul24(i32 addrspace(1)* %out, i32 %src0, i32 %src1) nounwind {
  %mul = call i32 @llvm.AMDGPU.umul24(i32 %src0, i32 %src1) nounwind readnone
  store i32 %mul, i32 addrspace(1)* %out, align 4
  ret void
}
