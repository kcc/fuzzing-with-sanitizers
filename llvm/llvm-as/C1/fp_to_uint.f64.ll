


declare i32 @llvm.r600.read.tidig.x() nounwind readnone



define void @fp_to_uint_i32_f64(i32 addrspace(1)* %out, double %in) {
  %cast = fptoui double %in to i32
  store i32 %cast, i32 addrspace(1)* %out, align 4
  ret void
}




define void @fp_to_uint_v2i32_v2f64(<2 x i32> addrspace(1)* %out, <2 x double> %in) {
  %cast = fptoui <2 x double> %in to <2 x i32>
  store <2 x i32> %cast, <2 x i32> addrspace(1)* %out, align 8
  ret void
}






define void @fp_to_uint_v4i32_v4f64(<4 x i32> addrspace(1)* %out, <4 x double> %in) {
  %cast = fptoui <4 x double> %in to <4 x i32>
  store <4 x i32> %cast, <4 x i32> addrspace(1)* %out, align 8
  ret void
}
















define void @fp_to_uint_i64_f64(i64 addrspace(1)* %out, double addrspace(1)* %in) {
  %tid = call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %gep = getelementptr double, double addrspace(1)* %in, i32 %tid
  %val = load double, double addrspace(1)* %gep, align 8
  %cast = fptoui double %val to i64
  store i64 %cast, i64 addrspace(1)* %out, align 4
  ret void
}


define void @fp_to_uint_v2i64_v2f64(<2 x i64> addrspace(1)* %out, <2 x double> %in) {
  %cast = fptoui <2 x double> %in to <2 x i64>
  store <2 x i64> %cast, <2 x i64> addrspace(1)* %out, align 16
  ret void
}


define void @fp_to_uint_v4i64_v4f64(<4 x i64> addrspace(1)* %out, <4 x double> %in) {
  %cast = fptoui <4 x double> %in to <4 x i64>
  store <4 x i64> %cast, <4 x i64> addrspace(1)* %out, align 32
  ret void
}
