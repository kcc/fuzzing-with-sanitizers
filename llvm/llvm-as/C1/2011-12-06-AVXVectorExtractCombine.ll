


define void @test(<4 x i32>* nocapture %p) nounwind {
  
  
  
  
  
  %a = load <4 x i32>, <4 x i32>* %p, align 1
  %b = call <4 x i32> @llvm.x86.sse41.pmaxsd(<4 x i32> %a, <4 x i32> zeroinitializer) nounwind
  %c = shufflevector <4 x i32> %b, <4 x i32> undef, <8 x i32> <i32 undef, i32 undef, i32 undef, i32 undef, i32 0, i32 1, i32 2, i32 3>
  %d = shufflevector <8 x i32> %c, <8 x i32> undef, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %d, <4 x i32>* %p, align 1
  ret void
}

declare <4 x i32> @llvm.x86.sse41.pmaxsd(<4 x i32>, <4 x i32>) nounwind readnone
