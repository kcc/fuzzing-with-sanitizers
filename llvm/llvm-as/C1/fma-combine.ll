


declare i32 @llvm.r600.read.tidig.x() #0
declare double @llvm.fabs.f64(double) #0
declare double @llvm.fma.f64(double, double, double) #0
declare float @llvm.fma.f32(float, float, float) #0








define void @combine_to_fma_f64_0(double addrspace(1)* noalias %out, double addrspace(1)* noalias %in) #1 {
  %tid = tail call i32 @llvm.r600.read.tidig.x() #0
  %gep.0 = getelementptr double, double addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr double, double addrspace(1)* %gep.0, i32 1
  %gep.2 = getelementptr double, double addrspace(1)* %gep.0, i32 2
  %gep.out = getelementptr double, double addrspace(1)* %out, i32 %tid

  %a = load double, double addrspace(1)* %gep.0
  %b = load double, double addrspace(1)* %gep.1
  %c = load double, double addrspace(1)* %gep.2

  %mul = fmul double %a, %b
  %fma = fadd double %mul, %c
  store double %fma, double addrspace(1)* %gep.out
  ret void
}












define void @combine_to_fma_f64_0_2use(double addrspace(1)* noalias %out, double addrspace(1)* noalias %in) #1 {
  %tid = tail call i32 @llvm.r600.read.tidig.x() #0
  %gep.0 = getelementptr double, double addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr double, double addrspace(1)* %gep.0, i32 1
  %gep.2 = getelementptr double, double addrspace(1)* %gep.0, i32 2
  %gep.3 = getelementptr double, double addrspace(1)* %gep.0, i32 3
  %gep.out.0 = getelementptr double, double addrspace(1)* %out, i32 %tid
  %gep.out.1 = getelementptr double, double addrspace(1)* %gep.out.0, i32 1

  %a = load double, double addrspace(1)* %gep.0
  %b = load double, double addrspace(1)* %gep.1
  %c = load double, double addrspace(1)* %gep.2
  %d = load double, double addrspace(1)* %gep.3

  %mul = fmul double %a, %b
  %fma0 = fadd double %mul, %c
  %fma1 = fadd double %mul, %d
  store double %fma0, double addrspace(1)* %gep.out.0
  store double %fma1, double addrspace(1)* %gep.out.1
  ret void
}








define void @combine_to_fma_f64_1(double addrspace(1)* noalias %out, double addrspace(1)* noalias %in) #1 {
  %tid = tail call i32 @llvm.r600.read.tidig.x() #0
  %gep.0 = getelementptr double, double addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr double, double addrspace(1)* %gep.0, i32 1
  %gep.2 = getelementptr double, double addrspace(1)* %gep.0, i32 2
  %gep.out = getelementptr double, double addrspace(1)* %out, i32 %tid

  %a = load double, double addrspace(1)* %gep.0
  %b = load double, double addrspace(1)* %gep.1
  %c = load double, double addrspace(1)* %gep.2

  %mul = fmul double %a, %b
  %fma = fadd double %c, %mul
  store double %fma, double addrspace(1)* %gep.out
  ret void
}








define void @combine_to_fma_fsub_0_f64(double addrspace(1)* noalias %out, double addrspace(1)* noalias %in) #1 {
  %tid = tail call i32 @llvm.r600.read.tidig.x() #0
  %gep.0 = getelementptr double, double addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr double, double addrspace(1)* %gep.0, i32 1
  %gep.2 = getelementptr double, double addrspace(1)* %gep.0, i32 2
  %gep.out = getelementptr double, double addrspace(1)* %out, i32 %tid

  %a = load double, double addrspace(1)* %gep.0
  %b = load double, double addrspace(1)* %gep.1
  %c = load double, double addrspace(1)* %gep.2

  %mul = fmul double %a, %b
  %fma = fsub double %mul, %c
  store double %fma, double addrspace(1)* %gep.out
  ret void
}












define void @combine_to_fma_fsub_f64_0_2use(double addrspace(1)* noalias %out, double addrspace(1)* noalias %in) #1 {
  %tid = tail call i32 @llvm.r600.read.tidig.x() #0
  %gep.0 = getelementptr double, double addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr double, double addrspace(1)* %gep.0, i32 1
  %gep.2 = getelementptr double, double addrspace(1)* %gep.0, i32 2
  %gep.3 = getelementptr double, double addrspace(1)* %gep.0, i32 3
  %gep.out.0 = getelementptr double, double addrspace(1)* %out, i32 %tid
  %gep.out.1 = getelementptr double, double addrspace(1)* %gep.out.0, i32 1

  %a = load double, double addrspace(1)* %gep.0
  %b = load double, double addrspace(1)* %gep.1
  %c = load double, double addrspace(1)* %gep.2
  %d = load double, double addrspace(1)* %gep.3

  %mul = fmul double %a, %b
  %fma0 = fsub double %mul, %c
  %fma1 = fsub double %mul, %d
  store double %fma0, double addrspace(1)* %gep.out.0
  store double %fma1, double addrspace(1)* %gep.out.1
  ret void
}








define void @combine_to_fma_fsub_1_f64(double addrspace(1)* noalias %out, double addrspace(1)* noalias %in) #1 {
  %tid = tail call i32 @llvm.r600.read.tidig.x() #0
  %gep.0 = getelementptr double, double addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr double, double addrspace(1)* %gep.0, i32 1
  %gep.2 = getelementptr double, double addrspace(1)* %gep.0, i32 2
  %gep.out = getelementptr double, double addrspace(1)* %out, i32 %tid

  %a = load double, double addrspace(1)* %gep.0
  %b = load double, double addrspace(1)* %gep.1
  %c = load double, double addrspace(1)* %gep.2

  %mul = fmul double %a, %b
  %fma = fsub double %c, %mul
  store double %fma, double addrspace(1)* %gep.out
  ret void
}












define void @combine_to_fma_fsub_1_f64_2use(double addrspace(1)* noalias %out, double addrspace(1)* noalias %in) #1 {
  %tid = tail call i32 @llvm.r600.read.tidig.x() #0
  %gep.0 = getelementptr double, double addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr double, double addrspace(1)* %gep.0, i32 1
  %gep.2 = getelementptr double, double addrspace(1)* %gep.0, i32 2
  %gep.3 = getelementptr double, double addrspace(1)* %gep.0, i32 3
  %gep.out.0 = getelementptr double, double addrspace(1)* %out, i32 %tid
  %gep.out.1 = getelementptr double, double addrspace(1)* %gep.out.0, i32 1

  %a = load double, double addrspace(1)* %gep.0
  %b = load double, double addrspace(1)* %gep.1
  %c = load double, double addrspace(1)* %gep.2
  %d = load double, double addrspace(1)* %gep.3

  %mul = fmul double %a, %b
  %fma0 = fsub double %c, %mul
  %fma1 = fsub double %d, %mul
  store double %fma0, double addrspace(1)* %gep.out.0
  store double %fma1, double addrspace(1)* %gep.out.1
  ret void
}








define void @combine_to_fma_fsub_2_f64(double addrspace(1)* noalias %out, double addrspace(1)* noalias %in) #1 {
  %tid = tail call i32 @llvm.r600.read.tidig.x() #0
  %gep.0 = getelementptr double, double addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr double, double addrspace(1)* %gep.0, i32 1
  %gep.2 = getelementptr double, double addrspace(1)* %gep.0, i32 2
  %gep.out = getelementptr double, double addrspace(1)* %out, i32 %tid

  %a = load double, double addrspace(1)* %gep.0
  %b = load double, double addrspace(1)* %gep.1
  %c = load double, double addrspace(1)* %gep.2

  %mul = fmul double %a, %b
  %mul.neg = fsub double -0.0, %mul
  %fma = fsub double %mul.neg, %c

  store double %fma, double addrspace(1)* %gep.out
  ret void
}











define void @combine_to_fma_fsub_2_f64_2uses_neg(double addrspace(1)* noalias %out, double addrspace(1)* noalias %in) #1 {
  %tid = tail call i32 @llvm.r600.read.tidig.x() #0
  %gep.0 = getelementptr double, double addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr double, double addrspace(1)* %gep.0, i32 1
  %gep.2 = getelementptr double, double addrspace(1)* %gep.0, i32 2
  %gep.3 = getelementptr double, double addrspace(1)* %gep.0, i32 3
  %gep.out.0 = getelementptr double, double addrspace(1)* %out, i32 %tid
  %gep.out.1 = getelementptr double, double addrspace(1)* %gep.out.0, i32 1

  %a = load double, double addrspace(1)* %gep.0
  %b = load double, double addrspace(1)* %gep.1
  %c = load double, double addrspace(1)* %gep.2
  %d = load double, double addrspace(1)* %gep.3

  %mul = fmul double %a, %b
  %mul.neg = fsub double -0.0, %mul
  %fma0 = fsub double %mul.neg, %c
  %fma1 = fsub double %mul.neg, %d

  store double %fma0, double addrspace(1)* %gep.out.0
  store double %fma1, double addrspace(1)* %gep.out.1
  ret void
}











define void @combine_to_fma_fsub_2_f64_2uses_mul(double addrspace(1)* noalias %out, double addrspace(1)* noalias %in) #1 {
  %tid = tail call i32 @llvm.r600.read.tidig.x() #0
  %gep.0 = getelementptr double, double addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr double, double addrspace(1)* %gep.0, i32 1
  %gep.2 = getelementptr double, double addrspace(1)* %gep.0, i32 2
  %gep.3 = getelementptr double, double addrspace(1)* %gep.0, i32 3
  %gep.out.0 = getelementptr double, double addrspace(1)* %out, i32 %tid
  %gep.out.1 = getelementptr double, double addrspace(1)* %gep.out.0, i32 1

  %a = load double, double addrspace(1)* %gep.0
  %b = load double, double addrspace(1)* %gep.1
  %c = load double, double addrspace(1)* %gep.2
  %d = load double, double addrspace(1)* %gep.3

  %mul = fmul double %a, %b
  %mul.neg = fsub double -0.0, %mul
  %fma0 = fsub double %mul.neg, %c
  %fma1 = fsub double %mul, %d

  store double %fma0, double addrspace(1)* %gep.out.0
  store double %fma1, double addrspace(1)* %gep.out.1
  ret void
}












define void @aggressive_combine_to_fma_fsub_0_f64(double addrspace(1)* noalias %out, double addrspace(1)* noalias %in) #1 {
  %tid = tail call i32 @llvm.r600.read.tidig.x() #0
  %gep.0 = getelementptr double, double addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr double, double addrspace(1)* %gep.0, i32 1
  %gep.2 = getelementptr double, double addrspace(1)* %gep.0, i32 2
  %gep.3 = getelementptr double, double addrspace(1)* %gep.0, i32 3
  %gep.4 = getelementptr double, double addrspace(1)* %gep.0, i32 4
  %gep.out = getelementptr double, double addrspace(1)* %out, i32 %tid

  %x = load double, double addrspace(1)* %gep.0
  %y = load double, double addrspace(1)* %gep.1
  %z = load double, double addrspace(1)* %gep.2
  %u = load double, double addrspace(1)* %gep.3
  %v = load double, double addrspace(1)* %gep.4

  %tmp0 = fmul double %u, %v
  %tmp1 = call double @llvm.fma.f64(double %x, double %y, double %tmp0) #0
  %tmp2 = fsub double %tmp1, %z

  store double %tmp2, double addrspace(1)* %gep.out
  ret void
}













define void @aggressive_combine_to_fma_fsub_1_f64(double addrspace(1)* noalias %out, double addrspace(1)* noalias %in) #1 {
  %tid = tail call i32 @llvm.r600.read.tidig.x() #0
  %gep.0 = getelementptr double, double addrspace(1)* %in, i32 %tid
  %gep.1 = getelementptr double, double addrspace(1)* %gep.0, i32 1
  %gep.2 = getelementptr double, double addrspace(1)* %gep.0, i32 2
  %gep.3 = getelementptr double, double addrspace(1)* %gep.0, i32 3
  %gep.4 = getelementptr double, double addrspace(1)* %gep.0, i32 4
  %gep.out = getelementptr double, double addrspace(1)* %out, i32 %tid

  %x = load double, double addrspace(1)* %gep.0
  %y = load double, double addrspace(1)* %gep.1
  %z = load double, double addrspace(1)* %gep.2
  %u = load double, double addrspace(1)* %gep.3
  %v = load double, double addrspace(1)* %gep.4

  %tmp0 = fmul double %u, %v
  %tmp1 = call double @llvm.fma.f64(double %y, double %z, double %tmp0) #0
  %tmp2 = fsub double %x, %tmp1

  store double %tmp2, double addrspace(1)* %gep.out
  ret void
}

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
