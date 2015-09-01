





define void @stored_lds_pointer_value(float* addrspace(1)* %ptr) #0 {
  %tmp = alloca float
  store float 0.0, float *%tmp
  store float* %tmp, float* addrspace(1)* %ptr
  ret void
}






define void @stored_lds_pointer_value_gep(float* addrspace(1)* %ptr, i32 %idx) #0 {
bb:
  %tmp = alloca float, i32 16
  store float 0.0, float* %tmp
  %tmp2 = getelementptr inbounds float, float* %tmp, i32 %idx
  store float* %tmp2, float* addrspace(1)* %ptr
  ret void
}









define void @stored_vector_pointer_value(i32* addrspace(1)* %out, i32 %index) {
entry:
  %tmp0 = alloca [4 x i32]
  %x = getelementptr [4 x i32], [4 x i32]* %tmp0, i32 0, i32 0
  %y = getelementptr [4 x i32], [4 x i32]* %tmp0, i32 0, i32 1
  %z = getelementptr [4 x i32], [4 x i32]* %tmp0, i32 0, i32 2
  %w = getelementptr [4 x i32], [4 x i32]* %tmp0, i32 0, i32 3
  store i32 0, i32* %x
  store i32 1, i32* %y
  store i32 2, i32* %z
  store i32 3, i32* %w
  %tmp1 = getelementptr [4 x i32], [4 x i32]* %tmp0, i32 0, i32 %index
  store i32* %tmp1, i32* addrspace(1)* %out
  ret void
}

attributes #0 = { nounwind }
