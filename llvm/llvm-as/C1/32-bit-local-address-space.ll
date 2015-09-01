














define void @local_address_load(i32 addrspace(1)* %out, i32 addrspace(3)* %in) {
entry:
  %0 = load i32, i32 addrspace(3)* %in
  store i32 %0, i32 addrspace(1)* %out
  ret void
}





define void @local_address_gep(i32 addrspace(1)* %out, i32 addrspace(3)* %in, i32 %offset) {
entry:
  %0 = getelementptr i32, i32 addrspace(3)* %in, i32 %offset
  %1 = load i32, i32 addrspace(3)* %0
  store i32 %1, i32 addrspace(1)* %out
  ret void
}




define void @local_address_gep_const_offset(i32 addrspace(1)* %out, i32 addrspace(3)* %in) {
entry:
  %0 = getelementptr i32, i32 addrspace(3)* %in, i32 1
  %1 = load i32, i32 addrspace(3)* %0
  store i32 %1, i32 addrspace(1)* %out
  ret void
}






define void @local_address_gep_large_const_offset(i32 addrspace(1)* %out, i32 addrspace(3)* %in) {
entry:
  %0 = getelementptr i32, i32 addrspace(3)* %in, i32 16385
  %1 = load i32, i32 addrspace(3)* %0
  store i32 %1, i32 addrspace(1)* %out
  ret void
}





define void @null_32bit_lds_ptr(i32 addrspace(1)* %out, i32 addrspace(3)* %lds) nounwind {
  %cmp = icmp ne i32 addrspace(3)* %lds, null
  %x = select i1 %cmp, i32 123, i32 456
  store i32 %x, i32 addrspace(1)* %out
  ret void
}





define void @mul_32bit_ptr(float addrspace(1)* %out, [3 x float] addrspace(3)* %lds, i32 %tid) {
  %ptr = getelementptr [3 x float], [3 x float] addrspace(3)* %lds, i32 %tid, i32 0
  %val = load float, float addrspace(3)* %ptr
  store float %val, float addrspace(1)* %out
  ret void
}

@g_lds = addrspace(3) global float undef, align 4




define void @infer_ptr_alignment_global_offset(float addrspace(1)* %out, i32 %tid) {
  %val = load float, float addrspace(3)* @g_lds
  store float %val, float addrspace(1)* %out
  ret void
}


@ptr = addrspace(3) global i32 addrspace(3)* undef
@dst = addrspace(3) global [16384 x i32] undef



define void @global_ptr() nounwind {
  store i32 addrspace(3)* getelementptr ([16384 x i32], [16384 x i32] addrspace(3)* @dst, i32 0, i32 16), i32 addrspace(3)* addrspace(3)* @ptr
  ret void
}



define void @local_address_store(i32 addrspace(3)* %out, i32 %val) {
  store i32 %val, i32 addrspace(3)* %out
  ret void
}





define void @local_address_gep_store(i32 addrspace(3)* %out, i32, i32 %val, i32 %offset) {
  %gep = getelementptr i32, i32 addrspace(3)* %out, i32 %offset
  store i32 %val, i32 addrspace(3)* %gep, align 4
  ret void
}





define void @local_address_gep_const_offset_store(i32 addrspace(3)* %out, i32 %val) {
  %gep = getelementptr i32, i32 addrspace(3)* %out, i32 1
  store i32 %val, i32 addrspace(3)* %gep, align 4
  ret void
}






define void @local_address_gep_large_const_offset_store(i32 addrspace(3)* %out, i32 %val) {
  %gep = getelementptr i32, i32 addrspace(3)* %out, i32 16385
  store i32 %val, i32 addrspace(3)* %gep, align 4
  ret void
}
