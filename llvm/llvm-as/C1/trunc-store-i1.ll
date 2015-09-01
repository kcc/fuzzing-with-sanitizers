








define void @global_truncstore_i32_to_i1(i1 addrspace(1)* %out, i32 %val) nounwind {
  %trunc = trunc i32 %val to i1
  store i1 %trunc, i1 addrspace(1)* %out, align 1
  ret void
}



define void @global_truncstore_i64_to_i1(i1 addrspace(1)* %out, i64 %val) nounwind {
  %trunc = trunc i64 %val to i1
  store i1 %trunc, i1 addrspace(1)* %out, align 1
  ret void
}






define void @global_truncstore_i16_to_i1(i1 addrspace(1)* %out, i16 %val) nounwind {
  %trunc = trunc i16 %val to i1
  store i1 %trunc, i1 addrspace(1)* %out, align 1
  ret void
}
