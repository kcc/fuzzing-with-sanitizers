










define void @bfi_def(i32 addrspace(1)* %out, i32 %x, i32 %y, i32 %z) {
entry:
  %0 = xor i32 %x, -1
  %1 = and i32 %z, %0
  %2 = and i32 %y, %x
  %3 = or i32 %1, %2
  store i32 %3, i32 addrspace(1)* %out
  ret void
}







define void @bfi_sha256_ch(i32 addrspace(1)* %out, i32 %x, i32 %y, i32 %z) {
entry:
  %0 = xor i32 %y, %z
  %1 = and i32 %x, %0
  %2 = xor i32 %z, %1
  store i32 %2, i32 addrspace(1)* %out
  ret void
}









define void @bfi_sha256_ma(i32 addrspace(1)* %out, i32 %x, i32 %y, i32 %z) {
entry:
  %0 = and i32 %x, %z
  %1 = or i32 %x, %z
  %2 = and i32 %y, %1
  %3 = or i32 %0, %2
  store i32 %3, i32 addrspace(1)* %out
  ret void
}
