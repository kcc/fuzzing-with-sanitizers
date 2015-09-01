



declare i32 @llvm.AMDGPU.bfe.i32(i32, i32, i32) nounwind readnone





define void @bfe_i32_arg_arg_arg(i32 addrspace(1)* %out, i32 %src0, i32 %src1, i32 %src2) nounwind {
  %bfe_i32 = call i32 @llvm.AMDGPU.bfe.i32(i32 %src0, i32 %src1, i32 %src1) nounwind readnone
  store i32 %bfe_i32, i32 addrspace(1)* %out, align 4
  ret void
}




define void @bfe_i32_arg_arg_imm(i32 addrspace(1)* %out, i32 %src0, i32 %src1) nounwind {
  %bfe_i32 = call i32 @llvm.AMDGPU.bfe.i32(i32 %src0, i32 %src1, i32 123) nounwind readnone
  store i32 %bfe_i32, i32 addrspace(1)* %out, align 4
  ret void
}




define void @bfe_i32_arg_imm_arg(i32 addrspace(1)* %out, i32 %src0, i32 %src2) nounwind {
  %bfe_i32 = call i32 @llvm.AMDGPU.bfe.i32(i32 %src0, i32 123, i32 %src2) nounwind readnone
  store i32 %bfe_i32, i32 addrspace(1)* %out, align 4
  ret void
}




define void @bfe_i32_imm_arg_arg(i32 addrspace(1)* %out, i32 %src1, i32 %src2) nounwind {
  %bfe_i32 = call i32 @llvm.AMDGPU.bfe.i32(i32 123, i32 %src1, i32 %src2) nounwind readnone
  store i32 %bfe_i32, i32 addrspace(1)* %out, align 4
  ret void
}



define void @v_bfe_print_arg(i32 addrspace(1)* %out, i32 addrspace(1)* %src0) nounwind {
  %load = load i32, i32 addrspace(1)* %src0, align 4
  %bfe_i32 = call i32 @llvm.AMDGPU.bfe.i32(i32 %load, i32 2, i32 8) nounwind readnone
  store i32 %bfe_i32, i32 addrspace(1)* %out, align 4
  ret void
}





define void @bfe_i32_arg_0_width_reg_offset(i32 addrspace(1)* %out, i32 %src0, i32 %src1) nounwind {
  %bfe_u32 = call i32 @llvm.AMDGPU.bfe.i32(i32 %src0, i32 %src1, i32 0) nounwind readnone
  store i32 %bfe_u32, i32 addrspace(1)* %out, align 4
  ret void
}





define void @bfe_i32_arg_0_width_imm_offset(i32 addrspace(1)* %out, i32 %src0, i32 %src1) nounwind {
  %bfe_u32 = call i32 @llvm.AMDGPU.bfe.i32(i32 %src0, i32 8, i32 0) nounwind readnone
  store i32 %bfe_u32, i32 addrspace(1)* %out, align 4
  ret void
}





define void @bfe_i32_test_6(i32 addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %x = load i32, i32 addrspace(1)* %in, align 4
  %shl = shl i32 %x, 31
  %bfe = call i32 @llvm.AMDGPU.bfe.i32(i32 %shl, i32 1, i32 31)
  store i32 %bfe, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_i32_test_7(i32 addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %x = load i32, i32 addrspace(1)* %in, align 4
  %shl = shl i32 %x, 31
  %bfe = call i32 @llvm.AMDGPU.bfe.i32(i32 %shl, i32 0, i32 31)
  store i32 %bfe, i32 addrspace(1)* %out, align 4
  ret void
}





define void @bfe_i32_test_8(i32 addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %x = load i32, i32 addrspace(1)* %in, align 4
  %shl = shl i32 %x, 31
  %bfe = call i32 @llvm.AMDGPU.bfe.i32(i32 %shl, i32 31, i32 1)
  store i32 %bfe, i32 addrspace(1)* %out, align 4
  ret void
}






define void @bfe_i32_test_9(i32 addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %x = load i32, i32 addrspace(1)* %in, align 4
  %bfe = call i32 @llvm.AMDGPU.bfe.i32(i32 %x, i32 31, i32 1)
  store i32 %bfe, i32 addrspace(1)* %out, align 4
  ret void
}






define void @bfe_i32_test_10(i32 addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %x = load i32, i32 addrspace(1)* %in, align 4
  %bfe = call i32 @llvm.AMDGPU.bfe.i32(i32 %x, i32 1, i32 31)
  store i32 %bfe, i32 addrspace(1)* %out, align 4
  ret void
}






define void @bfe_i32_test_11(i32 addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %x = load i32, i32 addrspace(1)* %in, align 4
  %bfe = call i32 @llvm.AMDGPU.bfe.i32(i32 %x, i32 8, i32 24)
  store i32 %bfe, i32 addrspace(1)* %out, align 4
  ret void
}






define void @bfe_i32_test_12(i32 addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %x = load i32, i32 addrspace(1)* %in, align 4
  %bfe = call i32 @llvm.AMDGPU.bfe.i32(i32 %x, i32 24, i32 8)
  store i32 %bfe, i32 addrspace(1)* %out, align 4
  ret void
}





define void @bfe_i32_test_13(i32 addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %x = load i32, i32 addrspace(1)* %in, align 4
  %shl = ashr i32 %x, 31
  %bfe = call i32 @llvm.AMDGPU.bfe.i32(i32 %shl, i32 31, i32 1)
  store i32 %bfe, i32 addrspace(1)* %out, align 4 ret void
}





define void @bfe_i32_test_14(i32 addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %x = load i32, i32 addrspace(1)* %in, align 4
  %shl = lshr i32 %x, 31
  %bfe = call i32 @llvm.AMDGPU.bfe.i32(i32 %shl, i32 31, i32 1)
  store i32 %bfe, i32 addrspace(1)* %out, align 4 ret void
}







define void @bfe_i32_constant_fold_test_0(i32 addrspace(1)* %out) nounwind {
  %bfe_i32 = call i32 @llvm.AMDGPU.bfe.i32(i32 0, i32 0, i32 0) nounwind readnone
  store i32 %bfe_i32, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_i32_constant_fold_test_1(i32 addrspace(1)* %out) nounwind {
  %bfe_i32 = call i32 @llvm.AMDGPU.bfe.i32(i32 12334, i32 0, i32 0) nounwind readnone
  store i32 %bfe_i32, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_i32_constant_fold_test_2(i32 addrspace(1)* %out) nounwind {
  %bfe_i32 = call i32 @llvm.AMDGPU.bfe.i32(i32 0, i32 0, i32 1) nounwind readnone
  store i32 %bfe_i32, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_i32_constant_fold_test_3(i32 addrspace(1)* %out) nounwind {
  %bfe_i32 = call i32 @llvm.AMDGPU.bfe.i32(i32 1, i32 0, i32 1) nounwind readnone
  store i32 %bfe_i32, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_i32_constant_fold_test_4(i32 addrspace(1)* %out) nounwind {
  %bfe_i32 = call i32 @llvm.AMDGPU.bfe.i32(i32 4294967295, i32 0, i32 1) nounwind readnone
  store i32 %bfe_i32, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_i32_constant_fold_test_5(i32 addrspace(1)* %out) nounwind {
  %bfe_i32 = call i32 @llvm.AMDGPU.bfe.i32(i32 128, i32 7, i32 1) nounwind readnone
  store i32 %bfe_i32, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_i32_constant_fold_test_6(i32 addrspace(1)* %out) nounwind {
  %bfe_i32 = call i32 @llvm.AMDGPU.bfe.i32(i32 128, i32 0, i32 8) nounwind readnone
  store i32 %bfe_i32, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_i32_constant_fold_test_7(i32 addrspace(1)* %out) nounwind {
  %bfe_i32 = call i32 @llvm.AMDGPU.bfe.i32(i32 127, i32 0, i32 8) nounwind readnone
  store i32 %bfe_i32, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_i32_constant_fold_test_8(i32 addrspace(1)* %out) nounwind {
  %bfe_i32 = call i32 @llvm.AMDGPU.bfe.i32(i32 127, i32 6, i32 8) nounwind readnone
  store i32 %bfe_i32, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_i32_constant_fold_test_9(i32 addrspace(1)* %out) nounwind {
  %bfe_i32 = call i32 @llvm.AMDGPU.bfe.i32(i32 65536, i32 16, i32 8) nounwind readnone
  store i32 %bfe_i32, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_i32_constant_fold_test_10(i32 addrspace(1)* %out) nounwind {
  %bfe_i32 = call i32 @llvm.AMDGPU.bfe.i32(i32 65535, i32 16, i32 16) nounwind readnone
  store i32 %bfe_i32, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_i32_constant_fold_test_11(i32 addrspace(1)* %out) nounwind {
  %bfe_i32 = call i32 @llvm.AMDGPU.bfe.i32(i32 160, i32 4, i32 4) nounwind readnone
  store i32 %bfe_i32, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_i32_constant_fold_test_12(i32 addrspace(1)* %out) nounwind {
  %bfe_i32 = call i32 @llvm.AMDGPU.bfe.i32(i32 160, i32 31, i32 1) nounwind readnone
  store i32 %bfe_i32, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_i32_constant_fold_test_13(i32 addrspace(1)* %out) nounwind {
  %bfe_i32 = call i32 @llvm.AMDGPU.bfe.i32(i32 131070, i32 16, i32 16) nounwind readnone
  store i32 %bfe_i32, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_i32_constant_fold_test_14(i32 addrspace(1)* %out) nounwind {
  %bfe_i32 = call i32 @llvm.AMDGPU.bfe.i32(i32 160, i32 2, i32 30) nounwind readnone
  store i32 %bfe_i32, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_i32_constant_fold_test_15(i32 addrspace(1)* %out) nounwind {
  %bfe_i32 = call i32 @llvm.AMDGPU.bfe.i32(i32 160, i32 4, i32 28) nounwind readnone
  store i32 %bfe_i32, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_i32_constant_fold_test_16(i32 addrspace(1)* %out) nounwind {
  %bfe_i32 = call i32 @llvm.AMDGPU.bfe.i32(i32 4294967295, i32 1, i32 7) nounwind readnone
  store i32 %bfe_i32, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_i32_constant_fold_test_17(i32 addrspace(1)* %out) nounwind {
  %bfe_i32 = call i32 @llvm.AMDGPU.bfe.i32(i32 255, i32 1, i32 31) nounwind readnone
  store i32 %bfe_i32, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_i32_constant_fold_test_18(i32 addrspace(1)* %out) nounwind {
  %bfe_i32 = call i32 @llvm.AMDGPU.bfe.i32(i32 255, i32 31, i32 1) nounwind readnone
  store i32 %bfe_i32, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_sext_in_reg_i24(i32 addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %x = load i32, i32 addrspace(1)* %in, align 4
  %bfe = call i32 @llvm.AMDGPU.bfe.i32(i32 %x, i32 0, i32 24)
  %shl = shl i32 %bfe, 8
  %ashr = ashr i32 %shl, 8
  store i32 %ashr, i32 addrspace(1)* %out, align 4
  ret void
}








define void @simplify_demanded_bfe_sdiv(i32 addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %src = load i32, i32 addrspace(1)* %in, align 4
  %bfe = call i32 @llvm.AMDGPU.bfe.i32(i32 %src, i32 1, i32 16) nounwind readnone
  %div = sdiv i32 %bfe, 2
  store i32 %div, i32 addrspace(1)* %out, align 4
  ret void
}
