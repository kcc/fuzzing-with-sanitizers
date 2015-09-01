


declare i32 @llvm.AMDGPU.brev(i32) nounwind readnone







define void @s_brev_i32(i32 addrspace(1)* noalias %out, i32 %val) nounwind {
  %ctlz = call i32 @llvm.AMDGPU.brev(i32 %val) nounwind readnone
  store i32 %ctlz, i32 addrspace(1)* %out, align 4
  ret void
}






define void @v_brev_i32(i32 addrspace(1)* noalias %out, i32 addrspace(1)* noalias %valptr) nounwind {
  %val = load i32, i32 addrspace(1)* %valptr, align 4
  %ctlz = call i32 @llvm.AMDGPU.brev(i32 %val) nounwind readnone
  store i32 %ctlz, i32 addrspace(1)* %out, align 4
  ret void
}
