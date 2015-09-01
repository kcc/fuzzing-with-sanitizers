











define void @test(<4 x float> inreg %reg0) #0 {
entry:
  %r0 = extractelement <4 x float> %reg0, i32 0
  %r1 = extractelement <4 x float> %reg0, i32 1
  %r2 = fmul float %r0, %r1
  %vec = insertelement <4 x float> undef, float %r2, i32 0
  call void @llvm.R600.store.swizzle(<4 x float> %vec, i32 0, i32 0)
  ret void
}

declare void @llvm.R600.store.swizzle(<4 x float>, i32, i32)

attributes #0 = { "ShaderType"="0" }
