


declare i64 @llvm.ctpop.i64(i64) nounwind readnone
declare <2 x i64> @llvm.ctpop.v2i64(<2 x i64>) nounwind readnone
declare <4 x i64> @llvm.ctpop.v4i64(<4 x i64>) nounwind readnone
declare <8 x i64> @llvm.ctpop.v8i64(<8 x i64>) nounwind readnone
declare <16 x i64> @llvm.ctpop.v16i64(<16 x i64>) nounwind readnone








define void @s_ctpop_i64(i32 addrspace(1)* noalias %out, i64 %val) nounwind {
  %ctpop = call i64 @llvm.ctpop.i64(i64 %val) nounwind readnone
  %truncctpop = trunc i64 %ctpop to i32
  store i32 %truncctpop, i32 addrspace(1)* %out, align 4
  ret void
}








define void @v_ctpop_i64(i32 addrspace(1)* noalias %out, i64 addrspace(1)* noalias %in) nounwind {
  %val = load i64, i64 addrspace(1)* %in, align 8
  %ctpop = call i64 @llvm.ctpop.i64(i64 %val) nounwind readnone
  %truncctpop = trunc i64 %ctpop to i32
  store i32 %truncctpop, i32 addrspace(1)* %out, align 4
  ret void
}












define void @v_ctpop_i64_user(i64 addrspace(1)* noalias %out, i64 addrspace(1)* noalias %in, i64 %s.val) nounwind {
  %val = load i64, i64 addrspace(1)* %in, align 8
  %ctpop = call i64 @llvm.ctpop.i64(i64 %val) nounwind readnone
  %or = or i64 %ctpop, %s.val
  store i64 %or, i64 addrspace(1)* %out
  ret void
}





define void @s_ctpop_v2i64(<2 x i32> addrspace(1)* noalias %out, <2 x i64> %val) nounwind {
  %ctpop = call <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %val) nounwind readnone
  %truncctpop = trunc <2 x i64> %ctpop to <2 x i32>
  store <2 x i32> %truncctpop, <2 x i32> addrspace(1)* %out, align 8
  ret void
}







define void @s_ctpop_v4i64(<4 x i32> addrspace(1)* noalias %out, <4 x i64> %val) nounwind {
  %ctpop = call <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %val) nounwind readnone
  %truncctpop = trunc <4 x i64> %ctpop to <4 x i32>
  store <4 x i32> %truncctpop, <4 x i32> addrspace(1)* %out, align 16
  ret void
}







define void @v_ctpop_v2i64(<2 x i32> addrspace(1)* noalias %out, <2 x i64> addrspace(1)* noalias %in) nounwind {
  %val = load <2 x i64>, <2 x i64> addrspace(1)* %in, align 16
  %ctpop = call <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %val) nounwind readnone
  %truncctpop = trunc <2 x i64> %ctpop to <2 x i32>
  store <2 x i32> %truncctpop, <2 x i32> addrspace(1)* %out, align 8
  ret void
}











define void @v_ctpop_v4i64(<4 x i32> addrspace(1)* noalias %out, <4 x i64> addrspace(1)* noalias %in) nounwind {
  %val = load <4 x i64>, <4 x i64> addrspace(1)* %in, align 32
  %ctpop = call <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %val) nounwind readnone
  %truncctpop = trunc <4 x i64> %ctpop to <4 x i32>
  store <4 x i32> %truncctpop, <4 x i32> addrspace(1)* %out, align 16
  ret void
}












define void @ctpop_i64_in_br(i64 addrspace(1)* %out, i64 addrspace(1)* %in, i64 %ctpop_arg, i32 %cond) {
entry:
  %tmp0 = icmp eq i32 %cond, 0
  br i1 %tmp0, label %if, label %else

if:
  %tmp2 = call i64 @llvm.ctpop.i64(i64 %ctpop_arg)
  br label %endif

else:
  %tmp3 = getelementptr i64, i64 addrspace(1)* %in, i32 1
  %tmp4 = load i64, i64 addrspace(1)* %tmp3
  br label %endif

endif:
  %tmp5 = phi i64 [%tmp2, %if], [%tmp4, %else]
  store i64 %tmp5, i64 addrspace(1)* %out
  ret void
}
