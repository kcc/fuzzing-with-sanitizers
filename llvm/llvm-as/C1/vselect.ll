











define void @test_select_v2i32(<2 x i32> addrspace(1)* %out, <2 x i32> addrspace(1)* %in0, <2 x i32> addrspace(1)* %in1) {
entry:
  %0 = load <2 x i32>, <2 x i32> addrspace(1)* %in0
  %1 = load <2 x i32>, <2 x i32> addrspace(1)* %in1
  %cmp = icmp ne <2 x i32> %0, %1
  %result = select <2 x i1> %cmp, <2 x i32> %0, <2 x i32> %1
  store <2 x i32> %result, <2 x i32> addrspace(1)* %out
  ret void
}









define void @test_select_v2f32(<2 x float> addrspace(1)* %out, <2 x float> addrspace(1)* %in0, <2 x float> addrspace(1)* %in1) {
entry:
  %0 = load <2 x float>, <2 x float> addrspace(1)* %in0
  %1 = load <2 x float>, <2 x float> addrspace(1)* %in1
  %cmp = fcmp une <2 x float> %0, %1
  %result = select <2 x i1> %cmp, <2 x float> %0, <2 x float> %1
  store <2 x float> %result, <2 x float> addrspace(1)* %out
  ret void
}















define void @test_select_v4i32(<4 x i32> addrspace(1)* %out, <4 x i32> addrspace(1)* %in0, <4 x i32> addrspace(1)* %in1) {
entry:
  %0 = load <4 x i32>, <4 x i32> addrspace(1)* %in0
  %1 = load <4 x i32>, <4 x i32> addrspace(1)* %in1
  %cmp = icmp ne <4 x i32> %0, %1
  %result = select <4 x i1> %cmp, <4 x i32> %0, <4 x i32> %1
  store <4 x i32> %result, <4 x i32> addrspace(1)* %out
  ret void
}







define void @test_select_v4f32(<4 x float> addrspace(1)* %out, <4 x float> addrspace(1)* %in0, <4 x float> addrspace(1)* %in1) {
entry:
  %0 = load <4 x float>, <4 x float> addrspace(1)* %in0
  %1 = load <4 x float>, <4 x float> addrspace(1)* %in1
  %cmp = fcmp une <4 x float> %0, %1
  %result = select <4 x i1> %cmp, <4 x float> %0, <4 x float> %1
  store <4 x float> %result, <4 x float> addrspace(1)* %out
  ret void
}
