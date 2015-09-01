
















define void @sin_f32(float addrspace(1)* %out, float %x) #1 {
   %sin = call float @llvm.sin.f32(float %x)
   store float %sin, float addrspace(1)* %out
   ret void
}










define void @sin_3x_f32(float addrspace(1)* %out, float %x) #1 {
  %y = fmul float 3.0, %x
  %sin = call float @llvm.sin.f32(float %y)
  store float %sin, float addrspace(1)* %out
  ret void
}










define void @sin_2x_f32(float addrspace(1)* %out, float %x) #1 {
  %y = fmul float 2.0, %x
  %sin = call float @llvm.sin.f32(float %y)
  store float %sin, float addrspace(1)* %out
  ret void
}









define void @test_2sin_f32(float addrspace(1)* %out, float %x) #1 {
   %y = fmul float 2.0, %x
   %sin = call float @llvm.sin.f32(float %y)
   store float %sin, float addrspace(1)* %out
   ret void
}













define void @sin_v4f32(<4 x float> addrspace(1)* %out, <4 x float> %vx) #1 {
   %sin = call <4 x float> @llvm.sin.v4f32( <4 x float> %vx)
   store <4 x float> %sin, <4 x float> addrspace(1)* %out
   ret void
}

declare float @llvm.sin.f32(float) readnone
declare <4 x float> @llvm.sin.v4f32(<4 x float>) readnone

attributes #0 = { "ShaderType"="0" }
