


































define <4 x float> @test(<4 x float> %a, <4 x float>* %b) {





entry:
  %0 = load <4 x float>, <4 x float>* %b, align 16
  %1 = call <4 x float> @llvm.x86.sse41.insertps(<4 x float> %a, <4 x float> %0, i32 64)
  %2 = alloca <4 x float>, align 16
  store <4 x float> %1, <4 x float>* %2, align 16
  %3 = load <4 x float>, <4 x float>* %2, align 16
  ret <4 x float> %3
}


declare <4 x float> @llvm.x86.sse41.insertps(<4 x float>, <4 x float>, i32)
