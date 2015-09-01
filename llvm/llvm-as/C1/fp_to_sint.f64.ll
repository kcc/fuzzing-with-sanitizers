


declare i32 @llvm.r600.read.tidig.x() nounwind readnone



define void @fp_to_sint_f64_i32(i32 addrspace(1)* %out, double %in) {
  %result = fptosi double %in to i32
  store i32 %result, i32 addrspace(1)* %out
  ret void
}




define void @fp_to_sint_v2f64_v2i32(<2 x i32> addrspace(1)* %out, <2 x double> %in) {
  %result = fptosi <2 x double> %in to <2 x i32>
  store <2 x i32> %result, <2 x i32> addrspace(1)* %out
  ret void
}






define void @fp_to_sint_v4f64_v4i32(<4 x i32> addrspace(1)* %out, <4 x double> %in) {
  %result = fptosi <4 x double> %in to <4 x i32>
  store <4 x i32> %result, <4 x i32> addrspace(1)* %out
  ret void
}
















define void @fp_to_sint_i64_f64(i64 addrspace(1)* %out, double addrspace(1)* %in) {
  %tid = call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %gep = getelementptr double, double addrspace(1)* %in, i32 %tid
  %val = load double, double addrspace(1)* %gep, align 8
  %cast = fptosi double %val to i64
  store i64 %cast, i64 addrspace(1)* %out, align 8
  ret void
}
