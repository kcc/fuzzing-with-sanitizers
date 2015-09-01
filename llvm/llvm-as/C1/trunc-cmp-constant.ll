









define void @sextload_i1_to_i32_trunc_cmp_eq_0(i1 addrspace(1)* %out, i1 addrspace(1)* %in) nounwind {
  %load = load i1, i1 addrspace(1)* %in
  %ext = sext i1 %load to i32
  %cmp = icmp eq i32 %ext, 0
  store i1 %cmp, i1 addrspace(1)* %out
  ret void
}









define void @zextload_i1_to_i32_trunc_cmp_eq_0(i1 addrspace(1)* %out, i1 addrspace(1)* %in) nounwind {
  %load = load i1, i1 addrspace(1)* %in
  %ext = zext i1 %load to i32
  %cmp = icmp eq i32 %ext, 0
  store i1 %cmp, i1 addrspace(1)* %out
  ret void
}




define void @sextload_i1_to_i32_trunc_cmp_eq_1(i1 addrspace(1)* %out, i1 addrspace(1)* %in) nounwind {
  %load = load i1, i1 addrspace(1)* %in
  %ext = sext i1 %load to i32
  %cmp = icmp eq i32 %ext, 1
  store i1 %cmp, i1 addrspace(1)* %out
  ret void
}





define void @zextload_i1_to_i32_trunc_cmp_eq_1(i1 addrspace(1)* %out, i1 addrspace(1)* %in) nounwind {
  %load = load i1, i1 addrspace(1)* %in
  %ext = zext i1 %load to i32
  %cmp = icmp eq i32 %ext, 1
  store i1 %cmp, i1 addrspace(1)* %out
  ret void
}





define void @sextload_i1_to_i32_trunc_cmp_eq_neg1(i1 addrspace(1)* %out, i1 addrspace(1)* %in) nounwind {
  %load = load i1, i1 addrspace(1)* %in
  %ext = sext i1 %load to i32
  %cmp = icmp eq i32 %ext, -1
  store i1 %cmp, i1 addrspace(1)* %out
  ret void
}




define void @zextload_i1_to_i32_trunc_cmp_eq_neg1(i1 addrspace(1)* %out, i1 addrspace(1)* %in) nounwind {
  %load = load i1, i1 addrspace(1)* %in
  %ext = zext i1 %load to i32
  %cmp = icmp eq i32 %ext, -1
  store i1 %cmp, i1 addrspace(1)* %out
  ret void
}






define void @sextload_i1_to_i32_trunc_cmp_ne_0(i1 addrspace(1)* %out, i1 addrspace(1)* %in) nounwind {
  %load = load i1, i1 addrspace(1)* %in
  %ext = sext i1 %load to i32
  %cmp = icmp ne i32 %ext, 0
  store i1 %cmp, i1 addrspace(1)* %out
  ret void
}





define void @zextload_i1_to_i32_trunc_cmp_ne_0(i1 addrspace(1)* %out, i1 addrspace(1)* %in) nounwind {
  %load = load i1, i1 addrspace(1)* %in
  %ext = zext i1 %load to i32
  %cmp = icmp ne i32 %ext, 0
  store i1 %cmp, i1 addrspace(1)* %out
  ret void
}




define void @sextload_i1_to_i32_trunc_cmp_ne_1(i1 addrspace(1)* %out, i1 addrspace(1)* %in) nounwind {
  %load = load i1, i1 addrspace(1)* %in
  %ext = sext i1 %load to i32
  %cmp = icmp ne i32 %ext, 1
  store i1 %cmp, i1 addrspace(1)* %out
  ret void
}








define void @zextload_i1_to_i32_trunc_cmp_ne_1(i1 addrspace(1)* %out, i1 addrspace(1)* %in) nounwind {
  %load = load i1, i1 addrspace(1)* %in
  %ext = zext i1 %load to i32
  %cmp = icmp ne i32 %ext, 1
  store i1 %cmp, i1 addrspace(1)* %out
  ret void
}








define void @sextload_i1_to_i32_trunc_cmp_ne_neg1(i1 addrspace(1)* %out, i1 addrspace(1)* %in) nounwind {
  %load = load i1, i1 addrspace(1)* %in
  %ext = sext i1 %load to i32
  %cmp = icmp ne i32 %ext, -1
  store i1 %cmp, i1 addrspace(1)* %out
  ret void
}




define void @zextload_i1_to_i32_trunc_cmp_ne_neg1(i1 addrspace(1)* %out, i1 addrspace(1)* %in) nounwind {
  %load = load i1, i1 addrspace(1)* %in
  %ext = zext i1 %load to i32
  %cmp = icmp ne i32 %ext, -1
  store i1 %cmp, i1 addrspace(1)* %out
  ret void
}






define void @masked_load_i1_to_i32_trunc_cmp_ne_neg1(i1 addrspace(1)* %out, i8 addrspace(1)* %in) nounwind {
  %load = load i8, i8 addrspace(1)* %in
  %masked = and i8 %load, 255
  %ext = sext i8 %masked to i32
  %cmp = icmp ne i32 %ext, -1
  store i1 %cmp, i1 addrspace(1)* %out
  ret void
}
