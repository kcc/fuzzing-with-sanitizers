







define void @slt(i32 addrspace(1)* %out, i32 %in) {
entry:
  %0 = icmp slt i32 %in, 5
  %1 = select i1 %0, i32 -1, i32 0
  store i32 %1, i32 addrspace(1)* %out
  ret void
}





define void @ult_i32(i32 addrspace(1)* %out, i32 %in) {
entry:
  %0 = icmp ult i32 %in, 5
  %1 = select i1 %0, i32 -1, i32 0
  store i32 %1, i32 addrspace(1)* %out
  ret void
}






define void @ult_float(float addrspace(1)* %out, float %in) {
entry:
  %0 = fcmp ult float %in, 5.0
  %1 = select i1 %0, float 1.0, float 0.0
  store float %1, float addrspace(1)* %out
  ret void
}





define void @ult_float_native(float addrspace(1)* %out, float %in) {
entry:
  %0 = fcmp ult float %in, 5.0
  %1 = select i1 %0, float 0.0, float 1.0
  store float %1, float addrspace(1)* %out
  ret void
}





define void @olt(float addrspace(1)* %out, float %in) {
entry:
  %0 = fcmp olt float %in, 5.0
  %1 = select i1 %0, float 1.0, float 0.0
  store float %1, float addrspace(1)* %out
  ret void
}





define void @sle(i32 addrspace(1)* %out, i32 %in) {
entry:
  %0 = icmp sle i32 %in, 5
  %1 = select i1 %0, i32 -1, i32 0
  store i32 %1, i32 addrspace(1)* %out
  ret void
}





define void @ule_i32(i32 addrspace(1)* %out, i32 %in) {
entry:
  %0 = icmp ule i32 %in, 5
  %1 = select i1 %0, i32 -1, i32 0
  store i32 %1, i32 addrspace(1)* %out
  ret void
}






define void @ule_float(float addrspace(1)* %out, float %in) {
entry:
  %0 = fcmp ule float %in, 5.0
  %1 = select i1 %0, float 1.0, float 0.0
  store float %1, float addrspace(1)* %out
  ret void
}





define void @ule_float_native(float addrspace(1)* %out, float %in) {
entry:
  %0 = fcmp ule float %in, 5.0
  %1 = select i1 %0, float 0.0, float 1.0
  store float %1, float addrspace(1)* %out
  ret void
}





define void @ole(float addrspace(1)* %out, float %in) {
entry:
  %0 = fcmp ole float %in, 5.0
  %1 = select i1 %0, float 1.0, float 0.0
  store float %1, float addrspace(1)* %out
  ret void
}
