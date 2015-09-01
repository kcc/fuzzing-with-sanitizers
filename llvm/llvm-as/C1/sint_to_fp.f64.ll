

declare i32 @llvm.r600.read.tidig.x() nounwind readnone



define void @sint_to_fp_i32_to_f64(double addrspace(1)* %out, i32 %in) {
  %result = sitofp i32 %in to double
  store double %result, double addrspace(1)* %out
  ret void
}










define void @sint_to_fp_i1_f64(double addrspace(1)* %out, i32 %in) {
  %cmp = icmp eq i32 %in, 0
  %fp = sitofp i1 %cmp to double
  store double %fp, double addrspace(1)* %out, align 4
  ret void
}






define void @sint_to_fp_i1_f64_load(double addrspace(1)* %out, i1 %in) {
  %fp = sitofp i1 %in to double
  store double %fp, double addrspace(1)* %out, align 8
  ret void
}


define void @s_sint_to_fp_i64_to_f64(double addrspace(1)* %out, i64 %in) {
  %result = sitofp i64 %in to double
  store double %result, double addrspace(1)* %out
  ret void
}








define void @v_sint_to_fp_i64_to_f64(double addrspace(1)* %out, i64 addrspace(1)* %in) {
  %tid = call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %gep = getelementptr i64, i64 addrspace(1)* %in, i32 %tid
  %val = load i64, i64 addrspace(1)* %gep, align 8
  %result = sitofp i64 %val to double
  store double %result, double addrspace(1)* %out
  ret void
}
