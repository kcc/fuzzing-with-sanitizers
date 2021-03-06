

declare i32 @llvm.r600.read.tidig.x() readnone









define void @imp_def_vcc_split_i64_add_0(i64 addrspace(1)* %out, i32 %val) {
  %vec.0 = insertelement <2 x i32> undef, i32 %val, i32 0
  %vec.1 = insertelement <2 x i32> %vec.0, i32 999999, i32 1
  %bc = bitcast <2 x i32> %vec.1 to i64
  %add = add i64 %bc, 399
  store i64 %add, i64 addrspace(1)* %out, align 8
  ret void
}




define void @imp_def_vcc_split_i64_add_1(i64 addrspace(1)* %out, i32 %val0, i64 %val1) {
  %vec.0 = insertelement <2 x i32> undef, i32 %val0, i32 0
  %vec.1 = insertelement <2 x i32> %vec.0, i32 99999, i32 1
  %bc = bitcast <2 x i32> %vec.1 to i64
  %add = add i64 %bc, %val1
  store i64 %add, i64 addrspace(1)* %out, align 8
  ret void
}





define void @imp_def_vcc_split_i64_add_2(i64 addrspace(1)* %out, i32 addrspace(1)* %in, i32 %val0, i64 %val1) {
  %tid = call i32 @llvm.r600.read.tidig.x() readnone
  %gep = getelementptr i32, i32 addrspace(1)* %in, i32 %tid
  %load = load i32, i32 addrspace(1)* %gep
  %vec.0 = insertelement <2 x i32> undef, i32 %val0, i32 0
  %vec.1 = insertelement <2 x i32> %vec.0, i32 %load, i32 1
  %bc = bitcast <2 x i32> %vec.1 to i64
  %add = add i64 %bc, %val1
  store i64 %add, i64 addrspace(1)* %out, align 8
  ret void
}
