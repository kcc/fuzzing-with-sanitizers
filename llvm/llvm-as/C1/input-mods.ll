










define void @test(<4 x float> inreg %reg0) #0 {
   %r0 = extractelement <4 x float> %reg0, i32 0
   %r1 = call float @llvm.fabs.f32(float %r0)
   %r2 = fsub float -0.000000e+00, %r1
   %r3 = call float @llvm.exp2.f32(float %r2)
   %vec = insertelement <4 x float> undef, float %r3, i32 0
   call void @llvm.R600.store.swizzle(<4 x float> %vec, i32 0, i32 0)
   ret void
}

declare float @llvm.exp2.f32(float) readnone
declare float @llvm.fabs.f32(float) readnone
declare void @llvm.R600.store.swizzle(<4 x float>, i32, i32)

attributes #0 = { "ShaderType"="0" }
