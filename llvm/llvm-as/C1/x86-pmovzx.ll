

declare <4 x i32>  @llvm.x86.sse41.pmovzxbd(<16 x i8>) nounwind readnone
declare <2 x i64>  @llvm.x86.sse41.pmovzxbq(<16 x i8>) nounwind readnone
declare <8 x i16>  @llvm.x86.sse41.pmovzxbw(<16 x i8>) nounwind readnone
declare <2 x i64>  @llvm.x86.sse41.pmovzxdq(<4 x i32>) nounwind readnone
declare <4 x i32>  @llvm.x86.sse41.pmovzxwd(<8 x i16>) nounwind readnone
declare <2 x i64>  @llvm.x86.sse41.pmovzxwq(<8 x i16>) nounwind readnone

declare <8 x i32>  @llvm.x86.avx2.pmovzxbd(<16 x i8>) nounwind readnone
declare <4 x i64>  @llvm.x86.avx2.pmovzxbq(<16 x i8>) nounwind readnone
declare <16 x i16> @llvm.x86.avx2.pmovzxbw(<16 x i8>) nounwind readnone
declare <4 x i64>  @llvm.x86.avx2.pmovzxdq(<4 x i32>) nounwind readnone
declare <8 x i32>  @llvm.x86.avx2.pmovzxwd(<8 x i16>) nounwind readnone
declare <4 x i64>  @llvm.x86.avx2.pmovzxwq(<8 x i16>) nounwind readnone





define <4 x i32> @sse41_pmovzxbd(<16 x i8> %v) nounwind readnone {





  %res = call <4 x i32> @llvm.x86.sse41.pmovzxbd(<16 x i8> %v)
  ret <4 x i32> %res
}

define <2 x i64> @sse41_pmovzxbq(<16 x i8> %v) nounwind readnone {





  %res = call <2 x i64> @llvm.x86.sse41.pmovzxbq(<16 x i8> %v)
  ret <2 x i64> %res
}

define <8 x i16> @sse41_pmovzxbw(<16 x i8> %v) nounwind readnone {





  %res = call <8 x i16> @llvm.x86.sse41.pmovzxbw(<16 x i8> %v)
  ret <8 x i16> %res
}

define <2 x i64> @sse41_pmovzxdq(<4 x i32> %v) nounwind readnone {





  %res = call <2 x i64> @llvm.x86.sse41.pmovzxdq(<4 x i32> %v)
  ret <2 x i64> %res
}

define <4 x i32> @sse41_pmovzxwd(<8 x i16> %v) nounwind readnone {





  %res = call <4 x i32> @llvm.x86.sse41.pmovzxwd(<8 x i16> %v)
  ret <4 x i32> %res
}

define <2 x i64> @sse41_pmovzxwq(<8 x i16> %v) nounwind readnone {





  %res = call <2 x i64> @llvm.x86.sse41.pmovzxwq(<8 x i16> %v)
  ret <2 x i64> %res
}

define <8 x i32> @avx2_pmovzxbd(<16 x i8> %v) nounwind readnone {





  %res = call <8 x i32> @llvm.x86.avx2.pmovzxbd(<16 x i8> %v)
  ret <8 x i32> %res
}

define <4 x i64> @avx2_pmovzxbq(<16 x i8> %v) nounwind readnone {





  %res = call <4 x i64> @llvm.x86.avx2.pmovzxbq(<16 x i8> %v)
  ret <4 x i64> %res
}

define <16 x i16> @avx2_pmovzxbw(<16 x i8> %v) nounwind readnone {




  %res = call <16 x i16> @llvm.x86.avx2.pmovzxbw(<16 x i8> %v)
  ret <16 x i16> %res
}

define <4 x i64> @avx2_pmovzxdq(<4 x i32> %v) nounwind readnone {




  %res = call <4 x i64> @llvm.x86.avx2.pmovzxdq(<4 x i32> %v)
  ret <4 x i64> %res
}

define <8 x i32> @avx2_pmovzxwd(<8 x i16> %v) nounwind readnone {




  %res = call <8 x i32> @llvm.x86.avx2.pmovzxwd(<8 x i16> %v)
  ret <8 x i32> %res
}

define <4 x i64> @avx2_pmovzxwq(<8 x i16> %v) nounwind readnone {





  %res = call <4 x i64> @llvm.x86.avx2.pmovzxwq(<8 x i16> %v)
  ret <4 x i64> %res
}
