


declare i32 @llvm.r600.read.tidig.x() nounwind readnone

define void @trunc_i64_to_i32_store(i32 addrspace(1)* %out, i64 %in) {










  %result = trunc i64 %in to i32 store i32 %result, i32 addrspace(1)* %out, align 4
  ret void
}







define void @trunc_load_shl_i64(i32 addrspace(1)* %out, i64 %a) {
  %b = shl i64 %a, 2
  %result = trunc i64 %b to i32
  store i32 %result, i32 addrspace(1)* %out, align 4
  ret void
}










define void @trunc_shl_i64(i64 addrspace(1)* %out2, i32 addrspace(1)* %out, i64 %a) {
  %aa = add i64 %a, 234 
  %b = shl i64 %aa, 2
  %result = trunc i64 %b to i32
  store i32 %result, i32 addrspace(1)* %out, align 4
  store i64 %b, i64 addrspace(1)* %out2, align 8 
  ret void
}




define void @trunc_i32_to_i1(i32 addrspace(1)* %out, i32 addrspace(1)* %ptr) {
  %a = load i32, i32 addrspace(1)* %ptr, align 4
  %trunc = trunc i32 %a to i1
  %result = select i1 %trunc, i32 1, i32 0
  store i32 %result, i32 addrspace(1)* %out, align 4
  ret void
}




define void @sgpr_trunc_i32_to_i1(i32 addrspace(1)* %out, i32 %a) {
  %trunc = trunc i32 %a to i1
  %result = select i1 %trunc, i32 1, i32 0
  store i32 %result, i32 addrspace(1)* %out, align 4
  ret void
}






define void @s_trunc_i64_to_i1(i32 addrspace(1)* %out, i64 %x) {
  %trunc = trunc i64 %x to i1
  %sel = select i1 %trunc, i32 63, i32 -12
  store i32 %sel, i32 addrspace(1)* %out
  ret void
}






define void @v_trunc_i64_to_i1(i32 addrspace(1)* %out, i64 addrspace(1)* %in) {
  %tid = call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %gep = getelementptr i64, i64 addrspace(1)* %in, i32 %tid
  %out.gep = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %x = load i64, i64 addrspace(1)* %gep

  %trunc = trunc i64 %x to i1
  %sel = select i1 %trunc, i32 63, i32 -12
  store i32 %sel, i32 addrspace(1)* %out.gep
  ret void
}
