








declare i32 @llvm.r600.read.tidig.x() #1

@lds0 = addrspace(3) global [512 x float] undef, align 4
@lds1 = addrspace(3) global [512 x float] undef, align 4








define void @load_shl_base_lds_0(float addrspace(1)* %out, i32 addrspace(1)* %add_use) #0 {
  %tid.x = tail call i32 @llvm.r600.read.tidig.x() #1
  %idx.0 = add nsw i32 %tid.x, 2
  %arrayidx0 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @lds0, i32 0, i32 %idx.0
  %val0 = load float, float addrspace(3)* %arrayidx0, align 4
  store i32 %idx.0, i32 addrspace(1)* %add_use, align 4
  store float %val0, float addrspace(1)* %out
  ret void
}











define void @load_shl_base_lds_1(float addrspace(1)* %out, i32 addrspace(1)* %add_use) #0 {
  %tid.x = tail call i32 @llvm.r600.read.tidig.x() #1
  %idx.0 = add nsw i32 %tid.x, 2
  %arrayidx0 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @lds0, i32 0, i32 %idx.0
  %val0 = load float, float addrspace(3)* %arrayidx0, align 4
  %shl_add_use = shl i32 %idx.0, 2
  store i32 %shl_add_use, i32 addrspace(1)* %add_use, align 4
  store float %val0, float addrspace(1)* %out
  ret void
}

@maxlds = addrspace(3) global [65536 x i8] undef, align 4




define void @load_shl_base_lds_max_offset(i8 addrspace(1)* %out, i8 addrspace(3)* %lds, i32 addrspace(1)* %add_use) #0 {
  %tid.x = tail call i32 @llvm.r600.read.tidig.x() #1
  %idx.0 = add nsw i32 %tid.x, 65535
  %arrayidx0 = getelementptr inbounds [65536 x i8], [65536 x i8] addrspace(3)* @maxlds, i32 0, i32 %idx.0
  %val0 = load i8, i8 addrspace(3)* %arrayidx0
  store i32 %idx.0, i32 addrspace(1)* %add_use
  store i8 %val0, i8 addrspace(1)* %out
  ret void
}









define void @load_shl_base_lds_2(float addrspace(1)* %out) #0 {
  %tid.x = tail call i32 @llvm.r600.read.tidig.x() #1
  %idx.0 = add nsw i32 %tid.x, 64
  %arrayidx0 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @lds0, i32 0, i32 %idx.0
  %val0 = load float, float addrspace(3)* %arrayidx0, align 4
  %arrayidx1 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @lds1, i32 0, i32 %idx.0
  %val1 = load float, float addrspace(3)* %arrayidx1, align 4
  %sum = fadd float %val0, %val1
  store float %sum, float addrspace(1)* %out, align 4
  ret void
}





define void @store_shl_base_lds_0(float addrspace(1)* %out, i32 addrspace(1)* %add_use) #0 {
  %tid.x = tail call i32 @llvm.r600.read.tidig.x() #1
  %idx.0 = add nsw i32 %tid.x, 2
  %arrayidx0 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @lds0, i32 0, i32 %idx.0
  store float 1.0, float addrspace(3)* %arrayidx0, align 4
  store i32 %idx.0, i32 addrspace(1)* %add_use, align 4
  ret void
}





@lds2 = addrspace(3) global [512 x i32] undef, align 4
















define void @atomic_cmpxchg_shl_base_lds_0(i32 addrspace(1)* %out, i32 addrspace(1)* %add_use, i32 %swap) #0 {
  %tid.x = tail call i32 @llvm.r600.read.tidig.x() #1
  %idx.0 = add nsw i32 %tid.x, 2
  %arrayidx0 = getelementptr inbounds [512 x i32], [512 x i32] addrspace(3)* @lds2, i32 0, i32 %idx.0
  %pair = cmpxchg i32 addrspace(3)* %arrayidx0, i32 7, i32 %swap seq_cst monotonic
  %result = extractvalue { i32, i1 } %pair, 0
  store i32 %result, i32 addrspace(1)* %out, align 4
  store i32 %idx.0, i32 addrspace(1)* %add_use, align 4
  ret void
}





define void @atomic_swap_shl_base_lds_0(i32 addrspace(1)* %out, i32 addrspace(1)* %add_use) #0 {
  %tid.x = tail call i32 @llvm.r600.read.tidig.x() #1
  %idx.0 = add nsw i32 %tid.x, 2
  %arrayidx0 = getelementptr inbounds [512 x i32], [512 x i32] addrspace(3)* @lds2, i32 0, i32 %idx.0
  %val = atomicrmw xchg i32 addrspace(3)* %arrayidx0, i32 3 seq_cst
  store i32 %val, i32 addrspace(1)* %out, align 4
  store i32 %idx.0, i32 addrspace(1)* %add_use, align 4
  ret void
}





define void @atomic_add_shl_base_lds_0(i32 addrspace(1)* %out, i32 addrspace(1)* %add_use) #0 {
  %tid.x = tail call i32 @llvm.r600.read.tidig.x() #1
  %idx.0 = add nsw i32 %tid.x, 2
  %arrayidx0 = getelementptr inbounds [512 x i32], [512 x i32] addrspace(3)* @lds2, i32 0, i32 %idx.0
  %val = atomicrmw add i32 addrspace(3)* %arrayidx0, i32 3 seq_cst
  store i32 %val, i32 addrspace(1)* %out, align 4
  store i32 %idx.0, i32 addrspace(1)* %add_use, align 4
  ret void
}





define void @atomic_sub_shl_base_lds_0(i32 addrspace(1)* %out, i32 addrspace(1)* %add_use) #0 {
  %tid.x = tail call i32 @llvm.r600.read.tidig.x() #1
  %idx.0 = add nsw i32 %tid.x, 2
  %arrayidx0 = getelementptr inbounds [512 x i32], [512 x i32] addrspace(3)* @lds2, i32 0, i32 %idx.0
  %val = atomicrmw sub i32 addrspace(3)* %arrayidx0, i32 3 seq_cst
  store i32 %val, i32 addrspace(1)* %out, align 4
  store i32 %idx.0, i32 addrspace(1)* %add_use, align 4
  ret void
}





define void @atomic_and_shl_base_lds_0(i32 addrspace(1)* %out, i32 addrspace(1)* %add_use) #0 {
  %tid.x = tail call i32 @llvm.r600.read.tidig.x() #1
  %idx.0 = add nsw i32 %tid.x, 2
  %arrayidx0 = getelementptr inbounds [512 x i32], [512 x i32] addrspace(3)* @lds2, i32 0, i32 %idx.0
  %val = atomicrmw and i32 addrspace(3)* %arrayidx0, i32 3 seq_cst
  store i32 %val, i32 addrspace(1)* %out, align 4
  store i32 %idx.0, i32 addrspace(1)* %add_use, align 4
  ret void
}





define void @atomic_or_shl_base_lds_0(i32 addrspace(1)* %out, i32 addrspace(1)* %add_use) #0 {
  %tid.x = tail call i32 @llvm.r600.read.tidig.x() #1
  %idx.0 = add nsw i32 %tid.x, 2
  %arrayidx0 = getelementptr inbounds [512 x i32], [512 x i32] addrspace(3)* @lds2, i32 0, i32 %idx.0
  %val = atomicrmw or i32 addrspace(3)* %arrayidx0, i32 3 seq_cst
  store i32 %val, i32 addrspace(1)* %out, align 4
  store i32 %idx.0, i32 addrspace(1)* %add_use, align 4
  ret void
}





define void @atomic_xor_shl_base_lds_0(i32 addrspace(1)* %out, i32 addrspace(1)* %add_use) #0 {
  %tid.x = tail call i32 @llvm.r600.read.tidig.x() #1
  %idx.0 = add nsw i32 %tid.x, 2
  %arrayidx0 = getelementptr inbounds [512 x i32], [512 x i32] addrspace(3)* @lds2, i32 0, i32 %idx.0
  %val = atomicrmw xor i32 addrspace(3)* %arrayidx0, i32 3 seq_cst
  store i32 %val, i32 addrspace(1)* %out, align 4
  store i32 %idx.0, i32 addrspace(1)* %add_use, align 4
  ret void
}















define void @atomic_min_shl_base_lds_0(i32 addrspace(1)* %out, i32 addrspace(1)* %add_use) #0 {
  %tid.x = tail call i32 @llvm.r600.read.tidig.x() #1
  %idx.0 = add nsw i32 %tid.x, 2
  %arrayidx0 = getelementptr inbounds [512 x i32], [512 x i32] addrspace(3)* @lds2, i32 0, i32 %idx.0
  %val = atomicrmw min i32 addrspace(3)* %arrayidx0, i32 3 seq_cst
  store i32 %val, i32 addrspace(1)* %out, align 4
  store i32 %idx.0, i32 addrspace(1)* %add_use, align 4
  ret void
}





define void @atomic_max_shl_base_lds_0(i32 addrspace(1)* %out, i32 addrspace(1)* %add_use) #0 {
  %tid.x = tail call i32 @llvm.r600.read.tidig.x() #1
  %idx.0 = add nsw i32 %tid.x, 2
  %arrayidx0 = getelementptr inbounds [512 x i32], [512 x i32] addrspace(3)* @lds2, i32 0, i32 %idx.0
  %val = atomicrmw max i32 addrspace(3)* %arrayidx0, i32 3 seq_cst
  store i32 %val, i32 addrspace(1)* %out, align 4
  store i32 %idx.0, i32 addrspace(1)* %add_use, align 4
  ret void
}





define void @atomic_umin_shl_base_lds_0(i32 addrspace(1)* %out, i32 addrspace(1)* %add_use) #0 {
  %tid.x = tail call i32 @llvm.r600.read.tidig.x() #1
  %idx.0 = add nsw i32 %tid.x, 2
  %arrayidx0 = getelementptr inbounds [512 x i32], [512 x i32] addrspace(3)* @lds2, i32 0, i32 %idx.0
  %val = atomicrmw umin i32 addrspace(3)* %arrayidx0, i32 3 seq_cst
  store i32 %val, i32 addrspace(1)* %out, align 4
  store i32 %idx.0, i32 addrspace(1)* %add_use, align 4
  ret void
}





define void @atomic_umax_shl_base_lds_0(i32 addrspace(1)* %out, i32 addrspace(1)* %add_use) #0 {
  %tid.x = tail call i32 @llvm.r600.read.tidig.x() #1
  %idx.0 = add nsw i32 %tid.x, 2
  %arrayidx0 = getelementptr inbounds [512 x i32], [512 x i32] addrspace(3)* @lds2, i32 0, i32 %idx.0
  %val = atomicrmw umax i32 addrspace(3)* %arrayidx0, i32 3 seq_cst
  store i32 %val, i32 addrspace(1)* %out, align 4
  store i32 %idx.0, i32 addrspace(1)* %add_use, align 4
  ret void
}

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }
