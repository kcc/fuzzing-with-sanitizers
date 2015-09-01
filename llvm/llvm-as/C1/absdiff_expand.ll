

declare <4 x i8> @llvm.uabsdiff.v4i8(<4 x i8>, <4 x i8>)

define <4 x i8> @test_uabsdiff_v4i8_expand(<4 x i8> %a1, <4 x i8> %a2) {













  %1 = call <4 x i8> @llvm.uabsdiff.v4i8(<4 x i8> %a1, <4 x i8> %a2)
  ret <4 x i8> %1
}

declare <4 x i8> @llvm.sabsdiff.v4i8(<4 x i8>, <4 x i8>)

define <4 x i8> @test_sabsdiff_v4i8_expand(<4 x i8> %a1, <4 x i8> %a2) {











  %1 = call <4 x i8> @llvm.sabsdiff.v4i8(<4 x i8> %a1, <4 x i8> %a2)
  ret <4 x i8> %1
}


declare <8 x i8> @llvm.sabsdiff.v8i8(<8 x i8>, <8 x i8>)

define <8 x i8> @test_sabsdiff_v8i8_expand(<8 x i8> %a1, <8 x i8> %a2) {










  %1 = call <8 x i8> @llvm.sabsdiff.v8i8(<8 x i8> %a1, <8 x i8> %a2)
  ret <8 x i8> %1
}

declare <16 x i8> @llvm.uabsdiff.v16i8(<16 x i8>, <16 x i8>)

define <16 x i8> @test_uabsdiff_v16i8_expand(<16 x i8> %a1, <16 x i8> %a2) {












  %1 = call <16 x i8> @llvm.uabsdiff.v16i8(<16 x i8> %a1, <16 x i8> %a2)
  ret <16 x i8> %1
}

declare <8 x i16> @llvm.uabsdiff.v8i16(<8 x i16>, <8 x i16>)

define <8 x i16> @test_uabsdiff_v8i16_expand(<8 x i16> %a1, <8 x i16> %a2) {












  %1 = call <8 x i16> @llvm.uabsdiff.v8i16(<8 x i16> %a1, <8 x i16> %a2)
  ret <8 x i16> %1
}

declare <8 x i16> @llvm.sabsdiff.v8i16(<8 x i16>, <8 x i16>)

define <8 x i16> @test_sabsdiff_v8i16_expand(<8 x i16> %a1, <8 x i16> %a2) {










  %1 = call <8 x i16> @llvm.sabsdiff.v8i16(<8 x i16> %a1, <8 x i16> %a2)
  ret <8 x i16> %1
}

declare <4 x i32> @llvm.sabsdiff.v4i32(<4 x i32>, <4 x i32>)

define <4 x i32> @test_sabsdiff_v4i32_expand(<4 x i32> %a1, <4 x i32> %a2) {










  %1 = call <4 x i32> @llvm.sabsdiff.v4i32(<4 x i32> %a1, <4 x i32> %a2)
  ret <4 x i32> %1
}

declare <4 x i32> @llvm.uabsdiff.v4i32(<4 x i32>, <4 x i32>)

define <4 x i32> @test_uabsdiff_v4i32_expand(<4 x i32> %a1, <4 x i32> %a2) {












  %1 = call <4 x i32> @llvm.uabsdiff.v4i32(<4 x i32> %a1, <4 x i32> %a2)
  ret <4 x i32> %1
}

declare <2 x i32> @llvm.sabsdiff.v2i32(<2 x i32>, <2 x i32>)

define <2 x i32> @test_sabsdiff_v2i32_expand(<2 x i32> %a1, <2 x i32> %a2) {



















  %1 = call <2 x i32> @llvm.sabsdiff.v2i32(<2 x i32> %a1, <2 x i32> %a2)
  ret <2 x i32> %1
}

declare <2 x i64> @llvm.sabsdiff.v2i64(<2 x i64>, <2 x i64>)

define <2 x i64> @test_sabsdiff_v2i64_expand(<2 x i64> %a1, <2 x i64> %a2) {



















  %1 = call <2 x i64> @llvm.sabsdiff.v2i64(<2 x i64> %a1, <2 x i64> %a2)
  ret <2 x i64> %1
}

declare <16 x i32> @llvm.sabsdiff.v16i32(<16 x i32>, <16 x i32>)

define <16 x i32> @test_sabsdiff_v16i32_expand(<16 x i32> %a1, <16 x i32> %a2) {


































  %1 = call <16 x i32> @llvm.sabsdiff.v16i32(<16 x i32> %a1, <16 x i32> %a2)
  ret <16 x i32> %1
}

