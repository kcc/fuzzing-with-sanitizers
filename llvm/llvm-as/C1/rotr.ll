







define void @rotr_i32(i32 addrspace(1)* %in, i32 %x, i32 %y) {
entry:
  %tmp0 = sub i32 32, %y
  %tmp1 = shl i32 %x, %tmp0
  %tmp2 = lshr i32 %x, %y
  %tmp3 = or i32 %tmp1, %tmp2
  store i32 %tmp3, i32 addrspace(1)* %in
  ret void
}







define void @rotr_v2i32(<2 x i32> addrspace(1)* %in, <2 x i32> %x, <2 x i32> %y) {
entry:
  %tmp0 = sub <2 x i32> <i32 32, i32 32>, %y
  %tmp1 = shl <2 x i32> %x, %tmp0
  %tmp2 = lshr <2 x i32> %x, %y
  %tmp3 = or <2 x i32> %tmp1, %tmp2
  store <2 x i32> %tmp3, <2 x i32> addrspace(1)* %in
  ret void
}











define void @rotr_v4i32(<4 x i32> addrspace(1)* %in, <4 x i32> %x, <4 x i32> %y) {
entry:
  %tmp0 = sub <4 x i32> <i32 32, i32 32, i32 32, i32 32>, %y
  %tmp1 = shl <4 x i32> %x, %tmp0
  %tmp2 = lshr <4 x i32> %x, %y
  %tmp3 = or <4 x i32> %tmp1, %tmp2
  store <4 x i32> %tmp3, <4 x i32> addrspace(1)* %in
  ret void
}
