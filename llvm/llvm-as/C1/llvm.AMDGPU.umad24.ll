





declare i32 @llvm.AMDGPU.umad24(i32, i32, i32) nounwind readnone
declare i32 @llvm.r600.read.tidig.x() nounwind readnone






define void @test_umad24(i32 addrspace(1)* %out, i32 %src0, i32 %src1, i32 %src2) nounwind {
  %mad = call i32 @llvm.AMDGPU.umad24(i32 %src0, i32 %src1, i32 %src2) nounwind readnone
  store i32 %mad, i32 addrspace(1)* %out, align 4
  ret void
}






define void @commute_umad24(i32 addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %tid = call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %out.gep = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %src0.gep = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %src2.gep = getelementptr i32, i32 addrspace(1)* %src0.gep, i32 1

  %src0 = load i32, i32 addrspace(1)* %src0.gep, align 4
  %src2 = load i32, i32 addrspace(1)* %src2.gep, align 4
  %mad = call i32 @llvm.AMDGPU.umad24(i32 %src0, i32 4, i32 %src2) nounwind readnone
  store i32 %mad, i32 addrspace(1)* %out.gep, align 4
  ret void
}

