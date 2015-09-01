








define void @extract_w_offset(float addrspace(1)* %out, i32 %in) {
entry:
  %0 = add i32 %in, 1
  %1 = extractelement <4 x float> <float 1.0, float 2.0, float 3.0, float 4.0>, i32 %0
  store float %1, float addrspace(1)* %out
  ret void
}




define void @extract_wo_offset(float addrspace(1)* %out, i32 %in) {
entry:
  %0 = extractelement <4 x float> <float 1.0, float 2.0, float 3.0, float 4.0>, i32 %in
  store float %0, float addrspace(1)* %out
  ret void
}





define void @extract_neg_offset_sgpr(i32 addrspace(1)* %out, i32 %offset) {
entry:
  %index = add i32 %offset, -512
  %value = extractelement <4 x i32> <i32 0, i32 1, i32 2, i32 3>, i32 %index
  store i32 %value, i32 addrspace(1)* %out
  ret void
}







define void @extract_neg_offset_vgpr(i32 addrspace(1)* %out) {
entry:
  %id = call i32 @llvm.r600.read.tidig.x() #1
  %index = add i32 %id, -512
  %value = extractelement <4 x i32> <i32 0, i32 1, i32 2, i32 3>, i32 %index
  store i32 %value, i32 addrspace(1)* %out
  ret void
}




define void @insert_w_offset(float addrspace(1)* %out, i32 %in) {
entry:
  %0 = add i32 %in, 1
  %1 = insertelement <4 x float> <float 1.0, float 2.0, float 3.0, float 4.0>, float 5.0, i32 %0
  %2 = extractelement <4 x float> %1, i32 2
  store float %2, float addrspace(1)* %out
  ret void
}




define void @insert_wo_offset(float addrspace(1)* %out, i32 %in) {
entry:
  %0 = insertelement <4 x float> <float 1.0, float 2.0, float 3.0, float 4.0>, float 5.0, i32 %in
  %1 = extractelement <4 x float> %0, i32 2
  store float %1, float addrspace(1)* %out
  ret void
}





define void @insert_neg_offset_sgpr(i32 addrspace(1)* %in, <4 x i32> addrspace(1)* %out, i32 %offset) {
entry:
  %index = add i32 %offset, -512
  %value = insertelement <4 x i32> <i32 0, i32 1, i32 2, i32 3>, i32 5, i32 %index
  store <4 x i32> %value, <4 x i32> addrspace(1)* %out
  ret void
}







define void @insert_neg_offset_vgpr(i32 addrspace(1)* %in, <4 x i32> addrspace(1)* %out) {
entry:
  %id = call i32 @llvm.r600.read.tidig.x() #1
  %index = add i32 %id, -512
  %value = insertelement <4 x i32> <i32 0, i32 1, i32 2, i32 3>, i32 5, i32 %index
  store <4 x i32> %value, <4 x i32> addrspace(1)* %out
  ret void
}







define void @insert_neg_inline_offset_vgpr(i32 addrspace(1)* %in, <4 x i32> addrspace(1)* %out) {
entry:
  %id = call i32 @llvm.r600.read.tidig.x() #1
  %index = add i32 %id, -16
  %value = insertelement <4 x i32> <i32 0, i32 1, i32 2, i32 3>, i32 5, i32 %index
  store <4 x i32> %value, <4 x i32> addrspace(1)* %out
  ret void
}

declare i32 @llvm.r600.read.tidig.x() #1
attributes #1 = { nounwind readnone }
