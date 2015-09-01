



declare float @llvm.fabs.f32(float) #1
declare float @llvm.floor.f32(float) #1






define void @cvt_flr_i32_f32_0(i32 addrspace(1)* %out, float %x) #0 {
  %floor = call float @llvm.floor.f32(float %x) #1
  %cvt = fptosi float %floor to i32
  store i32 %cvt, i32 addrspace(1)* %out
  ret void
}






define void @cvt_flr_i32_f32_1(i32 addrspace(1)* %out, float %x) #0 {
  %fadd = fadd float %x, 1.0
  %floor = call float @llvm.floor.f32(float %fadd) #1
  %cvt = fptosi float %floor to i32
  store i32 %cvt, i32 addrspace(1)* %out
  ret void
}






define void @cvt_flr_i32_f32_fabs(i32 addrspace(1)* %out, float %x) #0 {
  %x.fabs = call float @llvm.fabs.f32(float %x) #1
  %floor = call float @llvm.floor.f32(float %x.fabs) #1
  %cvt = fptosi float %floor to i32
  store i32 %cvt, i32 addrspace(1)* %out
  ret void
}






define void @cvt_flr_i32_f32_fneg(i32 addrspace(1)* %out, float %x) #0 {
  %x.fneg = fsub float -0.000000e+00, %x
  %floor = call float @llvm.floor.f32(float %x.fneg) #1
  %cvt = fptosi float %floor to i32
  store i32 %cvt, i32 addrspace(1)* %out
  ret void
}






define void @cvt_flr_i32_f32_fabs_fneg(i32 addrspace(1)* %out, float %x) #0 {
  %x.fabs = call float @llvm.fabs.f32(float %x) #1
  %x.fabs.fneg = fsub float -0.000000e+00, %x.fabs
  %floor = call float @llvm.floor.f32(float %x.fabs.fneg) #1
  %cvt = fptosi float %floor to i32
  store i32 %cvt, i32 addrspace(1)* %out
  ret void
}






define void @no_cvt_flr_i32_f32_0(i32 addrspace(1)* %out, float %x) #0 {
  %floor = call float @llvm.floor.f32(float %x) #1
  %cvt = fptoui float %floor to i32
  store i32 %cvt, i32 addrspace(1)* %out
  ret void
}

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }
