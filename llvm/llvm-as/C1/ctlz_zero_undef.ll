



declare i32 @llvm.ctlz.i32(i32, i1) nounwind readnone
declare <2 x i32> @llvm.ctlz.v2i32(<2 x i32>, i1) nounwind readnone
declare <4 x i32> @llvm.ctlz.v4i32(<4 x i32>, i1) nounwind readnone









define void @s_ctlz_zero_undef_i32(i32 addrspace(1)* noalias %out, i32 %val) nounwind {
  %ctlz = call i32 @llvm.ctlz.i32(i32 %val, i1 true) nounwind readnone
  store i32 %ctlz, i32 addrspace(1)* %out, align 4
  ret void
}








define void @v_ctlz_zero_undef_i32(i32 addrspace(1)* noalias %out, i32 addrspace(1)* noalias %valptr) nounwind {
  %val = load i32, i32 addrspace(1)* %valptr, align 4
  %ctlz = call i32 @llvm.ctlz.i32(i32 %val, i1 true) nounwind readnone
  store i32 %ctlz, i32 addrspace(1)* %out, align 4
  ret void
}










define void @v_ctlz_zero_undef_v2i32(<2 x i32> addrspace(1)* noalias %out, <2 x i32> addrspace(1)* noalias %valptr) nounwind {
  %val = load <2 x i32>, <2 x i32> addrspace(1)* %valptr, align 8
  %ctlz = call <2 x i32> @llvm.ctlz.v2i32(<2 x i32> %val, i1 true) nounwind readnone
  store <2 x i32> %ctlz, <2 x i32> addrspace(1)* %out, align 8
  ret void
}














define void @v_ctlz_zero_undef_v4i32(<4 x i32> addrspace(1)* noalias %out, <4 x i32> addrspace(1)* noalias %valptr) nounwind {
  %val = load <4 x i32>, <4 x i32> addrspace(1)* %valptr, align 16
  %ctlz = call <4 x i32> @llvm.ctlz.v4i32(<4 x i32> %val, i1 true) nounwind readnone
  store <4 x i32> %ctlz, <4 x i32> addrspace(1)* %out, align 16
  ret void
}
