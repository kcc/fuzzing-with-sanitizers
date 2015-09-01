

declare i32 @llvm.r600.read.tidig.x() nounwind readnone
declare { float, i1 } @llvm.AMDGPU.div.scale.f32(float, float, i1) nounwind readnone
declare { double, i1 } @llvm.AMDGPU.div.scale.f64(double, double, i1) nounwind readnone
declare float @llvm.fabs.f32(float) nounwind readnone







define void @test_div_scale_f32_1(float addrspace(1)* %out, float addrspace(1)* %in) nounwind {
  %tid = call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %gep.0 = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr float, float addrspace(1)* %gep.0, i32 1

  %a = load float, float addrspace(1)* %gep.0, align 4
  %b = load float, float addrspace(1)* %gep.1, align 4

  %result = call { float, i1 } @llvm.AMDGPU.div.scale.f32(float %a, float %b, i1 false) nounwind readnone
  %result0 = extractvalue { float, i1 } %result, 0
  store float %result0, float addrspace(1)* %out, align 4
  ret void
}







define void @test_div_scale_f32_2(float addrspace(1)* %out, float addrspace(1)* %in) nounwind {
  %tid = call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %gep.0 = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr float, float addrspace(1)* %gep.0, i32 1

  %a = load float, float addrspace(1)* %gep.0, align 4
  %b = load float, float addrspace(1)* %gep.1, align 4

  %result = call { float, i1 } @llvm.AMDGPU.div.scale.f32(float %a, float %b, i1 true) nounwind readnone
  %result0 = extractvalue { float, i1 } %result, 0
  store float %result0, float addrspace(1)* %out, align 4
  ret void
}







define void @test_div_scale_f64_1(double addrspace(1)* %out, double addrspace(1)* %aptr, double addrspace(1)* %in) nounwind {
  %tid = call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %gep.0 = getelementptr double, double addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr double, double addrspace(1)* %gep.0, i32 1

  %a = load double, double addrspace(1)* %gep.0, align 8
  %b = load double, double addrspace(1)* %gep.1, align 8

  %result = call { double, i1 } @llvm.AMDGPU.div.scale.f64(double %a, double %b, i1 false) nounwind readnone
  %result0 = extractvalue { double, i1 } %result, 0
  store double %result0, double addrspace(1)* %out, align 8
  ret void
}







define void @test_div_scale_f64_2(double addrspace(1)* %out, double addrspace(1)* %aptr, double addrspace(1)* %in) nounwind {
  %tid = call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %gep.0 = getelementptr double, double addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr double, double addrspace(1)* %gep.0, i32 1

  %a = load double, double addrspace(1)* %gep.0, align 8
  %b = load double, double addrspace(1)* %gep.1, align 8

  %result = call { double, i1 } @llvm.AMDGPU.div.scale.f64(double %a, double %b, i1 true) nounwind readnone
  %result0 = extractvalue { double, i1 } %result, 0
  store double %result0, double addrspace(1)* %out, align 8
  ret void
}







define void @test_div_scale_f32_scalar_num_1(float addrspace(1)* %out, float addrspace(1)* %in, float %a) nounwind {
  %tid = call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %gep = getelementptr float, float addrspace(1)* %in, i32 %tid

  %b = load float, float addrspace(1)* %gep, align 4

  %result = call { float, i1 } @llvm.AMDGPU.div.scale.f32(float %a, float %b, i1 false) nounwind readnone
  %result0 = extractvalue { float, i1 } %result, 0
  store float %result0, float addrspace(1)* %out, align 4
  ret void
}







define void @test_div_scale_f32_scalar_num_2(float addrspace(1)* %out, float addrspace(1)* %in, float %a) nounwind {
  %tid = call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %gep = getelementptr float, float addrspace(1)* %in, i32 %tid

  %b = load float, float addrspace(1)* %gep, align 4

  %result = call { float, i1 } @llvm.AMDGPU.div.scale.f32(float %a, float %b, i1 true) nounwind readnone
  %result0 = extractvalue { float, i1 } %result, 0
  store float %result0, float addrspace(1)* %out, align 4
  ret void
}







define void @test_div_scale_f32_scalar_den_1(float addrspace(1)* %out, float addrspace(1)* %in, float %b) nounwind {
  %tid = call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %gep = getelementptr float, float addrspace(1)* %in, i32 %tid

  %a = load float, float addrspace(1)* %gep, align 4

  %result = call { float, i1 } @llvm.AMDGPU.div.scale.f32(float %a, float %b, i1 false) nounwind readnone
  %result0 = extractvalue { float, i1 } %result, 0
  store float %result0, float addrspace(1)* %out, align 4
  ret void
}







define void @test_div_scale_f32_scalar_den_2(float addrspace(1)* %out, float addrspace(1)* %in, float %b) nounwind {
  %tid = call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %gep = getelementptr float, float addrspace(1)* %in, i32 %tid

  %a = load float, float addrspace(1)* %gep, align 4

  %result = call { float, i1 } @llvm.AMDGPU.div.scale.f32(float %a, float %b, i1 true) nounwind readnone
  %result0 = extractvalue { float, i1 } %result, 0
  store float %result0, float addrspace(1)* %out, align 4
  ret void
}







define void @test_div_scale_f64_scalar_num_1(double addrspace(1)* %out, double addrspace(1)* %in, double %a) nounwind {
  %tid = call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %gep = getelementptr double, double addrspace(1)* %in, i32 %tid

  %b = load double, double addrspace(1)* %gep, align 8

  %result = call { double, i1 } @llvm.AMDGPU.div.scale.f64(double %a, double %b, i1 false) nounwind readnone
  %result0 = extractvalue { double, i1 } %result, 0
  store double %result0, double addrspace(1)* %out, align 8
  ret void
}







define void @test_div_scale_f64_scalar_num_2(double addrspace(1)* %out, double addrspace(1)* %in, double %a) nounwind {
  %tid = call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %gep = getelementptr double, double addrspace(1)* %in, i32 %tid

  %b = load double, double addrspace(1)* %gep, align 8

  %result = call { double, i1 } @llvm.AMDGPU.div.scale.f64(double %a, double %b, i1 true) nounwind readnone
  %result0 = extractvalue { double, i1 } %result, 0
  store double %result0, double addrspace(1)* %out, align 8
  ret void
}







define void @test_div_scale_f64_scalar_den_1(double addrspace(1)* %out, double addrspace(1)* %in, double %b) nounwind {
  %tid = call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %gep = getelementptr double, double addrspace(1)* %in, i32 %tid

  %a = load double, double addrspace(1)* %gep, align 8

  %result = call { double, i1 } @llvm.AMDGPU.div.scale.f64(double %a, double %b, i1 false) nounwind readnone
  %result0 = extractvalue { double, i1 } %result, 0
  store double %result0, double addrspace(1)* %out, align 8
  ret void
}







define void @test_div_scale_f64_scalar_den_2(double addrspace(1)* %out, double addrspace(1)* %in, double %b) nounwind {
  %tid = call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %gep = getelementptr double, double addrspace(1)* %in, i32 %tid

  %a = load double, double addrspace(1)* %gep, align 8

  %result = call { double, i1 } @llvm.AMDGPU.div.scale.f64(double %a, double %b, i1 true) nounwind readnone
  %result0 = extractvalue { double, i1 } %result, 0
  store double %result0, double addrspace(1)* %out, align 8
  ret void
}








define void @test_div_scale_f32_all_scalar_1(float addrspace(1)* %out, float %a, float %b) nounwind {
  %result = call { float, i1 } @llvm.AMDGPU.div.scale.f32(float %a, float %b, i1 false) nounwind readnone
  %result0 = extractvalue { float, i1 } %result, 0
  store float %result0, float addrspace(1)* %out, align 4
  ret void
}








define void @test_div_scale_f32_all_scalar_2(float addrspace(1)* %out, float %a, float %b) nounwind {
  %result = call { float, i1 } @llvm.AMDGPU.div.scale.f32(float %a, float %b, i1 true) nounwind readnone
  %result0 = extractvalue { float, i1 } %result, 0
  store float %result0, float addrspace(1)* %out, align 4
  ret void
}









define void @test_div_scale_f64_all_scalar_1(double addrspace(1)* %out, double %a, double %b) nounwind {
  %result = call { double, i1 } @llvm.AMDGPU.div.scale.f64(double %a, double %b, i1 false) nounwind readnone
  %result0 = extractvalue { double, i1 } %result, 0
  store double %result0, double addrspace(1)* %out, align 8
  ret void
}









define void @test_div_scale_f64_all_scalar_2(double addrspace(1)* %out, double %a, double %b) nounwind {
  %result = call { double, i1 } @llvm.AMDGPU.div.scale.f64(double %a, double %b, i1 true) nounwind readnone
  %result0 = extractvalue { double, i1 } %result, 0
  store double %result0, double addrspace(1)* %out, align 8
  ret void
}






define void @test_div_scale_f32_inline_imm_num(float addrspace(1)* %out, float addrspace(1)* %in) nounwind {
  %tid = call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %gep.0 = getelementptr float, float addrspace(1)* %in, i32 %tid
  %a = load float, float addrspace(1)* %gep.0, align 4

  %result = call { float, i1 } @llvm.AMDGPU.div.scale.f32(float 1.0, float %a, i1 false) nounwind readnone
  %result0 = extractvalue { float, i1 } %result, 0
  store float %result0, float addrspace(1)* %out, align 4
  ret void
}






define void @test_div_scale_f32_inline_imm_den(float addrspace(1)* %out, float addrspace(1)* %in) nounwind {
  %tid = call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %gep.0 = getelementptr float, float addrspace(1)* %in, i32 %tid
  %a = load float, float addrspace(1)* %gep.0, align 4

  %result = call { float, i1 } @llvm.AMDGPU.div.scale.f32(float %a, float 2.0, i1 false) nounwind readnone
  %result0 = extractvalue { float, i1 } %result, 0
  store float %result0, float addrspace(1)* %out, align 4
  ret void
}







define void @test_div_scale_f32_fabs_num(float addrspace(1)* %out, float addrspace(1)* %in) nounwind {
  %tid = call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %gep.0 = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr float, float addrspace(1)* %gep.0, i32 1

  %a = load float, float addrspace(1)* %gep.0, align 4
  %b = load float, float addrspace(1)* %gep.1, align 4

  %a.fabs = call float @llvm.fabs.f32(float %a) nounwind readnone

  %result = call { float, i1 } @llvm.AMDGPU.div.scale.f32(float %a.fabs, float %b, i1 false) nounwind readnone
  %result0 = extractvalue { float, i1 } %result, 0
  store float %result0, float addrspace(1)* %out, align 4
  ret void
}







define void @test_div_scale_f32_fabs_den(float addrspace(1)* %out, float addrspace(1)* %in) nounwind {
  %tid = call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %gep.0 = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr float, float addrspace(1)* %gep.0, i32 1

  %a = load float, float addrspace(1)* %gep.0, align 4
  %b = load float, float addrspace(1)* %gep.1, align 4

  %b.fabs = call float @llvm.fabs.f32(float %b) nounwind readnone

  %result = call { float, i1 } @llvm.AMDGPU.div.scale.f32(float %a, float %b.fabs, i1 false) nounwind readnone
  %result0 = extractvalue { float, i1 } %result, 0
  store float %result0, float addrspace(1)* %out, align 4
  ret void
}
