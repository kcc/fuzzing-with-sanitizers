



declare i32 @llvm.AMDGPU.bfe.u32(i32, i32, i32) nounwind readnone




define void @bfe_u32_arg_arg_arg(i32 addrspace(1)* %out, i32 %src0, i32 %src1, i32 %src2) nounwind {
  %bfe_u32 = call i32 @llvm.AMDGPU.bfe.u32(i32 %src0, i32 %src1, i32 %src1) nounwind readnone
  store i32 %bfe_u32, i32 addrspace(1)* %out, align 4
  ret void
}




define void @bfe_u32_arg_arg_imm(i32 addrspace(1)* %out, i32 %src0, i32 %src1) nounwind {
  %bfe_u32 = call i32 @llvm.AMDGPU.bfe.u32(i32 %src0, i32 %src1, i32 123) nounwind readnone
  store i32 %bfe_u32, i32 addrspace(1)* %out, align 4
  ret void
}




define void @bfe_u32_arg_imm_arg(i32 addrspace(1)* %out, i32 %src0, i32 %src2) nounwind {
  %bfe_u32 = call i32 @llvm.AMDGPU.bfe.u32(i32 %src0, i32 123, i32 %src2) nounwind readnone
  store i32 %bfe_u32, i32 addrspace(1)* %out, align 4
  ret void
}




define void @bfe_u32_imm_arg_arg(i32 addrspace(1)* %out, i32 %src1, i32 %src2) nounwind {
  %bfe_u32 = call i32 @llvm.AMDGPU.bfe.u32(i32 123, i32 %src1, i32 %src2) nounwind readnone
  store i32 %bfe_u32, i32 addrspace(1)* %out, align 4
  ret void
}





define void @bfe_u32_arg_0_width_reg_offset(i32 addrspace(1)* %out, i32 %src0, i32 %src1) nounwind {
  %bfe_u32 = call i32 @llvm.AMDGPU.bfe.u32(i32 %src0, i32 %src1, i32 0) nounwind readnone
  store i32 %bfe_u32, i32 addrspace(1)* %out, align 4
  ret void
}





define void @bfe_u32_arg_0_width_imm_offset(i32 addrspace(1)* %out, i32 %src0, i32 %src1) nounwind {
  %bfe_u32 = call i32 @llvm.AMDGPU.bfe.u32(i32 %src0, i32 8, i32 0) nounwind readnone
  store i32 %bfe_u32, i32 addrspace(1)* %out, align 4
  ret void
}





define void @bfe_u32_zextload_i8(i32 addrspace(1)* %out, i8 addrspace(1)* %in) nounwind {
  %load = load i8, i8 addrspace(1)* %in
  %ext = zext i8 %load to i32
  %bfe = call i32 @llvm.AMDGPU.bfe.u32(i32 %ext, i32 0, i32 8)
  store i32 %bfe, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_u32_zext_in_reg_i8(i32 addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %load = load i32, i32 addrspace(1)* %in, align 4
  %add = add i32 %load, 1
  %ext = and i32 %add, 255
  %bfe = call i32 @llvm.AMDGPU.bfe.u32(i32 %ext, i32 0, i32 8)
  store i32 %bfe, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_u32_zext_in_reg_i16(i32 addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %load = load i32, i32 addrspace(1)* %in, align 4
  %add = add i32 %load, 1
  %ext = and i32 %add, 65535
  %bfe = call i32 @llvm.AMDGPU.bfe.u32(i32 %ext, i32 0, i32 16)
  store i32 %bfe, i32 addrspace(1)* %out, align 4
  ret void
}






define void @bfe_u32_zext_in_reg_i8_offset_1(i32 addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %load = load i32, i32 addrspace(1)* %in, align 4
  %add = add i32 %load, 1
  %ext = and i32 %add, 255
  %bfe = call i32 @llvm.AMDGPU.bfe.u32(i32 %ext, i32 1, i32 8)
  store i32 %bfe, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_u32_zext_in_reg_i8_offset_3(i32 addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %load = load i32, i32 addrspace(1)* %in, align 4
  %add = add i32 %load, 1
  %ext = and i32 %add, 255
  %bfe = call i32 @llvm.AMDGPU.bfe.u32(i32 %ext, i32 3, i32 8)
  store i32 %bfe, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_u32_zext_in_reg_i8_offset_7(i32 addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %load = load i32, i32 addrspace(1)* %in, align 4
  %add = add i32 %load, 1
  %ext = and i32 %add, 255
  %bfe = call i32 @llvm.AMDGPU.bfe.u32(i32 %ext, i32 7, i32 8)
  store i32 %bfe, i32 addrspace(1)* %out, align 4
  ret void
}






define void @bfe_u32_zext_in_reg_i16_offset_8(i32 addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %load = load i32, i32 addrspace(1)* %in, align 4
  %add = add i32 %load, 1
  %ext = and i32 %add, 65535
  %bfe = call i32 @llvm.AMDGPU.bfe.u32(i32 %ext, i32 8, i32 8)
  store i32 %bfe, i32 addrspace(1)* %out, align 4
  ret void
}






define void @bfe_u32_test_1(i32 addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %x = load i32, i32 addrspace(1)* %in, align 4
  %bfe = call i32 @llvm.AMDGPU.bfe.u32(i32 %x, i32 0, i32 1)
  store i32 %bfe, i32 addrspace(1)* %out, align 4
  ret void
}

define void @bfe_u32_test_2(i32 addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %x = load i32, i32 addrspace(1)* %in, align 4
  %shl = shl i32 %x, 31
  %bfe = call i32 @llvm.AMDGPU.bfe.u32(i32 %shl, i32 0, i32 8)
  store i32 %bfe, i32 addrspace(1)* %out, align 4
  ret void
}

define void @bfe_u32_test_3(i32 addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %x = load i32, i32 addrspace(1)* %in, align 4
  %shl = shl i32 %x, 31
  %bfe = call i32 @llvm.AMDGPU.bfe.u32(i32 %shl, i32 0, i32 1)
  store i32 %bfe, i32 addrspace(1)* %out, align 4
  ret void
}








define void @bfe_u32_test_4(i32 addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %x = load i32, i32 addrspace(1)* %in, align 4
  %shl = shl i32 %x, 31
  %shr = lshr i32 %shl, 31
  %bfe = call i32 @llvm.AMDGPU.bfe.u32(i32 %shr, i32 31, i32 1)
  store i32 %bfe, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_u32_test_5(i32 addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %x = load i32, i32 addrspace(1)* %in, align 4
  %shl = shl i32 %x, 31
  %shr = ashr i32 %shl, 31
  %bfe = call i32 @llvm.AMDGPU.bfe.u32(i32 %shr, i32 0, i32 1)
  store i32 %bfe, i32 addrspace(1)* %out, align 4
  ret void
}





define void @bfe_u32_test_6(i32 addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %x = load i32, i32 addrspace(1)* %in, align 4
  %shl = shl i32 %x, 31
  %bfe = call i32 @llvm.AMDGPU.bfe.u32(i32 %shl, i32 1, i32 31)
  store i32 %bfe, i32 addrspace(1)* %out, align 4
  ret void
}





define void @bfe_u32_test_7(i32 addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %x = load i32, i32 addrspace(1)* %in, align 4
  %shl = shl i32 %x, 31
  %bfe = call i32 @llvm.AMDGPU.bfe.u32(i32 %shl, i32 0, i32 31)
  store i32 %bfe, i32 addrspace(1)* %out, align 4
  ret void
}






define void @bfe_u32_test_8(i32 addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %x = load i32, i32 addrspace(1)* %in, align 4
  %shl = shl i32 %x, 31
  %bfe = call i32 @llvm.AMDGPU.bfe.u32(i32 %shl, i32 31, i32 1)
  store i32 %bfe, i32 addrspace(1)* %out, align 4
  ret void
}






define void @bfe_u32_test_9(i32 addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %x = load i32, i32 addrspace(1)* %in, align 4
  %bfe = call i32 @llvm.AMDGPU.bfe.u32(i32 %x, i32 31, i32 1)
  store i32 %bfe, i32 addrspace(1)* %out, align 4
  ret void
}






define void @bfe_u32_test_10(i32 addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %x = load i32, i32 addrspace(1)* %in, align 4
  %bfe = call i32 @llvm.AMDGPU.bfe.u32(i32 %x, i32 1, i32 31)
  store i32 %bfe, i32 addrspace(1)* %out, align 4
  ret void
}






define void @bfe_u32_test_11(i32 addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %x = load i32, i32 addrspace(1)* %in, align 4
  %bfe = call i32 @llvm.AMDGPU.bfe.u32(i32 %x, i32 8, i32 24)
  store i32 %bfe, i32 addrspace(1)* %out, align 4
  ret void
}






define void @bfe_u32_test_12(i32 addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %x = load i32, i32 addrspace(1)* %in, align 4
  %bfe = call i32 @llvm.AMDGPU.bfe.u32(i32 %x, i32 24, i32 8)
  store i32 %bfe, i32 addrspace(1)* %out, align 4
  ret void
}





define void @bfe_u32_test_13(i32 addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %x = load i32, i32 addrspace(1)* %in, align 4
  %shl = ashr i32 %x, 31
  %bfe = call i32 @llvm.AMDGPU.bfe.u32(i32 %shl, i32 31, i32 1)
  store i32 %bfe, i32 addrspace(1)* %out, align 4 ret void
}





define void @bfe_u32_test_14(i32 addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %x = load i32, i32 addrspace(1)* %in, align 4
  %shl = lshr i32 %x, 31
  %bfe = call i32 @llvm.AMDGPU.bfe.u32(i32 %shl, i32 31, i32 1)
  store i32 %bfe, i32 addrspace(1)* %out, align 4 ret void
}







define void @bfe_u32_constant_fold_test_0(i32 addrspace(1)* %out) nounwind {
  %bfe_u32 = call i32 @llvm.AMDGPU.bfe.u32(i32 0, i32 0, i32 0) nounwind readnone
  store i32 %bfe_u32, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_u32_constant_fold_test_1(i32 addrspace(1)* %out) nounwind {
  %bfe_u32 = call i32 @llvm.AMDGPU.bfe.u32(i32 12334, i32 0, i32 0) nounwind readnone
  store i32 %bfe_u32, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_u32_constant_fold_test_2(i32 addrspace(1)* %out) nounwind {
  %bfe_u32 = call i32 @llvm.AMDGPU.bfe.u32(i32 0, i32 0, i32 1) nounwind readnone
  store i32 %bfe_u32, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_u32_constant_fold_test_3(i32 addrspace(1)* %out) nounwind {
  %bfe_u32 = call i32 @llvm.AMDGPU.bfe.u32(i32 1, i32 0, i32 1) nounwind readnone
  store i32 %bfe_u32, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_u32_constant_fold_test_4(i32 addrspace(1)* %out) nounwind {
  %bfe_u32 = call i32 @llvm.AMDGPU.bfe.u32(i32 4294967295, i32 0, i32 1) nounwind readnone
  store i32 %bfe_u32, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_u32_constant_fold_test_5(i32 addrspace(1)* %out) nounwind {
  %bfe_u32 = call i32 @llvm.AMDGPU.bfe.u32(i32 128, i32 7, i32 1) nounwind readnone
  store i32 %bfe_u32, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_u32_constant_fold_test_6(i32 addrspace(1)* %out) nounwind {
  %bfe_u32 = call i32 @llvm.AMDGPU.bfe.u32(i32 128, i32 0, i32 8) nounwind readnone
  store i32 %bfe_u32, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_u32_constant_fold_test_7(i32 addrspace(1)* %out) nounwind {
  %bfe_u32 = call i32 @llvm.AMDGPU.bfe.u32(i32 127, i32 0, i32 8) nounwind readnone
  store i32 %bfe_u32, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_u32_constant_fold_test_8(i32 addrspace(1)* %out) nounwind {
  %bfe_u32 = call i32 @llvm.AMDGPU.bfe.u32(i32 127, i32 6, i32 8) nounwind readnone
  store i32 %bfe_u32, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_u32_constant_fold_test_9(i32 addrspace(1)* %out) nounwind {
  %bfe_u32 = call i32 @llvm.AMDGPU.bfe.u32(i32 65536, i32 16, i32 8) nounwind readnone
  store i32 %bfe_u32, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_u32_constant_fold_test_10(i32 addrspace(1)* %out) nounwind {
  %bfe_u32 = call i32 @llvm.AMDGPU.bfe.u32(i32 65535, i32 16, i32 16) nounwind readnone
  store i32 %bfe_u32, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_u32_constant_fold_test_11(i32 addrspace(1)* %out) nounwind {
  %bfe_u32 = call i32 @llvm.AMDGPU.bfe.u32(i32 160, i32 4, i32 4) nounwind readnone
  store i32 %bfe_u32, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_u32_constant_fold_test_12(i32 addrspace(1)* %out) nounwind {
  %bfe_u32 = call i32 @llvm.AMDGPU.bfe.u32(i32 160, i32 31, i32 1) nounwind readnone
  store i32 %bfe_u32, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_u32_constant_fold_test_13(i32 addrspace(1)* %out) nounwind {
  %bfe_u32 = call i32 @llvm.AMDGPU.bfe.u32(i32 131070, i32 16, i32 16) nounwind readnone
  store i32 %bfe_u32, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_u32_constant_fold_test_14(i32 addrspace(1)* %out) nounwind {
  %bfe_u32 = call i32 @llvm.AMDGPU.bfe.u32(i32 160, i32 2, i32 30) nounwind readnone
  store i32 %bfe_u32, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_u32_constant_fold_test_15(i32 addrspace(1)* %out) nounwind {
  %bfe_u32 = call i32 @llvm.AMDGPU.bfe.u32(i32 160, i32 4, i32 28) nounwind readnone
  store i32 %bfe_u32, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_u32_constant_fold_test_16(i32 addrspace(1)* %out) nounwind {
  %bfe_u32 = call i32 @llvm.AMDGPU.bfe.u32(i32 4294967295, i32 1, i32 7) nounwind readnone
  store i32 %bfe_u32, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_u32_constant_fold_test_17(i32 addrspace(1)* %out) nounwind {
  %bfe_u32 = call i32 @llvm.AMDGPU.bfe.u32(i32 255, i32 1, i32 31) nounwind readnone
  store i32 %bfe_u32, i32 addrspace(1)* %out, align 4
  ret void
}







define void @bfe_u32_constant_fold_test_18(i32 addrspace(1)* %out) nounwind {
  %bfe_u32 = call i32 @llvm.AMDGPU.bfe.u32(i32 255, i32 31, i32 1) nounwind readnone
  store i32 %bfe_u32, i32 addrspace(1)* %out, align 4
  ret void
}












define void @simplify_bfe_u32_multi_use_arg(i32 addrspace(1)* %out0,
                                            i32 addrspace(1)* %out1,
                                            i32 addrspace(1)* %in) nounwind {
  %src = load i32, i32 addrspace(1)* %in, align 4
  %and = and i32 %src, 63
  %bfe_u32 = call i32 @llvm.AMDGPU.bfe.u32(i32 %and, i32 2, i32 2) nounwind readnone
  store i32 %bfe_u32, i32 addrspace(1)* %out0, align 4
  store i32 %and, i32 addrspace(1)* %out1, align 4
  ret void
}




define void @lshr_and(i32 addrspace(1)* %out, i32 %a) nounwind {
  %b = lshr i32 %a, 6
  %c = and i32 %b, 7
  store i32 %c, i32 addrspace(1)* %out, align 8
  ret void
}




define void @v_lshr_and(i32 addrspace(1)* %out, i32 %a, i32 %b) nounwind {
  %c = lshr i32 %a, %b
  %d = and i32 %c, 7
  store i32 %d, i32 addrspace(1)* %out, align 8
  ret void
}




define void @and_lshr(i32 addrspace(1)* %out, i32 %a) nounwind {
  %b = and i32 %a, 448
  %c = lshr i32 %b, 6
  store i32 %c, i32 addrspace(1)* %out, align 8
  ret void
}




define void @and_lshr2(i32 addrspace(1)* %out, i32 %a) nounwind {
  %b = and i32 %a, 511
  %c = lshr i32 %b, 6
  store i32 %c, i32 addrspace(1)* %out, align 8
  ret void
}




define void @shl_lshr(i32 addrspace(1)* %out, i32 %a) nounwind {
  %b = shl i32 %a, 9
  %c = lshr i32 %b, 11
  store i32 %c, i32 addrspace(1)* %out, align 8
  ret void
}
