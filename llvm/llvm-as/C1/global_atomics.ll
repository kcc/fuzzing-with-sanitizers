





define void @atomic_add_i32_offset(i32 addrspace(1)* %out, i32 %in) {
entry:
  %gep = getelementptr i32, i32 addrspace(1)* %out, i32 4
  %0  = atomicrmw volatile add i32 addrspace(1)* %gep, i32 %in seq_cst
  ret void
}




define void @atomic_add_i32_ret_offset(i32 addrspace(1)* %out, i32 addrspace(1)* %out2, i32 %in) {
entry:
  %gep = getelementptr i32, i32 addrspace(1)* %out, i32 4
  %0  = atomicrmw volatile add i32 addrspace(1)* %gep, i32 %in seq_cst
  store i32 %0, i32 addrspace(1)* %out2
  ret void
}







define void @atomic_add_i32_addr64_offset(i32 addrspace(1)* %out, i32 %in, i64 %index) {
entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %out, i64 %index
  %gep = getelementptr i32, i32 addrspace(1)* %ptr, i32 4
  %0  = atomicrmw volatile add i32 addrspace(1)* %gep, i32 %in seq_cst
  ret void
}







define void @atomic_add_i32_ret_addr64_offset(i32 addrspace(1)* %out, i32 addrspace(1)* %out2, i32 %in, i64 %index) {
entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %out, i64 %index
  %gep = getelementptr i32, i32 addrspace(1)* %ptr, i32 4
  %0  = atomicrmw volatile add i32 addrspace(1)* %gep, i32 %in seq_cst
  store i32 %0, i32 addrspace(1)* %out2
  ret void
}



define void @atomic_add_i32(i32 addrspace(1)* %out, i32 %in) {
entry:
  %0  = atomicrmw volatile add i32 addrspace(1)* %out, i32 %in seq_cst
  ret void
}




define void @atomic_add_i32_ret(i32 addrspace(1)* %out, i32 addrspace(1)* %out2, i32 %in) {
entry:
  %0  = atomicrmw volatile add i32 addrspace(1)* %out, i32 %in seq_cst
  store i32 %0, i32 addrspace(1)* %out2
  ret void
}






define void @atomic_add_i32_addr64(i32 addrspace(1)* %out, i32 %in, i64 %index) {
entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %out, i64 %index
  %0  = atomicrmw volatile add i32 addrspace(1)* %ptr, i32 %in seq_cst
  ret void
}







define void @atomic_add_i32_ret_addr64(i32 addrspace(1)* %out, i32 addrspace(1)* %out2, i32 %in, i64 %index) {
entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %out, i64 %index
  %0  = atomicrmw volatile add i32 addrspace(1)* %ptr, i32 %in seq_cst
  store i32 %0, i32 addrspace(1)* %out2
  ret void
}



define void @atomic_and_i32_offset(i32 addrspace(1)* %out, i32 %in) {
entry:
  %gep = getelementptr i32, i32 addrspace(1)* %out, i32 4
  %0  = atomicrmw volatile and i32 addrspace(1)* %gep, i32 %in seq_cst
  ret void
}




define void @atomic_and_i32_ret_offset(i32 addrspace(1)* %out, i32 addrspace(1)* %out2, i32 %in) {
entry:
  %gep = getelementptr i32, i32 addrspace(1)* %out, i32 4
  %0  = atomicrmw volatile and i32 addrspace(1)* %gep, i32 %in seq_cst
  store i32 %0, i32 addrspace(1)* %out2
  ret void
}






define void @atomic_and_i32_addr64_offset(i32 addrspace(1)* %out, i32 %in, i64 %index) {
entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %out, i64 %index
  %gep = getelementptr i32, i32 addrspace(1)* %ptr, i32 4
  %0  = atomicrmw volatile and i32 addrspace(1)* %gep, i32 %in seq_cst
  ret void
}







define void @atomic_and_i32_ret_addr64_offset(i32 addrspace(1)* %out, i32 addrspace(1)* %out2, i32 %in, i64 %index) {
entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %out, i64 %index
  %gep = getelementptr i32, i32 addrspace(1)* %ptr, i32 4
  %0  = atomicrmw volatile and i32 addrspace(1)* %gep, i32 %in seq_cst
  store i32 %0, i32 addrspace(1)* %out2
  ret void
}



define void @atomic_and_i32(i32 addrspace(1)* %out, i32 %in) {
entry:
  %0  = atomicrmw volatile and i32 addrspace(1)* %out, i32 %in seq_cst
  ret void
}




define void @atomic_and_i32_ret(i32 addrspace(1)* %out, i32 addrspace(1)* %out2, i32 %in) {
entry:
  %0  = atomicrmw volatile and i32 addrspace(1)* %out, i32 %in seq_cst
  store i32 %0, i32 addrspace(1)* %out2
  ret void
}






define void @atomic_and_i32_addr64(i32 addrspace(1)* %out, i32 %in, i64 %index) {
entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %out, i64 %index
  %0  = atomicrmw volatile and i32 addrspace(1)* %ptr, i32 %in seq_cst
  ret void
}







define void @atomic_and_i32_ret_addr64(i32 addrspace(1)* %out, i32 addrspace(1)* %out2, i32 %in, i64 %index) {
entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %out, i64 %index
  %0  = atomicrmw volatile and i32 addrspace(1)* %ptr, i32 %in seq_cst
  store i32 %0, i32 addrspace(1)* %out2
  ret void
}



define void @atomic_sub_i32_offset(i32 addrspace(1)* %out, i32 %in) {
entry:
  %gep = getelementptr i32, i32 addrspace(1)* %out, i32 4
  %0  = atomicrmw volatile sub i32 addrspace(1)* %gep, i32 %in seq_cst
  ret void
}




define void @atomic_sub_i32_ret_offset(i32 addrspace(1)* %out, i32 addrspace(1)* %out2, i32 %in) {
entry:
  %gep = getelementptr i32, i32 addrspace(1)* %out, i32 4
  %0  = atomicrmw volatile sub i32 addrspace(1)* %gep, i32 %in seq_cst
  store i32 %0, i32 addrspace(1)* %out2
  ret void
}






define void @atomic_sub_i32_addr64_offset(i32 addrspace(1)* %out, i32 %in, i64 %index) {
entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %out, i64 %index
  %gep = getelementptr i32, i32 addrspace(1)* %ptr, i32 4
  %0  = atomicrmw volatile sub i32 addrspace(1)* %gep, i32 %in seq_cst
  ret void
}







define void @atomic_sub_i32_ret_addr64_offset(i32 addrspace(1)* %out, i32 addrspace(1)* %out2, i32 %in, i64 %index) {
entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %out, i64 %index
  %gep = getelementptr i32, i32 addrspace(1)* %ptr, i32 4
  %0  = atomicrmw volatile sub i32 addrspace(1)* %gep, i32 %in seq_cst
  store i32 %0, i32 addrspace(1)* %out2
  ret void
}



define void @atomic_sub_i32(i32 addrspace(1)* %out, i32 %in) {
entry:
  %0  = atomicrmw volatile sub i32 addrspace(1)* %out, i32 %in seq_cst
  ret void
}




define void @atomic_sub_i32_ret(i32 addrspace(1)* %out, i32 addrspace(1)* %out2, i32 %in) {
entry:
  %0  = atomicrmw volatile sub i32 addrspace(1)* %out, i32 %in seq_cst
  store i32 %0, i32 addrspace(1)* %out2
  ret void
}






define void @atomic_sub_i32_addr64(i32 addrspace(1)* %out, i32 %in, i64 %index) {
entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %out, i64 %index
  %0  = atomicrmw volatile sub i32 addrspace(1)* %ptr, i32 %in seq_cst
  ret void
}







define void @atomic_sub_i32_ret_addr64(i32 addrspace(1)* %out, i32 addrspace(1)* %out2, i32 %in, i64 %index) {
entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %out, i64 %index
  %0  = atomicrmw volatile sub i32 addrspace(1)* %ptr, i32 %in seq_cst
  store i32 %0, i32 addrspace(1)* %out2
  ret void
}



define void @atomic_max_i32_offset(i32 addrspace(1)* %out, i32 %in) {
entry:
  %gep = getelementptr i32, i32 addrspace(1)* %out, i32 4
  %0  = atomicrmw volatile max i32 addrspace(1)* %gep, i32 %in seq_cst
  ret void
}




define void @atomic_max_i32_ret_offset(i32 addrspace(1)* %out, i32 addrspace(1)* %out2, i32 %in) {
entry:
  %gep = getelementptr i32, i32 addrspace(1)* %out, i32 4
  %0  = atomicrmw volatile max i32 addrspace(1)* %gep, i32 %in seq_cst
  store i32 %0, i32 addrspace(1)* %out2
  ret void
}






define void @atomic_max_i32_addr64_offset(i32 addrspace(1)* %out, i32 %in, i64 %index) {
entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %out, i64 %index
  %gep = getelementptr i32, i32 addrspace(1)* %ptr, i32 4
  %0  = atomicrmw volatile max i32 addrspace(1)* %gep, i32 %in seq_cst
  ret void
}







define void @atomic_max_i32_ret_addr64_offset(i32 addrspace(1)* %out, i32 addrspace(1)* %out2, i32 %in, i64 %index) {
entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %out, i64 %index
  %gep = getelementptr i32, i32 addrspace(1)* %ptr, i32 4
  %0  = atomicrmw volatile max i32 addrspace(1)* %gep, i32 %in seq_cst
  store i32 %0, i32 addrspace(1)* %out2
  ret void
}



define void @atomic_max_i32(i32 addrspace(1)* %out, i32 %in) {
entry:
  %0  = atomicrmw volatile max i32 addrspace(1)* %out, i32 %in seq_cst
  ret void
}




define void @atomic_max_i32_ret(i32 addrspace(1)* %out, i32 addrspace(1)* %out2, i32 %in) {
entry:
  %0  = atomicrmw volatile max i32 addrspace(1)* %out, i32 %in seq_cst
  store i32 %0, i32 addrspace(1)* %out2
  ret void
}






define void @atomic_max_i32_addr64(i32 addrspace(1)* %out, i32 %in, i64 %index) {
entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %out, i64 %index
  %0  = atomicrmw volatile max i32 addrspace(1)* %ptr, i32 %in seq_cst
  ret void
}







define void @atomic_max_i32_ret_addr64(i32 addrspace(1)* %out, i32 addrspace(1)* %out2, i32 %in, i64 %index) {
entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %out, i64 %index
  %0  = atomicrmw volatile max i32 addrspace(1)* %ptr, i32 %in seq_cst
  store i32 %0, i32 addrspace(1)* %out2
  ret void
}



define void @atomic_umax_i32_offset(i32 addrspace(1)* %out, i32 %in) {
entry:
  %gep = getelementptr i32, i32 addrspace(1)* %out, i32 4
  %0  = atomicrmw volatile umax i32 addrspace(1)* %gep, i32 %in seq_cst
  ret void
}




define void @atomic_umax_i32_ret_offset(i32 addrspace(1)* %out, i32 addrspace(1)* %out2, i32 %in) {
entry:
  %gep = getelementptr i32, i32 addrspace(1)* %out, i32 4
  %0  = atomicrmw volatile umax i32 addrspace(1)* %gep, i32 %in seq_cst
  store i32 %0, i32 addrspace(1)* %out2
  ret void
}






define void @atomic_umax_i32_addr64_offset(i32 addrspace(1)* %out, i32 %in, i64 %index) {
entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %out, i64 %index
  %gep = getelementptr i32, i32 addrspace(1)* %ptr, i32 4
  %0  = atomicrmw volatile umax i32 addrspace(1)* %gep, i32 %in seq_cst
  ret void
}







define void @atomic_umax_i32_ret_addr64_offset(i32 addrspace(1)* %out, i32 addrspace(1)* %out2, i32 %in, i64 %index) {
entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %out, i64 %index
  %gep = getelementptr i32, i32 addrspace(1)* %ptr, i32 4
  %0  = atomicrmw volatile umax i32 addrspace(1)* %gep, i32 %in seq_cst
  store i32 %0, i32 addrspace(1)* %out2
  ret void
}



define void @atomic_umax_i32(i32 addrspace(1)* %out, i32 %in) {
entry:
  %0  = atomicrmw volatile umax i32 addrspace(1)* %out, i32 %in seq_cst
  ret void
}




define void @atomic_umax_i32_ret(i32 addrspace(1)* %out, i32 addrspace(1)* %out2, i32 %in) {
entry:
  %0  = atomicrmw volatile umax i32 addrspace(1)* %out, i32 %in seq_cst
  store i32 %0, i32 addrspace(1)* %out2
  ret void
}






define void @atomic_umax_i32_addr64(i32 addrspace(1)* %out, i32 %in, i64 %index) {
entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %out, i64 %index
  %0  = atomicrmw volatile umax i32 addrspace(1)* %ptr, i32 %in seq_cst
  ret void
}







define void @atomic_umax_i32_ret_addr64(i32 addrspace(1)* %out, i32 addrspace(1)* %out2, i32 %in, i64 %index) {
entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %out, i64 %index
  %0  = atomicrmw volatile umax i32 addrspace(1)* %ptr, i32 %in seq_cst
  store i32 %0, i32 addrspace(1)* %out2
  ret void
}



define void @atomic_min_i32_offset(i32 addrspace(1)* %out, i32 %in) {
entry:
  %gep = getelementptr i32, i32 addrspace(1)* %out, i32 4
  %0  = atomicrmw volatile min i32 addrspace(1)* %gep, i32 %in seq_cst
  ret void
}




define void @atomic_min_i32_ret_offset(i32 addrspace(1)* %out, i32 addrspace(1)* %out2, i32 %in) {
entry:
  %gep = getelementptr i32, i32 addrspace(1)* %out, i32 4
  %0  = atomicrmw volatile min i32 addrspace(1)* %gep, i32 %in seq_cst
  store i32 %0, i32 addrspace(1)* %out2
  ret void
}






define void @atomic_min_i32_addr64_offset(i32 addrspace(1)* %out, i32 %in, i64 %index) {
entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %out, i64 %index
  %gep = getelementptr i32, i32 addrspace(1)* %ptr, i32 4
  %0  = atomicrmw volatile min i32 addrspace(1)* %gep, i32 %in seq_cst
  ret void
}







define void @atomic_min_i32_ret_addr64_offset(i32 addrspace(1)* %out, i32 addrspace(1)* %out2, i32 %in, i64 %index) {
entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %out, i64 %index
  %gep = getelementptr i32, i32 addrspace(1)* %ptr, i32 4
  %0  = atomicrmw volatile min i32 addrspace(1)* %gep, i32 %in seq_cst
  store i32 %0, i32 addrspace(1)* %out2
  ret void
}



define void @atomic_min_i32(i32 addrspace(1)* %out, i32 %in) {
entry:
  %0  = atomicrmw volatile min i32 addrspace(1)* %out, i32 %in seq_cst
  ret void
}




define void @atomic_min_i32_ret(i32 addrspace(1)* %out, i32 addrspace(1)* %out2, i32 %in) {
entry:
  %0  = atomicrmw volatile min i32 addrspace(1)* %out, i32 %in seq_cst
  store i32 %0, i32 addrspace(1)* %out2
  ret void
}






define void @atomic_min_i32_addr64(i32 addrspace(1)* %out, i32 %in, i64 %index) {
entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %out, i64 %index
  %0  = atomicrmw volatile min i32 addrspace(1)* %ptr, i32 %in seq_cst
  ret void
}







define void @atomic_min_i32_ret_addr64(i32 addrspace(1)* %out, i32 addrspace(1)* %out2, i32 %in, i64 %index) {
entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %out, i64 %index
  %0  = atomicrmw volatile min i32 addrspace(1)* %ptr, i32 %in seq_cst
  store i32 %0, i32 addrspace(1)* %out2
  ret void
}



define void @atomic_umin_i32_offset(i32 addrspace(1)* %out, i32 %in) {
entry:
  %gep = getelementptr i32, i32 addrspace(1)* %out, i32 4
  %0  = atomicrmw volatile umin i32 addrspace(1)* %gep, i32 %in seq_cst
  ret void
}




define void @atomic_umin_i32_ret_offset(i32 addrspace(1)* %out, i32 addrspace(1)* %out2, i32 %in) {
entry:
  %gep = getelementptr i32, i32 addrspace(1)* %out, i32 4
  %0  = atomicrmw volatile umin i32 addrspace(1)* %gep, i32 %in seq_cst
  store i32 %0, i32 addrspace(1)* %out2
  ret void
}






define void @atomic_umin_i32_addr64_offset(i32 addrspace(1)* %out, i32 %in, i64 %index) {
entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %out, i64 %index
  %gep = getelementptr i32, i32 addrspace(1)* %ptr, i32 4
  %0  = atomicrmw volatile umin i32 addrspace(1)* %gep, i32 %in seq_cst
  ret void
}







define void @atomic_umin_i32_ret_addr64_offset(i32 addrspace(1)* %out, i32 addrspace(1)* %out2, i32 %in, i64 %index) {
entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %out, i64 %index
  %gep = getelementptr i32, i32 addrspace(1)* %ptr, i32 4
  %0  = atomicrmw volatile umin i32 addrspace(1)* %gep, i32 %in seq_cst
  store i32 %0, i32 addrspace(1)* %out2
  ret void
}



define void @atomic_umin_i32(i32 addrspace(1)* %out, i32 %in) {
entry:
  %0  = atomicrmw volatile umin i32 addrspace(1)* %out, i32 %in seq_cst
  ret void
}




define void @atomic_umin_i32_ret(i32 addrspace(1)* %out, i32 addrspace(1)* %out2, i32 %in) {
entry:
  %0  = atomicrmw volatile umin i32 addrspace(1)* %out, i32 %in seq_cst
  store i32 %0, i32 addrspace(1)* %out2
  ret void
}






define void @atomic_umin_i32_addr64(i32 addrspace(1)* %out, i32 %in, i64 %index) {
entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %out, i64 %index
  %0  = atomicrmw volatile umin i32 addrspace(1)* %ptr, i32 %in seq_cst
  ret void
}







define void @atomic_umin_i32_ret_addr64(i32 addrspace(1)* %out, i32 addrspace(1)* %out2, i32 %in, i64 %index) {
entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %out, i64 %index
  %0  = atomicrmw volatile umin i32 addrspace(1)* %ptr, i32 %in seq_cst
  store i32 %0, i32 addrspace(1)* %out2
  ret void
}



define void @atomic_or_i32_offset(i32 addrspace(1)* %out, i32 %in) {
entry:
  %gep = getelementptr i32, i32 addrspace(1)* %out, i32 4
  %0  = atomicrmw volatile or i32 addrspace(1)* %gep, i32 %in seq_cst
  ret void
}




define void @atomic_or_i32_ret_offset(i32 addrspace(1)* %out, i32 addrspace(1)* %out2, i32 %in) {
entry:
  %gep = getelementptr i32, i32 addrspace(1)* %out, i32 4
  %0  = atomicrmw volatile or i32 addrspace(1)* %gep, i32 %in seq_cst
  store i32 %0, i32 addrspace(1)* %out2
  ret void
}






define void @atomic_or_i32_addr64_offset(i32 addrspace(1)* %out, i32 %in, i64 %index) {
entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %out, i64 %index
  %gep = getelementptr i32, i32 addrspace(1)* %ptr, i32 4
  %0  = atomicrmw volatile or i32 addrspace(1)* %gep, i32 %in seq_cst
  ret void
}







define void @atomic_or_i32_ret_addr64_offset(i32 addrspace(1)* %out, i32 addrspace(1)* %out2, i32 %in, i64 %index) {
entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %out, i64 %index
  %gep = getelementptr i32, i32 addrspace(1)* %ptr, i32 4
  %0  = atomicrmw volatile or i32 addrspace(1)* %gep, i32 %in seq_cst
  store i32 %0, i32 addrspace(1)* %out2
  ret void
}



define void @atomic_or_i32(i32 addrspace(1)* %out, i32 %in) {
entry:
  %0  = atomicrmw volatile or i32 addrspace(1)* %out, i32 %in seq_cst
  ret void
}




define void @atomic_or_i32_ret(i32 addrspace(1)* %out, i32 addrspace(1)* %out2, i32 %in) {
entry:
  %0  = atomicrmw volatile or i32 addrspace(1)* %out, i32 %in seq_cst
  store i32 %0, i32 addrspace(1)* %out2
  ret void
}






define void @atomic_or_i32_addr64(i32 addrspace(1)* %out, i32 %in, i64 %index) {
entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %out, i64 %index
  %0  = atomicrmw volatile or i32 addrspace(1)* %ptr, i32 %in seq_cst
  ret void
}







define void @atomic_or_i32_ret_addr64(i32 addrspace(1)* %out, i32 addrspace(1)* %out2, i32 %in, i64 %index) {
entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %out, i64 %index
  %0  = atomicrmw volatile or i32 addrspace(1)* %ptr, i32 %in seq_cst
  store i32 %0, i32 addrspace(1)* %out2
  ret void
}



define void @atomic_xchg_i32_offset(i32 addrspace(1)* %out, i32 %in) {
entry:
  %gep = getelementptr i32, i32 addrspace(1)* %out, i32 4
  %0  = atomicrmw volatile xchg i32 addrspace(1)* %gep, i32 %in seq_cst
  ret void
}




define void @atomic_xchg_i32_ret_offset(i32 addrspace(1)* %out, i32 addrspace(1)* %out2, i32 %in) {
entry:
  %gep = getelementptr i32, i32 addrspace(1)* %out, i32 4
  %0  = atomicrmw volatile xchg i32 addrspace(1)* %gep, i32 %in seq_cst
  store i32 %0, i32 addrspace(1)* %out2
  ret void
}



define void @atomic_xchg_i32_addr64_offset(i32 addrspace(1)* %out, i32 %in, i64 %index) {
entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %out, i64 %index
  %gep = getelementptr i32, i32 addrspace(1)* %ptr, i32 4
  %0  = atomicrmw volatile xchg i32 addrspace(1)* %gep, i32 %in seq_cst
  ret void
}







define void @atomic_xchg_i32_ret_addr64_offset(i32 addrspace(1)* %out, i32 addrspace(1)* %out2, i32 %in, i64 %index) {
entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %out, i64 %index
  %gep = getelementptr i32, i32 addrspace(1)* %ptr, i32 4
  %0  = atomicrmw volatile xchg i32 addrspace(1)* %gep, i32 %in seq_cst
  store i32 %0, i32 addrspace(1)* %out2
  ret void
}



define void @atomic_xchg_i32(i32 addrspace(1)* %out, i32 %in) {
entry:
  %0  = atomicrmw volatile xchg i32 addrspace(1)* %out, i32 %in seq_cst
  ret void
}




define void @atomic_xchg_i32_ret(i32 addrspace(1)* %out, i32 addrspace(1)* %out2, i32 %in) {
entry:
  %0  = atomicrmw volatile xchg i32 addrspace(1)* %out, i32 %in seq_cst
  store i32 %0, i32 addrspace(1)* %out2
  ret void
}






define void @atomic_xchg_i32_addr64(i32 addrspace(1)* %out, i32 %in, i64 %index) {
entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %out, i64 %index
  %0  = atomicrmw volatile xchg i32 addrspace(1)* %ptr, i32 %in seq_cst
  ret void
}







define void @atomic_xchg_i32_ret_addr64(i32 addrspace(1)* %out, i32 addrspace(1)* %out2, i32 %in, i64 %index) {
entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %out, i64 %index
  %0  = atomicrmw volatile xchg i32 addrspace(1)* %ptr, i32 %in seq_cst
  store i32 %0, i32 addrspace(1)* %out2
  ret void
}



define void @atomic_xor_i32_offset(i32 addrspace(1)* %out, i32 %in) {
entry:
  %gep = getelementptr i32, i32 addrspace(1)* %out, i32 4
  %0  = atomicrmw volatile xor i32 addrspace(1)* %gep, i32 %in seq_cst
  ret void
}




define void @atomic_xor_i32_ret_offset(i32 addrspace(1)* %out, i32 addrspace(1)* %out2, i32 %in) {
entry:
  %gep = getelementptr i32, i32 addrspace(1)* %out, i32 4
  %0  = atomicrmw volatile xor i32 addrspace(1)* %gep, i32 %in seq_cst
  store i32 %0, i32 addrspace(1)* %out2
  ret void
}






define void @atomic_xor_i32_addr64_offset(i32 addrspace(1)* %out, i32 %in, i64 %index) {
entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %out, i64 %index
  %gep = getelementptr i32, i32 addrspace(1)* %ptr, i32 4
  %0  = atomicrmw volatile xor i32 addrspace(1)* %gep, i32 %in seq_cst
  ret void
}







define void @atomic_xor_i32_ret_addr64_offset(i32 addrspace(1)* %out, i32 addrspace(1)* %out2, i32 %in, i64 %index) {
entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %out, i64 %index
  %gep = getelementptr i32, i32 addrspace(1)* %ptr, i32 4
  %0  = atomicrmw volatile xor i32 addrspace(1)* %gep, i32 %in seq_cst
  store i32 %0, i32 addrspace(1)* %out2
  ret void
}



define void @atomic_xor_i32(i32 addrspace(1)* %out, i32 %in) {
entry:
  %0  = atomicrmw volatile xor i32 addrspace(1)* %out, i32 %in seq_cst
  ret void
}




define void @atomic_xor_i32_ret(i32 addrspace(1)* %out, i32 addrspace(1)* %out2, i32 %in) {
entry:
  %0  = atomicrmw volatile xor i32 addrspace(1)* %out, i32 %in seq_cst
  store i32 %0, i32 addrspace(1)* %out2
  ret void
}






define void @atomic_xor_i32_addr64(i32 addrspace(1)* %out, i32 %in, i64 %index) {
entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %out, i64 %index
  %0  = atomicrmw volatile xor i32 addrspace(1)* %ptr, i32 %in seq_cst
  ret void
}







define void @atomic_xor_i32_ret_addr64(i32 addrspace(1)* %out, i32 addrspace(1)* %out2, i32 %in, i64 %index) {
entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %out, i64 %index
  %0  = atomicrmw volatile xor i32 addrspace(1)* %ptr, i32 %in seq_cst
  store i32 %0, i32 addrspace(1)* %out2
  ret void
}
