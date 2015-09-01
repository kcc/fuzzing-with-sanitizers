















define void @ashr_v2i32(<2 x i32> addrspace(1)* %out, <2 x i32> addrspace(1)* %in) {
  %b_ptr = getelementptr <2 x i32>, <2 x i32> addrspace(1)* %in, i32 1
  %a = load <2 x i32>, <2 x i32> addrspace(1) * %in
  %b = load <2 x i32>, <2 x i32> addrspace(1) * %b_ptr
  %result = ashr <2 x i32> %a, %b
  store <2 x i32> %result, <2 x i32> addrspace(1)* %out
  ret void
}



















define void @ashr_v4i32(<4 x i32> addrspace(1)* %out, <4 x i32> addrspace(1)* %in) {
  %b_ptr = getelementptr <4 x i32>, <4 x i32> addrspace(1)* %in, i32 1
  %a = load <4 x i32>, <4 x i32> addrspace(1) * %in
  %b = load <4 x i32>, <4 x i32> addrspace(1) * %b_ptr
  %result = ashr <4 x i32> %a, %b
  store <4 x i32> %result, <4 x i32> addrspace(1)* %out
  ret void
}










define void @ashr_i64(i64 addrspace(1)* %out, i32 %in) {
entry:
  %0 = sext i32 %in to i64
  %1 = ashr i64 %0, 8
  store i64 %1, i64 addrspace(1)* %out
  ret void
}





















define void @ashr_i64_2(i64 addrspace(1)* %out, i64 addrspace(1)* %in) {
entry:
  %b_ptr = getelementptr i64, i64 addrspace(1)* %in, i64 1
  %a = load i64, i64 addrspace(1) * %in
  %b = load i64, i64 addrspace(1) * %b_ptr
  %result = ashr i64 %a, %b
  store i64 %result, i64 addrspace(1)* %out
  ret void
}



































define void @ashr_v2i64(<2 x i64> addrspace(1)* %out, <2 x i64> addrspace(1)* %in) {
  %b_ptr = getelementptr <2 x i64>, <2 x i64> addrspace(1)* %in, i64 1
  %a = load <2 x i64>, <2 x i64> addrspace(1) * %in
  %b = load <2 x i64>, <2 x i64> addrspace(1) * %b_ptr
  %result = ashr <2 x i64> %a, %b
  store <2 x i64> %result, <2 x i64> addrspace(1)* %out
  ret void
}































































define void @ashr_v4i64(<4 x i64> addrspace(1)* %out, <4 x i64> addrspace(1)* %in) {
  %b_ptr = getelementptr <4 x i64>, <4 x i64> addrspace(1)* %in, i64 1
  %a = load <4 x i64>, <4 x i64> addrspace(1) * %in
  %b = load <4 x i64>, <4 x i64> addrspace(1) * %b_ptr
  %result = ashr <4 x i64> %a, %b
  store <4 x i64> %result, <4 x i64> addrspace(1)* %out
  ret void
}

