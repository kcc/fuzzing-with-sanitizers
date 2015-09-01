








define void @s_rotl_i64(i64 addrspace(1)* %in, i64 %x, i64 %y) {
entry:
  %0 = shl i64 %x, %y
  %1 = sub i64 64, %y
  %2 = lshr i64 %x, %1
  %3 = or i64 %0, %2
  store i64 %3, i64 addrspace(1)* %in
  ret void
}










define void @v_rotl_i64(i64 addrspace(1)* %in, i64 addrspace(1)* %xptr, i64 addrspace(1)* %yptr) {
entry:
  %x = load i64, i64 addrspace(1)* %xptr, align 8
  %y = load i64, i64 addrspace(1)* %yptr, align 8
  %tmp0 = shl i64 %x, %y
  %tmp1 = sub i64 64, %y
  %tmp2 = lshr i64 %x, %tmp1
  %tmp3 = or i64 %tmp0, %tmp2
  store i64 %tmp3, i64 addrspace(1)* %in, align 8
  ret void
}
