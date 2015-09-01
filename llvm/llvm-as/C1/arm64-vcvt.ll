

define <2 x i32> @fcvtas_2s(<2 x float> %A) nounwind {




	%tmp3 = call <2 x i32> @llvm.aarch64.neon.fcvtas.v2i32.v2f32(<2 x float> %A)
	ret <2 x i32> %tmp3
}

define <4 x i32> @fcvtas_4s(<4 x float> %A) nounwind {




	%tmp3 = call <4 x i32> @llvm.aarch64.neon.fcvtas.v4i32.v4f32(<4 x float> %A)
	ret <4 x i32> %tmp3
}

define <2 x i64> @fcvtas_2d(<2 x double> %A) nounwind {




	%tmp3 = call <2 x i64> @llvm.aarch64.neon.fcvtas.v2i64.v2f64(<2 x double> %A)
	ret <2 x i64> %tmp3
}

declare <2 x i32> @llvm.aarch64.neon.fcvtas.v2i32.v2f32(<2 x float>) nounwind readnone
declare <4 x i32> @llvm.aarch64.neon.fcvtas.v4i32.v4f32(<4 x float>) nounwind readnone
declare <2 x i64> @llvm.aarch64.neon.fcvtas.v2i64.v2f64(<2 x double>) nounwind readnone

define <2 x i32> @fcvtau_2s(<2 x float> %A) nounwind {




	%tmp3 = call <2 x i32> @llvm.aarch64.neon.fcvtau.v2i32.v2f32(<2 x float> %A)
	ret <2 x i32> %tmp3
}

define <4 x i32> @fcvtau_4s(<4 x float> %A) nounwind {




	%tmp3 = call <4 x i32> @llvm.aarch64.neon.fcvtau.v4i32.v4f32(<4 x float> %A)
	ret <4 x i32> %tmp3
}

define <2 x i64> @fcvtau_2d(<2 x double> %A) nounwind {




	%tmp3 = call <2 x i64> @llvm.aarch64.neon.fcvtau.v2i64.v2f64(<2 x double> %A)
	ret <2 x i64> %tmp3
}

declare <2 x i32> @llvm.aarch64.neon.fcvtau.v2i32.v2f32(<2 x float>) nounwind readnone
declare <4 x i32> @llvm.aarch64.neon.fcvtau.v4i32.v4f32(<4 x float>) nounwind readnone
declare <2 x i64> @llvm.aarch64.neon.fcvtau.v2i64.v2f64(<2 x double>) nounwind readnone

define <2 x i32> @fcvtms_2s(<2 x float> %A) nounwind {




	%tmp3 = call <2 x i32> @llvm.aarch64.neon.fcvtms.v2i32.v2f32(<2 x float> %A)
	ret <2 x i32> %tmp3
}

define <4 x i32> @fcvtms_4s(<4 x float> %A) nounwind {




	%tmp3 = call <4 x i32> @llvm.aarch64.neon.fcvtms.v4i32.v4f32(<4 x float> %A)
	ret <4 x i32> %tmp3
}

define <2 x i64> @fcvtms_2d(<2 x double> %A) nounwind {




	%tmp3 = call <2 x i64> @llvm.aarch64.neon.fcvtms.v2i64.v2f64(<2 x double> %A)
	ret <2 x i64> %tmp3
}

declare <2 x i32> @llvm.aarch64.neon.fcvtms.v2i32.v2f32(<2 x float>) nounwind readnone
declare <4 x i32> @llvm.aarch64.neon.fcvtms.v4i32.v4f32(<4 x float>) nounwind readnone
declare <2 x i64> @llvm.aarch64.neon.fcvtms.v2i64.v2f64(<2 x double>) nounwind readnone

define <2 x i32> @fcvtmu_2s(<2 x float> %A) nounwind {




	%tmp3 = call <2 x i32> @llvm.aarch64.neon.fcvtmu.v2i32.v2f32(<2 x float> %A)
	ret <2 x i32> %tmp3
}

define <4 x i32> @fcvtmu_4s(<4 x float> %A) nounwind {




	%tmp3 = call <4 x i32> @llvm.aarch64.neon.fcvtmu.v4i32.v4f32(<4 x float> %A)
	ret <4 x i32> %tmp3
}

define <2 x i64> @fcvtmu_2d(<2 x double> %A) nounwind {




	%tmp3 = call <2 x i64> @llvm.aarch64.neon.fcvtmu.v2i64.v2f64(<2 x double> %A)
	ret <2 x i64> %tmp3
}

declare <2 x i32> @llvm.aarch64.neon.fcvtmu.v2i32.v2f32(<2 x float>) nounwind readnone
declare <4 x i32> @llvm.aarch64.neon.fcvtmu.v4i32.v4f32(<4 x float>) nounwind readnone
declare <2 x i64> @llvm.aarch64.neon.fcvtmu.v2i64.v2f64(<2 x double>) nounwind readnone

define <2 x i32> @fcvtps_2s(<2 x float> %A) nounwind {




	%tmp3 = call <2 x i32> @llvm.aarch64.neon.fcvtps.v2i32.v2f32(<2 x float> %A)
	ret <2 x i32> %tmp3
}

define <4 x i32> @fcvtps_4s(<4 x float> %A) nounwind {




	%tmp3 = call <4 x i32> @llvm.aarch64.neon.fcvtps.v4i32.v4f32(<4 x float> %A)
	ret <4 x i32> %tmp3
}

define <2 x i64> @fcvtps_2d(<2 x double> %A) nounwind {




	%tmp3 = call <2 x i64> @llvm.aarch64.neon.fcvtps.v2i64.v2f64(<2 x double> %A)
	ret <2 x i64> %tmp3
}

declare <2 x i32> @llvm.aarch64.neon.fcvtps.v2i32.v2f32(<2 x float>) nounwind readnone
declare <4 x i32> @llvm.aarch64.neon.fcvtps.v4i32.v4f32(<4 x float>) nounwind readnone
declare <2 x i64> @llvm.aarch64.neon.fcvtps.v2i64.v2f64(<2 x double>) nounwind readnone

define <2 x i32> @fcvtpu_2s(<2 x float> %A) nounwind {




	%tmp3 = call <2 x i32> @llvm.aarch64.neon.fcvtpu.v2i32.v2f32(<2 x float> %A)
	ret <2 x i32> %tmp3
}

define <4 x i32> @fcvtpu_4s(<4 x float> %A) nounwind {




	%tmp3 = call <4 x i32> @llvm.aarch64.neon.fcvtpu.v4i32.v4f32(<4 x float> %A)
	ret <4 x i32> %tmp3
}

define <2 x i64> @fcvtpu_2d(<2 x double> %A) nounwind {




	%tmp3 = call <2 x i64> @llvm.aarch64.neon.fcvtpu.v2i64.v2f64(<2 x double> %A)
	ret <2 x i64> %tmp3
}

declare <2 x i32> @llvm.aarch64.neon.fcvtpu.v2i32.v2f32(<2 x float>) nounwind readnone
declare <4 x i32> @llvm.aarch64.neon.fcvtpu.v4i32.v4f32(<4 x float>) nounwind readnone
declare <2 x i64> @llvm.aarch64.neon.fcvtpu.v2i64.v2f64(<2 x double>) nounwind readnone

define <2 x i32> @fcvtns_2s(<2 x float> %A) nounwind {




	%tmp3 = call <2 x i32> @llvm.aarch64.neon.fcvtns.v2i32.v2f32(<2 x float> %A)
	ret <2 x i32> %tmp3
}

define <4 x i32> @fcvtns_4s(<4 x float> %A) nounwind {




	%tmp3 = call <4 x i32> @llvm.aarch64.neon.fcvtns.v4i32.v4f32(<4 x float> %A)
	ret <4 x i32> %tmp3
}

define <2 x i64> @fcvtns_2d(<2 x double> %A) nounwind {




	%tmp3 = call <2 x i64> @llvm.aarch64.neon.fcvtns.v2i64.v2f64(<2 x double> %A)
	ret <2 x i64> %tmp3
}

declare <2 x i32> @llvm.aarch64.neon.fcvtns.v2i32.v2f32(<2 x float>) nounwind readnone
declare <4 x i32> @llvm.aarch64.neon.fcvtns.v4i32.v4f32(<4 x float>) nounwind readnone
declare <2 x i64> @llvm.aarch64.neon.fcvtns.v2i64.v2f64(<2 x double>) nounwind readnone

define <2 x i32> @fcvtnu_2s(<2 x float> %A) nounwind {




	%tmp3 = call <2 x i32> @llvm.aarch64.neon.fcvtnu.v2i32.v2f32(<2 x float> %A)
	ret <2 x i32> %tmp3
}

define <4 x i32> @fcvtnu_4s(<4 x float> %A) nounwind {




	%tmp3 = call <4 x i32> @llvm.aarch64.neon.fcvtnu.v4i32.v4f32(<4 x float> %A)
	ret <4 x i32> %tmp3
}

define <2 x i64> @fcvtnu_2d(<2 x double> %A) nounwind {




	%tmp3 = call <2 x i64> @llvm.aarch64.neon.fcvtnu.v2i64.v2f64(<2 x double> %A)
	ret <2 x i64> %tmp3
}

declare <2 x i32> @llvm.aarch64.neon.fcvtnu.v2i32.v2f32(<2 x float>) nounwind readnone
declare <4 x i32> @llvm.aarch64.neon.fcvtnu.v4i32.v4f32(<4 x float>) nounwind readnone
declare <2 x i64> @llvm.aarch64.neon.fcvtnu.v2i64.v2f64(<2 x double>) nounwind readnone

define <2 x i32> @fcvtzs_2s(<2 x float> %A) nounwind {




	%tmp3 = fptosi <2 x float> %A to <2 x i32>
	ret <2 x i32> %tmp3
}

define <4 x i32> @fcvtzs_4s(<4 x float> %A) nounwind {




	%tmp3 = fptosi <4 x float> %A to <4 x i32>
	ret <4 x i32> %tmp3
}

define <2 x i64> @fcvtzs_2d(<2 x double> %A) nounwind {




	%tmp3 = fptosi <2 x double> %A to <2 x i64>
	ret <2 x i64> %tmp3
}


define <2 x i32> @fcvtzu_2s(<2 x float> %A) nounwind {




	%tmp3 = fptoui <2 x float> %A to <2 x i32>
	ret <2 x i32> %tmp3
}

define <4 x i32> @fcvtzu_4s(<4 x float> %A) nounwind {




	%tmp3 = fptoui <4 x float> %A to <4 x i32>
	ret <4 x i32> %tmp3
}

define <2 x i64> @fcvtzu_2d(<2 x double> %A) nounwind {




	%tmp3 = fptoui <2 x double> %A to <2 x i64>
	ret <2 x i64> %tmp3
}

define <2 x float> @frinta_2s(<2 x float> %A) nounwind {




	%tmp3 = call <2 x float> @llvm.round.v2f32(<2 x float> %A)
	ret <2 x float> %tmp3
}

define <4 x float> @frinta_4s(<4 x float> %A) nounwind {




	%tmp3 = call <4 x float> @llvm.round.v4f32(<4 x float> %A)
	ret <4 x float> %tmp3
}

define <2 x double> @frinta_2d(<2 x double> %A) nounwind {




	%tmp3 = call <2 x double> @llvm.round.v2f64(<2 x double> %A)
	ret <2 x double> %tmp3
}

declare <2 x float> @llvm.round.v2f32(<2 x float>) nounwind readnone
declare <4 x float> @llvm.round.v4f32(<4 x float>) nounwind readnone
declare <2 x double> @llvm.round.v2f64(<2 x double>) nounwind readnone

define <2 x float> @frinti_2s(<2 x float> %A) nounwind {




	%tmp3 = call <2 x float> @llvm.nearbyint.v2f32(<2 x float> %A)
	ret <2 x float> %tmp3
}

define <4 x float> @frinti_4s(<4 x float> %A) nounwind {




	%tmp3 = call <4 x float> @llvm.nearbyint.v4f32(<4 x float> %A)
	ret <4 x float> %tmp3
}

define <2 x double> @frinti_2d(<2 x double> %A) nounwind {




	%tmp3 = call <2 x double> @llvm.nearbyint.v2f64(<2 x double> %A)
	ret <2 x double> %tmp3
}

declare <2 x float> @llvm.nearbyint.v2f32(<2 x float>) nounwind readnone
declare <4 x float> @llvm.nearbyint.v4f32(<4 x float>) nounwind readnone
declare <2 x double> @llvm.nearbyint.v2f64(<2 x double>) nounwind readnone

define <2 x float> @frintm_2s(<2 x float> %A) nounwind {




	%tmp3 = call <2 x float> @llvm.floor.v2f32(<2 x float> %A)
	ret <2 x float> %tmp3
}

define <4 x float> @frintm_4s(<4 x float> %A) nounwind {




	%tmp3 = call <4 x float> @llvm.floor.v4f32(<4 x float> %A)
	ret <4 x float> %tmp3
}

define <2 x double> @frintm_2d(<2 x double> %A) nounwind {




	%tmp3 = call <2 x double> @llvm.floor.v2f64(<2 x double> %A)
	ret <2 x double> %tmp3
}

declare <2 x float> @llvm.floor.v2f32(<2 x float>) nounwind readnone
declare <4 x float> @llvm.floor.v4f32(<4 x float>) nounwind readnone
declare <2 x double> @llvm.floor.v2f64(<2 x double>) nounwind readnone

define <2 x float> @frintn_2s(<2 x float> %A) nounwind {




	%tmp3 = call <2 x float> @llvm.aarch64.neon.frintn.v2f32(<2 x float> %A)
	ret <2 x float> %tmp3
}

define <4 x float> @frintn_4s(<4 x float> %A) nounwind {




	%tmp3 = call <4 x float> @llvm.aarch64.neon.frintn.v4f32(<4 x float> %A)
	ret <4 x float> %tmp3
}

define <2 x double> @frintn_2d(<2 x double> %A) nounwind {




	%tmp3 = call <2 x double> @llvm.aarch64.neon.frintn.v2f64(<2 x double> %A)
	ret <2 x double> %tmp3
}

declare <2 x float> @llvm.aarch64.neon.frintn.v2f32(<2 x float>) nounwind readnone
declare <4 x float> @llvm.aarch64.neon.frintn.v4f32(<4 x float>) nounwind readnone
declare <2 x double> @llvm.aarch64.neon.frintn.v2f64(<2 x double>) nounwind readnone

define <2 x float> @frintp_2s(<2 x float> %A) nounwind {




	%tmp3 = call <2 x float> @llvm.ceil.v2f32(<2 x float> %A)
	ret <2 x float> %tmp3
}

define <4 x float> @frintp_4s(<4 x float> %A) nounwind {




	%tmp3 = call <4 x float> @llvm.ceil.v4f32(<4 x float> %A)
	ret <4 x float> %tmp3
}

define <2 x double> @frintp_2d(<2 x double> %A) nounwind {




	%tmp3 = call <2 x double> @llvm.ceil.v2f64(<2 x double> %A)
	ret <2 x double> %tmp3
}

declare <2 x float> @llvm.ceil.v2f32(<2 x float>) nounwind readnone
declare <4 x float> @llvm.ceil.v4f32(<4 x float>) nounwind readnone
declare <2 x double> @llvm.ceil.v2f64(<2 x double>) nounwind readnone

define <2 x float> @frintx_2s(<2 x float> %A) nounwind {




	%tmp3 = call <2 x float> @llvm.rint.v2f32(<2 x float> %A)
	ret <2 x float> %tmp3
}

define <4 x float> @frintx_4s(<4 x float> %A) nounwind {




	%tmp3 = call <4 x float> @llvm.rint.v4f32(<4 x float> %A)
	ret <4 x float> %tmp3
}

define <2 x double> @frintx_2d(<2 x double> %A) nounwind {




	%tmp3 = call <2 x double> @llvm.rint.v2f64(<2 x double> %A)
	ret <2 x double> %tmp3
}

declare <2 x float> @llvm.rint.v2f32(<2 x float>) nounwind readnone
declare <4 x float> @llvm.rint.v4f32(<4 x float>) nounwind readnone
declare <2 x double> @llvm.rint.v2f64(<2 x double>) nounwind readnone

define <2 x float> @frintz_2s(<2 x float> %A) nounwind {




	%tmp3 = call <2 x float> @llvm.trunc.v2f32(<2 x float> %A)
	ret <2 x float> %tmp3
}

define <4 x float> @frintz_4s(<4 x float> %A) nounwind {




	%tmp3 = call <4 x float> @llvm.trunc.v4f32(<4 x float> %A)
	ret <4 x float> %tmp3
}

define <2 x double> @frintz_2d(<2 x double> %A) nounwind {




	%tmp3 = call <2 x double> @llvm.trunc.v2f64(<2 x double> %A)
	ret <2 x double> %tmp3
}

declare <2 x float> @llvm.trunc.v2f32(<2 x float>) nounwind readnone
declare <4 x float> @llvm.trunc.v4f32(<4 x float>) nounwind readnone
declare <2 x double> @llvm.trunc.v2f64(<2 x double>) nounwind readnone

define <2 x float> @fcvtxn_2s(<2 x double> %A) nounwind {




	%tmp3 = call <2 x float> @llvm.aarch64.neon.fcvtxn.v2f32.v2f64(<2 x double> %A)
	ret <2 x float> %tmp3
}

define <4 x float> @fcvtxn_4s(<2 x float> %ret, <2 x double> %A) nounwind {




	%tmp3 = call <2 x float> @llvm.aarch64.neon.fcvtxn.v2f32.v2f64(<2 x double> %A)
        %res = shufflevector <2 x float> %ret, <2 x float> %tmp3, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
	ret <4 x float> %res
}

declare <2 x float> @llvm.aarch64.neon.fcvtxn.v2f32.v2f64(<2 x double>) nounwind readnone

define <2 x i32> @fcvtzsc_2s(<2 x float> %A) nounwind {




	%tmp3 = call <2 x i32> @llvm.aarch64.neon.vcvtfp2fxs.v2i32.v2f32(<2 x float> %A, i32 1)
	ret <2 x i32> %tmp3
}

define <4 x i32> @fcvtzsc_4s(<4 x float> %A) nounwind {




	%tmp3 = call <4 x i32> @llvm.aarch64.neon.vcvtfp2fxs.v4i32.v4f32(<4 x float> %A, i32 1)
	ret <4 x i32> %tmp3
}

define <2 x i64> @fcvtzsc_2d(<2 x double> %A) nounwind {




	%tmp3 = call <2 x i64> @llvm.aarch64.neon.vcvtfp2fxs.v2i64.v2f64(<2 x double> %A, i32 1)
	ret <2 x i64> %tmp3
}

declare <2 x i32> @llvm.aarch64.neon.vcvtfp2fxs.v2i32.v2f32(<2 x float>, i32) nounwind readnone
declare <4 x i32> @llvm.aarch64.neon.vcvtfp2fxs.v4i32.v4f32(<4 x float>, i32) nounwind readnone
declare <2 x i64> @llvm.aarch64.neon.vcvtfp2fxs.v2i64.v2f64(<2 x double>, i32) nounwind readnone

define <2 x i32> @fcvtzuc_2s(<2 x float> %A) nounwind {




	%tmp3 = call <2 x i32> @llvm.aarch64.neon.vcvtfp2fxu.v2i32.v2f32(<2 x float> %A, i32 1)
	ret <2 x i32> %tmp3
}

define <4 x i32> @fcvtzuc_4s(<4 x float> %A) nounwind {




	%tmp3 = call <4 x i32> @llvm.aarch64.neon.vcvtfp2fxu.v4i32.v4f32(<4 x float> %A, i32 1)
	ret <4 x i32> %tmp3
}

define <2 x i64> @fcvtzuc_2d(<2 x double> %A) nounwind {




	%tmp3 = call <2 x i64> @llvm.aarch64.neon.vcvtfp2fxu.v2i64.v2f64(<2 x double> %A, i32 1)
	ret <2 x i64> %tmp3
}

declare <2 x i32> @llvm.aarch64.neon.vcvtfp2fxu.v2i32.v2f32(<2 x float>, i32) nounwind readnone
declare <4 x i32> @llvm.aarch64.neon.vcvtfp2fxu.v4i32.v4f32(<4 x float>, i32) nounwind readnone
declare <2 x i64> @llvm.aarch64.neon.vcvtfp2fxu.v2i64.v2f64(<2 x double>, i32) nounwind readnone

define <2 x float> @scvtf_2sc(<2 x i32> %A) nounwind {




	%tmp3 = call <2 x float> @llvm.aarch64.neon.vcvtfxs2fp.v2f32.v2i32(<2 x i32> %A, i32 1)
	ret <2 x float> %tmp3
}

define <4 x float> @scvtf_4sc(<4 x i32> %A) nounwind {




	%tmp3 = call <4 x float> @llvm.aarch64.neon.vcvtfxs2fp.v4f32.v4i32(<4 x i32> %A, i32 1)
	ret <4 x float> %tmp3
}

define <2 x double> @scvtf_2dc(<2 x i64> %A) nounwind {




	%tmp3 = call <2 x double> @llvm.aarch64.neon.vcvtfxs2fp.v2f64.v2i64(<2 x i64> %A, i32 1)
	ret <2 x double> %tmp3
}

declare <2 x float> @llvm.aarch64.neon.vcvtfxs2fp.v2f32.v2i32(<2 x i32>, i32) nounwind readnone
declare <4 x float> @llvm.aarch64.neon.vcvtfxs2fp.v4f32.v4i32(<4 x i32>, i32) nounwind readnone
declare <2 x double> @llvm.aarch64.neon.vcvtfxs2fp.v2f64.v2i64(<2 x i64>, i32) nounwind readnone

define <2 x float> @ucvtf_2sc(<2 x i32> %A) nounwind {




	%tmp3 = call <2 x float> @llvm.aarch64.neon.vcvtfxu2fp.v2f32.v2i32(<2 x i32> %A, i32 1)
	ret <2 x float> %tmp3
}

define <4 x float> @ucvtf_4sc(<4 x i32> %A) nounwind {




	%tmp3 = call <4 x float> @llvm.aarch64.neon.vcvtfxu2fp.v4f32.v4i32(<4 x i32> %A, i32 1)
	ret <4 x float> %tmp3
}

define <2 x double> @ucvtf_2dc(<2 x i64> %A) nounwind {




	%tmp3 = call <2 x double> @llvm.aarch64.neon.vcvtfxu2fp.v2f64.v2i64(<2 x i64> %A, i32 1)
	ret <2 x double> %tmp3
}





define void @autogen_SD28458(<8 x double> %val.f64, <8 x float>* %addr.f32) {
  %Tr53 = fptrunc <8 x double> %val.f64 to <8 x float>
  store <8 x float> %Tr53, <8 x float>* %addr.f32
  ret void
}




define void @autogen_SD19225(<8 x double>* %addr.f64, <8 x float>* %addr.f32) {
  %A = load <8 x float>, <8 x float>* %addr.f32
  %Tr53 = fpext <8 x float> %A to <8 x double>
  store <8 x double> %Tr53, <8 x double>* %addr.f64
  ret void
}

declare <2 x float> @llvm.aarch64.neon.vcvtfxu2fp.v2f32.v2i32(<2 x i32>, i32) nounwind readnone
declare <4 x float> @llvm.aarch64.neon.vcvtfxu2fp.v4f32.v4i32(<4 x i32>, i32) nounwind readnone
declare <2 x double> @llvm.aarch64.neon.vcvtfxu2fp.v2f64.v2i64(<2 x i64>, i32) nounwind readnone
