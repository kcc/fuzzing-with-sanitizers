




define void @no_branch_to_entry_undef(i32 addrspace(1)* %out) {
entry:
  br i1 undef, label %for.end, label %for.body

for.body:                                         
  store i32 999, i32 addrspace(1)* %out, align 4
  br label %for.body

for.end:                                          
  ret void
}




define void @no_branch_to_entry_true(i32 addrspace(1)* %out) {
entry:
  br i1 true, label %for.end, label %for.body

for.body:                                         
  store i32 999, i32 addrspace(1)* %out, align 4
  br label %for.body

for.end:                                          
  ret void
}
