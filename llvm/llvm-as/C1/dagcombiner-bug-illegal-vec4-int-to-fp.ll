











define void @sint(<4 x float> addrspace(1)* %out, i32 addrspace(1)* %in) {
entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %in, i32 1
  %sint = load i32, i32 addrspace(1) * %in
  %conv = sitofp i32 %sint to float
  %0 = insertelement <4 x float> undef, float %conv, i32 0
  %splat = shufflevector <4 x float> %0, <4 x float> undef, <4 x i32> zeroinitializer
  store <4 x float> %splat, <4 x float> addrspace(1)* %out
  ret void
}




define void @uint(<4 x float> addrspace(1)* %out, i32 addrspace(1)* %in) {
entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %in, i32 1
  %uint = load i32, i32 addrspace(1) * %in
  %conv = uitofp i32 %uint to float
  %0 = insertelement <4 x float> undef, float %conv, i32 0
  %splat = shufflevector <4 x float> %0, <4 x float> undef, <4 x i32> zeroinitializer
  store <4 x float> %splat, <4 x float> addrspace(1)* %out
  ret void
}
