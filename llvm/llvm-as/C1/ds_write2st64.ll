

@lds = addrspace(3) global [512 x float] undef, align 4






define void @simple_write2st64_one_val_f32_0_1(float addrspace(1)* %C, float addrspace(1)* %in) #0 {
  %x.i = tail call i32 @llvm.r600.read.tidig.x() #1
  %in.gep = getelementptr float, float addrspace(1)* %in, i32 %x.i
  %val = load float, float addrspace(1)* %in.gep, align 4
  %arrayidx0 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @lds, i32 0, i32 %x.i
  store float %val, float addrspace(3)* %arrayidx0, align 4
  %add.x = add nsw i32 %x.i, 64
  %arrayidx1 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @lds, i32 0, i32 %add.x
  store float %val, float addrspace(3)* %arrayidx1, align 4
  ret void
}







define void @simple_write2st64_two_val_f32_2_5(float addrspace(1)* %C, float addrspace(1)* %in) #0 {
  %x.i = tail call i32 @llvm.r600.read.tidig.x() #1
  %in.gep.0 = getelementptr float, float addrspace(1)* %in, i32 %x.i
  %in.gep.1 = getelementptr float, float addrspace(1)* %in.gep.0, i32 1
  %val0 = load float, float addrspace(1)* %in.gep.0, align 4
  %val1 = load float, float addrspace(1)* %in.gep.1, align 4
  %add.x.0 = add nsw i32 %x.i, 128
  %arrayidx0 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @lds, i32 0, i32 %add.x.0
  store float %val0, float addrspace(3)* %arrayidx0, align 4
  %add.x.1 = add nsw i32 %x.i, 320
  %arrayidx1 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @lds, i32 0, i32 %add.x.1
  store float %val1, float addrspace(3)* %arrayidx1, align 4
  ret void
}







define void @simple_write2st64_two_val_max_offset_f32(float addrspace(1)* %C, float addrspace(1)* %in, float addrspace(3)* %lds) #0 {
  %x.i = tail call i32 @llvm.r600.read.tidig.x() #1
  %in.gep.0 = getelementptr float, float addrspace(1)* %in, i32 %x.i
  %in.gep.1 = getelementptr float, float addrspace(1)* %in.gep.0, i32 1
  %val0 = load float, float addrspace(1)* %in.gep.0, align 4
  %val1 = load float, float addrspace(1)* %in.gep.1, align 4
  %arrayidx0 = getelementptr inbounds float, float addrspace(3)* %lds, i32 %x.i
  store float %val0, float addrspace(3)* %arrayidx0, align 4
  %add.x = add nsw i32 %x.i, 16320
  %arrayidx1 = getelementptr inbounds float, float addrspace(3)* %lds, i32 %add.x
  store float %val1, float addrspace(3)* %arrayidx1, align 4
  ret void
}







define void @simple_write2st64_two_val_max_offset_f64(double addrspace(1)* %C, double addrspace(1)* %in, double addrspace(3)* %lds) #0 {
  %x.i = tail call i32 @llvm.r600.read.tidig.x() #1
  %in.gep.0 = getelementptr double, double addrspace(1)* %in, i32 %x.i
  %in.gep.1 = getelementptr double, double addrspace(1)* %in.gep.0, i32 1
  %val0 = load double, double addrspace(1)* %in.gep.0, align 8
  %val1 = load double, double addrspace(1)* %in.gep.1, align 8
  %add.x.0 = add nsw i32 %x.i, 256
  %arrayidx0 = getelementptr inbounds double, double addrspace(3)* %lds, i32 %add.x.0
  store double %val0, double addrspace(3)* %arrayidx0, align 8
  %add.x.1 = add nsw i32 %x.i, 8128
  %arrayidx1 = getelementptr inbounds double, double addrspace(3)* %lds, i32 %add.x.1
  store double %val1, double addrspace(3)* %arrayidx1, align 8
  ret void
}





define void @byte_size_only_divisible_64_write2st64_f64(double addrspace(1)* %C, double addrspace(1)* %in, double addrspace(3)* %lds) #0 {
  %x.i = tail call i32 @llvm.r600.read.tidig.x() #1
  %in.gep = getelementptr double, double addrspace(1)* %in, i32 %x.i
  %val = load double, double addrspace(1)* %in.gep, align 8
  %arrayidx0 = getelementptr inbounds double, double addrspace(3)* %lds, i32 %x.i
  store double %val, double addrspace(3)* %arrayidx0, align 8
  %add.x = add nsw i32 %x.i, 8
  %arrayidx1 = getelementptr inbounds double, double addrspace(3)* %lds, i32 %add.x
  store double %val, double addrspace(3)* %arrayidx1, align 8
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
