

declare <4 x i32>  @llvm.x86.sse41.pmovsxbd(<16 x i8>) nounwind readnone
declare <2 x i64>  @llvm.x86.sse41.pmovsxbq(<16 x i8>) nounwind readnone
declare <8 x i16>  @llvm.x86.sse41.pmovsxbw(<16 x i8>) nounwind readnone
declare <2 x i64>  @llvm.x86.sse41.pmovsxdq(<4 x i32>) nounwind readnone
declare <4 x i32>  @llvm.x86.sse41.pmovsxwd(<8 x i16>) nounwind readnone
declare <2 x i64>  @llvm.x86.sse41.pmovsxwq(<8 x i16>) nounwind readnone

declare <8 x i32>  @llvm.x86.avx2.pmovsxbd(<16 x i8>) nounwind readnone
declare <4 x i64>  @llvm.x86.avx2.pmovsxbq(<16 x i8>) nounwind readnone
declare <16 x i16> @llvm.x86.avx2.pmovsxbw(<16 x i8>) nounwind readnone
declare <4 x i64>  @llvm.x86.avx2.pmovsxdq(<4 x i32>) nounwind readnone
declare <8 x i32>  @llvm.x86.avx2.pmovsxwd(<8 x i16>) nounwind readnone
declare <4 x i64>  @llvm.x86.avx2.pmovsxwq(<8 x i16>) nounwind readnone





define <4 x i32> @sse41_pmovsxbd(<16 x i8> %v) nounwind readnone {





  %res = call <4 x i32> @llvm.x86.sse41.pmovsxbd(<16 x i8> %v)
  ret <4 x i32> %res
}

define <2 x i64> @sse41_pmovsxbq(<16 x i8> %v) nounwind readnone {





  %res = call <2 x i64> @llvm.x86.sse41.pmovsxbq(<16 x i8> %v)
  ret <2 x i64> %res
}

define <8 x i16> @sse41_pmovsxbw(<16 x i8> %v) nounwind readnone {





  %res = call <8 x i16> @llvm.x86.sse41.pmovsxbw(<16 x i8> %v)
  ret <8 x i16> %res
}

define <2 x i64> @sse41_pmovsxdq(<4 x i32> %v) nounwind readnone {





  %res = call <2 x i64> @llvm.x86.sse41.pmovsxdq(<4 x i32> %v)
  ret <2 x i64> %res
}

define <4 x i32> @sse41_pmovsxwd(<8 x i16> %v) nounwind readnone {





  %res = call <4 x i32> @llvm.x86.sse41.pmovsxwd(<8 x i16> %v)
  ret <4 x i32> %res
}

define <2 x i64> @sse41_pmovsxwq(<8 x i16> %v) nounwind readnone {





  %res = call <2 x i64> @llvm.x86.sse41.pmovsxwq(<8 x i16> %v)
  ret <2 x i64> %res
}

define <8 x i32> @avx2_pmovsxbd(<16 x i8> %v) nounwind readnone {





  %res = call <8 x i32> @llvm.x86.avx2.pmovsxbd(<16 x i8> %v)
  ret <8 x i32> %res
}

define <4 x i64> @avx2_pmovsxbq(<16 x i8> %v) nounwind readnone {





  %res = call <4 x i64> @llvm.x86.avx2.pmovsxbq(<16 x i8> %v)
  ret <4 x i64> %res
}

define <16 x i16> @avx2_pmovsxbw(<16 x i8> %v) nounwind readnone {




  %res = call <16 x i16> @llvm.x86.avx2.pmovsxbw(<16 x i8> %v)
  ret <16 x i16> %res
}

define <4 x i64> @avx2_pmovsxdq(<4 x i32> %v) nounwind readnone {




  %res = call <4 x i64> @llvm.x86.avx2.pmovsxdq(<4 x i32> %v)
  ret <4 x i64> %res
}

define <8 x i32> @avx2_pmovsxwd(<8 x i16> %v) nounwind readnone {




  %res = call <8 x i32> @llvm.x86.avx2.pmovsxwd(<8 x i16> %v)
  ret <8 x i32> %res
}

define <4 x i64> @avx2_pmovsxwq(<8 x i16> %v) nounwind readnone {





  %res = call <4 x i64> @llvm.x86.avx2.pmovsxwq(<8 x i16> %v)
  ret <4 x i64> %res
}
