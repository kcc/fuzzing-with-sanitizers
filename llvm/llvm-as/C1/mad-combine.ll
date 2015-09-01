









declare i32 @llvm.r600.read.tidig.x() #0
declare float @llvm.fabs.f32(float) #0
declare float @llvm.fma.f32(float, float, float) #0
declare float @llvm.fmuladd.f32(float, float, float) #0



















define void @combine_to_mad_f32_0(float addrspace(1)* noalias %out, float addrspace(1)* noalias %in) #1 {
  %tid = tail call i32 @llvm.r600.read.tidig.x() #0
  %gep.0 = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr float, float addrspace(1)* %gep.0, i32 1
  %gep.2 = getelementptr float, float addrspace(1)* %gep.0, i32 2
  %gep.out = getelementptr float, float addrspace(1)* %out, i32 %tid

  %a = load float, float addrspace(1)* %gep.0
  %b = load float, float addrspace(1)* %gep.1
  %c = load float, float addrspace(1)* %gep.2

  %mul = fmul float %a, %b
  %fma = fadd float %mul, %c
  store float %fma, float addrspace(1)* %gep.out
  ret void
}























define void @combine_to_mad_f32_0_2use(float addrspace(1)* noalias %out, float addrspace(1)* noalias %in) #1 {
  %tid = tail call i32 @llvm.r600.read.tidig.x() #0
  %gep.0 = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr float, float addrspace(1)* %gep.0, i32 1
  %gep.2 = getelementptr float, float addrspace(1)* %gep.0, i32 2
  %gep.3 = getelementptr float, float addrspace(1)* %gep.0, i32 3
  %gep.out.0 = getelementptr float, float addrspace(1)* %out, i32 %tid
  %gep.out.1 = getelementptr float, float addrspace(1)* %gep.out.0, i32 1

  %a = load float, float addrspace(1)* %gep.0
  %b = load float, float addrspace(1)* %gep.1
  %c = load float, float addrspace(1)* %gep.2
  %d = load float, float addrspace(1)* %gep.3

  %mul = fmul float %a, %b
  %fma0 = fadd float %mul, %c
  %fma1 = fadd float %mul, %d

  store float %fma0, float addrspace(1)* %gep.out.0
  store float %fma1, float addrspace(1)* %gep.out.1
  ret void
}















define void @combine_to_mad_f32_1(float addrspace(1)* noalias %out, float addrspace(1)* noalias %in) #1 {
  %tid = tail call i32 @llvm.r600.read.tidig.x() #0
  %gep.0 = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr float, float addrspace(1)* %gep.0, i32 1
  %gep.2 = getelementptr float, float addrspace(1)* %gep.0, i32 2
  %gep.out = getelementptr float, float addrspace(1)* %out, i32 %tid

  %a = load float, float addrspace(1)* %gep.0
  %b = load float, float addrspace(1)* %gep.1
  %c = load float, float addrspace(1)* %gep.2

  %mul = fmul float %a, %b
  %fma = fadd float %c, %mul
  store float %fma, float addrspace(1)* %gep.out
  ret void
}














define void @combine_to_mad_fsub_0_f32(float addrspace(1)* noalias %out, float addrspace(1)* noalias %in) #1 {
  %tid = tail call i32 @llvm.r600.read.tidig.x() #0
  %gep.0 = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr float, float addrspace(1)* %gep.0, i32 1
  %gep.2 = getelementptr float, float addrspace(1)* %gep.0, i32 2
  %gep.out = getelementptr float, float addrspace(1)* %out, i32 %tid

  %a = load float, float addrspace(1)* %gep.0
  %b = load float, float addrspace(1)* %gep.1
  %c = load float, float addrspace(1)* %gep.2

  %mul = fmul float %a, %b
  %fma = fsub float %mul, %c
  store float %fma, float addrspace(1)* %gep.out
  ret void
}





















define void @combine_to_mad_fsub_0_f32_2use(float addrspace(1)* noalias %out, float addrspace(1)* noalias %in) #1 {
  %tid = tail call i32 @llvm.r600.read.tidig.x() #0
  %gep.0 = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr float, float addrspace(1)* %gep.0, i32 1
  %gep.2 = getelementptr float, float addrspace(1)* %gep.0, i32 2
  %gep.3 = getelementptr float, float addrspace(1)* %gep.0, i32 3
  %gep.out.0 = getelementptr float, float addrspace(1)* %out, i32 %tid
  %gep.out.1 = getelementptr float, float addrspace(1)* %gep.out.0, i32 1

  %a = load float, float addrspace(1)* %gep.0
  %b = load float, float addrspace(1)* %gep.1
  %c = load float, float addrspace(1)* %gep.2
  %d = load float, float addrspace(1)* %gep.3

  %mul = fmul float %a, %b
  %fma0 = fsub float %mul, %c
  %fma1 = fsub float %mul, %d
  store float %fma0, float addrspace(1)* %gep.out.0
  store float %fma1, float addrspace(1)* %gep.out.1
  ret void
}














define void @combine_to_mad_fsub_1_f32(float addrspace(1)* noalias %out, float addrspace(1)* noalias %in) #1 {
  %tid = tail call i32 @llvm.r600.read.tidig.x() #0
  %gep.0 = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr float, float addrspace(1)* %gep.0, i32 1
  %gep.2 = getelementptr float, float addrspace(1)* %gep.0, i32 2
  %gep.out = getelementptr float, float addrspace(1)* %out, i32 %tid

  %a = load float, float addrspace(1)* %gep.0
  %b = load float, float addrspace(1)* %gep.1
  %c = load float, float addrspace(1)* %gep.2

  %mul = fmul float %a, %b
  %fma = fsub float %c, %mul
  store float %fma, float addrspace(1)* %gep.out
  ret void
}




















define void @combine_to_mad_fsub_1_f32_2use(float addrspace(1)* noalias %out, float addrspace(1)* noalias %in) #1 {
  %tid = tail call i32 @llvm.r600.read.tidig.x() #0
  %gep.0 = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr float, float addrspace(1)* %gep.0, i32 1
  %gep.2 = getelementptr float, float addrspace(1)* %gep.0, i32 2
  %gep.3 = getelementptr float, float addrspace(1)* %gep.0, i32 3
  %gep.out.0 = getelementptr float, float addrspace(1)* %out, i32 %tid
  %gep.out.1 = getelementptr float, float addrspace(1)* %gep.out.0, i32 1

  %a = load float, float addrspace(1)* %gep.0
  %b = load float, float addrspace(1)* %gep.1
  %c = load float, float addrspace(1)* %gep.2
  %d = load float, float addrspace(1)* %gep.3

  %mul = fmul float %a, %b
  %fma0 = fsub float %c, %mul
  %fma1 = fsub float %d, %mul
  store float %fma0, float addrspace(1)* %gep.out.0
  store float %fma1, float addrspace(1)* %gep.out.1
  ret void
}















define void @combine_to_mad_fsub_2_f32(float addrspace(1)* noalias %out, float addrspace(1)* noalias %in) #1 {
  %tid = tail call i32 @llvm.r600.read.tidig.x() #0
  %gep.0 = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr float, float addrspace(1)* %gep.0, i32 1
  %gep.2 = getelementptr float, float addrspace(1)* %gep.0, i32 2
  %gep.out = getelementptr float, float addrspace(1)* %out, i32 %tid

  %a = load float, float addrspace(1)* %gep.0
  %b = load float, float addrspace(1)* %gep.1
  %c = load float, float addrspace(1)* %gep.2

  %mul = fmul float %a, %b
  %mul.neg = fsub float -0.0, %mul
  %fma = fsub float %mul.neg, %c

  store float %fma, float addrspace(1)* %gep.out
  ret void
}




















define void @combine_to_mad_fsub_2_f32_2uses_neg(float addrspace(1)* noalias %out, float addrspace(1)* noalias %in) #1 {
  %tid = tail call i32 @llvm.r600.read.tidig.x() #0
  %gep.0 = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr float, float addrspace(1)* %gep.0, i32 1
  %gep.2 = getelementptr float, float addrspace(1)* %gep.0, i32 2
  %gep.3 = getelementptr float, float addrspace(1)* %gep.0, i32 3
  %gep.out.0 = getelementptr float, float addrspace(1)* %out, i32 %tid
  %gep.out.1 = getelementptr float, float addrspace(1)* %gep.out.0, i32 1

  %a = load float, float addrspace(1)* %gep.0
  %b = load float, float addrspace(1)* %gep.1
  %c = load float, float addrspace(1)* %gep.2
  %d = load float, float addrspace(1)* %gep.3

  %mul = fmul float %a, %b
  %mul.neg = fsub float -0.0, %mul
  %fma0 = fsub float %mul.neg, %c
  %fma1 = fsub float %mul.neg, %d

  store float %fma0, float addrspace(1)* %gep.out.0
  store float %fma1, float addrspace(1)* %gep.out.1
  ret void
}




















define void @combine_to_mad_fsub_2_f32_2uses_mul(float addrspace(1)* noalias %out, float addrspace(1)* noalias %in) #1 {
  %tid = tail call i32 @llvm.r600.read.tidig.x() #0
  %gep.0 = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr float, float addrspace(1)* %gep.0, i32 1
  %gep.2 = getelementptr float, float addrspace(1)* %gep.0, i32 2
  %gep.3 = getelementptr float, float addrspace(1)* %gep.0, i32 3
  %gep.out.0 = getelementptr float, float addrspace(1)* %out, i32 %tid
  %gep.out.1 = getelementptr float, float addrspace(1)* %gep.out.0, i32 1

  %a = load float, float addrspace(1)* %gep.0
  %b = load float, float addrspace(1)* %gep.1
  %c = load float, float addrspace(1)* %gep.2
  %d = load float, float addrspace(1)* %gep.3

  %mul = fmul float %a, %b
  %mul.neg = fsub float -0.0, %mul
  %fma0 = fsub float %mul.neg, %c
  %fma1 = fsub float %mul, %d

  store float %fma0, float addrspace(1)* %gep.out.0
  store float %fma1, float addrspace(1)* %gep.out.1
  ret void
}






















define void @aggressive_combine_to_mad_fsub_0_f32(float addrspace(1)* noalias %out, float addrspace(1)* noalias %in) #1 {
  %tid = tail call i32 @llvm.r600.read.tidig.x() #0
  %gep.0 = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr float, float addrspace(1)* %gep.0, i32 1
  %gep.2 = getelementptr float, float addrspace(1)* %gep.0, i32 2
  %gep.3 = getelementptr float, float addrspace(1)* %gep.0, i32 3
  %gep.4 = getelementptr float, float addrspace(1)* %gep.0, i32 4
  %gep.out = getelementptr float, float addrspace(1)* %out, i32 %tid

  %x = load float, float addrspace(1)* %gep.0
  %y = load float, float addrspace(1)* %gep.1
  %z = load float, float addrspace(1)* %gep.2
  %u = load float, float addrspace(1)* %gep.3
  %v = load float, float addrspace(1)* %gep.4

  %tmp0 = fmul float %u, %v
  %tmp1 = call float @llvm.fma.f32(float %x, float %y, float %tmp0) #0
  %tmp2 = fsub float %tmp1, %z

  store float %tmp2, float addrspace(1)* %gep.out
  ret void
}
























define void @aggressive_combine_to_mad_fsub_1_f32(float addrspace(1)* noalias %out, float addrspace(1)* noalias %in) #1 {
  %tid = tail call i32 @llvm.r600.read.tidig.x() #0
  %gep.0 = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr float, float addrspace(1)* %gep.0, i32 1
  %gep.2 = getelementptr float, float addrspace(1)* %gep.0, i32 2
  %gep.3 = getelementptr float, float addrspace(1)* %gep.0, i32 3
  %gep.4 = getelementptr float, float addrspace(1)* %gep.0, i32 4
  %gep.out = getelementptr float, float addrspace(1)* %out, i32 %tid

  %x = load float, float addrspace(1)* %gep.0
  %y = load float, float addrspace(1)* %gep.1
  %z = load float, float addrspace(1)* %gep.2
  %u = load float, float addrspace(1)* %gep.3
  %v = load float, float addrspace(1)* %gep.4

  %tmp0 = fmul float %u, %v
  %tmp1 = call float @llvm.fma.f32(float %y, float %z, float %tmp0) #0
  %tmp2 = fsub float %x, %tmp1

  store float %tmp2, float addrspace(1)* %gep.out
  ret void
}
























define void @aggressive_combine_to_mad_fsub_2_f32(float addrspace(1)* noalias %out, float addrspace(1)* noalias %in) #1 {
  %tid = tail call i32 @llvm.r600.read.tidig.x() #0
  %gep.0 = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr float, float addrspace(1)* %gep.0, i32 1
  %gep.2 = getelementptr float, float addrspace(1)* %gep.0, i32 2
  %gep.3 = getelementptr float, float addrspace(1)* %gep.0, i32 3
  %gep.4 = getelementptr float, float addrspace(1)* %gep.0, i32 4
  %gep.out = getelementptr float, float addrspace(1)* %out, i32 %tid

  %x = load float, float addrspace(1)* %gep.0
  %y = load float, float addrspace(1)* %gep.1
  %z = load float, float addrspace(1)* %gep.2
  %u = load float, float addrspace(1)* %gep.3
  %v = load float, float addrspace(1)* %gep.4

  %tmp0 = fmul float %u, %v
  %tmp1 = call float @llvm.fmuladd.f32(float %x, float %y, float %tmp0) #0
  %tmp2 = fsub float %tmp1, %z

  store float %tmp2, float addrspace(1)* %gep.out
  ret void
}
























define void @aggressive_combine_to_mad_fsub_3_f32(float addrspace(1)* noalias %out, float addrspace(1)* noalias %in) #1 {
  %tid = tail call i32 @llvm.r600.read.tidig.x() #0
  %gep.0 = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr float, float addrspace(1)* %gep.0, i32 1
  %gep.2 = getelementptr float, float addrspace(1)* %gep.0, i32 2
  %gep.3 = getelementptr float, float addrspace(1)* %gep.0, i32 3
  %gep.4 = getelementptr float, float addrspace(1)* %gep.0, i32 4
  %gep.out = getelementptr float, float addrspace(1)* %out, i32 %tid

  %x = load float, float addrspace(1)* %gep.0
  %y = load float, float addrspace(1)* %gep.1
  %z = load float, float addrspace(1)* %gep.2
  %u = load float, float addrspace(1)* %gep.3
  %v = load float, float addrspace(1)* %gep.4

  %tmp0 = fmul float %u, %v
  %tmp1 = call float @llvm.fmuladd.f32(float %y, float %z, float %tmp0) #0
  %tmp2 = fsub float %x, %tmp1

  store float %tmp2, float addrspace(1)* %gep.out
  ret void
}

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
