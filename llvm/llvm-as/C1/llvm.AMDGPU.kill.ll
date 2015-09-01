






define void @kill_gs_const() #0 {
main_body:
  %0 = icmp ule i32 0, 3
  %1 = select i1 %0, float 1.000000e+00, float -1.000000e+00
  call void @llvm.AMDGPU.kill(float %1)
  %2 = icmp ule i32 3, 0
  %3 = select i1 %2, float 1.000000e+00, float -1.000000e+00
  call void @llvm.AMDGPU.kill(float %3)
  ret void
}






define void @kill_vcc_implicit_def([6 x <16 x i8>] addrspace(2)* byval, [17 x <16 x i8>] addrspace(2)* byval, [17 x <4 x i32>] addrspace(2)* byval, [34 x <8 x i32>] addrspace(2)* byval, float inreg, i32 inreg, <2 x i32>, <2 x i32>, <2 x i32>, <3 x i32>, <2 x i32>, <2 x i32>, <2 x i32>, float, float, float, float, float, float, i32, float, float) #1 {
entry:
  %tmp0 = fcmp olt float %13, 0.0
  call void @llvm.AMDGPU.kill(float %14)
  %tmp1 = select i1 %tmp0, float 1.0, float 0.0
  call void @llvm.SI.export(i32 15, i32 1, i32 1, i32 1, i32 1, float %tmp1, float %tmp1, float %tmp1, float %tmp1)
  ret void
}

declare void @llvm.AMDGPU.kill(float)
declare void @llvm.SI.export(i32, i32, i32, i32, i32, float, float, float, float)

attributes #0 = { "ShaderType"="2" }
attributes #1 = { "ShaderType"="0" }

!0 = !{!"const", null, i32 1}
