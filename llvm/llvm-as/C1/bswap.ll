



define i32 @bswap32(i32 signext %x) nounwind readnone {
entry:





















  %or.3 = call i32 @llvm.bswap.i32(i32 %x)
  ret i32 %or.3
}

define i64 @bswap64(i64 signext %x) nounwind readnone {
entry:


































  %or.7 = call i64 @llvm.bswap.i64(i64 %x)
  ret i64 %or.7
}

define <4 x i32> @bswapv4i32(<4 x i32> %x) nounwind readnone {
entry:























  %ret = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %x)
  ret <4 x i32> %ret
}

declare i32 @llvm.bswap.i32(i32) nounwind readnone

declare i64 @llvm.bswap.i64(i64) nounwind readnone

declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) nounwind readnone
