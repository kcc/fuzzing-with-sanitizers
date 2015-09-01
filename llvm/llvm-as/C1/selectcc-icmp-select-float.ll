







define void @test(float addrspace(1)* %out, i32 addrspace(1)* %in) {
entry:
  %0 = load i32, i32 addrspace(1)* %in
  %1 = icmp sge i32 %0, 0
  %2 = select i1 %1, float 1.0, float 0.0
  store float %2, float addrspace(1)* %out
  ret void
}
