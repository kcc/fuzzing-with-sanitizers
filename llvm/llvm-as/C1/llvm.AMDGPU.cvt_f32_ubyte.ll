


declare float @llvm.AMDGPU.cvt.f32.ubyte0(i32) nounwind readnone
declare float @llvm.AMDGPU.cvt.f32.ubyte1(i32) nounwind readnone
declare float @llvm.AMDGPU.cvt.f32.ubyte2(i32) nounwind readnone
declare float @llvm.AMDGPU.cvt.f32.ubyte3(i32) nounwind readnone



define void @test_unpack_byte0_to_float(float addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %val = load i32, i32 addrspace(1)* %in, align 4
  %cvt = call float @llvm.AMDGPU.cvt.f32.ubyte0(i32 %val) nounwind readnone
  store float %cvt, float addrspace(1)* %out, align 4
  ret void
}



define void @test_unpack_byte1_to_float(float addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %val = load i32, i32 addrspace(1)* %in, align 4
  %cvt = call float @llvm.AMDGPU.cvt.f32.ubyte1(i32 %val) nounwind readnone
  store float %cvt, float addrspace(1)* %out, align 4
  ret void
}



define void @test_unpack_byte2_to_float(float addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %val = load i32, i32 addrspace(1)* %in, align 4
  %cvt = call float @llvm.AMDGPU.cvt.f32.ubyte2(i32 %val) nounwind readnone
  store float %cvt, float addrspace(1)* %out, align 4
  ret void
}



define void @test_unpack_byte3_to_float(float addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %val = load i32, i32 addrspace(1)* %in, align 4
  %cvt = call float @llvm.AMDGPU.cvt.f32.ubyte3(i32 %val) nounwind readnone
  store float %cvt, float addrspace(1)* %out, align 4
  ret void
}
