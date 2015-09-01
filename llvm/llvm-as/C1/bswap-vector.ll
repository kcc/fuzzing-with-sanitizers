




target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>)
declare <2 x i64> @llvm.bswap.v2i64(<2 x i64>)

define <8 x i16> @test1(<8 x i16> %v) {



























entry:
  %r = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %v)
  ret <8 x i16> %r
}

define <4 x i32> @test2(<4 x i32> %v) {



























entry:
  %r = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %v)
  ret <4 x i32> %r
}

define <2 x i64> @test3(<2 x i64> %v) {





























entry:
  %r = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %v)
  ret <2 x i64> %r
}

declare <16 x i16> @llvm.bswap.v16i16(<16 x i16>)
declare <8 x i32> @llvm.bswap.v8i32(<8 x i32>)
declare <4 x i64> @llvm.bswap.v4i64(<4 x i64>)

define <16 x i16> @test4(<16 x i16> %v) {





































entry:
  %r = call <16 x i16> @llvm.bswap.v16i16(<16 x i16> %v)
  ret <16 x i16> %r
}

define <8 x i32> @test5(<8 x i32> %v) {





































entry:
  %r = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %v)
  ret <8 x i32> %r
}

define <4 x i64> @test6(<4 x i64> %v) {









































entry:
  %r = call <4 x i64> @llvm.bswap.v4i64(<4 x i64> %v)
  ret <4 x i64> %r
}

declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>)

define <4 x i16> @test7(<4 x i16> %v) {






























entry:
  %r = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %v)
  ret <4 x i16> %r
}





define <8 x i16> @identity_v8i16(<8 x i16> %v) {



entry:
  %bs1 = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %v)
  %bs2 = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %bs1)
  ret <8 x i16> %bs2
}

define <4 x i32> @identity_v4i32(<4 x i32> %v) {



entry:
  %bs1 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %v)
  %bs2 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %bs1)
  ret <4 x i32> %bs2
}

define <2 x i64> @identity_v2i64(<2 x i64> %v) {



entry:
  %bs1 = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %v)
  %bs2 = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %bs1)
  ret <2 x i64> %bs2
}

define <16 x i16> @identity_v16i16(<16 x i16> %v) {



entry:
  %bs1 = call <16 x i16> @llvm.bswap.v16i16(<16 x i16> %v)
  %bs2 = call <16 x i16> @llvm.bswap.v16i16(<16 x i16> %bs1)
  ret <16 x i16> %bs2
}

define <8 x i32> @identity_v8i32(<8 x i32> %v) {



entry:
  %bs1 = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %v)
  %bs2 = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %bs1)
  ret <8 x i32> %bs2
}

define <4 x i64> @identity_v4i64(<4 x i64> %v) {



entry:
  %bs1 = call <4 x i64> @llvm.bswap.v4i64(<4 x i64> %v)
  %bs2 = call <4 x i64> @llvm.bswap.v4i64(<4 x i64> %bs1)
  ret <4 x i64> %bs2
}

define <4 x i16> @identity_v4i16(<4 x i16> %v) {



entry:
  %bs1 = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %v)
  %bs2 = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %bs1)
  ret <4 x i16> %bs2
}





define <8 x i16> @fold_v8i16() {









entry:
  %r = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> <i16 0, i16 1, i16 -1, i16 2, i16 -3, i16 4, i16 -5, i16 6>)
  ret <8 x i16> %r
}

define <4 x i32> @fold_v4i32() {









entry:
  %r = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> <i32 0, i32 -1, i32 2, i32 -3>)
  ret <4 x i32> %r
}

define <2 x i64> @fold_v2i64() {









entry:
  %r = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> <i64 255, i64 -1>)
  ret <2 x i64> %r
}

define <16 x i16> @fold_v16i16() {










entry:
  %r = call <16 x i16> @llvm.bswap.v16i16(<16 x i16> <i16 0, i16 1, i16 -1, i16 2, i16 -3, i16 4, i16 -5, i16 6, i16 -7, i16 8, i16 -9, i16 10, i16 -11, i16 12, i16 -13, i16 14>)
  ret <16 x i16> %r
}

define <8 x i32> @fold_v8i32() {










entry:
  %r = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> <i32 0, i32 1, i32 -1, i32 2, i32 -3, i32 4, i32 -5, i32 6>)
  ret <8 x i32> %r
}

define <4 x i64> @fold_v4i64() {










entry:
  %r = call <4 x i64> @llvm.bswap.v4i64(<4 x i64> <i64 255, i64 -1, i64 65535, i64 16776960>)
  ret <4 x i64> %r
}
