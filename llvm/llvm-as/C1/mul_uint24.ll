








define void @u32_mul24(i32 addrspace(1)* %out, i32 %a, i32 %b) {
entry:
  %0 = shl i32 %a, 8
  %a_24 = lshr i32 %0, 8
  %1 = shl i32 %b, 8
  %b_24 = lshr i32 %1, 8
  %2 = mul i32 %a_24, %b_24
  store i32 %2, i32 addrspace(1)* %out
  ret void
}








define void @i16_mul24(i32 addrspace(1)* %out, i16 %a, i16 %b) {
entry:
  %0 = mul i16 %a, %b
  %1 = sext i16 %0 to i32
  store i32 %1, i32 addrspace(1)* %out
  ret void
}








define void @i8_mul24(i32 addrspace(1)* %out, i8 %a, i8 %b) {
entry:
  %0 = mul i8 %a, %b
  %1 = sext i8 %0 to i32
  store i32 %1, i32 addrspace(1)* %out
  ret void
}










define void @mul24_i64(i64 addrspace(1)* %out, i64 %a, i64 %b, i64 %c) {
entry:
  %tmp0 = shl i64 %a, 40
  %a_24 = lshr i64 %tmp0, 40
  %tmp1 = shl i64 %b, 40
  %b_24 = lshr i64 %tmp1, 40
  %tmp2 = mul i64 %a_24, %b_24
  store i64 %tmp2, i64 addrspace(1)* %out
  ret void
}
