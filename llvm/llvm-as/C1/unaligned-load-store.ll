








define void @unaligned_load_store_i16_local(i16 addrspace(3)* %p, i16 addrspace(3)* %r) nounwind {
  %v = load i16, i16 addrspace(3)* %p, align 1
  store i16 %v, i16 addrspace(3)* %r, align 1
  ret void
}







define void @unaligned_load_store_i16_global(i16 addrspace(1)* %p, i16 addrspace(1)* %r) nounwind {
  %v = load i16, i16 addrspace(1)* %p, align 1
  store i16 %v, i16 addrspace(1)* %r, align 1
  ret void
}











define void @unaligned_load_store_i32_local(i32 addrspace(3)* %p, i32 addrspace(3)* %r) nounwind {
  %v = load i32, i32 addrspace(3)* %p, align 1
  store i32 %v, i32 addrspace(3)* %r, align 1
  ret void
}










define void @unaligned_load_store_i32_global(i32 addrspace(1)* %p, i32 addrspace(1)* %r) nounwind {
  %v = load i32, i32 addrspace(1)* %p, align 1
  store i32 %v, i32 addrspace(1)* %r, align 1
  ret void
}



















define void @unaligned_load_store_i64_local(i64 addrspace(3)* %p, i64 addrspace(3)* %r) {
  %v = load i64, i64 addrspace(3)* %p, align 1
  store i64 %v, i64 addrspace(3)* %r, align 1
  ret void
}


















define void @unaligned_load_store_i64_global(i64 addrspace(1)* %p, i64 addrspace(1)* %r) {
  %v = load i64, i64 addrspace(1)* %p, align 1
  store i64 %v, i64 addrspace(1)* %r, align 1
  ret void
}










































define void @unaligned_load_store_v4i32_local(<4 x i32> addrspace(3)* %p, <4 x i32> addrspace(3)* %r) nounwind {
  %v = load <4 x i32>, <4 x i32> addrspace(3)* %p, align 1
  store <4 x i32> %v, <4 x i32> addrspace(3)* %r, align 1
  ret void
}



















define void @unaligned_load_store_v4i32_global(<4 x i32> addrspace(1)* %p, <4 x i32> addrspace(1)* %r) nounwind {
  %v = load <4 x i32>, <4 x i32> addrspace(1)* %p, align 1
  store <4 x i32> %v, <4 x i32> addrspace(1)* %r, align 1
  ret void
}




define void @load_lds_i64_align_4(i64 addrspace(1)* nocapture %out, i64 addrspace(3)* %in) #0 {
  %val = load i64, i64 addrspace(3)* %in, align 4
  store i64 %val, i64 addrspace(1)* %out, align 8
  ret void
}




define void @load_lds_i64_align_4_with_offset(i64 addrspace(1)* nocapture %out, i64 addrspace(3)* %in) #0 {
  %ptr = getelementptr i64, i64 addrspace(3)* %in, i32 4
  %val = load i64, i64 addrspace(3)* %ptr, align 4
  store i64 %val, i64 addrspace(1)* %out, align 8
  ret void
}





define void @load_lds_i64_align_4_with_split_offset(i64 addrspace(1)* nocapture %out, i64 addrspace(3)* %in) #0 {
  %ptr = bitcast i64 addrspace(3)* %in to i32 addrspace(3)*
  %ptr255 = getelementptr i32, i32 addrspace(3)* %ptr, i32 255
  %ptri64 = bitcast i32 addrspace(3)* %ptr255 to i64 addrspace(3)*
  %val = load i64, i64 addrspace(3)* %ptri64, align 4
  store i64 %val, i64 addrspace(1)* %out, align 8
  ret void
}













define void @load_lds_i64_align_1(i64 addrspace(1)* nocapture %out, i64 addrspace(3)* %in) #0 {
  %val = load i64, i64 addrspace(3)* %in, align 1
  store i64 %val, i64 addrspace(1)* %out, align 8
  ret void
}




define void @store_lds_i64_align_4(i64 addrspace(3)* %out, i64 %val) #0 {
  store i64 %val, i64 addrspace(3)* %out, align 4
  ret void
}




define void @store_lds_i64_align_4_with_offset(i64 addrspace(3)* %out) #0 {
  %ptr = getelementptr i64, i64 addrspace(3)* %out, i32 4
  store i64 0, i64 addrspace(3)* %ptr, align 4
  ret void
}





define void @store_lds_i64_align_4_with_split_offset(i64 addrspace(3)* %out) #0 {
  %ptr = bitcast i64 addrspace(3)* %out to i32 addrspace(3)*
  %ptr255 = getelementptr i32, i32 addrspace(3)* %ptr, i32 255
  %ptri64 = bitcast i32 addrspace(3)* %ptr255 to i64 addrspace(3)*
  store i64 0, i64 addrspace(3)* %out, align 4
  ret void
}
