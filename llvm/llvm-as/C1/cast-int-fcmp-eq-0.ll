




define i1 @i32_cast_cmp_oeq_int_0_uitofp(i32 %i) {
  %f = uitofp i32 %i to float
  %cmp = fcmp oeq float %f, 0.0
  ret i1 %cmp
}




define i1 @i32_cast_cmp_oeq_int_n0_uitofp(i32 %i) {
  %f = uitofp i32 %i to float
  %cmp = fcmp oeq float %f, -0.0
  ret i1 %cmp
}




define i1 @i32_cast_cmp_oeq_int_0_sitofp(i32 %i) {
  %f = sitofp i32 %i to float
  %cmp = fcmp oeq float %f, 0.0
  ret i1 %cmp
}




define i1 @i32_cast_cmp_oeq_int_n0_sitofp(i32 %i) {
  %f = sitofp i32 %i to float
  %cmp = fcmp oeq float %f, -0.0
  ret i1 %cmp
}




define i1 @i32_cast_cmp_one_int_0_uitofp(i32 %i) {
  %f = uitofp i32 %i to float
  %cmp = fcmp one float %f, 0.0
  ret i1 %cmp
}




define i1 @i32_cast_cmp_one_int_n0_uitofp(i32 %i) {
  %f = uitofp i32 %i to float
  %cmp = fcmp one float %f, -0.0
  ret i1 %cmp
}




define i1 @i32_cast_cmp_one_int_0_sitofp(i32 %i) {
  %f = sitofp i32 %i to float
  %cmp = fcmp one float %f, 0.0
  ret i1 %cmp
}




define i1 @i32_cast_cmp_one_int_n0_sitofp(i32 %i) {
  %f = sitofp i32 %i to float
  %cmp = fcmp one float %f, -0.0
  ret i1 %cmp
}




define i1 @i32_cast_cmp_ueq_int_0_uitofp(i32 %i) {
  %f = uitofp i32 %i to float
  %cmp = fcmp ueq float %f, 0.0
  ret i1 %cmp
}




define i1 @i32_cast_cmp_ueq_int_n0_uitofp(i32 %i) {
  %f = uitofp i32 %i to float
  %cmp = fcmp ueq float %f, -0.0
  ret i1 %cmp
}




define i1 @i32_cast_cmp_ueq_int_0_sitofp(i32 %i) {
  %f = sitofp i32 %i to float
  %cmp = fcmp ueq float %f, 0.0
  ret i1 %cmp
}




define i1 @i32_cast_cmp_ueq_int_n0_sitofp(i32 %i) {
  %f = sitofp i32 %i to float
  %cmp = fcmp ueq float %f, -0.0
  ret i1 %cmp
}




define i1 @i32_cast_cmp_une_int_0_uitofp(i32 %i) {
  %f = uitofp i32 %i to float
  %cmp = fcmp une float %f, 0.0
  ret i1 %cmp
}




define i1 @i32_cast_cmp_une_int_n0_uitofp(i32 %i) {
  %f = uitofp i32 %i to float
  %cmp = fcmp une float %f, -0.0
  ret i1 %cmp
}




define i1 @i32_cast_cmp_une_int_0_sitofp(i32 %i) {
  %f = sitofp i32 %i to float
  %cmp = fcmp une float %f, 0.0
  ret i1 %cmp
}




define i1 @i32_cast_cmp_une_int_n0_sitofp(i32 %i) {
  %f = sitofp i32 %i to float
  %cmp = fcmp une float %f, -0.0
  ret i1 %cmp
}




define i1 @i32_cast_cmp_ogt_int_0_uitofp(i32 %i) {
  %f = uitofp i32 %i to float
  %cmp = fcmp ogt float %f, 0.0
  ret i1 %cmp
}




define i1 @i32_cast_cmp_ogt_int_n0_uitofp(i32 %i) {
  %f = uitofp i32 %i to float
  %cmp = fcmp ogt float %f, -0.0
  ret i1 %cmp
}




define i1 @i32_cast_cmp_ogt_int_0_sitofp(i32 %i) {
  %f = sitofp i32 %i to float
  %cmp = fcmp ogt float %f, 0.0
  ret i1 %cmp
}




define i1 @i32_cast_cmp_ogt_int_n0_sitofp(i32 %i) {
  %f = sitofp i32 %i to float
  %cmp = fcmp ogt float %f, -0.0
  ret i1 %cmp
}




define i1 @i32_cast_cmp_ole_int_0_uitofp(i32 %i) {
  %f = uitofp i32 %i to float
  %cmp = fcmp ole float %f, 0.0
  ret i1 %cmp
}




define i1 @i32_cast_cmp_ole_int_0_sitofp(i32 %i) {
  %f = sitofp i32 %i to float
  %cmp = fcmp ole float %f, 0.0
  ret i1 %cmp
}



define i1 @i32_cast_cmp_olt_int_0_uitofp(i32 %i) {
  %f = uitofp i32 %i to float
  %cmp = fcmp olt float %f, 0.0
  ret i1 %cmp
}




define i1 @i32_cast_cmp_olt_int_0_sitofp(i32 %i) {
  %f = sitofp i32 %i to float
  %cmp = fcmp olt float %f, 0.0
  ret i1 %cmp
}




define i1 @i64_cast_cmp_oeq_int_0_uitofp(i64 %i) {
  %f = uitofp i64 %i to float
  %cmp = fcmp oeq float %f, 0.0
  ret i1 %cmp
}




define i1 @i64_cast_cmp_oeq_int_0_sitofp(i64 %i) {
  %f = sitofp i64 %i to float
  %cmp = fcmp oeq float %f, 0.0
  ret i1 %cmp
}




define i1 @i64_cast_cmp_oeq_int_0_uitofp_half(i64 %i) {
  %f = uitofp i64 %i to half
  %cmp = fcmp oeq half %f, 0.0
  ret i1 %cmp
}




define i1 @i64_cast_cmp_oeq_int_0_sitofp_half(i64 %i) {
  %f = sitofp i64 %i to half
  %cmp = fcmp oeq half %f, 0.0
  ret i1 %cmp
}





define i1 @i32_cast_cmp_oeq_int_0_uitofp_ppcf128(i32 %i) {
  %f = uitofp i32 %i to ppc_fp128
  %cmp = fcmp oeq ppc_fp128 %f, 0xM00000000000000000000000000000000
  ret i1 %cmp
}







define i1 @i32_cast_cmp_oeq_int_i24max_uitofp(i32 %i) {
  %f = uitofp i32 %i to float
  %cmp = fcmp oeq float %f, 0x416FFFFFE0000000
  ret i1 %cmp
}







define i1 @i32_cast_cmp_oeq_int_i24max_sitofp(i32 %i) {
  %f = sitofp i32 %i to float
  %cmp = fcmp oeq float %f, 0x416FFFFFE0000000
  ret i1 %cmp
}







define i1 @i32_cast_cmp_oeq_int_i24maxp1_uitofp(i32 %i) {
  %f = uitofp i32 %i to float
  %cmp = fcmp oeq float %f, 0x4170000000000000
  ret i1 %cmp
}







define i1 @i32_cast_cmp_oeq_int_i24maxp1_sitofp(i32 %i) {
  %f = sitofp i32 %i to float
  %cmp = fcmp oeq float %f, 0x4170000000000000
  ret i1 %cmp
}





define i1 @i32_cast_cmp_oeq_int_i32umax_uitofp(i32 %i) {
  %f = uitofp i32 %i to float
  %cmp = fcmp oeq float %f, 0x41F0000000000000
  ret i1 %cmp
}





define i1 @i32_cast_cmp_oeq_int_i32umax_sitofp(i32 %i) {
  %f = sitofp i32 %i to float
  %cmp = fcmp oeq float %f, 0x41F0000000000000
  ret i1 %cmp
}





define i1 @i32_cast_cmp_oeq_int_i32imin_uitofp(i32 %i) {
  %f = uitofp i32 %i to float
  %cmp = fcmp oeq float %f, 0xC1E0000000000000
  ret i1 %cmp
}





define i1 @i32_cast_cmp_oeq_int_i32imin_sitofp(i32 %i) {
  %f = sitofp i32 %i to float
  %cmp = fcmp oeq float %f, 0xC1E0000000000000
  ret i1 %cmp
}





define i1 @i32_cast_cmp_oeq_int_i32imax_uitofp(i32 %i) {
  %f = uitofp i32 %i to float
  %cmp = fcmp oeq float %f, 0x41E0000000000000
  ret i1 %cmp
}





define i1 @i32_cast_cmp_oeq_int_i32imax_sitofp(i32 %i) {
  %f = sitofp i32 %i to float
  %cmp = fcmp oeq float %f, 0x41E0000000000000
  ret i1 %cmp
}





define i1 @i32_cast_cmp_oeq_int_negi32umax_uitofp(i32 %i) {
  %f = uitofp i32 %i to float
  %cmp = fcmp oeq float %f, 0xC1F0000000000000
  ret i1 %cmp
}





define i1 @i32_cast_cmp_oeq_int_negi32umax_sitofp(i32 %i) {
  %f = sitofp i32 %i to float
  %cmp = fcmp oeq float %f, 0xC1F0000000000000
  ret i1 %cmp
}



define i1 @i32_cast_cmp_oeq_half_uitofp(i32 %i) {
  %f = uitofp i32 %i to float
  %cmp = fcmp oeq float %f, 0.5
  ret i1 %cmp
}



define i1 @i32_cast_cmp_oeq_half_sitofp(i32 %i) {
  %f = sitofp i32 %i to float
  %cmp = fcmp oeq float %f, 0.5
  ret i1 %cmp
}



define i1 @i32_cast_cmp_one_half_uitofp(i32 %i) {
  %f = uitofp i32 %i to float
  %cmp = fcmp one float %f, 0.5
  ret i1 %cmp
}



define i1 @i32_cast_cmp_one_half_sitofp(i32 %i) {
  %f = sitofp i32 %i to float
  %cmp = fcmp one float %f, 0.5
  ret i1 %cmp
}



define i1 @i32_cast_cmp_ueq_half_uitofp(i32 %i) {
  %f = uitofp i32 %i to float
  %cmp = fcmp ueq float %f, 0.5
  ret i1 %cmp
}



define i1 @i32_cast_cmp_ueq_half_sitofp(i32 %i) {
  %f = sitofp i32 %i to float
  %cmp = fcmp ueq float %f, 0.5
  ret i1 %cmp
}



define i1 @i32_cast_cmp_une_half_uitofp(i32 %i) {
  %f = uitofp i32 %i to float
  %cmp = fcmp une float %f, 0.5
  ret i1 %cmp
}



define i1 @i32_cast_cmp_une_half_sitofp(i32 %i) {
  %f = sitofp i32 %i to float
  %cmp = fcmp une float %f, 0.5
  ret i1 %cmp
}
