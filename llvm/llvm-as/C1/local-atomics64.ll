





define void @lds_atomic_xchg_ret_i64(i64 addrspace(1)* %out, i64 addrspace(3)* %ptr) nounwind {
  %result = atomicrmw xchg i64 addrspace(3)* %ptr, i64 4 seq_cst
  store i64 %result, i64 addrspace(1)* %out, align 8
  ret void
}




define void @lds_atomic_xchg_ret_i64_offset(i64 addrspace(1)* %out, i64 addrspace(3)* %ptr) nounwind {
  %gep = getelementptr i64, i64 addrspace(3)* %ptr, i32 4
  %result = atomicrmw xchg i64 addrspace(3)* %gep, i64 4 seq_cst
  store i64 %result, i64 addrspace(1)* %out, align 8
  ret void
}




define void @lds_atomic_add_ret_i64(i64 addrspace(1)* %out, i64 addrspace(3)* %ptr) nounwind {
  %result = atomicrmw add i64 addrspace(3)* %ptr, i64 4 seq_cst
  store i64 %result, i64 addrspace(1)* %out, align 8
  ret void
}










define void @lds_atomic_add_ret_i64_offset(i64 addrspace(1)* %out, i64 addrspace(3)* %ptr) nounwind {
  %gep = getelementptr i64, i64 addrspace(3)* %ptr, i64 4
  %result = atomicrmw add i64 addrspace(3)* %gep, i64 9 seq_cst
  store i64 %result, i64 addrspace(1)* %out, align 8
  ret void
}







define void @lds_atomic_inc_ret_i64(i64 addrspace(1)* %out, i64 addrspace(3)* %ptr) nounwind {
  %result = atomicrmw add i64 addrspace(3)* %ptr, i64 1 seq_cst
  store i64 %result, i64 addrspace(1)* %out, align 8
  ret void
}




define void @lds_atomic_inc_ret_i64_offset(i64 addrspace(1)* %out, i64 addrspace(3)* %ptr) nounwind {
  %gep = getelementptr i64, i64 addrspace(3)* %ptr, i32 4
  %result = atomicrmw add i64 addrspace(3)* %gep, i64 1 seq_cst
  store i64 %result, i64 addrspace(1)* %out, align 8
  ret void
}




define void @lds_atomic_sub_ret_i64(i64 addrspace(1)* %out, i64 addrspace(3)* %ptr) nounwind {
  %result = atomicrmw sub i64 addrspace(3)* %ptr, i64 4 seq_cst
  store i64 %result, i64 addrspace(1)* %out, align 8
  ret void
}




define void @lds_atomic_sub_ret_i64_offset(i64 addrspace(1)* %out, i64 addrspace(3)* %ptr) nounwind {
  %gep = getelementptr i64, i64 addrspace(3)* %ptr, i32 4
  %result = atomicrmw sub i64 addrspace(3)* %gep, i64 4 seq_cst
  store i64 %result, i64 addrspace(1)* %out, align 8
  ret void
}







define void @lds_atomic_dec_ret_i64(i64 addrspace(1)* %out, i64 addrspace(3)* %ptr) nounwind {
  %result = atomicrmw sub i64 addrspace(3)* %ptr, i64 1 seq_cst
  store i64 %result, i64 addrspace(1)* %out, align 8
  ret void
}




define void @lds_atomic_dec_ret_i64_offset(i64 addrspace(1)* %out, i64 addrspace(3)* %ptr) nounwind {
  %gep = getelementptr i64, i64 addrspace(3)* %ptr, i32 4
  %result = atomicrmw sub i64 addrspace(3)* %gep, i64 1 seq_cst
  store i64 %result, i64 addrspace(1)* %out, align 8
  ret void
}




define void @lds_atomic_and_ret_i64(i64 addrspace(1)* %out, i64 addrspace(3)* %ptr) nounwind {
  %result = atomicrmw and i64 addrspace(3)* %ptr, i64 4 seq_cst
  store i64 %result, i64 addrspace(1)* %out, align 8
  ret void
}




define void @lds_atomic_and_ret_i64_offset(i64 addrspace(1)* %out, i64 addrspace(3)* %ptr) nounwind {
  %gep = getelementptr i64, i64 addrspace(3)* %ptr, i32 4
  %result = atomicrmw and i64 addrspace(3)* %gep, i64 4 seq_cst
  store i64 %result, i64 addrspace(1)* %out, align 8
  ret void
}




define void @lds_atomic_or_ret_i64(i64 addrspace(1)* %out, i64 addrspace(3)* %ptr) nounwind {
  %result = atomicrmw or i64 addrspace(3)* %ptr, i64 4 seq_cst
  store i64 %result, i64 addrspace(1)* %out, align 8
  ret void
}




define void @lds_atomic_or_ret_i64_offset(i64 addrspace(1)* %out, i64 addrspace(3)* %ptr) nounwind {
  %gep = getelementptr i64, i64 addrspace(3)* %ptr, i32 4
  %result = atomicrmw or i64 addrspace(3)* %gep, i64 4 seq_cst
  store i64 %result, i64 addrspace(1)* %out, align 8
  ret void
}




define void @lds_atomic_xor_ret_i64(i64 addrspace(1)* %out, i64 addrspace(3)* %ptr) nounwind {
  %result = atomicrmw xor i64 addrspace(3)* %ptr, i64 4 seq_cst
  store i64 %result, i64 addrspace(1)* %out, align 8
  ret void
}




define void @lds_atomic_xor_ret_i64_offset(i64 addrspace(1)* %out, i64 addrspace(3)* %ptr) nounwind {
  %gep = getelementptr i64, i64 addrspace(3)* %ptr, i32 4
  %result = atomicrmw xor i64 addrspace(3)* %gep, i64 4 seq_cst
  store i64 %result, i64 addrspace(1)* %out, align 8
  ret void
}












define void @lds_atomic_min_ret_i64(i64 addrspace(1)* %out, i64 addrspace(3)* %ptr) nounwind {
  %result = atomicrmw min i64 addrspace(3)* %ptr, i64 4 seq_cst
  store i64 %result, i64 addrspace(1)* %out, align 8
  ret void
}




define void @lds_atomic_min_ret_i64_offset(i64 addrspace(1)* %out, i64 addrspace(3)* %ptr) nounwind {
  %gep = getelementptr i64, i64 addrspace(3)* %ptr, i32 4
  %result = atomicrmw min i64 addrspace(3)* %gep, i64 4 seq_cst
  store i64 %result, i64 addrspace(1)* %out, align 8
  ret void
}




define void @lds_atomic_max_ret_i64(i64 addrspace(1)* %out, i64 addrspace(3)* %ptr) nounwind {
  %result = atomicrmw max i64 addrspace(3)* %ptr, i64 4 seq_cst
  store i64 %result, i64 addrspace(1)* %out, align 8
  ret void
}




define void @lds_atomic_max_ret_i64_offset(i64 addrspace(1)* %out, i64 addrspace(3)* %ptr) nounwind {
  %gep = getelementptr i64, i64 addrspace(3)* %ptr, i32 4
  %result = atomicrmw max i64 addrspace(3)* %gep, i64 4 seq_cst
  store i64 %result, i64 addrspace(1)* %out, align 8
  ret void
}




define void @lds_atomic_umin_ret_i64(i64 addrspace(1)* %out, i64 addrspace(3)* %ptr) nounwind {
  %result = atomicrmw umin i64 addrspace(3)* %ptr, i64 4 seq_cst
  store i64 %result, i64 addrspace(1)* %out, align 8
  ret void
}




define void @lds_atomic_umin_ret_i64_offset(i64 addrspace(1)* %out, i64 addrspace(3)* %ptr) nounwind {
  %gep = getelementptr i64, i64 addrspace(3)* %ptr, i32 4
  %result = atomicrmw umin i64 addrspace(3)* %gep, i64 4 seq_cst
  store i64 %result, i64 addrspace(1)* %out, align 8
  ret void
}




define void @lds_atomic_umax_ret_i64(i64 addrspace(1)* %out, i64 addrspace(3)* %ptr) nounwind {
  %result = atomicrmw umax i64 addrspace(3)* %ptr, i64 4 seq_cst
  store i64 %result, i64 addrspace(1)* %out, align 8
  ret void
}




define void @lds_atomic_umax_ret_i64_offset(i64 addrspace(1)* %out, i64 addrspace(3)* %ptr) nounwind {
  %gep = getelementptr i64, i64 addrspace(3)* %ptr, i32 4
  %result = atomicrmw umax i64 addrspace(3)* %gep, i64 4 seq_cst
  store i64 %result, i64 addrspace(1)* %out, align 8
  ret void
}




define void @lds_atomic_xchg_noret_i64(i64 addrspace(3)* %ptr) nounwind {
  %result = atomicrmw xchg i64 addrspace(3)* %ptr, i64 4 seq_cst
  ret void
}




define void @lds_atomic_xchg_noret_i64_offset(i64 addrspace(3)* %ptr) nounwind {
  %gep = getelementptr i64, i64 addrspace(3)* %ptr, i32 4
  %result = atomicrmw xchg i64 addrspace(3)* %gep, i64 4 seq_cst
  ret void
}




define void @lds_atomic_add_noret_i64(i64 addrspace(3)* %ptr) nounwind {
  %result = atomicrmw add i64 addrspace(3)* %ptr, i64 4 seq_cst
  ret void
}









define void @lds_atomic_add_noret_i64_offset(i64 addrspace(3)* %ptr) nounwind {
  %gep = getelementptr i64, i64 addrspace(3)* %ptr, i64 4
  %result = atomicrmw add i64 addrspace(3)* %gep, i64 9 seq_cst
  ret void
}






define void @lds_atomic_inc_noret_i64(i64 addrspace(3)* %ptr) nounwind {
  %result = atomicrmw add i64 addrspace(3)* %ptr, i64 1 seq_cst
  ret void
}




define void @lds_atomic_inc_noret_i64_offset(i64 addrspace(3)* %ptr) nounwind {
  %gep = getelementptr i64, i64 addrspace(3)* %ptr, i32 4
  %result = atomicrmw add i64 addrspace(3)* %gep, i64 1 seq_cst
  ret void
}




define void @lds_atomic_sub_noret_i64(i64 addrspace(3)* %ptr) nounwind {
  %result = atomicrmw sub i64 addrspace(3)* %ptr, i64 4 seq_cst
  ret void
}




define void @lds_atomic_sub_noret_i64_offset(i64 addrspace(3)* %ptr) nounwind {
  %gep = getelementptr i64, i64 addrspace(3)* %ptr, i32 4
  %result = atomicrmw sub i64 addrspace(3)* %gep, i64 4 seq_cst
  ret void
}






define void @lds_atomic_dec_noret_i64(i64 addrspace(3)* %ptr) nounwind {
  %result = atomicrmw sub i64 addrspace(3)* %ptr, i64 1 seq_cst
  ret void
}




define void @lds_atomic_dec_noret_i64_offset(i64 addrspace(3)* %ptr) nounwind {
  %gep = getelementptr i64, i64 addrspace(3)* %ptr, i32 4
  %result = atomicrmw sub i64 addrspace(3)* %gep, i64 1 seq_cst
  ret void
}




define void @lds_atomic_and_noret_i64(i64 addrspace(3)* %ptr) nounwind {
  %result = atomicrmw and i64 addrspace(3)* %ptr, i64 4 seq_cst
  ret void
}




define void @lds_atomic_and_noret_i64_offset(i64 addrspace(3)* %ptr) nounwind {
  %gep = getelementptr i64, i64 addrspace(3)* %ptr, i32 4
  %result = atomicrmw and i64 addrspace(3)* %gep, i64 4 seq_cst
  ret void
}




define void @lds_atomic_or_noret_i64(i64 addrspace(3)* %ptr) nounwind {
  %result = atomicrmw or i64 addrspace(3)* %ptr, i64 4 seq_cst
  ret void
}




define void @lds_atomic_or_noret_i64_offset(i64 addrspace(3)* %ptr) nounwind {
  %gep = getelementptr i64, i64 addrspace(3)* %ptr, i32 4
  %result = atomicrmw or i64 addrspace(3)* %gep, i64 4 seq_cst
  ret void
}




define void @lds_atomic_xor_noret_i64(i64 addrspace(3)* %ptr) nounwind {
  %result = atomicrmw xor i64 addrspace(3)* %ptr, i64 4 seq_cst
  ret void
}




define void @lds_atomic_xor_noret_i64_offset(i64 addrspace(3)* %ptr) nounwind {
  %gep = getelementptr i64, i64 addrspace(3)* %ptr, i32 4
  %result = atomicrmw xor i64 addrspace(3)* %gep, i64 4 seq_cst
  ret void
}











define void @lds_atomic_min_noret_i64(i64 addrspace(3)* %ptr) nounwind {
  %result = atomicrmw min i64 addrspace(3)* %ptr, i64 4 seq_cst
  ret void
}




define void @lds_atomic_min_noret_i64_offset(i64 addrspace(3)* %ptr) nounwind {
  %gep = getelementptr i64, i64 addrspace(3)* %ptr, i32 4
  %result = atomicrmw min i64 addrspace(3)* %gep, i64 4 seq_cst
  ret void
}




define void @lds_atomic_max_noret_i64(i64 addrspace(3)* %ptr) nounwind {
  %result = atomicrmw max i64 addrspace(3)* %ptr, i64 4 seq_cst
  ret void
}




define void @lds_atomic_max_noret_i64_offset(i64 addrspace(3)* %ptr) nounwind {
  %gep = getelementptr i64, i64 addrspace(3)* %ptr, i32 4
  %result = atomicrmw max i64 addrspace(3)* %gep, i64 4 seq_cst
  ret void
}




define void @lds_atomic_umin_noret_i64(i64 addrspace(3)* %ptr) nounwind {
  %result = atomicrmw umin i64 addrspace(3)* %ptr, i64 4 seq_cst
  ret void
}




define void @lds_atomic_umin_noret_i64_offset(i64 addrspace(3)* %ptr) nounwind {
  %gep = getelementptr i64, i64 addrspace(3)* %ptr, i32 4
  %result = atomicrmw umin i64 addrspace(3)* %gep, i64 4 seq_cst
  ret void
}




define void @lds_atomic_umax_noret_i64(i64 addrspace(3)* %ptr) nounwind {
  %result = atomicrmw umax i64 addrspace(3)* %ptr, i64 4 seq_cst
  ret void
}




define void @lds_atomic_umax_noret_i64_offset(i64 addrspace(3)* %ptr) nounwind {
  %gep = getelementptr i64, i64 addrspace(3)* %ptr, i32 4
  %result = atomicrmw umax i64 addrspace(3)* %gep, i64 4 seq_cst
  ret void
}
