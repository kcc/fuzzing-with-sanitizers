






define void @local_i32_load(i32 addrspace(1)* %out, i32 addrspace(3)* %in) nounwind {
  %gep = getelementptr i32, i32 addrspace(3)* %in, i32 7
  %val = load i32, i32 addrspace(3)* %gep, align 4
  store i32 %val, i32 addrspace(1)* %out, align 4
  ret void
}




define void @local_i32_load_0_offset(i32 addrspace(1)* %out, i32 addrspace(3)* %in) nounwind {
  %val = load i32, i32 addrspace(3)* %in, align 4
  store i32 %val, i32 addrspace(1)* %out, align 4
  ret void
}





define void @local_i8_load_i16_max_offset(i8 addrspace(1)* %out, i8 addrspace(3)* %in) nounwind {
  %gep = getelementptr i8, i8 addrspace(3)* %in, i32 65535
  %val = load i8, i8 addrspace(3)* %gep, align 4
  store i8 %val, i8 addrspace(1)* %out, align 4
  ret void
}









define void @local_i8_load_over_i16_max_offset(i8 addrspace(1)* %out, i8 addrspace(3)* %in) nounwind {
  %gep = getelementptr i8, i8 addrspace(3)* %in, i32 65536
  %val = load i8, i8 addrspace(3)* %gep, align 4
  store i8 %val, i8 addrspace(1)* %out, align 4
  ret void
}





define void @local_i64_load(i64 addrspace(1)* %out, i64 addrspace(3)* %in) nounwind {
  %gep = getelementptr i64, i64 addrspace(3)* %in, i32 7
  %val = load i64, i64 addrspace(3)* %gep, align 8
  store i64 %val, i64 addrspace(1)* %out, align 8
  ret void
}




define void @local_i64_load_0_offset(i64 addrspace(1)* %out, i64 addrspace(3)* %in) nounwind {
  %val = load i64, i64 addrspace(3)* %in, align 8
  store i64 %val, i64 addrspace(1)* %out, align 8
  ret void
}





define void @local_f64_load(double addrspace(1)* %out, double addrspace(3)* %in) nounwind {
  %gep = getelementptr double, double addrspace(3)* %in, i32 7
  %val = load double, double addrspace(3)* %gep, align 8
  store double %val, double addrspace(1)* %out, align 8
  ret void
}




define void @local_f64_load_0_offset(double addrspace(1)* %out, double addrspace(3)* %in) nounwind {
  %val = load double, double addrspace(3)* %in, align 8
  store double %val, double addrspace(1)* %out, align 8
  ret void
}




define void @local_i64_store(i64 addrspace(3)* %out) nounwind {
  %gep = getelementptr i64, i64 addrspace(3)* %out, i32 7
  store i64 5678, i64 addrspace(3)* %gep, align 8
  ret void
}




define void @local_i64_store_0_offset(i64 addrspace(3)* %out) nounwind {
  store i64 1234, i64 addrspace(3)* %out, align 8
  ret void
}




define void @local_f64_store(double addrspace(3)* %out) nounwind {
  %gep = getelementptr double, double addrspace(3)* %out, i32 7
  store double 16.0, double addrspace(3)* %gep, align 8
  ret void
}



define void @local_f64_store_0_offset(double addrspace(3)* %out) nounwind {
  store double 20.0, double addrspace(3)* %out, align 8
  ret void
}






define void @local_v2i64_store(<2 x i64> addrspace(3)* %out) nounwind {
  %gep = getelementptr <2 x i64>, <2 x i64> addrspace(3)* %out, i32 7
  store <2 x i64> <i64 5678, i64 5678>, <2 x i64> addrspace(3)* %gep, align 16
  ret void
}






define void @local_v2i64_store_0_offset(<2 x i64> addrspace(3)* %out) nounwind {
  store <2 x i64> <i64 1234, i64 1234>, <2 x i64> addrspace(3)* %out, align 16
  ret void
}








define void @local_v4i64_store(<4 x i64> addrspace(3)* %out) nounwind {
  %gep = getelementptr <4 x i64>, <4 x i64> addrspace(3)* %out, i32 7
  store <4 x i64> <i64 5678, i64 5678, i64 5678, i64 5678>, <4 x i64> addrspace(3)* %gep, align 16
  ret void
}








define void @local_v4i64_store_0_offset(<4 x i64> addrspace(3)* %out) nounwind {
  store <4 x i64> <i64 1234, i64 1234, i64 1234, i64 1234>, <4 x i64> addrspace(3)* %out, align 16
  ret void
}
