


define <4 x i32> @copyTuple.QPair(i32* %a, i32* %b) {




entry:
  %vld = tail call { <4 x i32>, <4 x i32> } @llvm.aarch64.neon.ld2lane.v4i32.p0i32(<4 x i32> <i32 -1, i32 -1, i32 -1, i32 -1>, <4 x i32> <i32 2, i32 2, i32 2, i32 2>, i64 1, i32* %a)
  %extract = extractvalue { <4 x i32>, <4 x i32> } %vld, 0
  %vld1 = tail call { <4 x i32>, <4 x i32> } @llvm.aarch64.neon.ld2lane.v4i32.p0i32(<4 x i32> %extract, <4 x i32> <i32 -1, i32 -1, i32 -1, i32 -1>, i64 1, i32* %b)
  %vld1.fca.0.extract = extractvalue { <4 x i32>, <4 x i32> } %vld1, 0
  ret <4 x i32> %vld1.fca.0.extract
}

define <4 x i32> @copyTuple.QTriple(i32* %a, i32* %b, <4 x i32> %c) {





entry:
  %vld = tail call { <4 x i32>, <4 x i32>, <4 x i32> } @llvm.aarch64.neon.ld3lane.v4i32.p0i32(<4 x i32> <i32 -1, i32 -1, i32 -1, i32 -1>, <4 x i32> %c, <4 x i32> %c, i64 1, i32* %a)
  %extract = extractvalue { <4 x i32>, <4 x i32>, <4 x i32> } %vld, 0
  %vld1 = tail call { <4 x i32>, <4 x i32>, <4 x i32> } @llvm.aarch64.neon.ld3lane.v4i32.p0i32(<4 x i32> %extract, <4 x i32> <i32 -1, i32 -1, i32 -1, i32 -1>, <4 x i32> %c, i64 1, i32* %b)
  %vld1.fca.0.extract = extractvalue { <4 x i32>, <4 x i32>, <4 x i32> } %vld1, 0
  ret <4 x i32> %vld1.fca.0.extract
}

define <4 x i32> @copyTuple.QQuad(i32* %a, i32* %b, <4 x i32> %c) {






entry:
  %vld = tail call { <4 x i32>, <4 x i32>, <4 x i32>, <4 x i32> } @llvm.aarch64.neon.ld4lane.v4i32.p0i32(<4 x i32> <i32 -1, i32 -1, i32 -1, i32 -1>, <4 x i32> %c, <4 x i32> %c, <4 x i32> %c, i64 1, i32* %a)
  %extract = extractvalue { <4 x i32>, <4 x i32>, <4 x i32>, <4 x i32> } %vld, 0
  %vld1 = tail call { <4 x i32>, <4 x i32>, <4 x i32>, <4 x i32> } @llvm.aarch64.neon.ld4lane.v4i32.p0i32(<4 x i32> %extract, <4 x i32> <i32 -1, i32 -1, i32 -1, i32 -1>, <4 x i32> %c, <4 x i32> %c, i64 1, i32* %b)
  %vld1.fca.0.extract = extractvalue { <4 x i32>, <4 x i32>, <4 x i32>, <4 x i32> } %vld1, 0
  ret <4 x i32> %vld1.fca.0.extract
}

declare { <4 x i32>, <4 x i32> } @llvm.aarch64.neon.ld2lane.v4i32.p0i32(<4 x i32>, <4 x i32>, i64, i32*)
declare { <4 x i32>, <4 x i32>, <4 x i32> } @llvm.aarch64.neon.ld3lane.v4i32.p0i32(<4 x i32>, <4 x i32>, <4 x i32>, i64, i32*)
declare { <4 x i32>, <4 x i32>, <4 x i32>, <4 x i32> } @llvm.aarch64.neon.ld4lane.v4i32.p0i32(<4 x i32>, <4 x i32>, <4 x i32>, <4 x i32>, i64, i32*)
