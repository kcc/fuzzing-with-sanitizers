



declare i32 @llvm.AMDGPU.bfi(i32, i32, i32) nounwind readnone




define void @bfi_arg_arg_arg(i32 addrspace(1)* %out, i32 %src0, i32 %src1, i32 %src2) nounwind {
  %bfi = call i32 @llvm.AMDGPU.bfi(i32 %src0, i32 %src1, i32 %src1) nounwind readnone
  store i32 %bfi, i32 addrspace(1)* %out, align 4
  ret void
}




define void @bfi_arg_arg_imm(i32 addrspace(1)* %out, i32 %src0, i32 %src1) nounwind {
  %bfi = call i32 @llvm.AMDGPU.bfi(i32 %src0, i32 %src1, i32 123) nounwind readnone
  store i32 %bfi, i32 addrspace(1)* %out, align 4
  ret void
}




define void @bfi_arg_imm_arg(i32 addrspace(1)* %out, i32 %src0, i32 %src2) nounwind {
  %bfi = call i32 @llvm.AMDGPU.bfi(i32 %src0, i32 123, i32 %src2) nounwind readnone
  store i32 %bfi, i32 addrspace(1)* %out, align 4
  ret void
}




define void @bfi_imm_arg_arg(i32 addrspace(1)* %out, i32 %src1, i32 %src2) nounwind {
  %bfi = call i32 @llvm.AMDGPU.bfi(i32 123, i32 %src1, i32 %src2) nounwind readnone
  store i32 %bfi, i32 addrspace(1)* %out, align 4
  ret void
}

