








define void @store_v3i32(<3 x i32> addrspace(1)* %out, <3 x i32> %a) nounwind {
  store <3 x i32> %a, <3 x i32> addrspace(1)* %out, align 16
  ret void
}
