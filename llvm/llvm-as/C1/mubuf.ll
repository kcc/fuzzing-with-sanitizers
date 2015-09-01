

declare i32 @llvm.r600.read.tidig.x() readnone








define void @mubuf_load0(i32 addrspace(1)* %out, i32 addrspace(1)* %in) {
entry:
  %0 = getelementptr i32, i32 addrspace(1)* %in, i64 1
  %1 = load i32, i32 addrspace(1)* %0
  store i32 %1, i32 addrspace(1)* %out
  ret void
}




define void @mubuf_load1(i8 addrspace(1)* %out, i8 addrspace(1)* %in) {
entry:
  %0 = getelementptr i8, i8 addrspace(1)* %in, i64 4095
  %1 = load i8, i8 addrspace(1)* %0
  store i8 %1, i8 addrspace(1)* %out
  ret void
}





define void @mubuf_load2(i32 addrspace(1)* %out, i32 addrspace(1)* %in) {
entry:
  %0 = getelementptr i32, i32 addrspace(1)* %in, i64 1024
  %1 = load i32, i32 addrspace(1)* %0
  store i32 %1, i32 addrspace(1)* %out
  ret void
}





define void @mubuf_load3(i32 addrspace(1)* %out, i32 addrspace(1)* %in, i64 %offset) {
entry:
  %0 = getelementptr i32, i32 addrspace(1)* %in, i64 %offset
  %1 = getelementptr i32, i32 addrspace(1)* %0, i64 1
  %2 = load i32, i32 addrspace(1)* %1
  store i32 %2, i32 addrspace(1)* %out
  ret void
}



define void @soffset_max_imm([6 x <16 x i8>] addrspace(2)* byval, [17 x <16 x i8>] addrspace(2)* byval, [16 x <4 x i32>] addrspace(2)* byval, [32 x <8 x i32>] addrspace(2)* byval, i32 inreg, i32 inreg, i32, i32, i32, i32, i32, i32, i32, i32) #1 {
main_body:
  %tmp0 = getelementptr [6 x <16 x i8>], [6 x <16 x i8>] addrspace(2)* %0, i32 0, i32 0
  %tmp1 = load <16 x i8>, <16 x i8> addrspace(2)* %tmp0
  %tmp2 = shl i32 %6, 2
  %tmp3 = call i32 @llvm.SI.buffer.load.dword.i32.i32(<16 x i8> %tmp1, i32 %tmp2, i32 64, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0)
  %tmp4 = add i32 %6, 16
  %tmp5 = bitcast float 0.0 to i32
  call void @llvm.SI.tbuffer.store.i32(<16 x i8> %tmp1, i32 %tmp5, i32 1, i32 %tmp4, i32 %4, i32 0, i32 4, i32 4, i32 1, i32 0, i32 1, i32 1, i32 0)
  ret void
}








define void @soffset_no_fold([6 x <16 x i8>] addrspace(2)* byval, [17 x <16 x i8>] addrspace(2)* byval, [16 x <4 x i32>] addrspace(2)* byval, [32 x <8 x i32>] addrspace(2)* byval, i32 inreg, i32 inreg, i32, i32, i32, i32, i32, i32, i32, i32) #1 {
main_body:
  %tmp0 = getelementptr [6 x <16 x i8>], [6 x <16 x i8>] addrspace(2)* %0, i32 0, i32 0
  %tmp1 = load <16 x i8>, <16 x i8> addrspace(2)* %tmp0
  %tmp2 = shl i32 %6, 2
  %tmp3 = call i32 @llvm.SI.buffer.load.dword.i32.i32(<16 x i8> %tmp1, i32 %tmp2, i32 65, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0)
  %tmp4 = add i32 %6, 16
  %tmp5 = bitcast float 0.0 to i32
  call void @llvm.SI.tbuffer.store.i32(<16 x i8> %tmp1, i32 %tmp5, i32 1, i32 %tmp4, i32 %4, i32 0, i32 4, i32 4, i32 1, i32 0, i32 1, i32 1, i32 0)
  ret void
}








define void @mubuf_store0(i32 addrspace(1)* %out) {
entry:
  %0 = getelementptr i32, i32 addrspace(1)* %out, i64 1
  store i32 0, i32 addrspace(1)* %0
  ret void
}





define void @mubuf_store1(i8 addrspace(1)* %out) {
entry:
  %0 = getelementptr i8, i8 addrspace(1)* %out, i64 4095
  store i8 0, i8 addrspace(1)* %0
  ret void
}





define void @mubuf_store2(i32 addrspace(1)* %out) {
entry:
  %0 = getelementptr i32, i32 addrspace(1)* %out, i64 1024
  store i32 0, i32 addrspace(1)* %0
  ret void
}





define void @mubuf_store3(i32 addrspace(1)* %out, i64 %offset) {
entry:
  %0 = getelementptr i32, i32 addrspace(1)* %out, i64 %offset
  %1 = getelementptr i32, i32 addrspace(1)* %0, i64 1
  store i32 0, i32 addrspace(1)* %1
  ret void
}



define void @store_sgpr_ptr(i32 addrspace(1)* %out) #0 {
  store i32 99, i32 addrspace(1)* %out, align 4
  ret void
}



define void @store_sgpr_ptr_offset(i32 addrspace(1)* %out) #0 {
  %out.gep = getelementptr i32, i32 addrspace(1)* %out, i32 10
  store i32 99, i32 addrspace(1)* %out.gep, align 4
  ret void
}




define void @store_sgpr_ptr_large_offset(i32 addrspace(1)* %out) #0 {
  %out.gep = getelementptr i32, i32 addrspace(1)* %out, i32 32768
  store i32 99, i32 addrspace(1)* %out.gep, align 4
  ret void
}




define void @store_sgpr_ptr_large_offset_atomic(i32 addrspace(1)* %out) #0 {
  %gep = getelementptr i32, i32 addrspace(1)* %out, i32 32768
  %val = atomicrmw volatile add i32 addrspace(1)* %gep, i32 5 seq_cst
  ret void
}



define void @store_vgpr_ptr(i32 addrspace(1)* %out) #0 {
  %tid = call i32 @llvm.r600.read.tidig.x() readnone
  %out.gep = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  store i32 99, i32 addrspace(1)* %out.gep, align 4
  ret void
}

declare i32 @llvm.SI.buffer.load.dword.i32.i32(<16 x i8>, i32, i32, i32, i32, i32, i32, i32, i32) #3
declare void @llvm.SI.tbuffer.store.i32(<16 x i8>, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)

attributes #1 = { "ShaderType"="2" "unsafe-fp-math"="true" }
attributes #3 = { nounwind readonly }
