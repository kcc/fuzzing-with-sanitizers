

define <8 x i8> @test_vclz_u8(<8 x i8> %a) nounwind readnone ssp {
  
  
  
  %vclz.i = tail call <8 x i8> @llvm.ctlz.v8i8(<8 x i8> %a, i1 false) nounwind
  ret <8 x i8> %vclz.i
}

define <8 x i8> @test_vclz_s8(<8 x i8> %a) nounwind readnone ssp {
  
  
  
  %vclz.i = tail call <8 x i8> @llvm.ctlz.v8i8(<8 x i8> %a, i1 false) nounwind
  ret <8 x i8> %vclz.i
}

define <4 x i16> @test_vclz_u16(<4 x i16> %a) nounwind readnone ssp {
  
  
  
  %vclz1.i = tail call <4 x i16> @llvm.ctlz.v4i16(<4 x i16> %a, i1 false) nounwind
  ret <4 x i16> %vclz1.i
}

define <4 x i16> @test_vclz_s16(<4 x i16> %a) nounwind readnone ssp {
  
  
  
  %vclz1.i = tail call <4 x i16> @llvm.ctlz.v4i16(<4 x i16> %a, i1 false) nounwind
  ret <4 x i16> %vclz1.i
}

define <2 x i32> @test_vclz_u32(<2 x i32> %a) nounwind readnone ssp {
  
  
  
  %vclz1.i = tail call <2 x i32> @llvm.ctlz.v2i32(<2 x i32> %a, i1 false) nounwind
  ret <2 x i32> %vclz1.i
}

define <2 x i32> @test_vclz_s32(<2 x i32> %a) nounwind readnone ssp {
  
  
  
  %vclz1.i = tail call <2 x i32> @llvm.ctlz.v2i32(<2 x i32> %a, i1 false) nounwind
  ret <2 x i32> %vclz1.i
}

define <16 x i8> @test_vclzq_u8(<16 x i8> %a) nounwind readnone ssp {
  
  
  
  %vclz.i = tail call <16 x i8> @llvm.ctlz.v16i8(<16 x i8> %a, i1 false) nounwind
  ret <16 x i8> %vclz.i
}

define <16 x i8> @test_vclzq_s8(<16 x i8> %a) nounwind readnone ssp {
  
  
  
  %vclz.i = tail call <16 x i8> @llvm.ctlz.v16i8(<16 x i8> %a, i1 false) nounwind
  ret <16 x i8> %vclz.i
}

define <8 x i16> @test_vclzq_u16(<8 x i16> %a) nounwind readnone ssp {
  
  
  
  %vclz1.i = tail call <8 x i16> @llvm.ctlz.v8i16(<8 x i16> %a, i1 false) nounwind
  ret <8 x i16> %vclz1.i
}

define <8 x i16> @test_vclzq_s16(<8 x i16> %a) nounwind readnone ssp {
  
  
  
  %vclz1.i = tail call <8 x i16> @llvm.ctlz.v8i16(<8 x i16> %a, i1 false) nounwind
  ret <8 x i16> %vclz1.i
}

define <4 x i32> @test_vclzq_u32(<4 x i32> %a) nounwind readnone ssp {
  
  
  
  %vclz1.i = tail call <4 x i32> @llvm.ctlz.v4i32(<4 x i32> %a, i1 false) nounwind
  ret <4 x i32> %vclz1.i
}

define <4 x i32> @test_vclzq_s32(<4 x i32> %a) nounwind readnone ssp {
  
  
  
  %vclz1.i = tail call <4 x i32> @llvm.ctlz.v4i32(<4 x i32> %a, i1 false) nounwind
  ret <4 x i32> %vclz1.i
}

declare <4 x i32> @llvm.ctlz.v4i32(<4 x i32>, i1) nounwind readnone

declare <8 x i16> @llvm.ctlz.v8i16(<8 x i16>, i1) nounwind readnone

declare <16 x i8> @llvm.ctlz.v16i8(<16 x i8>, i1) nounwind readnone

declare <2 x i32> @llvm.ctlz.v2i32(<2 x i32>, i1) nounwind readnone

declare <4 x i16> @llvm.ctlz.v4i16(<4 x i16>, i1) nounwind readnone

declare <8 x i8> @llvm.ctlz.v8i8(<8 x i8>, i1) nounwind readnone
