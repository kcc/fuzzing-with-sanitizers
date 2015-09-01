




define void @test(float addrspace(1)* %out, float addrspace(1)* %in) {
  %1 = load float, float addrspace(1)* %in
  %2 = fcmp oeq float %1, 0.0
  %3 = select i1 %2, float 1.0, float 2.0
  store float %3, float addrspace(1)* %out
  ret void
}
