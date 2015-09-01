


declare i32 @llvm.r600.read.tidig.x() #1






define void @v_cnd_nan_nosgpr(float addrspace(1)* %out, i32 %c, float addrspace(1)* %fptr) #0 {
  %idx = call i32 @llvm.r600.read.tidig.x() #1
  %f.gep = getelementptr float, float addrspace(1)* %fptr, i32 %idx
  %f = load float, float addrspace(1)* %fptr
  %setcc = icmp ne i32 %c, 0
  %select = select i1 %setcc, float 0xFFFFFFFFE0000000, float %f
  store float %select, float addrspace(1)* %out
  ret void
}











define void @v_cnd_nan(float addrspace(1)* %out, i32 %c, float %f) #0 {
  %setcc = icmp ne i32 %c, 0
  %select = select i1 %setcc, float 0xFFFFFFFFE0000000, float %f
  store float %select, float addrspace(1)* %out
  ret void
}

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }
