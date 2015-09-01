







define void @sext_in_reg_i1_i32_add(i32 addrspace(1)* %out, i1 %a, i32 %b) {
  %sext = sext i1 %a to i32
  %res = add i32 %b, %sext
  store i32 %res, i32 addrspace(1)* %out
  ret void
}






define void @sext_in_reg_i1_i32_sub(i32 addrspace(1)* %out, i1 %a, i32 %b) {
  %sext = sext i1 %a to i32
  %res = sub i32 %b, %sext
  store i32 %res, i32 addrspace(1)* %out
  ret void
}
