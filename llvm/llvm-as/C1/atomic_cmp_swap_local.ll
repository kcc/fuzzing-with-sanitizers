













define void @lds_atomic_cmpxchg_ret_i32_offset(i32 addrspace(1)* %out, i32 addrspace(3)* %ptr, i32 %swap) nounwind {
  %gep = getelementptr i32, i32 addrspace(3)* %ptr, i32 4
  %pair = cmpxchg i32 addrspace(3)* %gep, i32 7, i32 %swap seq_cst monotonic
  %result = extractvalue { i32, i1 } %pair, 0
  store i32 %result, i32 addrspace(1)* %out, align 4
  ret void
}














define void @lds_atomic_cmpxchg_ret_i64_offset(i64 addrspace(1)* %out, i64 addrspace(3)* %ptr, i64 %swap) nounwind {
  %gep = getelementptr i64, i64 addrspace(3)* %ptr, i32 4
  %pair = cmpxchg i64 addrspace(3)* %gep, i64 7, i64 %swap seq_cst monotonic
  %result = extractvalue { i64, i1 } %pair, 0
  store i64 %result, i64 addrspace(1)* %out, align 8
  ret void
}





define void @lds_atomic_cmpxchg_ret_i32_bad_si_offset(i32 addrspace(1)* %out, i32 addrspace(3)* %ptr, i32 %swap, i32 %a, i32 %b) nounwind {
  %sub = sub i32 %a, %b
  %add = add i32 %sub, 4
  %gep = getelementptr i32, i32 addrspace(3)* %ptr, i32 %add
  %pair = cmpxchg i32 addrspace(3)* %gep, i32 7, i32 %swap seq_cst monotonic
  %result = extractvalue { i32, i1 } %pair, 0
  store i32 %result, i32 addrspace(1)* %out, align 4
  ret void
}











define void @lds_atomic_cmpxchg_noret_i32_offset(i32 addrspace(3)* %ptr, i32 %swap) nounwind {
  %gep = getelementptr i32, i32 addrspace(3)* %ptr, i32 4
  %pair = cmpxchg i32 addrspace(3)* %gep, i32 7, i32 %swap seq_cst monotonic
  %result = extractvalue { i32, i1 } %pair, 0
  ret void
}













define void @lds_atomic_cmpxchg_noret_i64_offset(i64 addrspace(3)* %ptr, i64 %swap) nounwind {
  %gep = getelementptr i64, i64 addrspace(3)* %ptr, i32 4
  %pair = cmpxchg i64 addrspace(3)* %gep, i64 7, i64 %swap seq_cst monotonic
  %result = extractvalue { i64, i1 } %pair, 0
  ret void
}
