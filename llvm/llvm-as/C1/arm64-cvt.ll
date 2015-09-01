




define i32 @fcvtas_1w1s(float %A) nounwind {



	%tmp3 = call i32 @llvm.aarch64.neon.fcvtas.i32.f32(float %A)
	ret i32 %tmp3
}

define i64 @fcvtas_1x1s(float %A) nounwind {



	%tmp3 = call i64 @llvm.aarch64.neon.fcvtas.i64.f32(float %A)
	ret i64 %tmp3
}

define i32 @fcvtas_1w1d(double %A) nounwind {



	%tmp3 = call i32 @llvm.aarch64.neon.fcvtas.i32.f64(double %A)
	ret i32 %tmp3
}

define i64 @fcvtas_1x1d(double %A) nounwind {



	%tmp3 = call i64 @llvm.aarch64.neon.fcvtas.i64.f64(double %A)
	ret i64 %tmp3
}

declare i32 @llvm.aarch64.neon.fcvtas.i32.f32(float) nounwind readnone
declare i64 @llvm.aarch64.neon.fcvtas.i64.f32(float) nounwind readnone
declare i32 @llvm.aarch64.neon.fcvtas.i32.f64(double) nounwind readnone
declare i64 @llvm.aarch64.neon.fcvtas.i64.f64(double) nounwind readnone




define i32 @fcvtau_1w1s(float %A) nounwind {



	%tmp3 = call i32 @llvm.aarch64.neon.fcvtau.i32.f32(float %A)
	ret i32 %tmp3
}

define i64 @fcvtau_1x1s(float %A) nounwind {



	%tmp3 = call i64 @llvm.aarch64.neon.fcvtau.i64.f32(float %A)
	ret i64 %tmp3
}

define i32 @fcvtau_1w1d(double %A) nounwind {



	%tmp3 = call i32 @llvm.aarch64.neon.fcvtau.i32.f64(double %A)
	ret i32 %tmp3
}

define i64 @fcvtau_1x1d(double %A) nounwind {



	%tmp3 = call i64 @llvm.aarch64.neon.fcvtau.i64.f64(double %A)
	ret i64 %tmp3
}

declare i32 @llvm.aarch64.neon.fcvtau.i32.f32(float) nounwind readnone
declare i64 @llvm.aarch64.neon.fcvtau.i64.f32(float) nounwind readnone
declare i32 @llvm.aarch64.neon.fcvtau.i32.f64(double) nounwind readnone
declare i64 @llvm.aarch64.neon.fcvtau.i64.f64(double) nounwind readnone




define i32 @fcvtms_1w1s(float %A) nounwind {



	%tmp3 = call i32 @llvm.aarch64.neon.fcvtms.i32.f32(float %A)
	ret i32 %tmp3
}

define i64 @fcvtms_1x1s(float %A) nounwind {



	%tmp3 = call i64 @llvm.aarch64.neon.fcvtms.i64.f32(float %A)
	ret i64 %tmp3
}

define i32 @fcvtms_1w1d(double %A) nounwind {



	%tmp3 = call i32 @llvm.aarch64.neon.fcvtms.i32.f64(double %A)
	ret i32 %tmp3
}

define i64 @fcvtms_1x1d(double %A) nounwind {



	%tmp3 = call i64 @llvm.aarch64.neon.fcvtms.i64.f64(double %A)
	ret i64 %tmp3
}

declare i32 @llvm.aarch64.neon.fcvtms.i32.f32(float) nounwind readnone
declare i64 @llvm.aarch64.neon.fcvtms.i64.f32(float) nounwind readnone
declare i32 @llvm.aarch64.neon.fcvtms.i32.f64(double) nounwind readnone
declare i64 @llvm.aarch64.neon.fcvtms.i64.f64(double) nounwind readnone




define i32 @fcvtmu_1w1s(float %A) nounwind {



	%tmp3 = call i32 @llvm.aarch64.neon.fcvtmu.i32.f32(float %A)
	ret i32 %tmp3
}

define i64 @fcvtmu_1x1s(float %A) nounwind {



	%tmp3 = call i64 @llvm.aarch64.neon.fcvtmu.i64.f32(float %A)
	ret i64 %tmp3
}

define i32 @fcvtmu_1w1d(double %A) nounwind {



	%tmp3 = call i32 @llvm.aarch64.neon.fcvtmu.i32.f64(double %A)
	ret i32 %tmp3
}

define i64 @fcvtmu_1x1d(double %A) nounwind {



	%tmp3 = call i64 @llvm.aarch64.neon.fcvtmu.i64.f64(double %A)
	ret i64 %tmp3
}

declare i32 @llvm.aarch64.neon.fcvtmu.i32.f32(float) nounwind readnone
declare i64 @llvm.aarch64.neon.fcvtmu.i64.f32(float) nounwind readnone
declare i32 @llvm.aarch64.neon.fcvtmu.i32.f64(double) nounwind readnone
declare i64 @llvm.aarch64.neon.fcvtmu.i64.f64(double) nounwind readnone




define i32 @fcvtns_1w1s(float %A) nounwind {



	%tmp3 = call i32 @llvm.aarch64.neon.fcvtns.i32.f32(float %A)
	ret i32 %tmp3
}

define i64 @fcvtns_1x1s(float %A) nounwind {



	%tmp3 = call i64 @llvm.aarch64.neon.fcvtns.i64.f32(float %A)
	ret i64 %tmp3
}

define i32 @fcvtns_1w1d(double %A) nounwind {



	%tmp3 = call i32 @llvm.aarch64.neon.fcvtns.i32.f64(double %A)
	ret i32 %tmp3
}

define i64 @fcvtns_1x1d(double %A) nounwind {



	%tmp3 = call i64 @llvm.aarch64.neon.fcvtns.i64.f64(double %A)
	ret i64 %tmp3
}

declare i32 @llvm.aarch64.neon.fcvtns.i32.f32(float) nounwind readnone
declare i64 @llvm.aarch64.neon.fcvtns.i64.f32(float) nounwind readnone
declare i32 @llvm.aarch64.neon.fcvtns.i32.f64(double) nounwind readnone
declare i64 @llvm.aarch64.neon.fcvtns.i64.f64(double) nounwind readnone




define i32 @fcvtnu_1w1s(float %A) nounwind {



	%tmp3 = call i32 @llvm.aarch64.neon.fcvtnu.i32.f32(float %A)
	ret i32 %tmp3
}

define i64 @fcvtnu_1x1s(float %A) nounwind {



	%tmp3 = call i64 @llvm.aarch64.neon.fcvtnu.i64.f32(float %A)
	ret i64 %tmp3
}

define i32 @fcvtnu_1w1d(double %A) nounwind {



	%tmp3 = call i32 @llvm.aarch64.neon.fcvtnu.i32.f64(double %A)
	ret i32 %tmp3
}

define i64 @fcvtnu_1x1d(double %A) nounwind {



	%tmp3 = call i64 @llvm.aarch64.neon.fcvtnu.i64.f64(double %A)
	ret i64 %tmp3
}

declare i32 @llvm.aarch64.neon.fcvtnu.i32.f32(float) nounwind readnone
declare i64 @llvm.aarch64.neon.fcvtnu.i64.f32(float) nounwind readnone
declare i32 @llvm.aarch64.neon.fcvtnu.i32.f64(double) nounwind readnone
declare i64 @llvm.aarch64.neon.fcvtnu.i64.f64(double) nounwind readnone




define i32 @fcvtps_1w1s(float %A) nounwind {



	%tmp3 = call i32 @llvm.aarch64.neon.fcvtps.i32.f32(float %A)
	ret i32 %tmp3
}

define i64 @fcvtps_1x1s(float %A) nounwind {



	%tmp3 = call i64 @llvm.aarch64.neon.fcvtps.i64.f32(float %A)
	ret i64 %tmp3
}

define i32 @fcvtps_1w1d(double %A) nounwind {



	%tmp3 = call i32 @llvm.aarch64.neon.fcvtps.i32.f64(double %A)
	ret i32 %tmp3
}

define i64 @fcvtps_1x1d(double %A) nounwind {



	%tmp3 = call i64 @llvm.aarch64.neon.fcvtps.i64.f64(double %A)
	ret i64 %tmp3
}

declare i32 @llvm.aarch64.neon.fcvtps.i32.f32(float) nounwind readnone
declare i64 @llvm.aarch64.neon.fcvtps.i64.f32(float) nounwind readnone
declare i32 @llvm.aarch64.neon.fcvtps.i32.f64(double) nounwind readnone
declare i64 @llvm.aarch64.neon.fcvtps.i64.f64(double) nounwind readnone




define i32 @fcvtpu_1w1s(float %A) nounwind {



	%tmp3 = call i32 @llvm.aarch64.neon.fcvtpu.i32.f32(float %A)
	ret i32 %tmp3
}

define i64 @fcvtpu_1x1s(float %A) nounwind {



	%tmp3 = call i64 @llvm.aarch64.neon.fcvtpu.i64.f32(float %A)
	ret i64 %tmp3
}

define i32 @fcvtpu_1w1d(double %A) nounwind {



	%tmp3 = call i32 @llvm.aarch64.neon.fcvtpu.i32.f64(double %A)
	ret i32 %tmp3
}

define i64 @fcvtpu_1x1d(double %A) nounwind {



	%tmp3 = call i64 @llvm.aarch64.neon.fcvtpu.i64.f64(double %A)
	ret i64 %tmp3
}

declare i32 @llvm.aarch64.neon.fcvtpu.i32.f32(float) nounwind readnone
declare i64 @llvm.aarch64.neon.fcvtpu.i64.f32(float) nounwind readnone
declare i32 @llvm.aarch64.neon.fcvtpu.i32.f64(double) nounwind readnone
declare i64 @llvm.aarch64.neon.fcvtpu.i64.f64(double) nounwind readnone




define i32 @fcvtzs_1w1s(float %A) nounwind {



	%tmp3 = call i32 @llvm.aarch64.neon.fcvtzs.i32.f32(float %A)
	ret i32 %tmp3
}

define i64 @fcvtzs_1x1s(float %A) nounwind {



	%tmp3 = call i64 @llvm.aarch64.neon.fcvtzs.i64.f32(float %A)
	ret i64 %tmp3
}

define i32 @fcvtzs_1w1d(double %A) nounwind {



	%tmp3 = call i32 @llvm.aarch64.neon.fcvtzs.i32.f64(double %A)
	ret i32 %tmp3
}

define i64 @fcvtzs_1x1d(double %A) nounwind {



	%tmp3 = call i64 @llvm.aarch64.neon.fcvtzs.i64.f64(double %A)
	ret i64 %tmp3
}

declare i32 @llvm.aarch64.neon.fcvtzs.i32.f32(float) nounwind readnone
declare i64 @llvm.aarch64.neon.fcvtzs.i64.f32(float) nounwind readnone
declare i32 @llvm.aarch64.neon.fcvtzs.i32.f64(double) nounwind readnone
declare i64 @llvm.aarch64.neon.fcvtzs.i64.f64(double) nounwind readnone




define i32 @fcvtzu_1w1s(float %A) nounwind {



	%tmp3 = call i32 @llvm.aarch64.neon.fcvtzu.i32.f32(float %A)
	ret i32 %tmp3
}

define i64 @fcvtzu_1x1s(float %A) nounwind {



	%tmp3 = call i64 @llvm.aarch64.neon.fcvtzu.i64.f32(float %A)
	ret i64 %tmp3
}

define i32 @fcvtzu_1w1d(double %A) nounwind {



	%tmp3 = call i32 @llvm.aarch64.neon.fcvtzu.i32.f64(double %A)
	ret i32 %tmp3
}

define i64 @fcvtzu_1x1d(double %A) nounwind {



	%tmp3 = call i64 @llvm.aarch64.neon.fcvtzu.i64.f64(double %A)
	ret i64 %tmp3
}

declare i32 @llvm.aarch64.neon.fcvtzu.i32.f32(float) nounwind readnone
declare i64 @llvm.aarch64.neon.fcvtzu.i64.f32(float) nounwind readnone
declare i32 @llvm.aarch64.neon.fcvtzu.i32.f64(double) nounwind readnone
declare i64 @llvm.aarch64.neon.fcvtzu.i64.f64(double) nounwind readnone
