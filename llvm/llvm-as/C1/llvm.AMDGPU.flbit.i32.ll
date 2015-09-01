


declare i32 @llvm.AMDGPU.flbit.i32(i32) nounwind readnone







define void @s_flbit(i32 addrspace(1)* noalias %out, i32 %val) nounwind {
  %r = call i32 @llvm.AMDGPU.flbit.i32(i32 %val) nounwind readnone
  store i32 %r, i32 addrspace(1)* %out, align 4
  ret void
}






define void @v_flbit(i32 addrspace(1)* noalias %out, i32 addrspace(1)* noalias %valptr) nounwind {
  %val = load i32, i32 addrspace(1)* %valptr, align 4
  %r = call i32 @llvm.AMDGPU.flbit.i32(i32 %val) nounwind readnone
  store i32 %r, i32 addrspace(1)* %out, align 4
  ret void
}
