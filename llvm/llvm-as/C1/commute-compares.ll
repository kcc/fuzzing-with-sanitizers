

declare i32 @llvm.r600.read.tidig.x() #0







define void @commute_eq_64_i32(i32 addrspace(1)* %out, i32 addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr i32, i32 addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load i32, i32 addrspace(1)* %gep.in
  %cmp = icmp eq i32 %val, 64
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}



define void @commute_ne_64_i32(i32 addrspace(1)* %out, i32 addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr i32, i32 addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load i32, i32 addrspace(1)* %gep.in
  %cmp = icmp ne i32 %val, 64
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}





define void @commute_ne_litk_i32(i32 addrspace(1)* %out, i32 addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr i32, i32 addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load i32, i32 addrspace(1)* %gep.in
  %cmp = icmp ne i32 %val, 12345
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}



define void @commute_ugt_64_i32(i32 addrspace(1)* %out, i32 addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr i32, i32 addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load i32, i32 addrspace(1)* %gep.in
  %cmp = icmp ugt i32 %val, 64
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}



define void @commute_uge_64_i32(i32 addrspace(1)* %out, i32 addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr i32, i32 addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load i32, i32 addrspace(1)* %gep.in
  %cmp = icmp uge i32 %val, 64
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}



define void @commute_ult_64_i32(i32 addrspace(1)* %out, i32 addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr i32, i32 addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load i32, i32 addrspace(1)* %gep.in
  %cmp = icmp ult i32 %val, 64
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}



define void @commute_ule_63_i32(i32 addrspace(1)* %out, i32 addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr i32, i32 addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load i32, i32 addrspace(1)* %gep.in
  %cmp = icmp ule i32 %val, 63
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}






define void @commute_ule_64_i32(i32 addrspace(1)* %out, i32 addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr i32, i32 addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load i32, i32 addrspace(1)* %gep.in
  %cmp = icmp ule i32 %val, 64
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}



define void @commute_sgt_neg1_i32(i32 addrspace(1)* %out, i32 addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr i32, i32 addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load i32, i32 addrspace(1)* %gep.in
  %cmp = icmp sgt i32 %val, -1
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}



define void @commute_sge_neg2_i32(i32 addrspace(1)* %out, i32 addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr i32, i32 addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load i32, i32 addrspace(1)* %gep.in
  %cmp = icmp sge i32 %val, -2
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}



define void @commute_slt_neg16_i32(i32 addrspace(1)* %out, i32 addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr i32, i32 addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load i32, i32 addrspace(1)* %gep.in
  %cmp = icmp slt i32 %val, -16
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}



define void @commute_sle_5_i32(i32 addrspace(1)* %out, i32 addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr i32, i32 addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load i32, i32 addrspace(1)* %gep.in
  %cmp = icmp sle i32 %val, 5
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}







define void @commute_eq_64_i64(i32 addrspace(1)* %out, i64 addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr i64, i64 addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load i64, i64 addrspace(1)* %gep.in
  %cmp = icmp eq i64 %val, 64
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}



define void @commute_ne_64_i64(i32 addrspace(1)* %out, i64 addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr i64, i64 addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load i64, i64 addrspace(1)* %gep.in
  %cmp = icmp ne i64 %val, 64
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}



define void @commute_ugt_64_i64(i32 addrspace(1)* %out, i64 addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr i64, i64 addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load i64, i64 addrspace(1)* %gep.in
  %cmp = icmp ugt i64 %val, 64
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}



define void @commute_uge_64_i64(i32 addrspace(1)* %out, i64 addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr i64, i64 addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load i64, i64 addrspace(1)* %gep.in
  %cmp = icmp uge i64 %val, 64
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}



define void @commute_ult_64_i64(i32 addrspace(1)* %out, i64 addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr i64, i64 addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load i64, i64 addrspace(1)* %gep.in
  %cmp = icmp ult i64 %val, 64
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}



define void @commute_ule_63_i64(i32 addrspace(1)* %out, i64 addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr i64, i64 addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load i64, i64 addrspace(1)* %gep.in
  %cmp = icmp ule i64 %val, 63
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}






define void @commute_ule_64_i64(i32 addrspace(1)* %out, i64 addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr i64, i64 addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load i64, i64 addrspace(1)* %gep.in
  %cmp = icmp ule i64 %val, 64
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}



define void @commute_sgt_neg1_i64(i32 addrspace(1)* %out, i64 addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr i64, i64 addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load i64, i64 addrspace(1)* %gep.in
  %cmp = icmp sgt i64 %val, -1
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}



define void @commute_sge_neg2_i64(i32 addrspace(1)* %out, i64 addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr i64, i64 addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load i64, i64 addrspace(1)* %gep.in
  %cmp = icmp sge i64 %val, -2
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}



define void @commute_slt_neg16_i64(i32 addrspace(1)* %out, i64 addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr i64, i64 addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load i64, i64 addrspace(1)* %gep.in
  %cmp = icmp slt i64 %val, -16
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}



define void @commute_sle_5_i64(i32 addrspace(1)* %out, i64 addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr i64, i64 addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load i64, i64 addrspace(1)* %gep.in
  %cmp = icmp sle i64 %val, 5
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}








define void @commute_oeq_2.0_f32(i32 addrspace(1)* %out, float addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load float, float addrspace(1)* %gep.in
  %cmp = fcmp oeq float %val, 2.0
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}




define void @commute_ogt_2.0_f32(i32 addrspace(1)* %out, float addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load float, float addrspace(1)* %gep.in
  %cmp = fcmp ogt float %val, 2.0
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}



define void @commute_oge_2.0_f32(i32 addrspace(1)* %out, float addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load float, float addrspace(1)* %gep.in
  %cmp = fcmp oge float %val, 2.0
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}



define void @commute_olt_2.0_f32(i32 addrspace(1)* %out, float addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load float, float addrspace(1)* %gep.in
  %cmp = fcmp olt float %val, 2.0
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}



define void @commute_ole_2.0_f32(i32 addrspace(1)* %out, float addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load float, float addrspace(1)* %gep.in
  %cmp = fcmp ole float %val, 2.0
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}



define void @commute_one_2.0_f32(i32 addrspace(1)* %out, float addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load float, float addrspace(1)* %gep.in
  %cmp = fcmp one float %val, 2.0
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}



define void @commute_ord_2.0_f32(i32 addrspace(1)* %out, float addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load float, float addrspace(1)* %gep.in
  %cmp = fcmp ord float %val, 2.0
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}



define void @commute_ueq_2.0_f32(i32 addrspace(1)* %out, float addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load float, float addrspace(1)* %gep.in
  %cmp = fcmp ueq float %val, 2.0
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}



define void @commute_ugt_2.0_f32(i32 addrspace(1)* %out, float addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load float, float addrspace(1)* %gep.in
  %cmp = fcmp ugt float %val, 2.0
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}



define void @commute_uge_2.0_f32(i32 addrspace(1)* %out, float addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load float, float addrspace(1)* %gep.in
  %cmp = fcmp uge float %val, 2.0
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}



define void @commute_ult_2.0_f32(i32 addrspace(1)* %out, float addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load float, float addrspace(1)* %gep.in
  %cmp = fcmp ult float %val, 2.0
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}



define void @commute_ule_2.0_f32(i32 addrspace(1)* %out, float addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load float, float addrspace(1)* %gep.in
  %cmp = fcmp ule float %val, 2.0
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}



define void @commute_une_2.0_f32(i32 addrspace(1)* %out, float addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load float, float addrspace(1)* %gep.in
  %cmp = fcmp une float %val, 2.0
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}



define void @commute_uno_2.0_f32(i32 addrspace(1)* %out, float addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr float, float addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load float, float addrspace(1)* %gep.in
  %cmp = fcmp uno float %val, 2.0
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}








define void @commute_oeq_2.0_f64(i32 addrspace(1)* %out, double addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr double, double addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load double, double addrspace(1)* %gep.in
  %cmp = fcmp oeq double %val, 2.0
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}




define void @commute_ogt_2.0_f64(i32 addrspace(1)* %out, double addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr double, double addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load double, double addrspace(1)* %gep.in
  %cmp = fcmp ogt double %val, 2.0
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}



define void @commute_oge_2.0_f64(i32 addrspace(1)* %out, double addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr double, double addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load double, double addrspace(1)* %gep.in
  %cmp = fcmp oge double %val, 2.0
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}



define void @commute_olt_2.0_f64(i32 addrspace(1)* %out, double addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr double, double addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load double, double addrspace(1)* %gep.in
  %cmp = fcmp olt double %val, 2.0
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}



define void @commute_ole_2.0_f64(i32 addrspace(1)* %out, double addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr double, double addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load double, double addrspace(1)* %gep.in
  %cmp = fcmp ole double %val, 2.0
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}



define void @commute_one_2.0_f64(i32 addrspace(1)* %out, double addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr double, double addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load double, double addrspace(1)* %gep.in
  %cmp = fcmp one double %val, 2.0
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}



define void @commute_ord_2.0_f64(i32 addrspace(1)* %out, double addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr double, double addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load double, double addrspace(1)* %gep.in
  %cmp = fcmp ord double %val, 2.0
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}



define void @commute_ueq_2.0_f64(i32 addrspace(1)* %out, double addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr double, double addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load double, double addrspace(1)* %gep.in
  %cmp = fcmp ueq double %val, 2.0
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}



define void @commute_ugt_2.0_f64(i32 addrspace(1)* %out, double addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr double, double addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load double, double addrspace(1)* %gep.in
  %cmp = fcmp ugt double %val, 2.0
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}



define void @commute_uge_2.0_f64(i32 addrspace(1)* %out, double addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr double, double addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load double, double addrspace(1)* %gep.in
  %cmp = fcmp uge double %val, 2.0
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}



define void @commute_ult_2.0_f64(i32 addrspace(1)* %out, double addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr double, double addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load double, double addrspace(1)* %gep.in
  %cmp = fcmp ult double %val, 2.0
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}



define void @commute_ule_2.0_f64(i32 addrspace(1)* %out, double addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr double, double addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load double, double addrspace(1)* %gep.in
  %cmp = fcmp ule double %val, 2.0
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}



define void @commute_une_2.0_f64(i32 addrspace(1)* %out, double addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr double, double addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load double, double addrspace(1)* %gep.in
  %cmp = fcmp une double %val, 2.0
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}



define void @commute_uno_2.0_f64(i32 addrspace(1)* %out, double addrspace(1)* %in) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %gep.in = getelementptr double, double addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %val = load double, double addrspace(1)* %gep.in
  %cmp = fcmp uno double %val, 2.0
  %ext = sext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %gep.out
  ret void
}

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
