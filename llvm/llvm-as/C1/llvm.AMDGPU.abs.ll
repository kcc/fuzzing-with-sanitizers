



declare i32 @llvm.AMDGPU.abs(i32) nounwind readnone


declare i32 @llvm.AMDIL.abs.i32(i32) nounwind readnone








define void @s_abs_i32(i32 addrspace(1)* %out, i32 %src) nounwind {
  %abs = call i32 @llvm.AMDGPU.abs(i32 %src) nounwind readnone
  store i32 %abs, i32 addrspace(1)* %out, align 4
  ret void
}








define void @v_abs_i32(i32 addrspace(1)* %out, i32 addrspace(1)* %src) nounwind {
  %val = load i32, i32 addrspace(1)* %src, align 4
  %abs = call i32 @llvm.AMDGPU.abs(i32 %val) nounwind readnone
  store i32 %abs, i32 addrspace(1)* %out, align 4
  ret void
}








define void @abs_i32_legacy_amdil(i32 addrspace(1)* %out, i32 addrspace(1)* %src) nounwind {
  %val = load i32, i32 addrspace(1)* %src, align 4
  %abs = call i32 @llvm.AMDIL.abs.i32(i32 %val) nounwind readnone
  store i32 %abs, i32 addrspace(1)* %out, align 4
  ret void
}
