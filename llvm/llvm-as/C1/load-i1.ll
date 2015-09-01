











define void @global_copy_i1_to_i1(i1 addrspace(1)* %out, i1 addrspace(1)* %in) nounwind {
  %load = load i1, i1 addrspace(1)* %in
  store i1 %load, i1 addrspace(1)* %out, align 1
  ret void
}










define void @local_copy_i1_to_i1(i1 addrspace(3)* %out, i1 addrspace(3)* %in) nounwind {
  %load = load i1, i1 addrspace(3)* %in
  store i1 %load, i1 addrspace(3)* %out, align 1
  ret void
}









define void @constant_copy_i1_to_i1(i1 addrspace(1)* %out, i1 addrspace(2)* %in) nounwind {
  %load = load i1, i1 addrspace(2)* %in
  store i1 %load, i1 addrspace(1)* %out, align 1
  ret void
}









define void @global_sextload_i1_to_i32(i32 addrspace(1)* %out, i1 addrspace(1)* %in) nounwind {
  %load = load i1, i1 addrspace(1)* %in
  %ext = sext i1 %load to i32
  store i32 %ext, i32 addrspace(1)* %out, align 4
  ret void
}






define void @global_zextload_i1_to_i32(i32 addrspace(1)* %out, i1 addrspace(1)* %in) nounwind {
  %load = load i1, i1 addrspace(1)* %in
  %ext = zext i1 %load to i32
  store i32 %ext, i32 addrspace(1)* %out, align 4
  ret void
}






define void @global_sextload_i1_to_i64(i64 addrspace(1)* %out, i1 addrspace(1)* %in) nounwind {
  %load = load i1, i1 addrspace(1)* %in
  %ext = sext i1 %load to i64
  store i64 %ext, i64 addrspace(1)* %out, align 4
  ret void
}






define void @global_zextload_i1_to_i64(i64 addrspace(1)* %out, i1 addrspace(1)* %in) nounwind {
  %load = load i1, i1 addrspace(1)* %in
  %ext = zext i1 %load to i64
  store i64 %ext, i64 addrspace(1)* %out, align 4
  ret void
}






define void @i1_arg(i1 addrspace(1)* %out, i1 %x) nounwind {
  store i1 %x, i1 addrspace(1)* %out, align 1
  ret void
}





define void @i1_arg_zext_i32(i32 addrspace(1)* %out, i1 %x) nounwind {
  %ext = zext i1 %x to i32
  store i32 %ext, i32 addrspace(1)* %out, align 4
  ret void
}





define void @i1_arg_zext_i64(i64 addrspace(1)* %out, i1 %x) nounwind {
  %ext = zext i1 %x to i64
  store i64 %ext, i64 addrspace(1)* %out, align 8
  ret void
}





define void @i1_arg_sext_i32(i32 addrspace(1)* %out, i1 %x) nounwind {
  %ext = sext i1 %x to i32
  store i32 %ext, i32addrspace(1)* %out, align 4
  ret void
}







define void @i1_arg_sext_i64(i64 addrspace(1)* %out, i1 %x) nounwind {
  %ext = sext i1 %x to i64
  store i64 %ext, i64 addrspace(1)* %out, align 8
  ret void
}
