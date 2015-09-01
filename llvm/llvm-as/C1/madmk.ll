


declare i32 @llvm.r600.read.tidig.x() nounwind readnone
declare float @llvm.fabs.f32(float) nounwind readnone





define void @madmk_f32(float addrspace(1)* noalias %out, float addrspace(1)* noalias %in) nounwind {
  %tid = tail call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %gep.0 = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr float, float addrspace(1)* %gep.0, i32 1
  %out.gep = getelementptr float, float addrspace(1)* %out, i32 %tid

  %a = load float, float addrspace(1)* %gep.0, align 4
  %b = load float, float addrspace(1)* %gep.1, align 4

  %mul = fmul float %a, 10.0
  %madmk = fadd float %mul, %b
  store float %madmk, float addrspace(1)* %out.gep, align 4
  ret void
}









define void @madmk_2_use_f32(float addrspace(1)* noalias %out, float addrspace(1)* noalias %in) nounwind {
  %tid = tail call i32 @llvm.r600.read.tidig.x() nounwind readnone

  %in.gep.0 = getelementptr float, float addrspace(1)* %in, i32 %tid
  %in.gep.1 = getelementptr float, float addrspace(1)* %in.gep.0, i32 1
  %in.gep.2 = getelementptr float, float addrspace(1)* %in.gep.0, i32 2

  %out.gep.0 = getelementptr float, float addrspace(1)* %out, i32 %tid
  %out.gep.1 = getelementptr float, float addrspace(1)* %in.gep.0, i32 1

  %a = load float, float addrspace(1)* %in.gep.0, align 4
  %b = load float, float addrspace(1)* %in.gep.1, align 4
  %c = load float, float addrspace(1)* %in.gep.2, align 4

  %mul0 = fmul float %a, 10.0
  %mul1 = fmul float %a, 10.0
  %madmk0 = fadd float %mul0, %b
  %madmk1 = fadd float %mul1, %c

  store float %madmk0, float addrspace(1)* %out.gep.0, align 4
  store float %madmk1, float addrspace(1)* %out.gep.1, align 4
  ret void
}






define void @madmk_inline_imm_f32(float addrspace(1)* noalias %out, float addrspace(1)* noalias %in) nounwind {
  %tid = tail call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %gep.0 = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr float, float addrspace(1)* %gep.0, i32 1
  %out.gep = getelementptr float, float addrspace(1)* %out, i32 %tid

  %a = load float, float addrspace(1)* %gep.0, align 4
  %b = load float, float addrspace(1)* %gep.1, align 4

  %mul = fmul float %a, 4.0
  %madmk = fadd float %mul, %b
  store float %madmk, float addrspace(1)* %out.gep, align 4
  ret void
}





define void @s_s_madmk_f32(float addrspace(1)* noalias %out, float %a, float %b) nounwind {
  %tid = tail call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %out.gep = getelementptr float, float addrspace(1)* %out, i32 %tid

  %mul = fmul float %a, 10.0
  %madmk = fadd float %mul, %b
  store float %madmk, float addrspace(1)* %out.gep, align 4
  ret void
}





define void @v_s_madmk_f32(float addrspace(1)* noalias %out, float addrspace(1)* noalias %in, float %b) nounwind {
  %tid = tail call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %gep.0 = getelementptr float, float addrspace(1)* %in, i32 %tid
  %out.gep = getelementptr float, float addrspace(1)* %out, i32 %tid
  %a = load float, float addrspace(1)* %gep.0, align 4

  %mul = fmul float %a, 10.0
  %madmk = fadd float %mul, %b
  store float %madmk, float addrspace(1)* %out.gep, align 4
  ret void
}





define void @scalar_vector_madmk_f32(float addrspace(1)* noalias %out, float addrspace(1)* noalias %in, float %a) nounwind {
  %tid = tail call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %gep.0 = getelementptr float, float addrspace(1)* %in, i32 %tid
  %out.gep = getelementptr float, float addrspace(1)* %out, i32 %tid
  %b = load float, float addrspace(1)* %gep.0, align 4

  %mul = fmul float %a, 10.0
  %madmk = fadd float %mul, %b
  store float %madmk, float addrspace(1)* %out.gep, align 4
  ret void
}





define void @no_madmk_src0_modifier_f32(float addrspace(1)* noalias %out, float addrspace(1)* noalias %in) nounwind {
  %tid = tail call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %gep.0 = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr float, float addrspace(1)* %gep.0, i32 1
  %out.gep = getelementptr float, float addrspace(1)* %out, i32 %tid

  %a = load float, float addrspace(1)* %gep.0, align 4
  %b = load float, float addrspace(1)* %gep.1, align 4

  %a.fabs = call float @llvm.fabs.f32(float %a) nounwind readnone

  %mul = fmul float %a.fabs, 10.0
  %madmk = fadd float %mul, %b
  store float %madmk, float addrspace(1)* %out.gep, align 4
  ret void
}





define void @no_madmk_src2_modifier_f32(float addrspace(1)* noalias %out, float addrspace(1)* noalias %in) nounwind {
  %tid = tail call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %gep.0 = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr float, float addrspace(1)* %gep.0, i32 1
  %out.gep = getelementptr float, float addrspace(1)* %out, i32 %tid

  %a = load float, float addrspace(1)* %gep.0, align 4
  %b = load float, float addrspace(1)* %gep.1, align 4

  %b.fabs = call float @llvm.fabs.f32(float %b) nounwind readnone

  %mul = fmul float %a, 10.0
  %madmk = fadd float %mul, %b.fabs
  store float %madmk, float addrspace(1)* %out.gep, align 4
  ret void
}





define void @madmk_add_inline_imm_f32(float addrspace(1)* noalias %out, float addrspace(1)* noalias %in) nounwind {
  %tid = tail call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %gep.0 = getelementptr float, float addrspace(1)* %in, i32 %tid
  %out.gep = getelementptr float, float addrspace(1)* %out, i32 %tid

  %a = load float, float addrspace(1)* %gep.0, align 4

  %mul = fmul float %a, 10.0
  %madmk = fadd float %mul, 2.0
  store float %madmk, float addrspace(1)* %out.gep, align 4
  ret void
}





define void @kill_madmk_verifier_error() nounwind {
bb:
  br label %bb2

bb1:                                              
  ret void

bb2:                                              
  %tmp = phi float [ undef, %bb ], [ %tmp8, %bb6 ]
  %tmp3 = fsub float undef, %tmp
  %tmp5 = fcmp oeq float %tmp3, 1.000000e+04
  br i1 %tmp5, label %bb1, label %bb6

bb6:                                              
  %tmp4 = fmul float %tmp, undef
  %tmp7 = fmul float %tmp4, 0x40E55DD180000000
  %tmp8 = fadd float %tmp7, undef
  br label %bb2
}
