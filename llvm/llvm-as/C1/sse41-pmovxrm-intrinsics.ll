


define <8 x i16> @test_llvm_x86_sse41_pmovsxbw(<16 x i8>* %a) {



  %1 = load <16 x i8>, <16 x i8>* %a, align 1
  %2 = call <8 x i16> @llvm.x86.sse41.pmovsxbw(<16 x i8> %1)
  ret <8 x i16> %2
}

define <4 x i32> @test_llvm_x86_sse41_pmovsxbd(<16 x i8>* %a) {



  %1 = load <16 x i8>, <16 x i8>* %a, align 1
  %2 = call <4 x i32> @llvm.x86.sse41.pmovsxbd(<16 x i8> %1)
  ret <4 x i32> %2
}

define <2 x i64> @test_llvm_x86_sse41_pmovsxbq(<16 x i8>* %a) {



  %1 = load <16 x i8>, <16 x i8>* %a, align 1
  %2 = call <2 x i64> @llvm.x86.sse41.pmovsxbq(<16 x i8> %1)
  ret <2 x i64> %2
}

define <4 x i32> @test_llvm_x86_sse41_pmovsxwd(<8 x i16>* %a) {



  %1 = load <8 x i16>, <8 x i16>* %a, align 1
  %2 = call <4 x i32> @llvm.x86.sse41.pmovsxwd(<8 x i16> %1)
  ret <4 x i32> %2
}

define <2 x i64> @test_llvm_x86_sse41_pmovsxwq(<8 x i16>* %a) {



  %1 = load <8 x i16>, <8 x i16>* %a, align 1
  %2 = call <2 x i64> @llvm.x86.sse41.pmovsxwq(<8 x i16> %1)
  ret <2 x i64> %2
}

define <2 x i64> @test_llvm_x86_sse41_pmovsxdq(<4 x i32>* %a) {



  %1 = load <4 x i32>, <4 x i32>* %a, align 1
  %2 = call <2 x i64> @llvm.x86.sse41.pmovsxdq(<4 x i32> %1)
  ret <2 x i64> %2
}

define <8 x i16> @test_llvm_x86_sse41_pmovzxbw(<16 x i8>* %a) {



  %1 = load <16 x i8>, <16 x i8>* %a, align 1
  %2 = call <8 x i16> @llvm.x86.sse41.pmovzxbw(<16 x i8> %1)
  ret <8 x i16> %2
}

define <4 x i32> @test_llvm_x86_sse41_pmovzxbd(<16 x i8>* %a) {



  %1 = load <16 x i8>, <16 x i8>* %a, align 1
  %2 = call <4 x i32> @llvm.x86.sse41.pmovzxbd(<16 x i8> %1)
  ret <4 x i32> %2
}

define <2 x i64> @test_llvm_x86_sse41_pmovzxbq(<16 x i8>* %a) {



  %1 = load <16 x i8>, <16 x i8>* %a, align 1
  %2 = call <2 x i64> @llvm.x86.sse41.pmovzxbq(<16 x i8> %1)
  ret <2 x i64> %2
}

define <4 x i32> @test_llvm_x86_sse41_pmovzxwd(<8 x i16>* %a) {



  %1 = load <8 x i16>, <8 x i16>* %a, align 1
  %2 = call <4 x i32> @llvm.x86.sse41.pmovzxwd(<8 x i16> %1)
  ret <4 x i32> %2
}

define <2 x i64> @test_llvm_x86_sse41_pmovzxwq(<8 x i16>* %a) {



  %1 = load <8 x i16>, <8 x i16>* %a, align 1
  %2 = call <2 x i64> @llvm.x86.sse41.pmovzxwq(<8 x i16> %1)
  ret <2 x i64> %2
}

define <2 x i64> @test_llvm_x86_sse41_pmovzxdq(<4 x i32>* %a) {



  %1 = load <4 x i32>, <4 x i32>* %a, align 1
  %2 = call <2 x i64> @llvm.x86.sse41.pmovzxdq(<4 x i32> %1)
  ret <2 x i64> %2
}

declare <2 x i64> @llvm.x86.sse41.pmovzxdq(<4 x i32>)
declare <2 x i64> @llvm.x86.sse41.pmovzxwq(<8 x i16>)
declare <4 x i32> @llvm.x86.sse41.pmovzxwd(<8 x i16>)
declare <2 x i64> @llvm.x86.sse41.pmovzxbq(<16 x i8>)
declare <4 x i32> @llvm.x86.sse41.pmovzxbd(<16 x i8>)
declare <8 x i16> @llvm.x86.sse41.pmovzxbw(<16 x i8>)
declare <2 x i64> @llvm.x86.sse41.pmovsxdq(<4 x i32>)
declare <2 x i64> @llvm.x86.sse41.pmovsxwq(<8 x i16>)
declare <4 x i32> @llvm.x86.sse41.pmovsxwd(<8 x i16>)
declare <2 x i64> @llvm.x86.sse41.pmovsxbq(<16 x i8>)
declare <4 x i32> @llvm.x86.sse41.pmovsxbd(<16 x i8>)
declare <8 x i16> @llvm.x86.sse41.pmovsxbw(<16 x i8>)
