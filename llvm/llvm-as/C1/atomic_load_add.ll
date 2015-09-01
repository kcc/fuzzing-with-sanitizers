






define void @atomic_add_local(i32 addrspace(3)* %local) {
   %unused = atomicrmw volatile add i32 addrspace(3)* %local, i32 5 seq_cst
   ret void
}




define void @atomic_add_local_const_offset(i32 addrspace(3)* %local) {
  %gep = getelementptr i32, i32 addrspace(3)* %local, i32 4
  %val = atomicrmw volatile add i32 addrspace(3)* %gep, i32 5 seq_cst
  ret void
}




define void @atomic_add_ret_local(i32 addrspace(1)* %out, i32 addrspace(3)* %local) {
  %val = atomicrmw volatile add i32 addrspace(3)* %local, i32 5 seq_cst
  store i32 %val, i32 addrspace(1)* %out
  ret void
}




define void @atomic_add_ret_local_const_offset(i32 addrspace(1)* %out, i32 addrspace(3)* %local) {
  %gep = getelementptr i32, i32 addrspace(3)* %local, i32 5
  %val = atomicrmw volatile add i32 addrspace(3)* %gep, i32 5 seq_cst
  store i32 %val, i32 addrspace(1)* %out
  ret void
}
