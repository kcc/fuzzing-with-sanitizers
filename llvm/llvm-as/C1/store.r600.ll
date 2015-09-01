







define void @store_v4i32(<4 x i32> addrspace(1)* %out, <4 x i32> addrspace(1)* %in) {
  %1 = load <4 x i32>, <4 x i32> addrspace(1) * %in
  store <4 x i32> %1, <4 x i32> addrspace(1)* %out
  ret void
}




define void @store_v4f32(<4 x float> addrspace(1)* %out, <4 x float> addrspace(1)* %in) {
  %1 = load <4 x float>, <4 x float> addrspace(1) * %in
  store <4 x float> %1, <4 x float> addrspace(1)* %out
  ret void
}
