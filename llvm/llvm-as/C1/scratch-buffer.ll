

















define void @legal_offset_fi(i32 addrspace(1)* %out, i32 %cond, i32 %if_offset, i32 %else_offset) {
entry:
  %scratch0 = alloca [8192 x i32]
  %scratch1 = alloca [8192 x i32]

  %scratchptr0 = getelementptr [8192 x i32], [8192 x i32]* %scratch0, i32 0, i32 0
  store i32 1, i32* %scratchptr0

  %scratchptr1 = getelementptr [8192 x i32], [8192 x i32]* %scratch1, i32 0, i32 0
  store i32 2, i32* %scratchptr1

  %cmp = icmp eq i32 %cond, 0
  br i1 %cmp, label %if, label %else

if:
  %if_ptr = getelementptr [8192 x i32], [8192 x i32]* %scratch0, i32 0, i32 %if_offset
  %if_value = load i32, i32* %if_ptr
  br label %done

else:
  %else_ptr = getelementptr [8192 x i32], [8192 x i32]* %scratch1, i32 0, i32 %else_offset
  %else_value = load i32, i32* %else_ptr
  br label %done

done:
  %value = phi i32 [%if_value, %if], [%else_value, %else]
  store i32 %value, i32 addrspace(1)* %out
  ret void

  ret void

}






define void @legal_offset_fi_offset(i32 addrspace(1)* %out, i32 %cond, i32 addrspace(1)* %offsets, i32 %if_offset, i32 %else_offset) {
entry:
  %scratch0 = alloca [8192 x i32]
  %scratch1 = alloca [8192 x i32]

  %offset0 = load i32, i32 addrspace(1)* %offsets
  %scratchptr0 = getelementptr [8192 x i32], [8192 x i32]* %scratch0, i32 0, i32 %offset0
  store i32 %offset0, i32* %scratchptr0

  %offsetptr1 = getelementptr i32, i32 addrspace(1)* %offsets, i32 1
  %offset1 = load i32, i32 addrspace(1)* %offsetptr1
  %scratchptr1 = getelementptr [8192 x i32], [8192 x i32]* %scratch1, i32 0, i32 %offset1
  store i32 %offset1, i32* %scratchptr1

  %cmp = icmp eq i32 %cond, 0
  br i1 %cmp, label %if, label %else

if:
  %if_ptr = getelementptr [8192 x i32], [8192 x i32]* %scratch0, i32 0, i32 %if_offset
  %if_value = load i32, i32* %if_ptr
  br label %done

else:
  %else_ptr = getelementptr [8192 x i32], [8192 x i32]* %scratch1, i32 0, i32 %else_offset
  %else_value = load i32, i32* %else_ptr
  br label %done

done:
  %value = phi i32 [%if_value, %if], [%else_value, %else]
  store i32 %value, i32 addrspace(1)* %out
  ret void
}






define void @neg_vaddr_offset(i32 %offset) {
entry:
  %array = alloca [8192 x i32]
  %ptr_offset = add i32 %offset, 4
  %ptr = getelementptr [8192 x i32], [8192 x i32]* %array, i32 0, i32 %ptr_offset
  store i32 0, i32* %ptr
  ret void
}




define void @pos_vaddr_offset(i32 addrspace(1)* %out, i32 %offset) {
entry:
  %array = alloca [8192 x i32]
  %ptr = getelementptr [8192 x i32], [8192 x i32]* %array, i32 0, i32 4
  store i32 0, i32* %ptr
  %load_ptr = getelementptr [8192 x i32], [8192 x i32]* %array, i32 0, i32 %offset
  %val = load i32, i32* %load_ptr
  store i32 %val, i32 addrspace(1)* %out
  ret void
}
