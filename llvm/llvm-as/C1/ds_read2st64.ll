

@lds = addrspace(3) global [512 x float] undef, align 4
@lds.f64 = addrspace(3) global [512 x double] undef, align 8








define void @simple_read2st64_f32_0_1(float addrspace(1)* %out) #0 {
  %x.i = tail call i32 @llvm.r600.read.tidig.x() #1
  %arrayidx0 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @lds, i32 0, i32 %x.i
  %val0 = load float, float addrspace(3)* %arrayidx0, align 4
  %add.x = add nsw i32 %x.i, 64
  %arrayidx1 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @lds, i32 0, i32 %add.x
  %val1 = load float, float addrspace(3)* %arrayidx1, align 4
  %sum = fadd float %val0, %val1
  %out.gep = getelementptr inbounds float, float addrspace(1)* %out, i32 %x.i
  store float %sum, float addrspace(1)* %out.gep, align 4
  ret void
}







define void @simple_read2st64_f32_1_2(float addrspace(1)* %out, float addrspace(3)* %lds) #0 {
  %x.i = tail call i32 @llvm.r600.read.tidig.x() #1
  %add.x.0 = add nsw i32 %x.i, 64
  %arrayidx0 = getelementptr inbounds float, float addrspace(3)* %lds, i32 %add.x.0
  %val0 = load float, float addrspace(3)* %arrayidx0, align 4
  %add.x.1 = add nsw i32 %x.i, 128
  %arrayidx1 = getelementptr inbounds float, float addrspace(3)* %lds, i32 %add.x.1
  %val1 = load float, float addrspace(3)* %arrayidx1, align 4
  %sum = fadd float %val0, %val1
  %out.gep = getelementptr inbounds float, float addrspace(1)* %out, i32 %x.i
  store float %sum, float addrspace(1)* %out.gep, align 4
  ret void
}







define void @simple_read2st64_f32_max_offset(float addrspace(1)* %out, float addrspace(3)* %lds) #0 {
  %x.i = tail call i32 @llvm.r600.read.tidig.x() #1
  %add.x.0 = add nsw i32 %x.i, 64
  %arrayidx0 = getelementptr inbounds float, float addrspace(3)* %lds, i32 %add.x.0
  %val0 = load float, float addrspace(3)* %arrayidx0, align 4
  %add.x.1 = add nsw i32 %x.i, 16320
  %arrayidx1 = getelementptr inbounds float, float addrspace(3)* %lds, i32 %add.x.1
  %val1 = load float, float addrspace(3)* %arrayidx1, align 4
  %sum = fadd float %val0, %val1
  %out.gep = getelementptr inbounds float, float addrspace(1)* %out, i32 %x.i
  store float %sum, float addrspace(1)* %out.gep, align 4
  ret void
}







define void @simple_read2st64_f32_over_max_offset(float addrspace(1)* %out, float addrspace(3)* %lds) #0 {
  %x.i = tail call i32 @llvm.r600.read.tidig.x() #1
  %add.x.0 = add nsw i32 %x.i, 64
  %arrayidx0 = getelementptr inbounds float, float addrspace(3)* %lds, i32 %add.x.0
  %val0 = load float, float addrspace(3)* %arrayidx0, align 4
  %add.x.1 = add nsw i32 %x.i, 16384
  %arrayidx1 = getelementptr inbounds float, float addrspace(3)* %lds, i32 %add.x.1
  %val1 = load float, float addrspace(3)* %arrayidx1, align 4
  %sum = fadd float %val0, %val1
  %out.gep = getelementptr inbounds float, float addrspace(1)* %out, i32 %x.i
  store float %sum, float addrspace(1)* %out.gep, align 4
  ret void
}




define void @odd_invalid_read2st64_f32_0(float addrspace(1)* %out) #0 {
  %x.i = tail call i32 @llvm.r600.read.tidig.x() #1
  %arrayidx0 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @lds, i32 0, i32 %x.i
  %val0 = load float, float addrspace(3)* %arrayidx0, align 4
  %add.x = add nsw i32 %x.i, 63
  %arrayidx1 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @lds, i32 0, i32 %add.x
  %val1 = load float, float addrspace(3)* %arrayidx1, align 4
  %sum = fadd float %val0, %val1
  %out.gep = getelementptr inbounds float, float addrspace(1)* %out, i32 %x.i
  store float %sum, float addrspace(1)* %out.gep, align 4
  ret void
}




define void @odd_invalid_read2st64_f32_1(float addrspace(1)* %out) #0 {
  %x.i = tail call i32 @llvm.r600.read.tidig.x() #1
  %add.x.0 = add nsw i32 %x.i, 64
  %arrayidx0 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @lds, i32 0, i32 %add.x.0
  %val0 = load float, float addrspace(3)* %arrayidx0, align 4
  %add.x.1 = add nsw i32 %x.i, 127
  %arrayidx1 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @lds, i32 0, i32 %add.x.1
  %val1 = load float, float addrspace(3)* %arrayidx1, align 4
  %sum = fadd float %val0, %val1
  %out.gep = getelementptr inbounds float, float addrspace(1)* %out, i32 %x.i
  store float %sum, float addrspace(1)* %out.gep, align 4
  ret void
}







define void @simple_read2st64_f64_0_1(double addrspace(1)* %out) #0 {
  %x.i = tail call i32 @llvm.r600.read.tidig.x() #1
  %arrayidx0 = getelementptr inbounds [512 x double], [512 x double] addrspace(3)* @lds.f64, i32 0, i32 %x.i
  %val0 = load double, double addrspace(3)* %arrayidx0, align 8
  %add.x = add nsw i32 %x.i, 64
  %arrayidx1 = getelementptr inbounds [512 x double], [512 x double] addrspace(3)* @lds.f64, i32 0, i32 %add.x
  %val1 = load double, double addrspace(3)* %arrayidx1, align 8
  %sum = fadd double %val0, %val1
  %out.gep = getelementptr inbounds double, double addrspace(1)* %out, i32 %x.i
  store double %sum, double addrspace(1)* %out.gep, align 8
  ret void
}







define void @simple_read2st64_f64_1_2(double addrspace(1)* %out, double addrspace(3)* %lds) #0 {
  %x.i = tail call i32 @llvm.r600.read.tidig.x() #1
  %add.x.0 = add nsw i32 %x.i, 64
  %arrayidx0 = getelementptr inbounds double, double addrspace(3)* %lds, i32 %add.x.0
  %val0 = load double, double addrspace(3)* %arrayidx0, align 8
  %add.x.1 = add nsw i32 %x.i, 128
  %arrayidx1 = getelementptr inbounds double, double addrspace(3)* %lds, i32 %add.x.1
  %val1 = load double, double addrspace(3)* %arrayidx1, align 8
  %sum = fadd double %val0, %val1
  %out.gep = getelementptr inbounds double, double addrspace(1)* %out, i32 %x.i
  store double %sum, double addrspace(1)* %out.gep, align 8
  ret void
}







define void @misaligned_read2st64_f64(double addrspace(1)* %out, double addrspace(3)* %lds) #0 {
  %x.i = tail call i32 @llvm.r600.read.tidig.x() #1
  %arrayidx0 = getelementptr inbounds double, double addrspace(3)* %lds, i32 %x.i
  %val0 = load double, double addrspace(3)* %arrayidx0, align 4
  %add.x = add nsw i32 %x.i, 64
  %arrayidx1 = getelementptr inbounds double, double addrspace(3)* %lds, i32 %add.x
  %val1 = load double, double addrspace(3)* %arrayidx1, align 4
  %sum = fadd double %val0, %val1
  %out.gep = getelementptr inbounds double, double addrspace(1)* %out, i32 %x.i
  store double %sum, double addrspace(1)* %out.gep, align 4
  ret void
}








define void @simple_read2st64_f64_max_offset(double addrspace(1)* %out, double addrspace(3)* %lds) #0 {
  %x.i = tail call i32 @llvm.r600.read.tidig.x() #1
  %add.x.0 = add nsw i32 %x.i, 256
  %arrayidx0 = getelementptr inbounds double, double addrspace(3)* %lds, i32 %add.x.0
  %val0 = load double, double addrspace(3)* %arrayidx0, align 8
  %add.x.1 = add nsw i32 %x.i, 8128
  %arrayidx1 = getelementptr inbounds double, double addrspace(3)* %lds, i32 %add.x.1
  %val1 = load double, double addrspace(3)* %arrayidx1, align 8
  %sum = fadd double %val0, %val1
  %out.gep = getelementptr inbounds double, double addrspace(1)* %out, i32 %x.i
  store double %sum, double addrspace(1)* %out.gep, align 8
  ret void
}







define void @simple_read2st64_f64_over_max_offset(double addrspace(1)* %out, double addrspace(3)* %lds) #0 {
  %x.i = tail call i32 @llvm.r600.read.tidig.x() #1
  %add.x.0 = add nsw i32 %x.i, 64
  %arrayidx0 = getelementptr inbounds double, double addrspace(3)* %lds, i32 %add.x.0
  %val0 = load double, double addrspace(3)* %arrayidx0, align 8
  %add.x.1 = add nsw i32 %x.i, 8192
  %arrayidx1 = getelementptr inbounds double, double addrspace(3)* %lds, i32 %add.x.1
  %val1 = load double, double addrspace(3)* %arrayidx1, align 8
  %sum = fadd double %val0, %val1
  %out.gep = getelementptr inbounds double, double addrspace(1)* %out, i32 %x.i
  store double %sum, double addrspace(1)* %out.gep, align 8
  ret void
}




define void @invalid_read2st64_f64_odd_offset(double addrspace(1)* %out, double addrspace(3)* %lds) #0 {
  %x.i = tail call i32 @llvm.r600.read.tidig.x() #1
  %add.x.0 = add nsw i32 %x.i, 64
  %arrayidx0 = getelementptr inbounds double, double addrspace(3)* %lds, i32 %add.x.0
  %val0 = load double, double addrspace(3)* %arrayidx0, align 8
  %add.x.1 = add nsw i32 %x.i, 8129
  %arrayidx1 = getelementptr inbounds double, double addrspace(3)* %lds, i32 %add.x.1
  %val1 = load double, double addrspace(3)* %arrayidx1, align 8
  %sum = fadd double %val0, %val1
  %out.gep = getelementptr inbounds double, double addrspace(1)* %out, i32 %x.i
  store double %sum, double addrspace(1)* %out.gep, align 8
  ret void
}








define void @byte_size_only_divisible_64_read2_f64(double addrspace(1)* %out, double addrspace(3)* %lds) #0 {
  %x.i = tail call i32 @llvm.r600.read.tidig.x() #1
  %arrayidx0 = getelementptr inbounds double, double addrspace(3)* %lds, i32 %x.i
  %val0 = load double, double addrspace(3)* %arrayidx0, align 8
  %add.x = add nsw i32 %x.i, 8
  %arrayidx1 = getelementptr inbounds double, double addrspace(3)* %lds, i32 %add.x
  %val1 = load double, double addrspace(3)* %arrayidx1, align 8
  %sum = fadd double %val0, %val1
  %out.gep = getelementptr inbounds double, double addrspace(1)* %out, i32 %x.i
  store double %sum, double addrspace(1)* %out.gep, align 4
  ret void
}


declare i32 @llvm.r600.read.tgid.x() #1


declare i32 @llvm.r600.read.tgid.y() #1


declare i32 @llvm.r600.read.tidig.x() #1


declare i32 @llvm.r600.read.tidig.y() #1


declare void @llvm.AMDGPU.barrier.local() #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-realign-stack" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { noduplicate nounwind }
