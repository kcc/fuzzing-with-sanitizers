


declare i32 @llvm.r600.read.tidig.x() #1











define void @cluster_global_arg_loads(i32 addrspace(1)* %out0, i32 addrspace(1)* %out1, i32 addrspace(1)* %ptr) #0 {
  %load0 = load i32, i32 addrspace(1)* %ptr, align 4
  %gep = getelementptr i32, i32 addrspace(1)* %ptr, i32 1
  %load1 = load i32, i32 addrspace(1)* %gep, align 4
  store i32 %load0, i32 addrspace(1)* %out0, align 4
  store i32 %load1, i32 addrspace(1)* %out1, align 4
  ret void
}






define void @same_base_ptr_crash(i32 addrspace(1)* %out, i32 addrspace(1)* %in, i32 %offset) {
entry:
  %out1 = getelementptr i32, i32 addrspace(1)* %out, i32 %offset
  %tmp0 = load i32, i32 addrspace(1)* %out
  %tmp1 = load i32, i32 addrspace(1)* %out1
  %tmp2 = add i32 %tmp0, %tmp1
  store i32 %tmp2, i32 addrspace(1)* %out
  ret void
}

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }
