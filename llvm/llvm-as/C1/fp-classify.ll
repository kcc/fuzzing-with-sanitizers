


declare i1 @llvm.AMDGPU.class.f32(float, i32) #1
declare i1 @llvm.AMDGPU.class.f64(double, i32) #1
declare i32 @llvm.r600.read.tidig.x() #1
declare float @llvm.fabs.f32(float) #1
declare double @llvm.fabs.f64(double) #1






define void @test_isinf_pattern(i32 addrspace(1)* nocapture %out, float %x) #0 {
  %fabs = tail call float @llvm.fabs.f32(float %x) #1
  %cmp = fcmp oeq float %fabs, 0x7FF0000000000000
  %ext = zext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %out, align 4
  ret void
}




define void @test_not_isinf_pattern_0(i32 addrspace(1)* nocapture %out, float %x) #0 {
  %fabs = tail call float @llvm.fabs.f32(float %x) #1
  %cmp = fcmp ueq float %fabs, 0x7FF0000000000000
  %ext = zext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %out, align 4
  ret void
}




define void @test_not_isinf_pattern_1(i32 addrspace(1)* nocapture %out, float %x) #0 {
  %fabs = tail call float @llvm.fabs.f32(float %x) #1
  %cmp = fcmp oeq float %fabs, 0xFFF0000000000000
  %ext = zext i1 %cmp to i32
  store i32 %ext, i32 addrspace(1)* %out, align 4
  ret void
}







define void @test_isfinite_pattern_0(i32 addrspace(1)* nocapture %out, float %x) #0 {
  %ord = fcmp ord float %x, 0.000000e+00
  %x.fabs = tail call float @llvm.fabs.f32(float %x) #1
  %ninf = fcmp une float %x.fabs, 0x7FF0000000000000
  %and = and i1 %ord, %ninf
  %ext = zext i1 %and to i32
  store i32 %ext, i32 addrspace(1)* %out, align 4
  ret void
}





define void @test_isfinite_not_pattern_0(i32 addrspace(1)* nocapture %out, float %x) #0 {
  %ord = fcmp ord float %x, 0.000000e+00
  %x.fabs = tail call float @llvm.fabs.f32(float %x) #1
  %ninf = fcmp une float %x.fabs, 0xFFF0000000000000
  %and = and i1 %ord, %ninf
  %ext = zext i1 %and to i32
  store i32 %ext, i32 addrspace(1)* %out, align 4
  ret void
}





define void @test_isfinite_not_pattern_1(i32 addrspace(1)* nocapture %out, float %x) #0 {
  %ord = fcmp ord float %x, 0.000000e+00
  %ninf = fcmp une float %x, 0x7FF0000000000000
  %and = and i1 %ord, %ninf
  %ext = zext i1 %and to i32
  store i32 %ext, i32 addrspace(1)* %out, align 4
  ret void
}





define void @test_isfinite_not_pattern_2(i32 addrspace(1)* nocapture %out, float %x, float %y) #0 {
  %ord = fcmp ord float %x, 0.000000e+00
  %x.fabs = tail call float @llvm.fabs.f32(float %y) #1
  %ninf = fcmp une float %x.fabs, 0x7FF0000000000000
  %and = and i1 %ord, %ninf
  %ext = zext i1 %and to i32
  store i32 %ext, i32 addrspace(1)* %out, align 4
  ret void
}





define void @test_isfinite_not_pattern_3(i32 addrspace(1)* nocapture %out, float %x) #0 {
  %ord = fcmp uno float %x, 0.000000e+00
  %x.fabs = tail call float @llvm.fabs.f32(float %x) #1
  %ninf = fcmp une float %x.fabs, 0x7FF0000000000000
  %and = and i1 %ord, %ninf
  %ext = zext i1 %and to i32
  store i32 %ext, i32 addrspace(1)* %out, align 4
  ret void
}





define void @test_isfinite_not_pattern_4(i32 addrspace(1)* nocapture %out, float %x) #0 {
  %ord = fcmp ord float %x, 0.000000e+00
  %x.fabs = tail call float @llvm.fabs.f32(float %x) #1
  %ninf = fcmp one float %x.fabs, 0x7FF0000000000000
  %and = and i1 %ord, %ninf
  %ext = zext i1 %and to i32
  store i32 %ext, i32 addrspace(1)* %out, align 4
  ret void
}

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }
