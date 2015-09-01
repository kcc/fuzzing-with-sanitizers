



define void @fold_sgpr(i32 addrspace(1)* %out, i32 %fold) {
entry:
  %tmp0 = icmp ne i32 %fold, 0
  br i1 %tmp0, label %if, label %endif

if:
  %id = call i32 @llvm.r600.read.tidig.x()
  %offset = add i32 %fold, %id
  %tmp1 = getelementptr i32, i32 addrspace(1)* %out, i32 %offset
  store i32 0, i32 addrspace(1)* %tmp1
  br label %endif

endif:
  ret void
}



define void @fold_imm(i32 addrspace(1)* %out, i32 %cmp) {
entry:
  %fold = add i32 3, 2
  %tmp0 = icmp ne i32 %cmp, 0
  br i1 %tmp0, label %if, label %endif

if:
  %id = call i32 @llvm.r600.read.tidig.x()
  %val = or i32 %id, %fold
  store i32 %val, i32 addrspace(1)* %out
  br label %endif

endif:
  ret void
}











define void @fold_64bit_constant_add(i64 addrspace(1)* %out, i32 %cmp, i64 %val) {
entry:
  %tmp0 = add i64 %val, 1
  store i64 %tmp0, i64 addrspace(1)* %out
  ret void
}









define void @vector_inline(<4 x i32> addrspace(1)* %out) {
entry:
  %tmp0 = call i32 @llvm.r600.read.tidig.x()
  %tmp1 = add i32 %tmp0, 1
  %tmp2 = add i32 %tmp0, 2
  %tmp3 = add i32 %tmp0, 3
  %vec0 = insertelement <4 x i32> undef, i32 %tmp0, i32 0
  %vec1 = insertelement <4 x i32> %vec0, i32 %tmp1, i32 1
  %vec2 = insertelement <4 x i32> %vec1, i32 %tmp2, i32 2
  %vec3 = insertelement <4 x i32> %vec2, i32 %tmp3, i32 3
  %tmp4 = xor <4 x i32> <i32 5, i32 5, i32 5, i32 5>, %vec3
  store <4 x i32> %tmp4, <4 x i32> addrspace(1)* %out
  ret void
}





define void @imm_one_use(i32 addrspace(1)* %out) {
entry:
  %tmp0 = call i32 @llvm.r600.read.tidig.x()
  %tmp1 = xor i32 %tmp0, 100
  store i32 %tmp1, i32 addrspace(1)* %out
  ret void
}







define void @vector_imm(<4 x i32> addrspace(1)* %out) {
entry:
  %tmp0 = call i32 @llvm.r600.read.tidig.x()
  %tmp1 = add i32 %tmp0, 1
  %tmp2 = add i32 %tmp0, 2
  %tmp3 = add i32 %tmp0, 3
  %vec0 = insertelement <4 x i32> undef, i32 %tmp0, i32 0
  %vec1 = insertelement <4 x i32> %vec0, i32 %tmp1, i32 1
  %vec2 = insertelement <4 x i32> %vec1, i32 %tmp2, i32 2
  %vec3 = insertelement <4 x i32> %vec2, i32 %tmp3, i32 3
  %tmp4 = xor <4 x i32> <i32 100, i32 100, i32 100, i32 100>, %vec3
  store <4 x i32> %tmp4, <4 x i32> addrspace(1)* %out
  ret void
}

declare i32 @llvm.r600.read.tidig.x() #0
attributes #0 = { readnone }
