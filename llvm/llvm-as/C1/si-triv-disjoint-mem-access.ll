

declare void @llvm.SI.tbuffer.store.i32(<16 x i8>, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)
declare void @llvm.SI.tbuffer.store.v4i32(<16 x i8>, <4 x i32>, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)
declare void @llvm.AMDGPU.barrier.local() #2


@stored_lds_ptr = addrspace(3) global i32 addrspace(3)* undef, align 4
@stored_constant_ptr = addrspace(3) global i32 addrspace(2)* undef, align 8
@stored_global_ptr = addrspace(3) global i32 addrspace(1)* undef, align 8





define void @reorder_local_load_global_store_local_load(i32 addrspace(1)* %out, i32 addrspace(1)* %gptr) #0 {
  %ptr0 = load i32 addrspace(3)*, i32 addrspace(3)* addrspace(3)* @stored_lds_ptr, align 4

  %ptr1 = getelementptr inbounds i32, i32 addrspace(3)* %ptr0, i32 1
  %ptr2 = getelementptr inbounds i32, i32 addrspace(3)* %ptr0, i32 2

  %tmp1 = load i32, i32 addrspace(3)* %ptr1, align 4
  store i32 99, i32 addrspace(1)* %gptr, align 4
  %tmp2 = load i32, i32 addrspace(3)* %ptr2, align 4

  %add = add nsw i32 %tmp1, %tmp2

  store i32 %add, i32 addrspace(1)* %out, align 4
  ret void
}





define void @no_reorder_local_load_volatile_global_store_local_load(i32 addrspace(1)* %out, i32 addrspace(1)* %gptr) #0 {
  %ptr0 = load i32 addrspace(3)*, i32 addrspace(3)* addrspace(3)* @stored_lds_ptr, align 4

  %ptr1 = getelementptr inbounds i32, i32 addrspace(3)* %ptr0, i32 1
  %ptr2 = getelementptr inbounds i32, i32 addrspace(3)* %ptr0, i32 2

  %tmp1 = load i32, i32 addrspace(3)* %ptr1, align 4
  store volatile i32 99, i32 addrspace(1)* %gptr, align 4
  %tmp2 = load i32, i32 addrspace(3)* %ptr2, align 4

  %add = add nsw i32 %tmp1, %tmp2

  store i32 %add, i32 addrspace(1)* %out, align 4
  ret void
}





define void @no_reorder_barrier_local_load_global_store_local_load(i32 addrspace(1)* %out, i32 addrspace(1)* %gptr) #0 {
  %ptr0 = load i32 addrspace(3)*, i32 addrspace(3)* addrspace(3)* @stored_lds_ptr, align 4

  %ptr1 = getelementptr inbounds i32, i32 addrspace(3)* %ptr0, i32 1
  %ptr2 = getelementptr inbounds i32, i32 addrspace(3)* %ptr0, i32 2

  %tmp1 = load i32, i32 addrspace(3)* %ptr1, align 4
  store i32 99, i32 addrspace(1)* %gptr, align 4
  call void @llvm.AMDGPU.barrier.local() #2
  %tmp2 = load i32, i32 addrspace(3)* %ptr2, align 4

  %add = add nsw i32 %tmp1, %tmp2

  store i32 %add, i32 addrspace(1)* %out, align 4
  ret void
}









define void @no_reorder_constant_load_global_store_constant_load(i32 addrspace(1)* %out, i32 addrspace(1)* %gptr) #0 {
  %ptr0 = load i32 addrspace(2)*, i32 addrspace(2)* addrspace(3)* @stored_constant_ptr, align 8

  %ptr1 = getelementptr inbounds i32, i32 addrspace(2)* %ptr0, i64 1
  %ptr2 = getelementptr inbounds i32, i32 addrspace(2)* %ptr0, i64 2

  %tmp1 = load i32, i32 addrspace(2)* %ptr1, align 4
  store i32 99, i32 addrspace(1)* %gptr, align 4
  %tmp2 = load i32, i32 addrspace(2)* %ptr2, align 4

  %add = add nsw i32 %tmp1, %tmp2

  store i32 %add, i32 addrspace(1)* %out, align 4
  ret void
}






define void @reorder_constant_load_local_store_constant_load(i32 addrspace(1)* %out, i32 addrspace(3)* %lptr) #0 {
  %ptr0 = load i32 addrspace(2)*, i32 addrspace(2)* addrspace(3)* @stored_constant_ptr, align 8

  %ptr1 = getelementptr inbounds i32, i32 addrspace(2)* %ptr0, i64 1
  %ptr2 = getelementptr inbounds i32, i32 addrspace(2)* %ptr0, i64 2

  %tmp1 = load i32, i32 addrspace(2)* %ptr1, align 4
  store i32 99, i32 addrspace(3)* %lptr, align 4
  %tmp2 = load i32, i32 addrspace(2)* %ptr2, align 4

  %add = add nsw i32 %tmp1, %tmp2

  store i32 %add, i32 addrspace(1)* %out, align 4
  ret void
}







define void @reorder_smrd_load_local_store_smrd_load(i32 addrspace(1)* %out, i32 addrspace(3)* noalias %lptr, i32 addrspace(2)* %ptr0) #0 {
  %ptr1 = getelementptr inbounds i32, i32 addrspace(2)* %ptr0, i64 1
  %ptr2 = getelementptr inbounds i32, i32 addrspace(2)* %ptr0, i64 2

  %tmp1 = load i32, i32 addrspace(2)* %ptr1, align 4
  store i32 99, i32 addrspace(3)* %lptr, align 4
  %tmp2 = load i32, i32 addrspace(2)* %ptr2, align 4

  %add = add nsw i32 %tmp1, %tmp2

  store i32 %add, i32 addrspace(1)* %out, align 4
  ret void
}






define void @reorder_global_load_local_store_global_load(i32 addrspace(1)* %out, i32 addrspace(3)* %lptr, i32 addrspace(1)* %ptr0) #0 {
  %ptr1 = getelementptr inbounds i32, i32 addrspace(1)* %ptr0, i64 1
  %ptr2 = getelementptr inbounds i32, i32 addrspace(1)* %ptr0, i64 2

  %tmp1 = load i32, i32 addrspace(1)* %ptr1, align 4
  store i32 99, i32 addrspace(3)* %lptr, align 4
  %tmp2 = load i32, i32 addrspace(1)* %ptr2, align 4

  %add = add nsw i32 %tmp1, %tmp2

  store i32 %add, i32 addrspace(1)* %out, align 4
  ret void
}









define void @reorder_local_offsets(i32 addrspace(1)* nocapture %out, i32 addrspace(1)* noalias nocapture readnone %gptr, i32 addrspace(3)* noalias nocapture %ptr0) #0 {
  %ptr1 = getelementptr inbounds i32, i32 addrspace(3)* %ptr0, i32 3
  %ptr2 = getelementptr inbounds i32, i32 addrspace(3)* %ptr0, i32 100
  %ptr3 = getelementptr inbounds i32, i32 addrspace(3)* %ptr0, i32 101

  store i32 123, i32 addrspace(3)* %ptr1, align 4
  %tmp1 = load i32, i32 addrspace(3)* %ptr2, align 4
  %tmp2 = load i32, i32 addrspace(3)* %ptr3, align 4
  store i32 123, i32 addrspace(3)* %ptr2, align 4
  %tmp3 = load i32, i32 addrspace(3)* %ptr1, align 4
  store i32 789, i32 addrspace(3)* %ptr3, align 4

  %add.0 = add nsw i32 %tmp2, %tmp1
  %add.1 = add nsw i32 %add.0, %tmp3
  store i32 %add.1, i32 addrspace(1)* %out, align 4
  ret void
}









define void @reorder_global_offsets(i32 addrspace(1)* nocapture %out, i32 addrspace(1)* noalias nocapture readnone %gptr, i32 addrspace(1)* noalias nocapture %ptr0) #0 {
  %ptr1 = getelementptr inbounds i32, i32 addrspace(1)* %ptr0, i32 3
  %ptr2 = getelementptr inbounds i32, i32 addrspace(1)* %ptr0, i32 100
  %ptr3 = getelementptr inbounds i32, i32 addrspace(1)* %ptr0, i32 101

  store i32 123, i32 addrspace(1)* %ptr1, align 4
  %tmp1 = load i32, i32 addrspace(1)* %ptr2, align 4
  %tmp2 = load i32, i32 addrspace(1)* %ptr3, align 4
  store i32 123, i32 addrspace(1)* %ptr2, align 4
  %tmp3 = load i32, i32 addrspace(1)* %ptr1, align 4
  store i32 789, i32 addrspace(1)* %ptr3, align 4

  %add.0 = add nsw i32 %tmp2, %tmp1
  %add.1 = add nsw i32 %add.0, %tmp3
  store i32 %add.1, i32 addrspace(1)* %out, align 4
  ret void
}


























attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { "ShaderType"="1" nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #2 = { nounwind noduplicate }
