






define void @test1(<4 x float> inreg %reg0) #0 {
   %r0 = extractelement <4 x float> %reg0, i32 0
   %r1 = extractelement <4 x float> %reg0, i32 1
   %r2 = call float @llvm.pow.f32( float %r0, float %r1)
   %vec = insertelement <4 x float> undef, float %r2, i32 0
   call void @llvm.R600.store.swizzle(<4 x float> %vec, i32 0, i32 0)
   ret void
}














define void @test2(<4 x float> inreg %reg0, <4 x float> inreg %reg1) #0 {
   %vec = call <4 x float> @llvm.pow.v4f32( <4 x float> %reg0, <4 x float> %reg1)
   call void @llvm.R600.store.swizzle(<4 x float> %vec, i32 0, i32 0)
   ret void
}

declare float @llvm.pow.f32(float ,float ) readonly
declare <4 x float> @llvm.pow.v4f32(<4 x float> ,<4 x float> ) readonly
declare void @llvm.R600.store.swizzle(<4 x float>, i32, i32)

attributes #0 = { "ShaderType"="0" }
