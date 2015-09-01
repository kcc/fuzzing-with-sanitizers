







define void @vtx_fetch32(i32 addrspace(1)* %out, i32 addrspace(1)* %in) {
entry:
  %0 = load i32, i32 addrspace(1)* %in
  store i32 %0, i32 addrspace(1)* %out
  ret void
}





define void @vtx_fetch128(<4 x i32> addrspace(1)* %out, <4 x i32> addrspace(1)* %in) {
entry:
  %0 = load <4 x i32>, <4 x i32> addrspace(1)* %in
  store <4 x i32> %0, <4 x i32> addrspace(1)* %out
  ret void
}
