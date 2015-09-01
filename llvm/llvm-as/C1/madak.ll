




declare i32 @llvm.r600.read.tidig.x() nounwind readnone
declare float @llvm.fabs.f32(float) nounwind readnone





define void @madak_f32(float addrspace(1)* noalias %out, float addrspace(1)* noalias %in.a, float addrspace(1)* noalias %in.b) nounwind {
  %tid = tail call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %in.a.gep = getelementptr float, float addrspace(1)* %in.a, i32 %tid
  %in.b.gep = getelementptr float, float addrspace(1)* %in.b, i32 %tid
  %out.gep = getelementptr float, float addrspace(1)* %out, i32 %tid

  %a = load float, float addrspace(1)* %in.a.gep, align 4
  %b = load float, float addrspace(1)* %in.b.gep, align 4

  %mul = fmul float %a, %b
  %madak = fadd float %mul, 10.0
  store float %madak, float addrspace(1)* %out.gep, align 4
  ret void
}













define void @madak_2_use_f32(float addrspace(1)* noalias %out, float addrspace(1)* noalias %in) nounwind {
  %tid = tail call i32 @llvm.r600.read.tidig.x() nounwind readnone

  %in.gep.0 = getelementptr float, float addrspace(1)* %in, i32 %tid
  %in.gep.1 = getelementptr float, float addrspace(1)* %in.gep.0, i32 1
  %in.gep.2 = getelementptr float, float addrspace(1)* %in.gep.0, i32 2

  %out.gep.0 = getelementptr float, float addrspace(1)* %out, i32 %tid
  %out.gep.1 = getelementptr float, float addrspace(1)* %in.gep.0, i32 1

  %a = load float, float addrspace(1)* %in.gep.0, align 4
  %b = load float, float addrspace(1)* %in.gep.1, align 4
  %c = load float, float addrspace(1)* %in.gep.2, align 4

  %mul0 = fmul float %a, %b
  %mul1 = fmul float %a, %c
  %madak0 = fadd float %mul0, 10.0
  %madak1 = fadd float %mul1, 10.0

  store float %madak0, float addrspace(1)* %out.gep.0, align 4
  store float %madak1, float addrspace(1)* %out.gep.1, align 4
  ret void
}




define void @madak_m_inline_imm_f32(float addrspace(1)* noalias %out, float addrspace(1)* noalias %in.a) nounwind {
  %tid = tail call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %in.a.gep = getelementptr float, float addrspace(1)* %in.a, i32 %tid
  %out.gep = getelementptr float, float addrspace(1)* %out, i32 %tid

  %a = load float, float addrspace(1)* %in.a.gep, align 4

  %mul = fmul float 4.0, %a
  %madak = fadd float %mul, 10.0
  store float %madak, float addrspace(1)* %out.gep, align 4
  ret void
}








define void @madak_inline_imm_f32(float addrspace(1)* noalias %out, float addrspace(1)* noalias %in.a, float addrspace(1)* noalias %in.b) nounwind {
  %tid = tail call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %in.a.gep = getelementptr float, float addrspace(1)* %in.a, i32 %tid
  %in.b.gep = getelementptr float, float addrspace(1)* %in.b, i32 %tid
  %out.gep = getelementptr float, float addrspace(1)* %out, i32 %tid

  %a = load float, float addrspace(1)* %in.a.gep, align 4
  %b = load float, float addrspace(1)* %in.b.gep, align 4

  %mul = fmul float %a, %b
  %madak = fadd float %mul, 4.0
  store float %madak, float addrspace(1)* %out.gep, align 4
  ret void
}








define void @s_v_madak_f32(float addrspace(1)* noalias %out, float addrspace(1)* noalias %in.a, float %b) nounwind {
  %tid = tail call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %in.a.gep = getelementptr float, float addrspace(1)* %in.a, i32 %tid
  %out.gep = getelementptr float, float addrspace(1)* %out, i32 %tid

  %a = load float, float addrspace(1)* %in.a.gep, align 4

  %mul = fmul float %a, %b
  %madak = fadd float %mul, 10.0
  store float %madak, float addrspace(1)* %out.gep, align 4
  ret void
}







define void @v_s_madak_f32(float addrspace(1)* noalias %out, float %a, float addrspace(1)* noalias %in.b) nounwind {
  %tid = tail call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %in.b.gep = getelementptr float, float addrspace(1)* %in.b, i32 %tid
  %out.gep = getelementptr float, float addrspace(1)* %out, i32 %tid

  %b = load float, float addrspace(1)* %in.b.gep, align 4

  %mul = fmul float %a, %b
  %madak = fadd float %mul, 10.0
  store float %madak, float addrspace(1)* %out.gep, align 4
  ret void
}




define void @s_s_madak_f32(float addrspace(1)* %out, float %a, float %b) nounwind {
  %mul = fmul float %a, %b
  %madak = fadd float %mul, 10.0
  store float %madak, float addrspace(1)* %out, align 4
  ret void
}






define void @no_madak_src0_modifier_f32(float addrspace(1)* noalias %out, float addrspace(1)* noalias %in.a, float addrspace(1)* noalias %in.b) nounwind {
  %tid = tail call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %in.a.gep = getelementptr float, float addrspace(1)* %in.a, i32 %tid
  %in.b.gep = getelementptr float, float addrspace(1)* %in.b, i32 %tid
  %out.gep = getelementptr float, float addrspace(1)* %out, i32 %tid

  %a = load float, float addrspace(1)* %in.a.gep, align 4
  %b = load float, float addrspace(1)* %in.b.gep, align 4

  %a.fabs = call float @llvm.fabs.f32(float %a) nounwind readnone

  %mul = fmul float %a.fabs, %b
  %madak = fadd float %mul, 10.0
  store float %madak, float addrspace(1)* %out.gep, align 4
  ret void
}






define void @no_madak_src1_modifier_f32(float addrspace(1)* noalias %out, float addrspace(1)* noalias %in.a, float addrspace(1)* noalias %in.b) nounwind {
  %tid = tail call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %in.a.gep = getelementptr float, float addrspace(1)* %in.a, i32 %tid
  %in.b.gep = getelementptr float, float addrspace(1)* %in.b, i32 %tid
  %out.gep = getelementptr float, float addrspace(1)* %out, i32 %tid

  %a = load float, float addrspace(1)* %in.a.gep, align 4
  %b = load float, float addrspace(1)* %in.b.gep, align 4

  %b.fabs = call float @llvm.fabs.f32(float %b) nounwind readnone

  %mul = fmul float %a, %b.fabs
  %madak = fadd float %mul, 10.0
  store float %madak, float addrspace(1)* %out.gep, align 4
  ret void
}
