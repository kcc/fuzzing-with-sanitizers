

define <16 x float> @floor_v16f32(<16 x float> %a) {


  %res = call <16 x float> @llvm.floor.v16f32(<16 x float> %a)
  ret <16 x float> %res
}
declare <16 x float> @llvm.floor.v16f32(<16 x float> %p)

define <8 x double> @floor_v8f64(<8 x double> %a) {


  %res = call <8 x double> @llvm.floor.v8f64(<8 x double> %a)
  ret <8 x double> %res
}
declare <8 x double> @llvm.floor.v8f64(<8 x double> %p)

define <16 x float> @ceil_v16f32(<16 x float> %a) {


  %res = call <16 x float> @llvm.ceil.v16f32(<16 x float> %a)
  ret <16 x float> %res
}
declare <16 x float> @llvm.ceil.v16f32(<16 x float> %p)

define <8 x double> @ceil_v8f64(<8 x double> %a) {


  %res = call <8 x double> @llvm.ceil.v8f64(<8 x double> %a)
  ret <8 x double> %res
}
declare <8 x double> @llvm.ceil.v8f64(<8 x double> %p)

define <16 x float> @trunc_v16f32(<16 x float> %a) {


  %res = call <16 x float> @llvm.trunc.v16f32(<16 x float> %a)
  ret <16 x float> %res
}
declare <16 x float> @llvm.trunc.v16f32(<16 x float> %p)

define <8 x double> @trunc_v8f64(<8 x double> %a) {


  %res = call <8 x double> @llvm.trunc.v8f64(<8 x double> %a)
  ret <8 x double> %res
}
declare <8 x double> @llvm.trunc.v8f64(<8 x double> %p)

define <16 x float> @rint_v16f32(<16 x float> %a) {


  %res = call <16 x float> @llvm.rint.v16f32(<16 x float> %a)
  ret <16 x float> %res
}
declare <16 x float> @llvm.rint.v16f32(<16 x float> %p)

define <8 x double> @rint_v8f64(<8 x double> %a) {


  %res = call <8 x double> @llvm.rint.v8f64(<8 x double> %a)
  ret <8 x double> %res
}
declare <8 x double> @llvm.rint.v8f64(<8 x double> %p)

define <16 x float> @nearbyint_v16f32(<16 x float> %a) {


  %res = call <16 x float> @llvm.nearbyint.v16f32(<16 x float> %a)
  ret <16 x float> %res
}
declare <16 x float> @llvm.nearbyint.v16f32(<16 x float> %p)

define <8 x double> @nearbyint_v8f64(<8 x double> %a) {


  %res = call <8 x double> @llvm.nearbyint.v8f64(<8 x double> %a)
  ret <8 x double> %res
}
declare <8 x double> @llvm.nearbyint.v8f64(<8 x double> %p)

define double @nearbyint_f64(double %a) {


  %res = call double @llvm.nearbyint.f64(double %a)
  ret double %res
}
declare double @llvm.nearbyint.f64(double %p)

define float @floor_f32(float %a) {


  %res = call float @llvm.floor.f32(float %a)
  ret float %res
}
declare float @llvm.floor.f32(float %p)

define float @floor_f32m(float* %aptr) {


  %a = load float, float* %aptr, align 4
  %res = call float @llvm.floor.f32(float %a)
  ret float %res
}

