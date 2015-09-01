








define void @infinite_loop(i32 addrspace(1)* %out) {
entry:
  br label %for.body

for.body:                                         
  store i32 999, i32 addrspace(1)* %out, align 4
  br label %for.body
}

