












define void @sext_bool_icmp_eq_0(i1 addrspace(1)* %out, i32 %a, i32 %b) nounwind {
  %icmp0 = icmp eq i32 %a, %b
  %ext = sext i1 %icmp0 to i32
  %icmp1 = icmp eq i32 %ext, 0
  store i1 %icmp1, i1 addrspace(1)* %out
  ret void
}










define void @sext_bool_icmp_ne_0(i1 addrspace(1)* %out, i32 %a, i32 %b) nounwind {
  %icmp0 = icmp ne i32 %a, %b
  %ext = sext i1 %icmp0 to i32
  %icmp1 = icmp ne i32 %ext, 0
  store i1 %icmp1, i1 addrspace(1)* %out
  ret void
}









define void @sext_bool_icmp_eq_1(i1 addrspace(1)* %out, i32 %a, i32 %b) nounwind {
  %icmp0 = icmp eq i32 %a, %b
  %ext = sext i1 %icmp0 to i32
  %icmp1 = icmp eq i32 %ext, 1
  store i1 %icmp1, i1 addrspace(1)* %out
  ret void
}









define void @sext_bool_icmp_ne_1(i1 addrspace(1)* %out, i32 %a, i32 %b) nounwind {
  %icmp0 = icmp ne i32 %a, %b
  %ext = sext i1 %icmp0 to i32
  %icmp1 = icmp ne i32 %ext, 1
  store i1 %icmp1, i1 addrspace(1)* %out
  ret void
}







define void @zext_bool_icmp_eq_0(i1 addrspace(1)* %out, i32 %a, i32 %b) nounwind {
  %icmp0 = icmp eq i32 %a, %b
  %ext = zext i1 %icmp0 to i32
  %icmp1 = icmp eq i32 %ext, 0
  store i1 %icmp1, i1 addrspace(1)* %out
  ret void
}







define void @zext_bool_icmp_ne_0(i1 addrspace(1)* %out, i32 %a, i32 %b) nounwind {
  %icmp0 = icmp ne i32 %a, %b
  %ext = zext i1 %icmp0 to i32
  %icmp1 = icmp ne i32 %ext, 0
  store i1 %icmp1, i1 addrspace(1)* %out
  ret void
}







define void @zext_bool_icmp_eq_1(i1 addrspace(1)* %out, i32 %a, i32 %b) nounwind {
  %icmp0 = icmp eq i32 %a, %b
  %ext = zext i1 %icmp0 to i32
  %icmp1 = icmp eq i32 %ext, 1
  store i1 %icmp1, i1 addrspace(1)* %out
  ret void
}






define void @zext_bool_icmp_ne_1(i1 addrspace(1)* %out, i32 %a, i32 %b) nounwind {
  %icmp0 = icmp ne i32 %a, %b
  %ext = zext i1 %icmp0 to i32
  %icmp1 = icmp ne i32 %ext, 1
  store i1 %icmp1, i1 addrspace(1)* %out
  ret void
}











define void @sext_bool_icmp_ne_k(i1 addrspace(1)* %out, i32 %a, i32 %b) nounwind {
  %icmp0 = icmp ne i32 %a, %b
  %ext = sext i1 %icmp0 to i32
  %icmp1 = icmp ne i32 %ext, 2
  store i1 %icmp1, i1 addrspace(1)* %out
  ret void
}








define void @cmp_zext_k_i8max(i1 addrspace(1)* %out, i8 %b) nounwind {
  %b.ext = zext i8 %b to i32
  %icmp0 = icmp ne i32 %b.ext, 255
  store i1 %icmp0, i1 addrspace(1)* %out
  ret void
}







define void @cmp_sext_k_neg1(i1 addrspace(1)* %out, i8 addrspace(1)* %b.ptr) nounwind {
  %b = load i8, i8 addrspace(1)* %b.ptr
  %b.ext = sext i8 %b to i32
  %icmp0 = icmp ne i32 %b.ext, -1
  store i1 %icmp0, i1 addrspace(1)* %out
  ret void
}







define void @cmp_sext_k_neg1_i8_sext_arg(i1 addrspace(1)* %out, i8 signext %b) nounwind {
  %b.ext = sext i8 %b to i32
  %icmp0 = icmp ne i32 %b.ext, -1
  store i1 %icmp0, i1 addrspace(1)* %out
  ret void
}












define void @cmp_sext_k_neg1_i8_arg(i1 addrspace(1)* %out, i8 %b) nounwind {
  %b.ext = sext i8 %b to i32
  %icmp0 = icmp ne i32 %b.ext, -1
  store i1 %icmp0, i1 addrspace(1)* %out
  ret void
}





define void @cmp_zext_k_neg1(i1 addrspace(1)* %out, i8 %b) nounwind {
  %b.ext = zext i8 %b to i32
  %icmp0 = icmp ne i32 %b.ext, -1
  store i1 %icmp0, i1 addrspace(1)* %out
  ret void
}





define void @zext_bool_icmp_ne_k(i1 addrspace(1)* %out, i32 %a, i32 %b) nounwind {
  %icmp0 = icmp ne i32 %a, %b
  %ext = zext i1 %icmp0 to i32
  %icmp1 = icmp ne i32 %ext, 2
  store i1 %icmp1, i1 addrspace(1)* %out
  ret void
}





define void @zext_bool_icmp_eq_k(i1 addrspace(1)* %out, i32 %a, i32 %b) nounwind {
  %icmp0 = icmp ne i32 %a, %b
  %ext = zext i1 %icmp0 to i32
  %icmp1 = icmp eq i32 %ext, 2
  store i1 %icmp1, i1 addrspace(1)* %out
  ret void
}
