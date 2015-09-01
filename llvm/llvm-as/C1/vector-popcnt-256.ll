


target triple = "x86_64-unknown-unknown"

define <4 x i64> @testv4i64(<4 x i64> %in) {




































  %out = call <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %in)
  ret <4 x i64> %out
}

define <8 x i32> @testv8i32(<8 x i32> %in) {
















































  %out = call <8 x i32> @llvm.ctpop.v8i32(<8 x i32> %in)
  ret <8 x i32> %out
}

define <16 x i16> @testv16i16(<16 x i16> %in) {








































  %out = call <16 x i16> @llvm.ctpop.v16i16(<16 x i16> %in)
  ret <16 x i16> %out
}

define <32 x i8> @testv32i8(<32 x i8> %in) {































  %out = call <32 x i8> @llvm.ctpop.v32i8(<32 x i8> %in)
  ret <32 x i8> %out
}

define <4 x i64> @foldv4i64() {




  %out = call <4 x i64> @llvm.ctpop.v4i64(<4 x i64> <i64 256, i64 -1, i64 0, i64 255>)
  ret <4 x i64> %out
}

define <8 x i32> @foldv8i32() {




  %out = call <8 x i32> @llvm.ctpop.v8i32(<8 x i32> <i32 256, i32 -1, i32 0, i32 255, i32 -65536, i32 7, i32 24, i32 88>)
  ret <8 x i32> %out
}

define <16 x i16> @foldv16i16() {




  %out = call <16 x i16> @llvm.ctpop.v16i16(<16 x i16> <i16 256, i16 -1, i16 0, i16 255, i16 -65536, i16 7, i16 24, i16 88, i16 -2, i16 254, i16 1, i16 2, i16 4, i16 8, i16 16, i16 32>)
  ret <16 x i16> %out
}

define <32 x i8> @foldv32i8() {




  %out = call <32 x i8> @llvm.ctpop.v32i8(<32 x i8> <i8 256, i8 -1, i8 0, i8 255, i8 -65536, i8 7, i8 24, i8 88, i8 -2, i8 254, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 128, i8 256, i8 -256, i8 -128, i8 -64, i8 -32, i8 -16, i8 -8, i8 -4, i8 -2, i8 -1, i8 3, i8 5, i8 7, i8 127>)
  ret <32 x i8> %out
}

declare <4 x i64> @llvm.ctpop.v4i64(<4 x i64>)
declare <8 x i32> @llvm.ctpop.v8i32(<8 x i32>)
declare <16 x i16> @llvm.ctpop.v16i16(<16 x i16>)
declare <32 x i8> @llvm.ctpop.v32i8(<32 x i8>)
