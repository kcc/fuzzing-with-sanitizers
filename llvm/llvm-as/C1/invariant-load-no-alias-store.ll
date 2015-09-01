











define void @test_merge_store_constant_i16_invariant_global_pointer_load(i16 addrspace(1)* addrspace(1)* dereferenceable(4096) nonnull %in) #0 {
  %ptr = load i16 addrspace(1)*, i16 addrspace(1)* addrspace(1)* %in, !invariant.load !0
  %ptr.1 = getelementptr i16, i16 addrspace(1)* %ptr, i64 1
  store i16 123, i16 addrspace(1)* %ptr, align 4
  store i16 456, i16 addrspace(1)* %ptr.1
  ret void
}





define void @test_merge_store_constant_i16_invariant_constant_pointer_load(i16 addrspace(1)* addrspace(2)* dereferenceable(4096) nonnull %in) #0 {
  %ptr = load i16 addrspace(1)*, i16 addrspace(1)* addrspace(2)* %in, !invariant.load !0
  %ptr.1 = getelementptr i16, i16 addrspace(1)* %ptr, i64 1
  store i16 123, i16 addrspace(1)* %ptr, align 4
  store i16 456, i16 addrspace(1)* %ptr.1
  ret void
}

!0 = !{}

attributes #0 = { nounwind }