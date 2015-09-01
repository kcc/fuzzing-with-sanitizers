





define void @test(i32 addrspace(1)* %out, float addrspace(1)* %in) {
entry:
  %0 = load float, float addrspace(1)* %in
  %cmp = fcmp oeq float %0, 0.000000e+00
  %value = select i1 %cmp, i32 2, i32 3 
  store i32 %value, i32 addrspace(1)* %out
  ret void
}
