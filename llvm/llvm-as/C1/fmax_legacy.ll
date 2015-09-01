





declare i32 @llvm.r600.read.tidig.x() #1








define void @test_fmax_legacy_uge_f32(float addrspace(1)* %out, float addrspace(1)* %in) #0 {
  %tid = call i32 @llvm.r600.read.tidig.x() #1
  %gep.0 = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr float, float addrspace(1)* %gep.0, i32 1

  %a = load float, float addrspace(1)* %gep.0, align 4
  %b = load float, float addrspace(1)* %gep.1, align 4

  %cmp = fcmp uge float %a, %b
  %val = select i1 %cmp, float %a, float %b
  store float %val, float addrspace(1)* %out, align 4
  ret void
}







define void @test_fmax_legacy_oge_f32(float addrspace(1)* %out, float addrspace(1)* %in) #0 {
  %tid = call i32 @llvm.r600.read.tidig.x() #1
  %gep.0 = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr float, float addrspace(1)* %gep.0, i32 1

  %a = load float, float addrspace(1)* %gep.0, align 4
  %b = load float, float addrspace(1)* %gep.1, align 4

  %cmp = fcmp oge float %a, %b
  %val = select i1 %cmp, float %a, float %b
  store float %val, float addrspace(1)* %out, align 4
  ret void
}







define void @test_fmax_legacy_ugt_f32(float addrspace(1)* %out, float addrspace(1)* %in) #0 {
  %tid = call i32 @llvm.r600.read.tidig.x() #1
  %gep.0 = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr float, float addrspace(1)* %gep.0, i32 1

  %a = load float, float addrspace(1)* %gep.0, align 4
  %b = load float, float addrspace(1)* %gep.1, align 4

  %cmp = fcmp ugt float %a, %b
  %val = select i1 %cmp, float %a, float %b
  store float %val, float addrspace(1)* %out, align 4
  ret void
}







define void @test_fmax_legacy_ogt_f32(float addrspace(1)* %out, float addrspace(1)* %in) #0 {
  %tid = call i32 @llvm.r600.read.tidig.x() #1
  %gep.0 = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr float, float addrspace(1)* %gep.0, i32 1

  %a = load float, float addrspace(1)* %gep.0, align 4
  %b = load float, float addrspace(1)* %gep.1, align 4

  %cmp = fcmp ogt float %a, %b
  %val = select i1 %cmp, float %a, float %b
  store float %val, float addrspace(1)* %out, align 4
  ret void
}











define void @test_fmax_legacy_ogt_f32_multi_use(float addrspace(1)* %out0, i1 addrspace(1)* %out1, float addrspace(1)* %in) #0 {
  %tid = call i32 @llvm.r600.read.tidig.x() #1
  %gep.0 = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr float, float addrspace(1)* %gep.0, i32 1

  %a = load float, float addrspace(1)* %gep.0, align 4
  %b = load float, float addrspace(1)* %gep.1, align 4

  %cmp = fcmp ogt float %a, %b
  %val = select i1 %cmp, float %a, float %b
  store float %val, float addrspace(1)* %out0, align 4
  store i1 %cmp, i1addrspace(1)* %out1
  ret void
}

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }
