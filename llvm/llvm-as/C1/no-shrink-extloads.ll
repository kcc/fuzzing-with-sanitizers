

declare i32 @llvm.r600.read.tidig.x() nounwind readnone








define void @truncate_kernarg_i32_to_i16(i16 addrspace(1)* %out, i32 %arg) nounwind {
  %trunc = trunc i32 %arg to i16
  store i16 %trunc, i16 addrspace(1)* %out
  ret void
}







define void @truncate_buffer_load_i32_to_i16(i16 addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %tid = call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %gep.in = getelementptr i32, i32 addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i16, i16 addrspace(1)* %out, i32 %tid
  %load = load i32, i32 addrspace(1)* %gep.in
  %trunc = trunc i32 %load to i16
  store i16 %trunc, i16 addrspace(1)* %gep.out
  ret void
}




define void @truncate_kernarg_i32_to_i8(i8 addrspace(1)* %out, i32 %arg) nounwind {
  %trunc = trunc i32 %arg to i8
  store i8 %trunc, i8 addrspace(1)* %out
  ret void
}




define void @truncate_buffer_load_i32_to_i8(i8 addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %tid = call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %gep.in = getelementptr i32, i32 addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i8, i8 addrspace(1)* %out, i32 %tid
  %load = load i32, i32 addrspace(1)* %gep.in
  %trunc = trunc i32 %load to i8
  store i8 %trunc, i8 addrspace(1)* %gep.out
  ret void
}




define void @truncate_kernarg_i32_to_i1(i1 addrspace(1)* %out, i32 %arg) nounwind {
  %trunc = trunc i32 %arg to i1
  store i1 %trunc, i1 addrspace(1)* %out
  ret void
}




define void @truncate_buffer_load_i32_to_i1(i1 addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %tid = call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %gep.in = getelementptr i32, i32 addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i1, i1 addrspace(1)* %out, i32 %tid
  %load = load i32, i32 addrspace(1)* %gep.in
  %trunc = trunc i32 %load to i1
  store i1 %trunc, i1 addrspace(1)* %gep.out
  ret void
}




define void @truncate_kernarg_i64_to_i32(i32 addrspace(1)* %out, i64 %arg) nounwind {
  %trunc = trunc i64 %arg to i32
  store i32 %trunc, i32 addrspace(1)* %out
  ret void
}




define void @truncate_buffer_load_i64_to_i32(i32 addrspace(1)* %out, i64 addrspace(1)* %in) nounwind {
  %tid = call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %gep.in = getelementptr i64, i64 addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %load = load i64, i64 addrspace(1)* %gep.in
  %trunc = trunc i64 %load to i32
  store i32 %trunc, i32 addrspace(1)* %gep.out
  ret void
}




define void @srl_kernarg_i64_to_i32(i32 addrspace(1)* %out, i64 %arg) nounwind {
  %srl = lshr i64 %arg, 32
  %trunc = trunc i64 %srl to i32
  store i32 %trunc, i32 addrspace(1)* %out
  ret void
}




define void @srl_buffer_load_i64_to_i32(i32 addrspace(1)* %out, i64 addrspace(1)* %in) nounwind {
  %tid = call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %gep.in = getelementptr i64, i64 addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %load = load i64, i64 addrspace(1)* %gep.in
  %srl = lshr i64 %load, 32
  %trunc = trunc i64 %srl to i32
  store i32 %trunc, i32 addrspace(1)* %gep.out
  ret void
}





define void @truncate_kernarg_i16_to_i8(i8 addrspace(1)* %out, i16 %arg) nounwind {
  %trunc = trunc i16 %arg to i8
  store i8 %trunc, i8 addrspace(1)* %out
  ret void
}




define void @truncate_buffer_load_i16_to_i8(i8 addrspace(1)* %out, i16 addrspace(1)* %in) nounwind {
  %tid = call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %gep.in = getelementptr i16, i16 addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i8, i8 addrspace(1)* %out, i32 %tid
  %load = load i16, i16 addrspace(1)* %gep.in
  %trunc = trunc i16 %load to i8
  store i8 %trunc, i8 addrspace(1)* %gep.out
  ret void
}




define void @srl_kernarg_i64_to_i8(i8 addrspace(1)* %out, i64 %arg) nounwind {
  %srl = lshr i64 %arg, 32
  %trunc = trunc i64 %srl to i8
  store i8 %trunc, i8 addrspace(1)* %out
  ret void
}




define void @srl_buffer_load_i64_to_i8(i8 addrspace(1)* %out, i64 addrspace(1)* %in) nounwind {
  %tid = call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %gep.in = getelementptr i64, i64 addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i8, i8 addrspace(1)* %out, i32 %tid
  %load = load i64, i64 addrspace(1)* %gep.in
  %srl = lshr i64 %load, 32
  %trunc = trunc i64 %srl to i8
  store i8 %trunc, i8 addrspace(1)* %gep.out
  ret void
}




define void @truncate_kernarg_i64_to_i8(i8 addrspace(1)* %out, i64 %arg) nounwind {
  %trunc = trunc i64 %arg to i8
  store i8 %trunc, i8 addrspace(1)* %out
  ret void
}




define void @truncate_buffer_load_i64_to_i8(i8 addrspace(1)* %out, i64 addrspace(1)* %in) nounwind {
  %tid = call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %gep.in = getelementptr i64, i64 addrspace(1)* %in, i32 %tid
  %gep.out = getelementptr i8, i8 addrspace(1)* %out, i32 %tid
  %load = load i64, i64 addrspace(1)* %gep.in
  %trunc = trunc i64 %load to i8
  store i8 %trunc, i8 addrspace(1)* %gep.out
  ret void
}
