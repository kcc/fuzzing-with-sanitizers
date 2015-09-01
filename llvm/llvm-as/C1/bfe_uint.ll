



define void @bfe_def(i32 addrspace(1)* %out, i32 %x) {
entry:
  %0 = lshr i32 %x, 5
  %1 = and i32 %0, 15 
  store i32 %1, i32 addrspace(1)* %out
  ret void
}








define void @bfe_shift(i32 addrspace(1)* %out, i32 %x) {
entry:
  %0 = lshr i32 %x, 16
  %1 = and i32 %0, 65535 
  store i32 %1, i32 addrspace(1)* %out
  ret void
}
