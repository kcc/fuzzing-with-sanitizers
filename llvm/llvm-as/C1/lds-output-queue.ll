









@local_mem = internal unnamed_addr addrspace(3) global [2 x i32] undef, align 4

define void @lds_input_queue(i32 addrspace(1)* %out, i32 addrspace(1)* %in, i32 %index) {
entry:
  %0 = getelementptr inbounds [2 x i32], [2 x i32] addrspace(3)* @local_mem, i32 0, i32 %index
  %1 = load i32, i32 addrspace(3)* %0
  call void @llvm.AMDGPU.barrier.local()

  
  %2 = load i32, i32 addrspace(1)* %in
  %3 = add i32 %1, %2
  store i32 %3, i32 addrspace(1)* %out
  ret void
}

declare void @llvm.AMDGPU.barrier.local()
































































define void @local_global_alias(i32 addrspace(1)* %out, i32 addrspace(1)* %in) {
entry:
  %0 = getelementptr inbounds [2 x i32], [2 x i32] addrspace(3)* @local_mem, i32 0, i32 0
  %1 = load i32, i32 addrspace(3)* %0
  %2 = load i32, i32 addrspace(1)* %in
  %3 = add i32 %2, %1
  store i32 %3, i32 addrspace(1)* %out
  ret void
}
