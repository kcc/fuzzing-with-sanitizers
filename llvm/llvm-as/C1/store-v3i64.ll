






define void @global_store_v3i64(<3 x i64> addrspace(1)* %out, <3 x i64> %x) {
  store <3 x i64> %x, <3 x i64> addrspace(1)* %out, align 32
  ret void
}


define void @global_store_v3i64_unaligned(<3 x i64> addrspace(1)* %out, <3 x i64> %x) {
  store <3 x i64> %x, <3 x i64> addrspace(1)* %out, align 1
  ret void
}


define void @local_store_v3i64(<3 x i64> addrspace(3)* %out, <3 x i64> %x) {
  store <3 x i64> %x, <3 x i64> addrspace(3)* %out, align 32
  ret void
}


define void @local_store_v3i64_unaligned(<3 x i64> addrspace(1)* %out, <3 x i64> %x) {
  store <3 x i64> %x, <3 x i64> addrspace(1)* %out, align 1
  ret void
}
