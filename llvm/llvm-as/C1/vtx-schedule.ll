










define void @test(i32 addrspace(1)* nocapture %out, i32 addrspace(1)* addrspace(1)* nocapture %in0) {
entry:
  %0 = load i32 addrspace(1)*, i32 addrspace(1)* addrspace(1)* %in0
  %1 = load i32, i32 addrspace(1)* %0
  store i32 %1, i32 addrspace(1)* %out
  ret void
}
