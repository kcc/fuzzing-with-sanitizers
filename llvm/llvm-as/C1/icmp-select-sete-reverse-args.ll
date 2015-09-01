







define void @test(i32 addrspace(1)* %out, i32 addrspace(1)* %in) {
entry:
  %0 = load i32, i32 addrspace(1)* %in
  %arrayidx1 = getelementptr inbounds i32, i32 addrspace(1)* %in, i32 1
  %1 = load i32, i32 addrspace(1)* %arrayidx1
  %cmp = icmp eq i32 %0, %1
  %value = select i1 %cmp, i32 0, i32 -1
  store i32 %value, i32 addrspace(1)* %out
  ret void
}
