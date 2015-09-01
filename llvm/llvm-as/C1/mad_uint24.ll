








define void @u32_mad24(i32 addrspace(1)* %out, i32 %a, i32 %b, i32 %c) {
entry:
  %0 = shl i32 %a, 8
  %a_24 = lshr i32 %0, 8
  %1 = shl i32 %b, 8
  %b_24 = lshr i32 %1, 8
  %2 = mul i32 %a_24, %b_24
  %3 = add i32 %2, %c
  store i32 %3, i32 addrspace(1)* %out
  ret void
}










define void @i16_mad24(i32 addrspace(1)* %out, i16 %a, i16 %b, i16 %c) {
entry:
  %0 = mul i16 %a, %b
  %1 = add i16 %0, %c
  %2 = sext i16 %1 to i32
  store i32 %2, i32 addrspace(1)* %out
  ret void
}









define void @i8_mad24(i32 addrspace(1)* %out, i8 %a, i8 %b, i8 %c) {
entry:
  %0 = mul i8 %a, %b
  %1 = add i8 %0, %c
  %2 = sext i8 %1 to i32
  store i32 %2, i32 addrspace(1)* %out
  ret void
}











define void @i24_i32_i32_mad(i32 addrspace(1)* %out, i32 %a, i32 %b, i32 %c, i32 %d) {
entry:
  %0 = ashr i32 %a, 8
  %1 = icmp ne i32 %c, 0
  %2 = select i1 %1, i32 %0, i32 34
  %3 = mul i32 %2, %c
  %4 = add i32 %3, %d
  store i32 %4, i32 addrspace(1)* %out
  ret void
}
