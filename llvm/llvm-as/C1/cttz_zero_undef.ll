



declare i32 @llvm.cttz.i32(i32, i1) nounwind readnone
declare <2 x i32> @llvm.cttz.v2i32(<2 x i32>, i1) nounwind readnone
declare <4 x i32> @llvm.cttz.v4i32(<4 x i32>, i1) nounwind readnone









define void @s_cttz_zero_undef_i32(i32 addrspace(1)* noalias %out, i32 %val) nounwind {
  %cttz = call i32 @llvm.cttz.i32(i32 %val, i1 true) nounwind readnone
  store i32 %cttz, i32 addrspace(1)* %out, align 4
  ret void
}








define void @v_cttz_zero_undef_i32(i32 addrspace(1)* noalias %out, i32 addrspace(1)* noalias %valptr) nounwind {
  %val = load i32, i32 addrspace(1)* %valptr, align 4
  %cttz = call i32 @llvm.cttz.i32(i32 %val, i1 true) nounwind readnone
  store i32 %cttz, i32 addrspace(1)* %out, align 4
  ret void
}










define void @v_cttz_zero_undef_v2i32(<2 x i32> addrspace(1)* noalias %out, <2 x i32> addrspace(1)* noalias %valptr) nounwind {
  %val = load <2 x i32>, <2 x i32> addrspace(1)* %valptr, align 8
  %cttz = call <2 x i32> @llvm.cttz.v2i32(<2 x i32> %val, i1 true) nounwind readnone
  store <2 x i32> %cttz, <2 x i32> addrspace(1)* %out, align 8
  ret void
}














define void @v_cttz_zero_undef_v4i32(<4 x i32> addrspace(1)* noalias %out, <4 x i32> addrspace(1)* noalias %valptr) nounwind {
  %val = load <4 x i32>, <4 x i32> addrspace(1)* %valptr, align 16
  %cttz = call <4 x i32> @llvm.cttz.v4i32(<4 x i32> %val, i1 true) nounwind readnone
  store <4 x i32> %cttz, <4 x i32> addrspace(1)* %out, align 16
  ret void
}
