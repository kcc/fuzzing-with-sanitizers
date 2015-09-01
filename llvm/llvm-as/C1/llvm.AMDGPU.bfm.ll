



declare i32 @llvm.AMDGPU.bfm(i32, i32) nounwind readnone




define void @bfm_arg_arg(i32 addrspace(1)* %out, i32 %src0, i32 %src1) nounwind {
  %bfm = call i32 @llvm.AMDGPU.bfm(i32 %src0, i32 %src1) nounwind readnone
  store i32 %bfm, i32 addrspace(1)* %out, align 4
  ret void
}




define void @bfm_arg_imm(i32 addrspace(1)* %out, i32 %src0) nounwind {
  %bfm = call i32 @llvm.AMDGPU.bfm(i32 %src0, i32 123) nounwind readnone
  store i32 %bfm, i32 addrspace(1)* %out, align 4
  ret void
}




define void @bfm_imm_arg(i32 addrspace(1)* %out, i32 %src1) nounwind {
  %bfm = call i32 @llvm.AMDGPU.bfm(i32 123, i32 %src1) nounwind readnone
  store i32 %bfm, i32 addrspace(1)* %out, align 4
  ret void
}




define void @bfm_imm_imm(i32 addrspace(1)* %out) nounwind {
  %bfm = call i32 @llvm.AMDGPU.bfm(i32 123, i32 456) nounwind readnone
  store i32 %bfm, i32 addrspace(1)* %out, align 4
  ret void
}



define void @bfm_pattern(i32 addrspace(1)* %out, i32 %x, i32 %y) {
  %a = shl i32 1, %x
  %b = sub i32 %a, 1
  %c = shl i32 %b, %y
  store i32 %c, i32 addrspace(1)* %out
  ret void
}



define void @bfm_pattern_simple(i32 addrspace(1)* %out, i32 %x) {
  %a = shl i32 1, %x
  %b = sub i32 %a, 1
  store i32 %b, i32 addrspace(1)* %out
  ret void
}
