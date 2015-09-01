



@extern_const_addrspace = external unnamed_addr addrspace(2) constant [5 x i32], align 4


define void @load_extern_const_init(i32 addrspace(1)* %out) nounwind {
  %val = load i32, i32 addrspace(2)* getelementptr ([5 x i32], [5 x i32] addrspace(2)* @extern_const_addrspace, i64 0, i64 3), align 4
  store i32 %val, i32 addrspace(1)* %out, align 4
  ret void
}

@undef_const_addrspace = unnamed_addr addrspace(2) constant [5 x i32] undef, align 4


define void @load_undef_const_init(i32 addrspace(1)* %out) nounwind {
  %val = load i32, i32 addrspace(2)* getelementptr ([5 x i32], [5 x i32] addrspace(2)* @undef_const_addrspace, i64 0, i64 3), align 4
  store i32 %val, i32 addrspace(1)* %out, align 4
  ret void
}
