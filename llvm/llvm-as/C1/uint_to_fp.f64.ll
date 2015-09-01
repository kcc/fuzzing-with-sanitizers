

declare i32 @llvm.r600.read.tidig.x() nounwind readnone








define void @v_uint_to_fp_i64_to_f64(double addrspace(1)* %out, i64 addrspace(1)* %in) {
  %tid = call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %gep = getelementptr i64, i64 addrspace(1)* %in, i32 %tid
  %val = load i64, i64 addrspace(1)* %gep, align 8
  %result = uitofp i64 %val to double
  store double %result, double addrspace(1)* %out
  ret void
}


define void @s_uint_to_fp_i64_to_f64(double addrspace(1)* %out, i64 %in) {
  %cast = uitofp i64 %in to double
  store double %cast, double addrspace(1)* %out, align 8
  ret void
}


define void @s_uint_to_fp_v2i64_to_v2f64(<2 x double> addrspace(1)* %out, <2 x i64> %in) {
  %cast = uitofp <2 x i64> %in to <2 x double>
  store <2 x double> %cast, <2 x double> addrspace(1)* %out, align 16
  ret void
}


define void @s_uint_to_fp_v4i64_to_v4f64(<4 x double> addrspace(1)* %out, <4 x i64> %in) {
  %cast = uitofp <4 x i64> %in to <4 x double>
  store <4 x double> %cast, <4 x double> addrspace(1)* %out, align 16
  ret void
}




define void @s_uint_to_fp_i32_to_f64(double addrspace(1)* %out, i32 %in) {
  %cast = uitofp i32 %in to double
  store double %cast, double addrspace(1)* %out, align 8
  ret void
}





define void @s_uint_to_fp_v2i32_to_v2f64(<2 x double> addrspace(1)* %out, <2 x i32> %in) {
  %cast = uitofp <2 x i32> %in to <2 x double>
  store <2 x double> %cast, <2 x double> addrspace(1)* %out, align 16
  ret void
}







define void @s_uint_to_fp_v4i32_to_v4f64(<4 x double> addrspace(1)* %out, <4 x i32> %in) {
  %cast = uitofp <4 x i32> %in to <4 x double>
  store <4 x double> %cast, <4 x double> addrspace(1)* %out, align 16
  ret void
}










define void @uint_to_fp_i1_to_f64(double addrspace(1)* %out, i32 %in) {
  %cmp = icmp eq i32 %in, 0
  %fp = uitofp i1 %cmp to double
  store double %fp, double addrspace(1)* %out, align 4
  ret void
}






define void @uint_to_fp_i1_to_f64_load(double addrspace(1)* %out, i1 %in) {
  %fp = uitofp i1 %in to double
  store double %fp, double addrspace(1)* %out, align 8
  ret void
}
