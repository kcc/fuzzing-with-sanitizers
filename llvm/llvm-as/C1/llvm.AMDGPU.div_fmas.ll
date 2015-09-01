




declare i32 @llvm.r600.read.tidig.x() nounwind readnone
declare void @llvm.AMDGPU.barrier.global() nounwind noduplicate
declare float @llvm.AMDGPU.div.fmas.f32(float, float, float, i1) nounwind readnone
declare double @llvm.AMDGPU.div.fmas.f64(double, double, double, i1) nounwind readnone














define void @test_div_fmas_f32(float addrspace(1)* %out, float %a, float %b, float %c, i1 %d) nounwind {
  %result = call float @llvm.AMDGPU.div.fmas.f32(float %a, float %b, float %c, i1 %d) nounwind readnone
  store float %result, float addrspace(1)* %out, align 4
  ret void
}









define void @test_div_fmas_f32_inline_imm_0(float addrspace(1)* %out, float %a, float %b, float %c, i1 %d) nounwind {
  %result = call float @llvm.AMDGPU.div.fmas.f32(float 1.0, float %b, float %c, i1 %d) nounwind readnone
  store float %result, float addrspace(1)* %out, align 4
  ret void
}









define void @test_div_fmas_f32_inline_imm_1(float addrspace(1)* %out, float %a, float %b, float %c, i1 %d) nounwind {
  %result = call float @llvm.AMDGPU.div.fmas.f32(float %a, float 1.0, float %c, i1 %d) nounwind readnone
  store float %result, float addrspace(1)* %out, align 4
  ret void
}









define void @test_div_fmas_f32_inline_imm_2(float addrspace(1)* %out, float %a, float %b, float %c, i1 %d) nounwind {
  %result = call float @llvm.AMDGPU.div.fmas.f32(float %a, float %b, float 1.0, i1 %d) nounwind readnone
  store float %result, float addrspace(1)* %out, align 4
  ret void
}



define void @test_div_fmas_f64(double addrspace(1)* %out, double %a, double %b, double %c, i1 %d) nounwind {
  %result = call double @llvm.AMDGPU.div.fmas.f64(double %a, double %b, double %c, i1 %d) nounwind readnone
  store double %result, double addrspace(1)* %out, align 8
  ret void
}




define void @test_div_fmas_f32_cond_to_vcc(float addrspace(1)* %out, float %a, float %b, float %c, i32 %i) nounwind {
  %cmp = icmp eq i32 %i, 0
  %result = call float @llvm.AMDGPU.div.fmas.f32(float %a, float %b, float %c, i1 %cmp) nounwind readnone
  store float %result, float addrspace(1)* %out, align 4
  ret void
}




define void @test_div_fmas_f32_imm_false_cond_to_vcc(float addrspace(1)* %out, float %a, float %b, float %c) nounwind {
  %result = call float @llvm.AMDGPU.div.fmas.f32(float %a, float %b, float %c, i1 false) nounwind readnone
  store float %result, float addrspace(1)* %out, align 4
  ret void
}




define void @test_div_fmas_f32_imm_true_cond_to_vcc(float addrspace(1)* %out, float %a, float %b, float %c) nounwind {
  %result = call float @llvm.AMDGPU.div.fmas.f32(float %a, float %b, float %c, i1 true) nounwind readnone
  store float %result, float addrspace(1)* %out, align 4
  ret void
}











define void @test_div_fmas_f32_logical_cond_to_vcc(float addrspace(1)* %out, float addrspace(1)* %in, i32 %d) nounwind {
  %tid = call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %gep.a = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.b = getelementptr float, float addrspace(1)* %gep.a, i32 1
  %gep.c = getelementptr float, float addrspace(1)* %gep.a, i32 2
  %gep.out = getelementptr float, float addrspace(1)* %out, i32 2

  %a = load float, float addrspace(1)* %gep.a
  %b = load float, float addrspace(1)* %gep.b
  %c = load float, float addrspace(1)* %gep.c

  %cmp0 = icmp eq i32 %tid, 0
  %cmp1 = icmp ne i32 %d, 0
  %and = and i1 %cmp0, %cmp1

  %result = call float @llvm.AMDGPU.div.fmas.f32(float %a, float %b, float %c, i1 %and) nounwind readnone
  store float %result, float addrspace(1)* %gep.out, align 4
  ret void
}

















define void @test_div_fmas_f32_i1_phi_vcc(float addrspace(1)* %out, float addrspace(1)* %in, i32 addrspace(1)* %dummy) nounwind {
entry:
  %tid = call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %gep.out = getelementptr float, float addrspace(1)* %out, i32 2
  %gep.a = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.b = getelementptr float, float addrspace(1)* %gep.a, i32 1
  %gep.c = getelementptr float, float addrspace(1)* %gep.a, i32 2

  %a = load float, float addrspace(1)* %gep.a
  %b = load float, float addrspace(1)* %gep.b
  %c = load float, float addrspace(1)* %gep.c

  %cmp0 = icmp eq i32 %tid, 0
  br i1 %cmp0, label %bb, label %exit

bb:
  %val = load i32, i32 addrspace(1)* %dummy
  %cmp1 = icmp ne i32 %val, 0
  br label %exit

exit:
  %cond = phi i1 [false, %entry], [%cmp1, %bb]
  %result = call float @llvm.AMDGPU.div.fmas.f32(float %a, float %b, float %c, i1 %cond) nounwind readnone
  store float %result, float addrspace(1)* %gep.out, align 4
  ret void
}
