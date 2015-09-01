





define void @test_dynamic_stackalloc(i32 addrspace(1)* %out, i32 %n) {
  %alloca = alloca i32, i32 %n
  store volatile i32 0, i32* %alloca
  ret void
}
