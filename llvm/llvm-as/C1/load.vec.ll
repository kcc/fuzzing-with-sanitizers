








define void @load_v2i32(<2 x i32> addrspace(1)* %out, <2 x i32> addrspace(1)* %in) {
  %a = load <2 x i32>, <2 x i32> addrspace(1) * %in
  store <2 x i32> %a, <2 x i32> addrspace(1)* %out
  ret void
}






define void @load_v4i32(<4 x i32> addrspace(1)* %out, <4 x i32> addrspace(1)* %in) {
  %a = load <4 x i32>, <4 x i32> addrspace(1) * %in
  store <4 x i32> %a, <4 x i32> addrspace(1)* %out
  ret void
}
