





define void @test(i32 addrspace(1)* %out) {
  store i32 0, i32 addrspace(1)* %out
  ret void
}
