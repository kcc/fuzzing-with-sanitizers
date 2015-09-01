









define void @fcmp_une_select_fptosi(i32 addrspace(1)* %out, float %in) {
entry:
  %0 = fcmp une float %in, 5.0
  %1 = select i1 %0, float 1.000000e+00, float 0.000000e+00
  %2 = fsub float -0.000000e+00, %1
  %3 = fptosi float %2 to i32
  store i32 %3, i32 addrspace(1)* %out
  ret void
}





define void @fcmp_une_select_i32(i32 addrspace(1)* %out, float %in) {
entry:
  %0 = fcmp une float %in, 5.0
  %1 = select i1 %0, i32 -1, i32 0
  store i32 %1, i32 addrspace(1)* %out
  ret void
}





define void @fcmp_oeq_select_fptosi(i32 addrspace(1)* %out, float %in) {
entry:
  %0 = fcmp oeq float %in, 5.0
  %1 = select i1 %0, float 1.000000e+00, float 0.000000e+00
  %2 = fsub float -0.000000e+00, %1
  %3 = fptosi float %2 to i32
  store i32 %3, i32 addrspace(1)* %out
  ret void
}





define void @fcmp_oeq_select_i32(i32 addrspace(1)* %out, float %in) {
entry:
  %0 = fcmp oeq float %in, 5.0
  %1 = select i1 %0, i32 -1, i32 0
  store i32 %1, i32 addrspace(1)* %out
  ret void
}





define void @fcmp_ogt_select_fptosi(i32 addrspace(1)* %out, float %in) {
entry:
  %0 = fcmp ogt float %in, 5.0
  %1 = select i1 %0, float 1.000000e+00, float 0.000000e+00
  %2 = fsub float -0.000000e+00, %1
  %3 = fptosi float %2 to i32
  store i32 %3, i32 addrspace(1)* %out
  ret void
}





define void @fcmp_ogt_select_i32(i32 addrspace(1)* %out, float %in) {
entry:
  %0 = fcmp ogt float %in, 5.0
  %1 = select i1 %0, i32 -1, i32 0
  store i32 %1, i32 addrspace(1)* %out
  ret void
}





define void @fcmp_oge_select_fptosi(i32 addrspace(1)* %out, float %in) {
entry:
  %0 = fcmp oge float %in, 5.0
  %1 = select i1 %0, float 1.000000e+00, float 0.000000e+00
  %2 = fsub float -0.000000e+00, %1
  %3 = fptosi float %2 to i32
  store i32 %3, i32 addrspace(1)* %out
  ret void
}





define void @fcmp_oge_select_i32(i32 addrspace(1)* %out, float %in) {
entry:
  %0 = fcmp oge float %in, 5.0
  %1 = select i1 %0, i32 -1, i32 0
  store i32 %1, i32 addrspace(1)* %out
  ret void
}





define void @fcmp_ole_select_fptosi(i32 addrspace(1)* %out, float %in) {
entry:
  %0 = fcmp ole float %in, 5.0
  %1 = select i1 %0, float 1.000000e+00, float 0.000000e+00
  %2 = fsub float -0.000000e+00, %1
  %3 = fptosi float %2 to i32
  store i32 %3, i32 addrspace(1)* %out
  ret void
}





define void @fcmp_ole_select_i32(i32 addrspace(1)* %out, float %in) {
entry:
  %0 = fcmp ole float %in, 5.0
  %1 = select i1 %0, i32 -1, i32 0
  store i32 %1, i32 addrspace(1)* %out
  ret void
}





define void @fcmp_olt_select_fptosi(i32 addrspace(1)* %out, float %in) {
entry:
  %0 = fcmp olt float %in, 5.0
  %1 = select i1 %0, float 1.000000e+00, float 0.000000e+00
  %2 = fsub float -0.000000e+00, %1
  %3 = fptosi float %2 to i32
  store i32 %3, i32 addrspace(1)* %out
  ret void
}





define void @fcmp_olt_select_i32(i32 addrspace(1)* %out, float %in) {
entry:
  %0 = fcmp olt float %in, 5.0
  %1 = select i1 %0, i32 -1, i32 0
  store i32 %1, i32 addrspace(1)* %out
  ret void
}
