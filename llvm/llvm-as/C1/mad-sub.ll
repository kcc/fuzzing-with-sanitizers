

declare i32 @llvm.r600.read.tidig.x() #0
declare float @llvm.fabs.f32(float) #0







define void @mad_sub_f32(float addrspace(1)* noalias nocapture %out, float addrspace(1)* noalias nocapture readonly %ptr) #1 {
  %tid = tail call i32 @llvm.r600.read.tidig.x() #0
  %tid.ext = sext i32 %tid to i64
  %gep0 = getelementptr float, float addrspace(1)* %ptr, i64 %tid.ext
  %add1 = add i64 %tid.ext, 1
  %gep1 = getelementptr float, float addrspace(1)* %ptr, i64 %add1
  %add2 = add i64 %tid.ext, 2
  %gep2 = getelementptr float, float addrspace(1)* %ptr, i64 %add2
  %outgep = getelementptr float, float addrspace(1)* %out, i64 %tid.ext
  %a = load float, float addrspace(1)* %gep0, align 4
  %b = load float, float addrspace(1)* %gep1, align 4
  %c = load float, float addrspace(1)* %gep2, align 4
  %mul = fmul float %a, %b
  %sub = fsub float %mul, %c
  store float %sub, float addrspace(1)* %outgep, align 4
  ret void
}







define void @mad_sub_inv_f32(float addrspace(1)* noalias nocapture %out, float addrspace(1)* noalias nocapture readonly %ptr) #1 {
  %tid = tail call i32 @llvm.r600.read.tidig.x() #0
  %tid.ext = sext i32 %tid to i64
  %gep0 = getelementptr float, float addrspace(1)* %ptr, i64 %tid.ext
  %add1 = add i64 %tid.ext, 1
  %gep1 = getelementptr float, float addrspace(1)* %ptr, i64 %add1
  %add2 = add i64 %tid.ext, 2
  %gep2 = getelementptr float, float addrspace(1)* %ptr, i64 %add2
  %outgep = getelementptr float, float addrspace(1)* %out, i64 %tid.ext
  %a = load float, float addrspace(1)* %gep0, align 4
  %b = load float, float addrspace(1)* %gep1, align 4
  %c = load float, float addrspace(1)* %gep2, align 4
  %mul = fmul float %a, %b
  %sub = fsub float %c, %mul
  store float %sub, float addrspace(1)* %outgep, align 4
  ret void
}




define void @mad_sub_f64(double addrspace(1)* noalias nocapture %out, double addrspace(1)* noalias nocapture readonly %ptr) #1 {
  %tid = tail call i32 @llvm.r600.read.tidig.x() #0
  %tid.ext = sext i32 %tid to i64
  %gep0 = getelementptr double, double addrspace(1)* %ptr, i64 %tid.ext
  %add1 = add i64 %tid.ext, 1
  %gep1 = getelementptr double, double addrspace(1)* %ptr, i64 %add1
  %add2 = add i64 %tid.ext, 2
  %gep2 = getelementptr double, double addrspace(1)* %ptr, i64 %add2
  %outgep = getelementptr double, double addrspace(1)* %out, i64 %tid.ext
  %a = load double, double addrspace(1)* %gep0, align 8
  %b = load double, double addrspace(1)* %gep1, align 8
  %c = load double, double addrspace(1)* %gep2, align 8
  %mul = fmul double %a, %b
  %sub = fsub double %mul, %c
  store double %sub, double addrspace(1)* %outgep, align 8
  ret void
}







define void @mad_sub_fabs_f32(float addrspace(1)* noalias nocapture %out, float addrspace(1)* noalias nocapture readonly %ptr) #1 {
  %tid = tail call i32 @llvm.r600.read.tidig.x() #0
  %tid.ext = sext i32 %tid to i64
  %gep0 = getelementptr float, float addrspace(1)* %ptr, i64 %tid.ext
  %add1 = add i64 %tid.ext, 1
  %gep1 = getelementptr float, float addrspace(1)* %ptr, i64 %add1
  %add2 = add i64 %tid.ext, 2
  %gep2 = getelementptr float, float addrspace(1)* %ptr, i64 %add2
  %outgep = getelementptr float, float addrspace(1)* %out, i64 %tid.ext
  %a = load float, float addrspace(1)* %gep0, align 4
  %b = load float, float addrspace(1)* %gep1, align 4
  %c = load float, float addrspace(1)* %gep2, align 4
  %c.abs = call float @llvm.fabs.f32(float %c) #0
  %mul = fmul float %a, %b
  %sub = fsub float %mul, %c.abs
  store float %sub, float addrspace(1)* %outgep, align 4
  ret void
}







define void @mad_sub_fabs_inv_f32(float addrspace(1)* noalias nocapture %out, float addrspace(1)* noalias nocapture readonly %ptr) #1 {
  %tid = tail call i32 @llvm.r600.read.tidig.x() #0
  %tid.ext = sext i32 %tid to i64
  %gep0 = getelementptr float, float addrspace(1)* %ptr, i64 %tid.ext
  %add1 = add i64 %tid.ext, 1
  %gep1 = getelementptr float, float addrspace(1)* %ptr, i64 %add1
  %add2 = add i64 %tid.ext, 2
  %gep2 = getelementptr float, float addrspace(1)* %ptr, i64 %add2
  %outgep = getelementptr float, float addrspace(1)* %out, i64 %tid.ext
  %a = load float, float addrspace(1)* %gep0, align 4
  %b = load float, float addrspace(1)* %gep1, align 4
  %c = load float, float addrspace(1)* %gep2, align 4
  %c.abs = call float @llvm.fabs.f32(float %c) #0
  %mul = fmul float %a, %b
  %sub = fsub float %c.abs, %mul
  store float %sub, float addrspace(1)* %outgep, align 4
  ret void
}



define void @neg_neg_mad_f32(float addrspace(1)* noalias nocapture %out, float addrspace(1)* noalias nocapture readonly %ptr) #1 {
  %tid = tail call i32 @llvm.r600.read.tidig.x() #0
  %tid.ext = sext i32 %tid to i64
  %gep0 = getelementptr float, float addrspace(1)* %ptr, i64 %tid.ext
  %add1 = add i64 %tid.ext, 1
  %gep1 = getelementptr float, float addrspace(1)* %ptr, i64 %add1
  %add2 = add i64 %tid.ext, 2
  %gep2 = getelementptr float, float addrspace(1)* %ptr, i64 %add2
  %outgep = getelementptr float, float addrspace(1)* %out, i64 %tid.ext
  %a = load float, float addrspace(1)* %gep0, align 4
  %b = load float, float addrspace(1)* %gep1, align 4
  %c = load float, float addrspace(1)* %gep2, align 4
  %nega = fsub float -0.000000e+00, %a
  %negb = fsub float -0.000000e+00, %b
  %mul = fmul float %nega, %negb
  %sub = fadd float %mul, %c
  store float %sub, float addrspace(1)* %outgep, align 4
  ret void
}







define void @mad_fabs_sub_f32(float addrspace(1)* noalias nocapture %out, float addrspace(1)* noalias nocapture readonly %ptr) #1 {
  %tid = tail call i32 @llvm.r600.read.tidig.x() #0
  %tid.ext = sext i32 %tid to i64
  %gep0 = getelementptr float, float addrspace(1)* %ptr, i64 %tid.ext
  %add1 = add i64 %tid.ext, 1
  %gep1 = getelementptr float, float addrspace(1)* %ptr, i64 %add1
  %add2 = add i64 %tid.ext, 2
  %gep2 = getelementptr float, float addrspace(1)* %ptr, i64 %add2
  %outgep = getelementptr float, float addrspace(1)* %out, i64 %tid.ext
  %a = load float, float addrspace(1)* %gep0, align 4
  %b = load float, float addrspace(1)* %gep1, align 4
  %c = load float, float addrspace(1)* %gep2, align 4
  %b.abs = call float @llvm.fabs.f32(float %b) #0
  %mul = fmul float %a, %b.abs
  %sub = fsub float %mul, %c
  store float %sub, float addrspace(1)* %outgep, align 4
  ret void
}






define void @fsub_c_fadd_a_a(float addrspace(1)* %out, float addrspace(1)* %in) {
  %tid = call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %gep.0 = getelementptr float, float addrspace(1)* %out, i32 %tid
  %gep.1 = getelementptr float, float addrspace(1)* %gep.0, i32 1
  %gep.out = getelementptr float, float addrspace(1)* %out, i32 %tid

  %r1 = load float, float addrspace(1)* %gep.0
  %r2 = load float, float addrspace(1)* %gep.1

  %add = fadd float %r1, %r1
  %r3 = fsub float %r2, %add

  store float %r3, float addrspace(1)* %gep.out
  ret void
}






define void @fsub_fadd_a_a_c(float addrspace(1)* %out, float addrspace(1)* %in) {
  %tid = call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %gep.0 = getelementptr float, float addrspace(1)* %out, i32 %tid
  %gep.1 = getelementptr float, float addrspace(1)* %gep.0, i32 1
  %gep.out = getelementptr float, float addrspace(1)* %out, i32 %tid

  %r1 = load float, float addrspace(1)* %gep.0
  %r2 = load float, float addrspace(1)* %gep.1

  %add = fadd float %r1, %r1
  %r3 = fsub float %add, %r2

  store float %r3, float addrspace(1)* %gep.out
  ret void
}

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
