











define void @rotl_i32(i32 addrspace(1)* %in, i32 %x, i32 %y) {
entry:
  %0 = shl i32 %x, %y
  %1 = sub i32 32, %y
  %2 = lshr i32 %x, %1
  %3 = or i32 %0, %2
  store i32 %3, i32 addrspace(1)* %in
  ret void
}







define void @rotl_v2i32(<2 x i32> addrspace(1)* %in, <2 x i32> %x, <2 x i32> %y) {
entry:
  %0 = shl <2 x i32> %x, %y
  %1 = sub <2 x i32> <i32 32, i32 32>, %y
  %2 = lshr <2 x i32> %x, %1
  %3 = or <2 x i32> %0, %2
  store <2 x i32> %3, <2 x i32> addrspace(1)* %in
  ret void
}











define void @rotl_v4i32(<4 x i32> addrspace(1)* %in, <4 x i32> %x, <4 x i32> %y) {
entry:
  %0 = shl <4 x i32> %x, %y
  %1 = sub <4 x i32> <i32 32, i32 32, i32 32, i32 32>, %y
  %2 = lshr <4 x i32> %x, %1
  %3 = or <4 x i32> %0, %2
  store <4 x i32> %3, <4 x i32> addrspace(1)* %in
  ret void
}
